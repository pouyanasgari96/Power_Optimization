/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP4
// Date      : Tue Jun 20 10:07:36 2023
/////////////////////////////////////////////////////////////


module c432 ( N1, N4, N8, N11, N14, N17, N21, N24, N27, N30, N34, N37, N40, 
        N43, N47, N50, N53, N56, N60, N63, N66, N69, N73, N76, N79, N82, N86, 
        N89, N92, N95, N99, N102, N105, N108, N112, N115, N223, N329, N370, 
        N421, N430, N431, N432 );
  input N1, N4, N8, N11, N14, N17, N21, N24, N27, N30, N34, N37, N40, N43, N47,
         N50, N53, N56, N60, N63, N66, N69, N73, N76, N79, N82, N86, N89, N92,
         N95, N99, N102, N105, N108, N112, N115;
  output N223, N329, N370, N421, N430, N431, N432;
  wire   n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n189, n190, n191, n192, n193, n194, n196;

  HS65_LH_AND2X9 U82 ( .A(n170), .B(n169), .Z(n196) );
  HS65_LH_AOI21X2 U83 ( .A(N8), .B(N329), .C(n187), .Z(n189) );
  HS65_LH_AOI21X2 U84 ( .A(N21), .B(N329), .C(n150), .Z(n185) );
  HS65_LL_AOI21X2 U85 ( .A(N47), .B(N329), .C(n152), .Z(n186) );
  HS65_LH_AND2X9 U86 ( .A(n84), .B(N108), .Z(n141) );
  HS65_LL_NAND3X25 U87 ( .A(n97), .B(n96), .C(n95), .Z(N223) );
  HS65_LH_NOR2X9 U88 ( .A(n94), .B(n93), .Z(n95) );
  HS65_LL_AOI12X6 U89 ( .A(N17), .B(n92), .C(n91), .Z(n96) );
  HS65_LH_OAI22X1 U90 ( .A(N14), .B(n187), .C(N27), .D(n150), .Z(n137) );
  HS65_LH_AO12X9 U91 ( .A(N99), .B(N329), .C(n159), .Z(n178) );
  HS65_LH_IVX2 U92 ( .A(n176), .Z(n180) );
  HS65_LH_AOI112X9 U93 ( .A(N105), .B(N370), .C(n178), .D(n171), .Z(n166) );
  HS65_LL_OAI12X3 U94 ( .A(n191), .B(n190), .C(n189), .Z(n192) );
  HS65_LH_IVX9 U95 ( .A(n161), .Z(n191) );
  HS65_LH_AOI21X4 U96 ( .A(N79), .B(n161), .C(n176), .Z(n172) );
  HS65_LH_AOI12X4 U97 ( .A(N92), .B(n161), .C(n181), .Z(n171) );
  HS65_LH_NAND2X7 U98 ( .A(N53), .B(n161), .Z(n153) );
  HS65_LL_NAND4ABX3 U99 ( .A(n144), .B(n143), .C(n142), .D(n81), .Z(n145) );
  HS65_LH_AOI22X4 U100 ( .A(n100), .B(n115), .C(n99), .D(n118), .Z(n101) );
  HS65_LH_AOI22X4 U101 ( .A(n107), .B(n113), .C(n106), .D(n125), .Z(n108) );
  HS65_LH_NAND2X4 U102 ( .A(n172), .B(n169), .Z(n158) );
  HS65_LH_NAND2X7 U103 ( .A(N27), .B(n161), .Z(n151) );
  HS65_LH_IVX9 U104 ( .A(N329), .Z(n164) );
  HS65_LL_NAND3X3 U105 ( .A(n101), .B(n102), .C(n103), .Z(n135) );
  HS65_LL_NAND3X5 U106 ( .A(n108), .B(n109), .C(n110), .Z(n136) );
  HS65_LH_OA22X9 U107 ( .A(N40), .B(n162), .C(N79), .D(n154), .Z(n81) );
  HS65_LH_NOR3X4 U108 ( .A(N53), .B(N47), .C(n152), .Z(n130) );
  HS65_LH_NOR2X5 U109 ( .A(N105), .B(n159), .Z(n144) );
  HS65_LH_NAND2X5 U110 ( .A(n170), .B(n158), .Z(n167) );
  HS65_LH_NAND2X7 U111 ( .A(n184), .B(n85), .Z(n169) );
  HS65_LH_NAND2X2 U112 ( .A(n178), .B(n177), .Z(n179) );
  HS65_LL_AO12X4 U113 ( .A(N40), .B(n161), .C(n177), .Z(n173) );
  HS65_LH_AOI12X6 U114 ( .A(N60), .B(N329), .C(n157), .Z(n184) );
  HS65_LH_NOR2X6 U115 ( .A(n130), .B(n129), .Z(n131) );
  HS65_LH_NOR3X4 U117 ( .A(N92), .B(N86), .C(n160), .Z(n122) );
  HS65_LH_NAND2X7 U118 ( .A(N4), .B(n123), .Z(n187) );
  HS65_LL_NAND2X7 U119 ( .A(n185), .B(n151), .Z(n174) );
  HS65_LH_NOR3AX4 U120 ( .A(n181), .B(n180), .C(n179), .Z(n182) );
  HS65_LL_NAND3X3 U121 ( .A(n137), .B(n146), .C(n147), .Z(n149) );
  HS65_LH_OAI211X5 U122 ( .A(N115), .B(n146), .C(n132), .D(n131), .Z(n133) );
  HS65_LH_NOR2X6 U123 ( .A(n136), .B(n135), .Z(n147) );
  HS65_LH_AOI22X4 U124 ( .A(n141), .B(n140), .C(n139), .D(n138), .Z(n142) );
  HS65_LH_IVX9 U125 ( .A(n146), .Z(n111) );
  HS65_LH_NOR2X6 U126 ( .A(n87), .B(n86), .Z(n132) );
  HS65_LH_IVX9 U127 ( .A(n162), .Z(n163) );
  HS65_LH_NOR3X4 U128 ( .A(N8), .B(N14), .C(n187), .Z(n87) );
  HS65_LH_NOR3X4 U129 ( .A(N21), .B(N27), .C(n150), .Z(n86) );
  HS65_LH_NAND2X7 U130 ( .A(N17), .B(n124), .Z(n150) );
  HS65_LL_NAND2X4 U131 ( .A(N76), .B(N223), .Z(n113) );
  HS65_LL_OAI22X3 U132 ( .A(N89), .B(n117), .C(N102), .D(n183), .Z(n91) );
  HS65_LH_IVX9 U133 ( .A(N8), .Z(n105) );
  HS65_LH_IVX9 U134 ( .A(N34), .Z(n165) );
  HS65_LH_IVX9 U135 ( .A(N11), .Z(n92) );
  HS65_LH_IVX9 U136 ( .A(N82), .Z(n112) );
  HS65_LH_IVX9 U137 ( .A(N60), .Z(n98) );
  HS65_LH_IVX9 U138 ( .A(N56), .Z(n128) );
  HS65_LH_IVX7 U139 ( .A(N115), .Z(n140) );
  HS65_LH_IVX9 U140 ( .A(N1), .Z(n90) );
  HS65_LH_IVX9 U141 ( .A(N66), .Z(n88) );
  HS65_LH_IVX9 U142 ( .A(N108), .Z(n183) );
  HS65_LH_IVX9 U143 ( .A(N21), .Z(n104) );
  HS65_LL_NAND2X14 U144 ( .A(n82), .B(n175), .Z(N431) );
  HS65_LL_OA12X18 U145 ( .A(n194), .B(n193), .C(n192), .Z(N421) );
  HS65_LH_NAND2X7 U146 ( .A(n186), .B(n153), .Z(n170) );
  HS65_LH_IVX27 U147 ( .A(n191), .Z(N370) );
  HS65_LH_NAND2AX7 U148 ( .A(n88), .B(n161), .Z(n85) );
  HS65_LL_NAND4ABX6 U149 ( .A(n133), .B(n134), .C(n149), .D(n148), .Z(n161) );
  HS65_LL_OAI12X3 U150 ( .A(n165), .B(n164), .C(n163), .Z(n177) );
  HS65_LL_NAND3X3 U151 ( .A(n147), .B(n146), .C(n145), .Z(n148) );
  HS65_LH_NAND2X7 U152 ( .A(N73), .B(N329), .Z(n155) );
  HS65_LH_IVX7 U153 ( .A(n154), .Z(n156) );
  HS65_LH_NAND2AX14 U154 ( .A(N112), .B(n141), .Z(n146) );
  HS65_LH_NAND2X7 U155 ( .A(N69), .B(n115), .Z(n154) );
  HS65_LH_NAND2AX7 U156 ( .A(n126), .B(n125), .Z(n152) );
  HS65_LH_NAND2X7 U157 ( .A(N95), .B(n118), .Z(n159) );
  HS65_LH_NAND2X7 U158 ( .A(N30), .B(n116), .Z(n162) );
  HS65_LH_NAND2X7 U159 ( .A(N82), .B(n113), .Z(n160) );
  HS65_LL_NAND2X4 U160 ( .A(N63), .B(N223), .Z(n115) );
  HS65_LL_NAND2X4 U161 ( .A(N102), .B(N223), .Z(n84) );
  HS65_LH_NOR2X5 U162 ( .A(N47), .B(n126), .Z(n106) );
  HS65_LL_OAI22X3 U163 ( .A(N37), .B(n126), .C(N50), .D(n128), .Z(n93) );
  HS65_LL_AOI22X4 U164 ( .A(N4), .B(n90), .C(N30), .D(n89), .Z(n97) );
  HS65_LL_OAI22X3 U165 ( .A(N63), .B(n114), .C(N76), .D(n112), .Z(n94) );
  HS65_LH_NOR2X5 U166 ( .A(N73), .B(n114), .Z(n100) );
  HS65_LH_NOR2X5 U167 ( .A(n117), .B(N99), .Z(n99) );
  HS65_LH_NOR2X5 U168 ( .A(N86), .B(n112), .Z(n107) );
  HS65_LH_IVX9 U169 ( .A(N69), .Z(n114) );
  HS65_LH_IVX7 U170 ( .A(N14), .Z(n190) );
  HS65_LH_IVX9 U171 ( .A(N43), .Z(n126) );
  HS65_LL_OAI12X3 U173 ( .A(n167), .B(n166), .C(n173), .Z(n168) );
  HS65_LH_NAND2X21 U174 ( .A(n196), .B(n82), .Z(N430) );
  HS65_LH_OAI21X6 U175 ( .A(n172), .B(n171), .C(n196), .Z(n175) );
  HS65_LH_AND2X18 U176 ( .A(n173), .B(n174), .Z(n82) );
  HS65_LL_AO12X4 U177 ( .A(N86), .B(N329), .C(n160), .Z(n181) );
  HS65_LL_OR2X18 U178 ( .A(n83), .B(n111), .Z(N329) );
  HS65_LL_OR2X4 U179 ( .A(n135), .B(n136), .Z(n83) );
  HS65_LL_OR4X4 U180 ( .A(n122), .B(n121), .C(n120), .D(n119), .Z(n134) );
  HS65_LH_NOR3X4 U182 ( .A(N79), .B(N73), .C(n154), .Z(n121) );
  HS65_LH_OAI22X3 U183 ( .A(N92), .B(n160), .C(N66), .D(n157), .Z(n143) );
  HS65_LH_NAND3X3 U184 ( .A(N30), .B(n165), .C(n116), .Z(n103) );
  HS65_LH_NAND2AX7 U185 ( .A(n128), .B(n127), .Z(n157) );
  HS65_LH_NAND3X5 U186 ( .A(N56), .B(n98), .C(n127), .Z(n102) );
  HS65_LL_NAND2X4 U187 ( .A(N37), .B(N223), .Z(n125) );
  HS65_LL_NAND2AX4 U188 ( .A(n90), .B(N223), .Z(n123) );
  HS65_LL_NAND2X4 U189 ( .A(N89), .B(N223), .Z(n118) );
  HS65_LL_NAND2AX4 U190 ( .A(n92), .B(N223), .Z(n124) );
  HS65_LL_NAND2X4 U191 ( .A(N24), .B(N223), .Z(n116) );
  HS65_LL_NAND2X4 U192 ( .A(N50), .B(N223), .Z(n127) );
  HS65_LH_IVX9 U193 ( .A(N95), .Z(n117) );
  HS65_LH_IVX9 U194 ( .A(N24), .Z(n89) );
  HS65_LL_NAND2X14 U195 ( .A(n174), .B(n168), .Z(N432) );
  HS65_LH_NAND3X5 U196 ( .A(N17), .B(n104), .C(n124), .Z(n110) );
  HS65_LH_NAND3X5 U197 ( .A(N4), .B(n105), .C(n123), .Z(n109) );
  HS65_LH_NOR3X4 U199 ( .A(N66), .B(N60), .C(n157), .Z(n129) );
  HS65_LH_NAND2X7 U200 ( .A(n156), .B(n155), .Z(n176) );
  HS65_LH_IVX9 U201 ( .A(n182), .Z(n194) );
  HS65_LH_OR4X4 U202 ( .A(N108), .B(n186), .C(n185), .D(n184), .Z(n193) );
  HS65_LH_IVX2 U116 ( .A(n152), .Z(n138) );
  HS65_LH_NOR3X1 U181 ( .A(N105), .B(N99), .C(n159), .Z(n119) );
  HS65_LH_IVX2 U172 ( .A(N53), .Z(n139) );
  HS65_LH_NOR3X1 U198 ( .A(N40), .B(N34), .C(n162), .Z(n120) );
endmodule

