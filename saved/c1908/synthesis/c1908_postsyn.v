/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP4
// Date      : Mon Jun 19 09:48:15 2023
/////////////////////////////////////////////////////////////


module c1908 ( N1, N4, N7, N10, N13, N16, N19, N22, N25, N28, N31, N34, N37, 
        N40, N43, N46, N49, N53, N56, N60, N63, N66, N69, N72, N76, N79, N82, 
        N85, N88, N91, N94, N99, N104, N2753, N2754, N2755, N2756, N2762, 
        N2767, N2768, N2779, N2780, N2781, N2782, N2783, N2784, N2785, N2786, 
        N2787, N2811, N2886, N2887, N2888, N2889, N2890, N2891, N2892, N2899
 );
  input N1, N4, N7, N10, N13, N16, N19, N22, N25, N28, N31, N34, N37, N40, N43,
         N46, N49, N53, N56, N60, N63, N66, N69, N72, N76, N79, N82, N85, N88,
         N91, N94, N99, N104;
  output N2753, N2754, N2755, N2756, N2762, N2767, N2768, N2779, N2780, N2781,
         N2782, N2783, N2784, N2785, N2786, N2787, N2811, N2886, N2887, N2888,
         N2889, N2890, N2891, N2892, N2899;
  wire   n202, n1, n2, n3, n4, n6, n7, n8, n9, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n24, n25, n26, n27, n28, n29, n31, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n53, n56, n58, n59, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n72, n73, n75, n76, n77, n80, n81, n82, n83, n85, n86,
         n87, n88, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, net1429, net1435, net1434, net1443, net1452,
         net1534, net1547, net1549, n57, n54, n52, n84, n79, n78, n74, n30,
         n23, n89, n5, n102, n101, n10, n60, n32, n143, n142, n141, n140, n139,
         n173, n174, n175, n176, n177, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198;
  assign N2811 = net1534;

  HS65_LL_XOR3X18 U5 ( .A(n27), .B(n28), .C(n29), .Z(N2892) );
  HS65_LL_NAND3X3 U180 ( .A(n61), .B(n21), .C(n60), .Z(n139) );
  HS65_LL_NAND2X7 U181 ( .A(N56), .B(n129), .Z(n61) );
  HS65_LL_IVX9 U182 ( .A(N94), .Z(n21) );
  HS65_LLS_XOR3X2 U183 ( .A(n140), .B(n141), .C(n142), .Z(n60) );
  HS65_LL_CBI4I1X5 U184 ( .A(n60), .B(n21), .C(n61), .D(n139), .Z(n102) );
  HS65_LLS_XOR3X2 U185 ( .A(N37), .B(N28), .C(N19), .Z(n140) );
  HS65_LLS_XOR2X6 U186 ( .A(N10), .B(n143), .Z(n141) );
  HS65_LL_NOR3AX2 U187 ( .A(N60), .B(N104), .C(n16), .Z(n143) );
  HS65_LL_XOR2X9 U190 ( .A(N46), .B(n32), .Z(n142) );
  HS65_LLS_XOR2X3 U192 ( .A(N25), .B(N40), .Z(n32) );
  HS65_LLS_XNOR2X3 U194 ( .A(n32), .B(n33), .Z(n31) );
  HS65_LL_NOR2X6 U196 ( .A(n101), .B(n10), .Z(n89) );
  HS65_LL_OAI32X9 U199 ( .A(n134), .B(N94), .C(N79), .D(n18), .E(n135), .Z(
        n101) );
  HS65_LL_IVX9 U200 ( .A(n102), .Z(n10) );
  HS65_LL_AO33X4 U201 ( .A(n111), .B(n89), .C(n6), .D(n111), .E(n105), .F(n83), 
        .Z(n110) );
  HS65_LL_AND2X4 U202 ( .A(n89), .B(n6), .Z(net1547) );
  HS65_LL_AND2X9 U203 ( .A(n101), .B(n10), .Z(n82) );
  HS65_LL_AND2X27 U206 ( .A(n37), .B(n30), .Z(n74) );
  HS65_LL_AND4X13 U207 ( .A(n44), .B(n43), .C(n98), .D(n99), .Z(n37) );
  HS65_LL_NOR4ABX13 U208 ( .A(n78), .B(n79), .C(n49), .D(n48), .Z(n30) );
  HS65_LL_NOR2X25 U209 ( .A(n21), .B(n74), .Z(n56) );
  HS65_LL_NAND4ABX3 U210 ( .A(n75), .B(n76), .C(n77), .D(n74), .Z(n202) );
  HS65_LL_NAND2X7 U212 ( .A(n93), .B(n83), .Z(n41) );
  HS65_LL_AND3X9 U213 ( .A(n82), .B(n8), .C(n81), .Z(n50) );
  HS65_LL_NAND2X7 U215 ( .A(n93), .B(n8), .Z(n39) );
  HS65_LL_NAND3X5 U216 ( .A(n90), .B(n82), .C(n91), .Z(n40) );
  HS65_LL_AND3X9 U217 ( .A(n84), .B(n3), .C(n8), .Z(n23) );
  HS65_LL_AND3X9 U218 ( .A(n82), .B(n83), .C(n81), .Z(n49) );
  HS65_LL_NOR2X3 U220 ( .A(n30), .B(N104), .Z(n28) );
  HS65_LL_OA12X4 U221 ( .A(N91), .B(n96), .C(n97), .Z(n87) );
  HS65_LL_NAND2X7 U222 ( .A(n108), .B(n118), .Z(n88) );
  HS65_LH_IVX7 U223 ( .A(n85), .Z(n3) );
  HS65_LL_IVX9 U224 ( .A(n86), .Z(n8) );
  HS65_LL_NOR2X25 U226 ( .A(n51), .B(n52), .Z(N2899) );
  HS65_LH_CBI4I1X3 U229 ( .A(n137), .B(N49), .C(N1), .D(n138), .Z(n53) );
  HS65_LH_IVX2 U231 ( .A(net1549), .Z(n173) );
  HS65_LLS_XNOR2X6 U232 ( .A(n127), .B(n33), .Z(net1549) );
  HS65_LL_NAND2X7 U233 ( .A(n56), .B(N79), .Z(n57) );
  HS65_LL_NOR2AX6 U234 ( .A(n118), .B(n108), .Z(n95) );
  HS65_LL_OAI32X5 U235 ( .A(n145), .B(N104), .C(n146), .D(n147), .E(n9), .Z(
        n63) );
  HS65_LL_XNOR2X18 U237 ( .A(n38), .B(n122), .Z(n73) );
  HS65_LL_NOR3AX2 U238 ( .A(n94), .B(n88), .C(n97), .Z(n111) );
  HS65_LH_AOI13X2 U239 ( .A(n94), .B(n108), .C(n109), .D(n110), .Z(n77) );
  HS65_LL_NOR2AX6 U240 ( .A(n117), .B(n192), .Z(n94) );
  HS65_LL_XOR2X9 U241 ( .A(n66), .B(n67), .Z(n65) );
  HS65_LH_NOR4ABX2 U244 ( .A(n94), .B(n105), .C(n88), .D(n115), .Z(n114) );
  HS65_LL_CBI4I1X11 U245 ( .A(n67), .B(n21), .C(n19), .D(n150), .Z(n103) );
  HS65_LL_NAND2X7 U246 ( .A(n181), .B(n33), .Z(n183) );
  HS65_LLS_XOR2X6 U248 ( .A(n131), .B(n126), .Z(n198) );
  HS65_LL_NOR2X6 U249 ( .A(n176), .B(n132), .Z(n133) );
  HS65_LLS_XOR2X6 U250 ( .A(N40), .B(N10), .Z(n132) );
  HS65_LL_CB4I1X9 U251 ( .A(n63), .B(n21), .C(n20), .D(n144), .Z(n92) );
  HS65_LL_AND2ABX18 U253 ( .A(n51), .B(n68), .Z(N2887) );
  HS65_LL_XOR2X4 U255 ( .A(n63), .B(n64), .Z(n62) );
  HS65_LL_NAND2X7 U260 ( .A(n193), .B(n136), .Z(n196) );
  HS65_LLS_XOR2X6 U261 ( .A(n190), .B(n126), .Z(n38) );
  HS65_LL_XOR2X9 U262 ( .A(n128), .B(n127), .Z(n190) );
  HS65_LLS_XOR2X6 U264 ( .A(n180), .B(N13), .Z(n127) );
  HS65_LL_NAND2X7 U266 ( .A(n116), .B(n117), .Z(n85) );
  HS65_LL_AND4X6 U267 ( .A(n24), .B(n26), .C(n42), .D(n25), .Z(n99) );
  HS65_LL_NAND2X14 U268 ( .A(n182), .B(n183), .Z(n70) );
  HS65_LL_NAND2X7 U269 ( .A(n198), .B(net1452), .Z(n182) );
  HS65_LLS_XOR3X2 U270 ( .A(N37), .B(N34), .C(N31), .Z(n136) );
  HS65_LL_NAND2X7 U271 ( .A(n185), .B(n186), .Z(n125) );
  HS65_LL_NAND2X7 U272 ( .A(n184), .B(N46), .Z(n186) );
  HS65_LL_IVX9 U273 ( .A(n88), .Z(n2) );
  HS65_LLS_XOR2X6 U275 ( .A(N13), .B(n153), .Z(n151) );
  HS65_LL_IVX9 U276 ( .A(net1434), .Z(net1435) );
  HS65_LL_NAND3X5 U277 ( .A(n80), .B(n100), .C(n6), .Z(n25) );
  HS65_LL_NAND3X5 U278 ( .A(n83), .B(n100), .C(n82), .Z(n26) );
  HS65_LL_NOR3X4 U279 ( .A(n85), .B(n92), .C(n7), .Z(n91) );
  HS65_LLS_XNOR2X6 U281 ( .A(n69), .B(n70), .Z(n68) );
  HS65_LL_AND2X18 U282 ( .A(net1429), .B(n188), .Z(N2886) );
  HS65_LLS_XOR2X6 U283 ( .A(n72), .B(n73), .Z(n188) );
  HS65_LL_NAND2X7 U285 ( .A(n177), .B(n105), .Z(n45) );
  HS65_LL_AND2X4 U286 ( .A(n6), .B(n82), .Z(n174) );
  HS65_LL_AND2X4 U287 ( .A(n106), .B(n83), .Z(n175) );
  HS65_LL_XNOR2X18 U289 ( .A(N28), .B(n41), .Z(N2762) );
  HS65_LL_XNOR2X18 U290 ( .A(N22), .B(n24), .Z(N2782) );
  HS65_LL_BFX18 U297 ( .A(n202), .Z(net1534) );
  HS65_LL_IVX9 U298 ( .A(n51), .Z(net1429) );
  HS65_LL_XNOR2X18 U302 ( .A(N10), .B(n43), .Z(N2756) );
  HS65_LL_NAND2X7 U303 ( .A(net1547), .B(n106), .Z(n43) );
  HS65_LL_XNOR2X18 U304 ( .A(N43), .B(n40), .Z(N2767) );
  HS65_LL_IVX9 U305 ( .A(n115), .Z(n6) );
  HS65_LH_AOI32X3 U310 ( .A(N43), .B(N53), .C(n137), .D(n13), .E(n154), .Z(
        n153) );
  HS65_LL_NOR2X6 U311 ( .A(N94), .B(n73), .Z(n120) );
  HS65_LL_OAI32X5 U312 ( .A(n73), .B(N94), .C(n14), .D(n120), .E(n121), .Z(
        n116) );
  HS65_LL_OAI32X2 U313 ( .A(n73), .B(N94), .C(n14), .D(n120), .E(n121), .Z(
        n192) );
  HS65_LL_OAI311X2 U314 ( .A(n1), .B(n86), .C(n4), .D(n112), .E(n113), .Z(n76)
         );
  HS65_LL_IVX2 U315 ( .A(n146), .Z(n9) );
  HS65_LL_NOR2X6 U316 ( .A(N94), .B(n134), .Z(n135) );
  HS65_LL_NAND2X7 U317 ( .A(n56), .B(n14), .Z(n72) );
  HS65_LL_NAND2X2 U318 ( .A(n56), .B(N82), .Z(n66) );
  HS65_LL_NAND2X7 U319 ( .A(n56), .B(N76), .Z(n69) );
  HS65_LL_IVX2 U320 ( .A(n111), .Z(n1) );
  HS65_LL_XNOR2X18 U321 ( .A(N19), .B(n25), .Z(N2781) );
  HS65_LL_XNOR2X18 U322 ( .A(N1), .B(n46), .Z(N2753) );
  HS65_LL_NAND2X7 U323 ( .A(n174), .B(n106), .Z(n46) );
  HS65_LL_XNOR2X18 U324 ( .A(N46), .B(n39), .Z(N2768) );
  HS65_LL_XNOR2X18 U325 ( .A(N13), .B(n42), .Z(N2779) );
  HS65_LL_NAND3X5 U326 ( .A(n100), .B(n8), .C(n82), .Z(n42) );
  HS65_LL_XNOR2X18 U327 ( .A(N16), .B(n26), .Z(N2780) );
  HS65_LL_IVX2 U328 ( .A(n33), .Z(net1452) );
  HS65_LL_NAND2X14 U329 ( .A(n195), .B(n196), .Z(n33) );
  HS65_LL_NAND2X7 U331 ( .A(n197), .B(net1443), .Z(n185) );
  HS65_LH_IVX4 U332 ( .A(N46), .Z(net1443) );
  HS65_LL_NAND2X7 U334 ( .A(n125), .B(n194), .Z(n195) );
  HS65_LL_IVX9 U335 ( .A(n125), .Z(n193) );
  HS65_LLS_XOR2X6 U337 ( .A(n36), .B(n34), .Z(n187) );
  HS65_LL_XOR2X18 U338 ( .A(n187), .B(n35), .Z(N2891) );
  HS65_LH_OAI21X2 U339 ( .A(N88), .B(n22), .C(n38), .Z(n34) );
  HS65_LH_AOI33X2 U341 ( .A(n94), .B(n95), .C(n109), .D(n82), .E(n6), .F(n111), 
        .Z(n112) );
  HS65_LH_NAND2X2 U342 ( .A(N69), .B(n21), .Z(n129) );
  HS65_LLS_XOR2X6 U343 ( .A(N1), .B(N7), .Z(n191) );
  HS65_LLS_XOR2X6 U344 ( .A(n191), .B(N4), .Z(n126) );
  HS65_LL_XNOR2X18 U345 ( .A(N4), .B(n45), .Z(N2754) );
  HS65_LL_NAND2X7 U346 ( .A(n175), .B(n105), .Z(n44) );
  HS65_LL_AND2X18 U347 ( .A(n95), .B(n104), .Z(n106) );
  HS65_LL_NOR2X5 U348 ( .A(n103), .B(n92), .Z(n83) );
  HS65_LL_XNOR2X18 U349 ( .A(N7), .B(n44), .Z(N2755) );
  HS65_LL_IVX9 U350 ( .A(n103), .Z(n7) );
  HS65_LH_NOR2X2 U352 ( .A(n37), .B(N104), .Z(n35) );
  HS65_LL_NAND3X3 U353 ( .A(n20), .B(n21), .C(n63), .Z(n144) );
  HS65_LL_IVX9 U354 ( .A(n136), .Z(n194) );
  HS65_LH_NAND3X2 U355 ( .A(n107), .B(n22), .C(N99), .Z(n97) );
  HS65_LH_NOR3AX2 U356 ( .A(n109), .B(n88), .C(n192), .Z(n75) );
  HS65_LH_AOI311X2 U357 ( .A(n3), .B(n2), .C(n109), .D(N104), .E(n114), .Z(
        n113) );
  HS65_LH_NAND2X2 U358 ( .A(N69), .B(N56), .Z(n145) );
  HS65_LH_NOR3AX2 U359 ( .A(N56), .B(n16), .C(N104), .Z(n147) );
  HS65_LH_AO12X4 U360 ( .A(N66), .B(N91), .C(n22), .Z(n29) );
  HS65_LH_AO12X4 U361 ( .A(N63), .B(N88), .C(n22), .Z(n36) );
  HS65_LH_NAND3X2 U362 ( .A(N104), .B(n107), .C(N94), .Z(n96) );
  HS65_LH_NAND2X2 U363 ( .A(N72), .B(N69), .Z(n107) );
  HS65_LH_NAND2X2 U365 ( .A(N60), .B(n129), .Z(n118) );
  HS65_LH_NAND2X2 U366 ( .A(N53), .B(n119), .Z(n117) );
  HS65_LH_OR2X4 U367 ( .A(N72), .B(N94), .Z(n119) );
  HS65_LH_IVX2 U368 ( .A(N43), .Z(n13) );
  HS65_LL_IVX9 U369 ( .A(n105), .Z(n4) );
  HS65_LL_IVX9 U371 ( .A(N104), .Z(n22) );
  HS65_LL_NAND2X7 U372 ( .A(n92), .B(n103), .Z(n86) );
  HS65_LL_IVX9 U373 ( .A(n121), .Z(n14) );
  HS65_LL_XOR2X18 U376 ( .A(N31), .B(n50), .Z(N2784) );
  HS65_LL_OAI21X3 U378 ( .A(N91), .B(n22), .C(n31), .Z(n27) );
  HS65_LL_AOI32X5 U379 ( .A(n12), .B(n22), .C(N63), .D(n123), .E(n124), .Z(
        n122) );
  HS65_LL_NAND2X7 U380 ( .A(N63), .B(n22), .Z(n124) );
  HS65_LL_IVX9 U381 ( .A(n123), .Z(n12) );
  HS65_LL_NOR2X6 U382 ( .A(N104), .B(N72), .Z(n137) );
  HS65_LL_CBI4I6X5 U383 ( .A(n96), .B(N88), .C(n97), .D(n85), .Z(n104) );
  HS65_LL_NAND2X7 U388 ( .A(n137), .B(N53), .Z(n154) );
  HS65_LL_NOR3X4 U389 ( .A(n115), .B(n4), .C(n97), .Z(n109) );
  HS65_LL_NAND2X7 U390 ( .A(n7), .B(n92), .Z(n115) );
  HS65_LL_CBI4I6X5 U258 ( .A(N104), .B(n15), .C(n132), .D(n133), .Z(n131) );
  HS65_LL_AOI32X5 U230 ( .A(N79), .B(n173), .C(n56), .D(net1549), .E(n57), .Z(
        n54) );
  HS65_LL_OA32X9 U330 ( .A(n70), .B(N94), .C(N76), .D(n130), .E(n17), .Z(n108)
         );
  HS65_LL_AND2X18 U274 ( .A(n104), .B(n2), .Z(n100) );
  HS65_LL_IVX9 U259 ( .A(n198), .Z(n181) );
  HS65_LL_NAND2AX7 U306 ( .A(n61), .B(n56), .Z(n59) );
  HS65_LL_AND2X18 U284 ( .A(n46), .B(n45), .Z(n98) );
  HS65_LL_AND2X9 U280 ( .A(n106), .B(n8), .Z(n177) );
  HS65_LL_XOR2X9 U333 ( .A(N28), .B(N43), .Z(n197) );
  HS65_LL_IVX7 U247 ( .A(n197), .Z(n184) );
  HS65_LH_IVX9 U387 ( .A(N66), .Z(n15) );
  HS65_LHS_XNOR2X3 U263 ( .A(N10), .B(N22), .Z(n128) );
  HS65_LHS_XNOR3X2 U340 ( .A(N22), .B(N4), .C(N31), .Z(n152) );
  HS65_LLS_XOR3X2 U257 ( .A(N7), .B(N43), .C(N34), .Z(n148) );
  HS65_LH_IVX9 U189 ( .A(N69), .Z(n16) );
  HS65_LLS_XNOR2X3 U193 ( .A(n142), .B(n152), .Z(net1434) );
  HS65_LH_XOR2X4 U254 ( .A(N28), .B(N22), .Z(n149) );
  HS65_LH_NAND3X3 U351 ( .A(N1), .B(N49), .C(n137), .Z(n138) );
  HS65_LLS_XOR2X3 U236 ( .A(n189), .B(n149), .Z(n146) );
  HS65_LLS_XNOR2X6 U243 ( .A(n151), .B(net1435), .Z(n67) );
  HS65_LH_IVX9 U377 ( .A(N82), .Z(n19) );
  HS65_LLS_XNOR2X6 U336 ( .A(n53), .B(net1549), .Z(n134) );
  HS65_LH_IVX2 U386 ( .A(N76), .Z(n17) );
  HS65_LH_IVX2 U375 ( .A(N79), .Z(n18) );
  HS65_LL_NOR2X6 U204 ( .A(n102), .B(n101), .Z(n105) );
  HS65_LL_NOR2AX13 U252 ( .A(n95), .B(n87), .Z(n90) );
  HS65_LL_AND2X4 U205 ( .A(n101), .B(n102), .Z(n80) );
  HS65_LH_NAND2X7 U364 ( .A(n56), .B(N85), .Z(n64) );
  HS65_LH_NOR2X6 U227 ( .A(n22), .B(N99), .Z(n51) );
  HS65_LL_XOR2X9 U228 ( .A(n53), .B(n54), .Z(n52) );
  HS65_LL_AND2ABX18 U300 ( .A(n51), .B(n58), .Z(N2890) );
  HS65_LLS_XOR2X6 U308 ( .A(N25), .B(n125), .Z(n123) );
  HS65_LL_XOR2X4 U256 ( .A(N16), .B(n148), .Z(n189) );
  HS65_LL_NAND4ABX6 U291 ( .A(n92), .B(n4), .C(n103), .D(n100), .Z(n24) );
  HS65_LL_NOR4ABX4 U195 ( .A(n39), .B(n40), .C(n47), .D(n23), .Z(n79) );
  HS65_LL_IVX9 U197 ( .A(n89), .Z(n5) );
  HS65_LL_XOR2X9 U198 ( .A(n59), .B(n60), .Z(n58) );
  HS65_LL_OR2X4 U214 ( .A(n15), .B(N104), .Z(n176) );
  HS65_LLS_XOR2X3 U265 ( .A(N16), .B(N19), .Z(n180) );
  HS65_LH_NOR2X2 U288 ( .A(N94), .B(n70), .Z(n130) );
  HS65_LH_IVX2 U292 ( .A(N85), .Z(n20) );
  HS65_LL_NOR3AX9 U307 ( .A(n81), .B(n86), .C(n5), .Z(n47) );
  HS65_LL_AND2X18 U309 ( .A(n94), .B(n90), .Z(n81) );
  HS65_LL_NOR3X2 U370 ( .A(n5), .B(n87), .C(n88), .Z(n84) );
  HS65_LL_AND3X18 U374 ( .A(n80), .B(n3), .C(n90), .Z(n93) );
  HS65_LL_NAND3X3 U242 ( .A(n19), .B(n21), .C(n67), .Z(n150) );
  HS65_LL_NOR2AX3 U211 ( .A(n41), .B(n50), .Z(n78) );
  HS65_LL_AND2ABX35 U188 ( .A(n51), .B(n65), .Z(N2888) );
  HS65_LH_NAND2X2 U191 ( .A(N49), .B(n119), .Z(n121) );
  HS65_LH_AND3X18 U219 ( .A(n80), .B(n81), .C(n6), .Z(n48) );
  HS65_LH_XOR2X27 U225 ( .A(N37), .B(n48), .Z(N2786) );
  HS65_LL_AND2ABX35 U293 ( .A(n51), .B(n62), .Z(N2889) );
  HS65_LL_XOR2X18 U294 ( .A(N40), .B(n47), .Z(N2787) );
  HS65_LH_XOR2X27 U295 ( .A(N34), .B(n49), .Z(N2785) );
  HS65_LH_XOR2X27 U296 ( .A(N25), .B(n23), .Z(N2783) );
endmodule

