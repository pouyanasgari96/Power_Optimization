##	+----------------------------------------------------------------
##	|		 Synthesis and Optimization of Digital Circuits			|
##	|				Politecnico di Torino - TO - Italy				|
##	|						DAUIN - EDA GROUP						|
##	+----------------------------------------------------------------
##	|	author: Valentino Peluso									|
##	|	mail:	valentino.peluso@polito.it							|
##	|	title:	pt_contest.tcl										|
##	+----------------------------------------------------------------
##	| 	Copyright 2023 DAUIN - EDA GROUP							|
##	+----------------------------------------------------------------

######################################################################
##
## SPECIFY LIBRARIES
##
######################################################################
set technology "STcmos65"
set search_path ""
lappend search_path "./tech/${technology}"
lappend link_library "CORE65LPLVT_nom_1.20V_25C.db"
lappend link_library "CORE65LPHVT_nom_1.20V_25C.db"

# DEFINE OPTIONS
set report_default_significant_digits 6
set power_enable_analysis true

# SUPPRESS WARNING MESSAGES
suppress_message RC-004
suppress_message PTE-003
suppress_message UID-401
suppress_message ENV-003
suppress_message UITE-489
suppress_message CMD-041

suppress_message NED-045
suppress_message LNK-041
suppress_message UITE-502
suppress_message PTE-139
suppress_message PTE-018

suppress_message PWR-246
suppress_message PWR-601
suppress_message PWR-602

######################################################################
##
## READ DESIGN
##
######################################################################
# DEFINE CIRCUITS
# set blockName "c432"
# set blockName "c1908"
set blockName "c5315"

# DEFINE INPUT FILES
set dir "./saved/${blockName}/synthesis"
set in_verilog_filename "${dir}/${blockName}_postsyn.v"
set in_sdc_filename "${dir}/${blockName}_postsyn.sdc"

# READ
read_verilog $in_verilog_filename
read_sdc -version 1.3 $in_sdc_filename

update_timing -full

######################################################################
##
## DUAL-VTH OPTIMIZATION
##
######################################################################

set_user_attribute [find library CORE65LPLVT] default_threshold_voltage_group LVT
set_user_attribute [find library CORE65LPHVT] default_threshold_voltage_group HVT

set leakage_initial [get_attribute [current_design] leakage_power]

set original_cells ""
foreach_in_collection cell [get_cells] {
    set full_name [get_attribute $cell full_name]
    set ref_name [get_attribute $cell ref_name]
    lappend original_cells "$full_name $ref_name"
}

set slackThreshold 0.05
set maxFanoutEndpointCost 0.4

# Run dualVth assignment
# Please, replace N with the Group ID
source ./scripts/dualVth_Group_N.tcl
set start_time [clock milliseconds]
dualVth $slackThreshold $maxFanoutEndpointCost
set end_time [clock milliseconds]

# Force full timing update
update_timing -full

# Check: The slack of the most critical path of the circuit is positive (>= 0).
set wrt_slack [get_attribute [get_timing_paths] slack]

if {$wrt_slack < 0} {
    error "Slack is negative: $wrt_slack"
} else {
    puts "(OK) Slack is positive: $wrt_slack"
}

# Check: For each cell of the circuit, the fanout endpoint cost is < maxFanoutEndpointCost
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
        error "Cell $cell_name ($cell_ref_name) has fanout endpoint cost of $cell_fanout_endpoint_cost (>= $maxFanoutEndpointCost)."
    }
}

puts "(OK) All cells met the Fanout Endpoint Cost constraint."

# Check: Logic gates must keep the same cell footprint, i.e., same size and area, during the optimization loop.
foreach cell_footprint $original_cells {
    set full_name [lindex $cell_footprint 0]
    set original_ref_name [lindex $cell_footprint 1]
    set cell [get_cell $full_name]
    set ref_name [get_attribute $cell ref_name]
    regsub -all {_LH} $ref_name "_LL" ref_name
    if {($original_ref_name eq $ref_name) == 0} {
        error "The cell $full_name has a different footprint."
    }
}

puts "(OK) All the cells kept the same footprint."

# Reporting
report_threshold_voltage_group
set leakage_final [get_attribute [current_design] leakage_power]
set normalized_power [expr ($leakage_final / $leakage_initial)]
set cpu_time [expr ($end_time - $start_time) / 1000.0]
set optimization_cost [expr sqrt(pow($normalized_power,2) + (pow($cpu_time,2) / 2000.0))]
puts "Normalized Power=$normalized_power - CPU Time=$cpu_time - Optimization Cost=$optimization_cost"

######################################################################
##
## EXIT
##
######################################################################

exit
