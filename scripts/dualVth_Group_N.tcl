proc get_slack_avg {hvt_cells slackThreshold} {
    set sum_slack 0
    set sq_sum_slack 0
    set cells_count 0

    set slacks ""
    foreach_in_collection cell $hvt_cells {
        set cell_paths [get_timing_paths -through $cell -nworst 1]
        foreach_in_collection cell_path $cell_paths {
            set cell_name [get_attribute $cell full_name]
            set cell_slack [get_attribute $cell_path slack]
            lappend slacks [list $cell $cell_slack]
            incr cells_count
            set sum_slack [expr $sum_slack + $cell_slack]
            set sq_sum_slack [expr $sq_sum_slack + ($cell_slack * $cell_slack)]

        }
    }
    if {$cells_count > 0} {
        set avg_slack [expr $sum_slack / $cells_count]
        set var_slack [expr ($sq_sum_slack - (($sum_slack * $sum_slack) / $cells_count)) / $cells_count]
        set stdev_slack [expr { sqrt($var_slack) }]
    } else {
        set avg_slack 0
        set stdev_slack 0
    }
    return [list $avg_slack $stdev_slack $slacks]
}

proc swap_to_HVT {} {
    set cell_count 0
    foreach_in_collection cell [get_cells] {
        incr cell_count
        set ref_name [get_attribute $cell ref_name]
        set original_vt [get_attribute $cell lib_cell.threshold_voltage_group]
        regsub {_LL} $ref_name "_LH" new_ref_name    
        set library_name "CORE65LPHVT"
        size_cell $cell "${library_name}/${new_ref_name}"
    }
    return $cell_count
}

proc swap_cell_to_LVT {cell} {
    set ref_name [get_attribute $cell ref_name]
    #puts "replacing the cell : $ref_name from HVT to LVT"
    set original_vt [get_attribute $cell lib_cell.threshold_voltage_group]
    regsub {_LH} $ref_name "_LL" new_ref_name    
    set library_name "CORE65LPLVT"
    size_cell $cell "${library_name}/${new_ref_name}"   
}

proc check_contest_constrainsts {slackThreshold maxFanoutEndpointCost} {
    set start_time_update [clock milliseconds]
    update_timing -full
    set end_time_update [clock milliseconds]
    puts "Updating time: [expr ($end_time_update - $start_time_update) / 1000.0]"
    set wrt_slack [get_attribute [get_timing_paths] slack]

    if {$wrt_slack < 0} {
        return 0
    }

    # Check: For each cell of the circuit, the fanout endpoint cost is < maxFanoutEndpointCost
    set start_time_constraint [clock milliseconds]
    foreach_in_collection cell [get_cells] {
        set paths [get_timing_paths -through $cell -nworst 1 -max_paths 10000 -slack_lesser_than $slackThreshold]
        set cell_fanout_endpoint_cost 0.0
        foreach_in_collection path $paths {
            set this_cost [expr $slackThreshold - [get_attribute $path slack]]
            set cell_fanout_endpoint_cost [expr $cell_fanout_endpoint_cost + $this_cost]
        }

        if {$cell_fanout_endpoint_cost >= $maxFanoutEndpointCost} {
            set cell_name [get_attribute $cell full_name]
            set cell_ref_name [get_attribute $cell ref_name]
            return 0
        }
    }
    set end_time_constraint [clock milliseconds]
    puts "Constraint time: [expr ($end_time_constraint - $start_time_constraint) / 1000.0]"

    return 1 
}

proc getOptimizationCost {leakage_initial start_time} {
    set crnt_time [clock milliseconds]
    set leakage_crnt [get_attribute [current_design] leakage_power]
    set normalized_power [expr ($leakage_crnt / $leakage_initial)]
    set cpu_time [expr ($crnt_time - $start_time) / 1000.0]
    puts "cpu time: $cpu_time ----------- leakage_crnt : $leakage_crnt ----------- leakage_initial: $leakage_initial"
    set optimization_cost [expr sqrt(pow($normalized_power,2) + (pow($cpu_time,2) / 2000.0))]
    return $optimization_cost
}


proc dualVth {slackThreshold maxFanoutEndpointCost} {
    
    set leakage_initial [get_attribute [current_design] leakage_power]
    set all_cells [swap_to_HVT]

    set prev_cost 1.0
    set neg_cell 0
    set pos_cell 0

    set start_time [clock milliseconds]

    set continue_flag 1
    while { $continue_flag } {
        incr num_iters
        set hvt_cells [get_cells -filter "lib_cell.threshold_voltage_group == HVT"]
        set start_time_calculations [clock milliseconds]
        set min_avg_var [get_slack_avg $hvt_cells $slackThreshold]
        set end_time_calculations [clock milliseconds]
        puts "calculation time: [expr ($end_time_calculations - $start_time_calculations) / 1000.0]"
    
        set avg_slack [lindex $min_avg_var 0]
        set stdev_slack [lindex $min_avg_var 1]
        set slacks [lindex $min_avg_var 2]

        puts "Avg Slack: $avg_slack"
        puts "Std Dev Slack: $stdev_slack"
        #puts "Slacks: $slacks"
    
        set start_time_swp [clock milliseconds]

        if {$num_iters == 1} {
            set check_condition [expr $avg_slack + 0.3 * $stdev_slack]
        } else {
            set check_condition [expr $avg_slack - 0.3 *$stdev_slack]
        }
        
        foreach cell $slacks {
            #if {[lindex $cell 1] < ($avg_slack - ($stdev_slack * 1/$num_iters))} { }
            
            if {[lindex $cell 1] < $check_condition} {
                swap_cell_to_LVT [lindex $cell 0]
                if {[lindex $cell 1] <0} {
                    incr neg_cell
                } else {
                    incr pos_cell
                }
                    
            }
        }
        
        set end_time_swp [clock milliseconds]
        puts "swp time: [expr ($end_time_swp - $start_time_swp) / 1000.0]"
    
        set crnt_cost [getOptimizationCost $leakage_initial $start_time]
        set improved [expr {$crnt_cost < $prev_cost}]
        puts "crnt_cost: $crnt_cost ============ prev_cost: $prev_cost"
        set prev_cost $crnt_cost
        set passes_constraint [check_contest_constrainsts $slackThreshold $maxFanoutEndpointCost]
        #if {(! $improved) && $passes_constraint} { }
        if {$passes_constraint} {
            set continue_flag 0
        }
    }

    puts "===== Ran for $num_iters iteration! ========"
    puts "all cells: $all_cells ||  pos_cells changed: $pos_cell || neg_cells changed: $neg_cell"

    return 1

}
