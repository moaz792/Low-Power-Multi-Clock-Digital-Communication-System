/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Wed Oct  1 23:25:58 2025
/////////////////////////////////////////////////////////////


module mux2X1_1 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  CLKMX2X4M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module mux2X1_4 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module mux2X1_3 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module mux2X1_2 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module mux2X1_0 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  AO2B2X2M U1 ( .B0(SEL), .B1(IN_1), .A0(IN_0), .A1N(SEL), .Y(OUT) );
endmodule


module mux2X1_6 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  AO2B2X2M U1 ( .B0(SEL), .B1(IN_1), .A0(IN_0), .A1N(SEL), .Y(OUT) );
endmodule


module mux2X1_5 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  AO2B2X2M U1 ( .B0(SEL), .B1(IN_1), .A0(IN_0), .A1N(SEL), .Y(OUT) );
endmodule


module sys_cnrt ( clk, reset, alu_out, out_valid, rddata, rddata_valid, 
        rx_p_data, rx_d_vld, fifo_full, wr_inc, wr_data, alu_fun, en, address, 
        wr_en, rd_en, wrdata, clk_div_en );
  input [7:0] alu_out;
  input [7:0] rddata;
  input [7:0] rx_p_data;
  output [7:0] wr_data;
  output [3:0] alu_fun;
  output [2:0] address;
  output [7:0] wrdata;
  input clk, reset, out_valid, rddata_valid, rx_d_vld, fifo_full;
  output wr_inc, en, wr_en, rd_en, clk_div_en;
  wire   rx_d_vld_tt, n18, n20, n21, n22, n23, n24, n25, n26, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n15, n16, n17,
         n19, n27, n44, n45, n46, n47;
  wire   [3:0] current_state;
  assign en = 1'b0;
  assign alu_fun[0] = 1'b0;
  assign alu_fun[1] = 1'b0;
  assign alu_fun[2] = 1'b0;
  assign alu_fun[3] = 1'b0;

  DFFRQX2M rx_d_vld_tt_reg ( .D(rx_d_vld), .CK(clk), .RN(reset), .Q(
        rx_d_vld_tt) );
  DFFRQX2M \current_state_reg[1]  ( .D(n42), .CK(clk), .RN(reset), .Q(
        current_state[1]) );
  DFFRQX2M \current_state_reg[2]  ( .D(n5), .CK(clk), .RN(reset), .Q(
        current_state[2]) );
  DFFRQX2M \current_state_reg[0]  ( .D(n43), .CK(clk), .RN(reset), .Q(
        current_state[0]) );
  AND3X2M U3 ( .A(n3), .B(n27), .C(out_valid), .Y(n1) );
  AND2X2M U4 ( .A(n21), .B(n16), .Y(n2) );
  NOR3X2M U5 ( .A(current_state[1]), .B(current_state[2]), .C(current_state[0]), .Y(n32) );
  NOR2X2M U6 ( .A(n10), .B(n15), .Y(address[2]) );
  NOR2X2M U7 ( .A(n12), .B(n15), .Y(address[0]) );
  OR3X2M U8 ( .A(n37), .B(n12), .C(n9), .Y(n26) );
  NAND3X2M U9 ( .A(n12), .B(n9), .C(n38), .Y(n34) );
  NOR4X1M U10 ( .A(n11), .B(n8), .C(rx_p_data[2]), .D(rx_p_data[6]), .Y(n38)
         );
  NOR2X2M U11 ( .A(n11), .B(n15), .Y(address[1]) );
  NAND4X2M U12 ( .A(rx_p_data[2]), .B(rx_p_data[6]), .C(n11), .D(n8), .Y(n37)
         );
  AND2X2M U13 ( .A(rx_p_data[3]), .B(wr_en), .Y(wrdata[3]) );
  AND2X2M U14 ( .A(rx_p_data[6]), .B(wr_en), .Y(wrdata[6]) );
  AND2X2M U15 ( .A(rx_p_data[7]), .B(wr_en), .Y(wrdata[7]) );
  OAI21X2M U16 ( .A0(n7), .A1(n4), .B0(n46), .Y(n42) );
  INVX2M U17 ( .A(n28), .Y(n7) );
  NAND2X2M U18 ( .A(n23), .B(n2), .Y(n46) );
  INVX2M U19 ( .A(rd_en), .Y(n15) );
  INVX2M U20 ( .A(rx_p_data[0]), .Y(n12) );
  INVX2M U21 ( .A(rx_p_data[2]), .Y(n10) );
  INVX2M U22 ( .A(rx_p_data[4]), .Y(n9) );
  NAND3X2M U23 ( .A(rx_p_data[0]), .B(rx_p_data[4]), .C(n38), .Y(n35) );
  INVX2M U24 ( .A(n23), .Y(n4) );
  OAI22X1M U25 ( .A0(n19), .A1(n35), .B0(n39), .B1(n40), .Y(n28) );
  NOR2X2M U26 ( .A(n16), .B(n13), .Y(n39) );
  NOR2X2M U27 ( .A(n16), .B(n40), .Y(rd_en) );
  NAND2X2M U28 ( .A(n31), .B(n32), .Y(n23) );
  NAND3X2M U29 ( .A(rx_p_data[7]), .B(n33), .C(rx_p_data[3]), .Y(n31) );
  OAI2BB1X2M U30 ( .A0N(n34), .A1N(n35), .B0(n16), .Y(n33) );
  NOR2X2M U31 ( .A(n18), .B(n12), .Y(wrdata[0]) );
  NOR2X2M U32 ( .A(n18), .B(n11), .Y(wrdata[1]) );
  NOR2X2M U33 ( .A(n18), .B(n10), .Y(wrdata[2]) );
  NOR2X2M U34 ( .A(n18), .B(n9), .Y(wrdata[4]) );
  NOR2X2M U35 ( .A(n18), .B(n8), .Y(wrdata[5]) );
  INVX2M U36 ( .A(rx_p_data[1]), .Y(n11) );
  OR2X2M U37 ( .A(n1), .B(n20), .Y(wr_inc) );
  INVX2M U38 ( .A(n18), .Y(wr_en) );
  INVX2M U39 ( .A(rx_p_data[5]), .Y(n8) );
  INVX2M U40 ( .A(n32), .Y(n19) );
  NOR3X2M U41 ( .A(n15), .B(fifo_full), .C(n13), .Y(n20) );
  AOI32X1M U42 ( .A0(n45), .A1(n44), .A2(current_state[0]), .B0(n32), .B1(n36), 
        .Y(n30) );
  OAI31X1M U43 ( .A0(n37), .A1(rx_p_data[4]), .A2(rx_p_data[0]), .B0(n34), .Y(
        n36) );
  NOR3X2M U44 ( .A(current_state[0]), .B(current_state[2]), .C(n45), .Y(n21)
         );
  NAND2X2M U45 ( .A(n21), .B(rx_d_vld_tt), .Y(n18) );
  NAND3X2M U46 ( .A(current_state[0]), .B(n45), .C(current_state[2]), .Y(n22)
         );
  AO22X1M U47 ( .A0(alu_out[0]), .A1(n1), .B0(rddata[0]), .B1(n20), .Y(
        wr_data[0]) );
  AO22X1M U48 ( .A0(alu_out[1]), .A1(n1), .B0(rddata[1]), .B1(n20), .Y(
        wr_data[1]) );
  AO22X1M U49 ( .A0(alu_out[2]), .A1(n1), .B0(rddata[2]), .B1(n20), .Y(
        wr_data[2]) );
  AO22X1M U50 ( .A0(alu_out[3]), .A1(n1), .B0(rddata[3]), .B1(n20), .Y(
        wr_data[3]) );
  AO22X1M U51 ( .A0(alu_out[4]), .A1(n1), .B0(rddata[4]), .B1(n20), .Y(
        wr_data[4]) );
  AO22X1M U52 ( .A0(alu_out[5]), .A1(n1), .B0(rddata[5]), .B1(n20), .Y(
        wr_data[5]) );
  AO22X1M U53 ( .A0(alu_out[6]), .A1(n1), .B0(rddata[6]), .B1(n20), .Y(
        wr_data[6]) );
  AO22X1M U54 ( .A0(alu_out[7]), .A1(n1), .B0(rddata[7]), .B1(n20), .Y(
        wr_data[7]) );
  NAND3X2M U55 ( .A(current_state[1]), .B(n44), .C(current_state[0]), .Y(n40)
         );
  OAI21X2M U56 ( .A0(n29), .A1(n4), .B0(n47), .Y(n43) );
  AOI2BB1X2M U57 ( .A0N(n22), .A1N(out_valid), .B0(n28), .Y(n29) );
  NAND2X2M U58 ( .A(n23), .B(n6), .Y(n47) );
  INVX2M U59 ( .A(n30), .Y(n6) );
  INVX2M U60 ( .A(rx_d_vld_tt), .Y(n16) );
  INVX2M U61 ( .A(current_state[1]), .Y(n45) );
  INVX2M U62 ( .A(current_state[2]), .Y(n44) );
  INVX2M U63 ( .A(n24), .Y(n5) );
  AOI32X1M U64 ( .A0(n17), .A1(n45), .A2(current_state[2]), .B0(n25), .B1(n23), 
        .Y(n24) );
  INVX2M U65 ( .A(current_state[0]), .Y(n17) );
  OAI22X1M U66 ( .A0(out_valid), .A1(n22), .B0(n19), .B1(n26), .Y(n25) );
  INVX2M U67 ( .A(rddata_valid), .Y(n13) );
  INVX2M U68 ( .A(fifo_full), .Y(n3) );
  INVX2M U69 ( .A(n22), .Y(n27) );
  NOR3X2M U70 ( .A(n41), .B(n19), .C(n26), .Y(clk_div_en) );
  NAND2X2M U71 ( .A(rx_p_data[7]), .B(rx_p_data[3]), .Y(n41) );
endmodule


module alu_DW_div_uns_0 ( a, b, quotient, remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
         \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] , \u_div/SumTmp[1][5] ,
         \u_div/SumTmp[1][6] , \u_div/SumTmp[2][0] , \u_div/SumTmp[2][1] ,
         \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] , \u_div/SumTmp[2][4] ,
         \u_div/SumTmp[2][5] , \u_div/SumTmp[3][0] , \u_div/SumTmp[3][1] ,
         \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] , \u_div/SumTmp[3][4] ,
         \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] ,
         \u_div/SumTmp[4][3] , \u_div/SumTmp[5][0] , \u_div/SumTmp[5][1] ,
         \u_div/SumTmp[5][2] , \u_div/SumTmp[6][0] , \u_div/SumTmp[6][1] ,
         \u_div/SumTmp[7][0] , \u_div/CryTmp[0][1] , \u_div/CryTmp[0][2] ,
         \u_div/CryTmp[0][3] , \u_div/CryTmp[0][4] , \u_div/CryTmp[0][5] ,
         \u_div/CryTmp[0][6] , \u_div/CryTmp[0][7] , \u_div/CryTmp[1][1] ,
         \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] , \u_div/CryTmp[1][4] ,
         \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] , \u_div/CryTmp[1][7] ,
         \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] , \u_div/CryTmp[2][3] ,
         \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] , \u_div/CryTmp[2][6] ,
         \u_div/CryTmp[3][1] , \u_div/CryTmp[3][2] , \u_div/CryTmp[3][3] ,
         \u_div/CryTmp[3][4] , \u_div/CryTmp[3][5] , \u_div/CryTmp[4][1] ,
         \u_div/CryTmp[4][2] , \u_div/CryTmp[4][3] , \u_div/CryTmp[4][4] ,
         \u_div/CryTmp[5][1] , \u_div/CryTmp[5][2] , \u_div/CryTmp[5][3] ,
         \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] , \u_div/CryTmp[7][1] ,
         \u_div/PartRem[1][1] , \u_div/PartRem[1][2] , \u_div/PartRem[1][3] ,
         \u_div/PartRem[1][4] , \u_div/PartRem[1][5] , \u_div/PartRem[1][6] ,
         \u_div/PartRem[1][7] , \u_div/PartRem[2][1] , \u_div/PartRem[2][2] ,
         \u_div/PartRem[2][3] , \u_div/PartRem[2][4] , \u_div/PartRem[2][5] ,
         \u_div/PartRem[2][6] , \u_div/PartRem[3][1] , \u_div/PartRem[3][2] ,
         \u_div/PartRem[3][3] , \u_div/PartRem[3][4] , \u_div/PartRem[3][5] ,
         \u_div/PartRem[4][1] , \u_div/PartRem[4][2] , \u_div/PartRem[4][3] ,
         \u_div/PartRem[4][4] , \u_div/PartRem[5][1] , \u_div/PartRem[5][2] ,
         \u_div/PartRem[5][3] , \u_div/PartRem[6][1] , \u_div/PartRem[6][2] ,
         \u_div/PartRem[7][1] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21;

  ADDFX2M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n13), 
        .CI(\u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n15), 
        .CI(\u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(n16), 
        .CI(\u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n17), 
        .CI(\u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n14), 
        .CI(\u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n17), 
        .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n17), 
        .CI(\u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n17), 
        .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n17), 
        .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n17), 
        .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n15), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n14), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n13), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n13), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n14), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n17), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n16), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n15), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n16), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n14), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n15), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n16), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n15), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n16), 
        .CI(\u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n16), 
        .CI(\u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n12), 
        .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n11), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n12), 
        .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  INVX2M U1 ( .A(b[0]), .Y(n18) );
  XNOR2X2M U2 ( .A(n18), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  XNOR2X2M U3 ( .A(n18), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X2M U4 ( .A(n18), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X2M U5 ( .A(n18), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X2M U6 ( .A(n18), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X2M U7 ( .A(n18), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  XNOR2X2M U8 ( .A(n18), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  OR2X2M U9 ( .A(n18), .B(a[7]), .Y(\u_div/CryTmp[7][1] ) );
  NAND2X2M U10 ( .A(n2), .B(n10), .Y(\u_div/CryTmp[0][1] ) );
  NAND2X2M U11 ( .A(n2), .B(n3), .Y(\u_div/CryTmp[5][1] ) );
  INVX2M U12 ( .A(a[5]), .Y(n3) );
  INVX2M U13 ( .A(n18), .Y(n2) );
  NAND2X2M U14 ( .A(n4), .B(n5), .Y(\u_div/CryTmp[4][1] ) );
  INVX2M U15 ( .A(a[4]), .Y(n5) );
  INVX2M U16 ( .A(n18), .Y(n4) );
  NAND2X2M U17 ( .A(n6), .B(n7), .Y(\u_div/CryTmp[3][1] ) );
  INVX2M U18 ( .A(a[3]), .Y(n7) );
  INVX2M U19 ( .A(n18), .Y(n6) );
  NAND2X2M U20 ( .A(n6), .B(n8), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U21 ( .A(a[2]), .Y(n8) );
  NAND2X2M U22 ( .A(n4), .B(n9), .Y(\u_div/CryTmp[1][1] ) );
  INVX2M U23 ( .A(a[1]), .Y(n9) );
  NAND2X2M U24 ( .A(n2), .B(n1), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U25 ( .A(a[6]), .Y(n1) );
  INVX2M U26 ( .A(b[6]), .Y(n12) );
  INVX2M U27 ( .A(a[0]), .Y(n10) );
  INVX2M U28 ( .A(b[1]), .Y(n17) );
  INVX2M U29 ( .A(b[2]), .Y(n16) );
  INVX2M U30 ( .A(b[3]), .Y(n15) );
  INVX2M U31 ( .A(b[4]), .Y(n14) );
  INVX2M U32 ( .A(b[5]), .Y(n13) );
  INVX2M U33 ( .A(b[7]), .Y(n11) );
  CLKMX2X2M U34 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2M U35 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  CLKMX2X2M U36 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  CLKMX2X2M U37 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  CLKMX2X2M U38 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][3] ) );
  CLKMX2X2M U39 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  CLKMX2X2M U40 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(
        \u_div/PartRem[7][1] ) );
  CLKMX2X2M U41 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U42 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  CLKMX2X2M U43 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  CLKMX2X2M U44 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  CLKMX2X2M U45 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  CLKMX2X2M U46 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  CLKMX2X2M U47 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U48 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  CLKMX2X2M U49 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  CLKMX2X2M U50 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  CLKMX2X2M U51 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  CLKMX2X2M U52 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
  CLKMX2X2M U53 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  CLKMX2X2M U54 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  CLKMX2X2M U55 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  CLKMX2X2M U56 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  CLKMX2X2M U57 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  CLKMX2X2M U58 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  CLKMX2X2M U59 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  CLKMX2X2M U60 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][1] ) );
  CLKMX2X2M U61 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
  AND4X1M U62 ( .A(\u_div/CryTmp[7][1] ), .B(n19), .C(n17), .D(n16), .Y(
        quotient[7]) );
  AND3X1M U63 ( .A(n19), .B(n16), .C(\u_div/CryTmp[6][2] ), .Y(quotient[6]) );
  AND2X1M U64 ( .A(\u_div/CryTmp[5][3] ), .B(n19), .Y(quotient[5]) );
  AND2X1M U65 ( .A(n20), .B(n15), .Y(n19) );
  AND2X1M U66 ( .A(\u_div/CryTmp[4][4] ), .B(n20), .Y(quotient[4]) );
  AND3X1M U67 ( .A(n21), .B(n14), .C(n13), .Y(n20) );
  AND3X1M U68 ( .A(n21), .B(n13), .C(\u_div/CryTmp[3][5] ), .Y(quotient[3]) );
  AND2X1M U69 ( .A(\u_div/CryTmp[2][6] ), .B(n21), .Y(quotient[2]) );
  NOR2X1M U70 ( .A(b[6]), .B(b[7]), .Y(n21) );
  AND2X1M U71 ( .A(\u_div/CryTmp[1][7] ), .B(n11), .Y(quotient[1]) );
endmodule


module alu_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [8:0] carry;

  XOR3XLM U2_7 ( .A(A[7]), .B(n2), .C(carry[7]), .Y(DIFF[7]) );
  ADDFX2M U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  XNOR2X2M U1 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U2 ( .A(B[6]), .Y(n3) );
  INVX2M U3 ( .A(B[0]), .Y(n9) );
  INVX2M U4 ( .A(B[2]), .Y(n7) );
  INVX2M U5 ( .A(B[3]), .Y(n6) );
  INVX2M U6 ( .A(B[4]), .Y(n5) );
  INVX2M U7 ( .A(B[5]), .Y(n4) );
  NAND2X2M U8 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U9 ( .A(B[1]), .Y(n8) );
  INVX2M U10 ( .A(A[0]), .Y(n1) );
  INVX2M U11 ( .A(B[7]), .Y(n2) );
endmodule


module alu_DW01_add_0 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [7:1] carry;

  XOR3XLM U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .Y(SUM[7]) );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module alu_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][0] , \ab[6][1] , \ab[6][0] , \ab[5][2] , \ab[5][1] ,
         \ab[5][0] , \ab[4][3] , \ab[4][2] , \ab[4][1] , \ab[4][0] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][5] , \ab[2][4] , \ab[2][3] , \ab[2][2] , \ab[2][1] ,
         \ab[2][0] , \ab[1][6] , \ab[1][5] , \ab[1][4] , \ab[1][3] ,
         \ab[1][2] , \ab[1][1] , \ab[1][0] , \ab[0][7] , \ab[0][6] ,
         \ab[0][5] , \ab[0][4] , \ab[0][3] , \ab[0][2] , \ab[0][1] ,
         \CARRYB[6][0] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][3] , \CARRYB[3][2] ,
         \CARRYB[3][1] , \CARRYB[3][0] , \CARRYB[2][4] , \CARRYB[2][3] ,
         \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] , \SUMB[6][1] ,
         \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] ,
         \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] , \SUMB[3][1] , \SUMB[2][5] ,
         \SUMB[2][4] , \SUMB[2][3] , \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][6] ,
         \SUMB[1][5] , \SUMB[1][4] , \SUMB[1][3] , \SUMB[1][2] , \SUMB[1][1] ,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30;

  XOR3XLM S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .C(\SUMB[4][3] ), .Y(
        \SUMB[5][2] ) );
  XOR3XLM S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .C(\SUMB[5][2] ), .Y(
        \SUMB[6][1] ) );
  XOR3XLM S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .C(\SUMB[6][1] ), .Y(
        PRODUCT[7]) );
  XOR3XLM S2_2_5 ( .A(\ab[2][5] ), .B(n8), .C(\SUMB[1][6] ), .Y(\SUMB[2][5] )
         );
  XOR3XLM S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .C(\SUMB[2][5] ), .Y(
        \SUMB[3][4] ) );
  XOR3XLM S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .C(\SUMB[3][4] ), .Y(
        \SUMB[4][3] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(PRODUCT[6]) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(PRODUCT[5]) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(PRODUCT[4]) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(PRODUCT[3]) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n7), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(PRODUCT[2]) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n6), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n5), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n4), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n3), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  AND2X2M U2 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n7) );
  INVX2M U7 ( .A(\ab[0][6] ), .Y(n14) );
  INVX2M U8 ( .A(\ab[0][5] ), .Y(n13) );
  INVX2M U9 ( .A(\ab[0][4] ), .Y(n12) );
  INVX2M U10 ( .A(\ab[0][3] ), .Y(n11) );
  INVX2M U11 ( .A(\ab[0][2] ), .Y(n10) );
  AND2X2M U12 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n8) );
  XNOR2X2M U13 ( .A(\ab[1][0] ), .B(n9), .Y(PRODUCT[1]) );
  INVX2M U14 ( .A(\ab[0][1] ), .Y(n9) );
  CLKXOR2X2M U15 ( .A(\ab[1][6] ), .B(\ab[0][7] ), .Y(\SUMB[1][6] ) );
  XNOR2X2M U16 ( .A(\ab[1][5] ), .B(n14), .Y(\SUMB[1][5] ) );
  XNOR2X2M U17 ( .A(\ab[1][4] ), .B(n13), .Y(\SUMB[1][4] ) );
  XNOR2X2M U18 ( .A(\ab[1][3] ), .B(n12), .Y(\SUMB[1][3] ) );
  XNOR2X2M U19 ( .A(\ab[1][2] ), .B(n11), .Y(\SUMB[1][2] ) );
  XNOR2X2M U20 ( .A(\ab[1][1] ), .B(n10), .Y(\SUMB[1][1] ) );
  INVX2M U21 ( .A(A[0]), .Y(n30) );
  INVX2M U22 ( .A(A[1]), .Y(n29) );
  INVX2M U23 ( .A(A[2]), .Y(n28) );
  INVX2M U24 ( .A(A[3]), .Y(n27) );
  INVX2M U25 ( .A(A[4]), .Y(n26) );
  INVX2M U26 ( .A(A[6]), .Y(n24) );
  INVX2M U27 ( .A(A[5]), .Y(n25) );
  INVX2M U28 ( .A(A[7]), .Y(n23) );
  INVX2M U29 ( .A(B[6]), .Y(n16) );
  INVX2M U30 ( .A(B[0]), .Y(n22) );
  INVX2M U31 ( .A(B[2]), .Y(n20) );
  INVX2M U32 ( .A(B[3]), .Y(n19) );
  INVX2M U33 ( .A(B[1]), .Y(n21) );
  INVX2M U34 ( .A(B[4]), .Y(n18) );
  INVX2M U35 ( .A(B[5]), .Y(n17) );
  INVX2M U36 ( .A(B[7]), .Y(n15) );
  NOR2X1M U37 ( .A(n23), .B(n22), .Y(\ab[7][0] ) );
  NOR2X1M U38 ( .A(n21), .B(n24), .Y(\ab[6][1] ) );
  NOR2X1M U39 ( .A(n22), .B(n24), .Y(\ab[6][0] ) );
  NOR2X1M U40 ( .A(n20), .B(n25), .Y(\ab[5][2] ) );
  NOR2X1M U41 ( .A(n21), .B(n25), .Y(\ab[5][1] ) );
  NOR2X1M U42 ( .A(n22), .B(n25), .Y(\ab[5][0] ) );
  NOR2X1M U43 ( .A(n19), .B(n26), .Y(\ab[4][3] ) );
  NOR2X1M U44 ( .A(n20), .B(n26), .Y(\ab[4][2] ) );
  NOR2X1M U45 ( .A(n21), .B(n26), .Y(\ab[4][1] ) );
  NOR2X1M U46 ( .A(n22), .B(n26), .Y(\ab[4][0] ) );
  NOR2X1M U47 ( .A(n18), .B(n27), .Y(\ab[3][4] ) );
  NOR2X1M U48 ( .A(n19), .B(n27), .Y(\ab[3][3] ) );
  NOR2X1M U49 ( .A(n20), .B(n27), .Y(\ab[3][2] ) );
  NOR2X1M U50 ( .A(n21), .B(n27), .Y(\ab[3][1] ) );
  NOR2X1M U51 ( .A(n22), .B(n27), .Y(\ab[3][0] ) );
  NOR2X1M U52 ( .A(n17), .B(n28), .Y(\ab[2][5] ) );
  NOR2X1M U53 ( .A(n18), .B(n28), .Y(\ab[2][4] ) );
  NOR2X1M U54 ( .A(n19), .B(n28), .Y(\ab[2][3] ) );
  NOR2X1M U55 ( .A(n20), .B(n28), .Y(\ab[2][2] ) );
  NOR2X1M U56 ( .A(n21), .B(n28), .Y(\ab[2][1] ) );
  NOR2X1M U57 ( .A(n22), .B(n28), .Y(\ab[2][0] ) );
  NOR2X1M U58 ( .A(n16), .B(n29), .Y(\ab[1][6] ) );
  NOR2X1M U59 ( .A(n17), .B(n29), .Y(\ab[1][5] ) );
  NOR2X1M U60 ( .A(n18), .B(n29), .Y(\ab[1][4] ) );
  NOR2X1M U61 ( .A(n19), .B(n29), .Y(\ab[1][3] ) );
  NOR2X1M U62 ( .A(n20), .B(n29), .Y(\ab[1][2] ) );
  NOR2X1M U63 ( .A(n21), .B(n29), .Y(\ab[1][1] ) );
  NOR2X1M U64 ( .A(n22), .B(n29), .Y(\ab[1][0] ) );
  NOR2X1M U65 ( .A(n15), .B(n30), .Y(\ab[0][7] ) );
  NOR2X1M U66 ( .A(n16), .B(n30), .Y(\ab[0][6] ) );
  NOR2X1M U67 ( .A(n17), .B(n30), .Y(\ab[0][5] ) );
  NOR2X1M U68 ( .A(n18), .B(n30), .Y(\ab[0][4] ) );
  NOR2X1M U69 ( .A(n19), .B(n30), .Y(\ab[0][3] ) );
  NOR2X1M U70 ( .A(n20), .B(n30), .Y(\ab[0][2] ) );
  NOR2X1M U71 ( .A(n21), .B(n30), .Y(\ab[0][1] ) );
  NOR2X1M U72 ( .A(n22), .B(n30), .Y(PRODUCT[0]) );
endmodule


module alu ( a, b, alu_fun, reset, clk, en, alu_out, out_valid );
  input [7:0] a;
  input [7:0] b;
  input [3:0] alu_fun;
  output [7:0] alu_out;
  input reset, clk, en;
  output out_valid;
  wire   N88, N89, N90, N91, N92, N93, N94, N95, N96, N97, N98, N99, N100,
         N101, N102, N103, N104, N105, N106, N107, N108, N109, N110, N111,
         N112, N113, N114, N115, N116, N117, N118, N119, N152, N153, N154, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7;

  alu_DW_div_uns_0 div_52 ( .a({n11, n10, n9, n8, n7, n6, n5, n4}), .b({b[7], 
        n3, b[5:0]}), .quotient({N119, N118, N117, N116, N115, N114, N113, 
        N112}) );
  alu_DW01_sub_0 sub_44 ( .A({n11, n10, n9, n8, n7, n6, n5, n4}), .B({b[7], n3, 
        b[5:0]}), .CI(1'b0), .DIFF({N103, N102, N101, N100, N99, N98, N97, N96}) );
  alu_DW01_add_0 add_40 ( .A({n11, n10, n9, n8, n7, n6, n5, n4}), .B({b[7], n3, 
        b[5:0]}), .CI(1'b0), .SUM({N95, N94, N93, N92, N91, N90, N89, N88}) );
  alu_DW02_mult_0 mult_48 ( .A({n11, n10, n9, n8, n7, n6, n5, n4}), .B({b[7], 
        n3, b[5:0]}), .TC(1'b0), .PRODUCT({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, N111, N110, N109, N108, N107, N106, N105, 
        N104}) );
  DFFRQX2M \alu_out_reg[7]  ( .D(n116), .CK(clk), .RN(reset), .Q(alu_out[7])
         );
  DFFRQX2M \alu_out_reg[6]  ( .D(n115), .CK(clk), .RN(reset), .Q(alu_out[6])
         );
  DFFRQX2M \alu_out_reg[5]  ( .D(n114), .CK(clk), .RN(reset), .Q(alu_out[5])
         );
  DFFRQX2M \alu_out_reg[4]  ( .D(n113), .CK(clk), .RN(reset), .Q(alu_out[4])
         );
  DFFRQX2M \alu_out_reg[3]  ( .D(n112), .CK(clk), .RN(reset), .Q(alu_out[3])
         );
  DFFRQX2M \alu_out_reg[2]  ( .D(n111), .CK(clk), .RN(reset), .Q(alu_out[2])
         );
  DFFRQX2M \alu_out_reg[1]  ( .D(n110), .CK(clk), .RN(reset), .Q(alu_out[1])
         );
  DFFRQX2M \alu_out_reg[0]  ( .D(n109), .CK(clk), .RN(reset), .Q(alu_out[0])
         );
  DFFRQX2M out_valid_reg ( .D(en), .CK(clk), .RN(reset), .Q(out_valid) );
  BUFX2M U3 ( .A(a[6]), .Y(n10) );
  AOI222X1M U6 ( .A0(N106), .A1(n47), .B0(n6), .B1(n41), .C0(N114), .C1(n48), 
        .Y(n64) );
  AOI222X1M U7 ( .A0(N107), .A1(n47), .B0(n7), .B1(n41), .C0(N115), .C1(n48), 
        .Y(n71) );
  AOI222X1M U8 ( .A0(N108), .A1(n47), .B0(n8), .B1(n41), .C0(N116), .C1(n48), 
        .Y(n78) );
  AOI222X1M U9 ( .A0(N109), .A1(n47), .B0(n9), .B1(n41), .C0(N117), .C1(n48), 
        .Y(n85) );
  AOI222X1M U10 ( .A0(N110), .A1(n47), .B0(n10), .B1(n41), .C0(N118), .C1(n48), 
        .Y(n92) );
  AOI222X1M U11 ( .A0(N89), .A1(n50), .B0(N105), .B1(n47), .C0(N97), .C1(n49), 
        .Y(n52) );
  AOI222X1M U12 ( .A0(N104), .A1(n47), .B0(n41), .B1(n4), .C0(N112), .C1(n48), 
        .Y(n32) );
  OAI222X1M U13 ( .A0(n95), .A1(n135), .B0(n3), .B1(n96), .C0(n58), .C1(n141), 
        .Y(n94) );
  AOI221XLM U14 ( .A0(n10), .A1(n14), .B0(n46), .B1(n140), .C0(n13), .Y(n96)
         );
  AOI221XLM U15 ( .A0(n14), .A1(n140), .B0(n10), .B1(n40), .C0(n41), .Y(n95)
         );
  AOI221XLM U16 ( .A0(n14), .A1(n129), .B0(n11), .B1(n40), .C0(n41), .Y(n103)
         );
  INVX2M U17 ( .A(n26), .Y(n133) );
  AND3X2M U18 ( .A(n108), .B(n148), .C(n149), .Y(n50) );
  NAND2X2M U19 ( .A(n105), .B(n106), .Y(n46) );
  INVX2M U20 ( .A(n128), .Y(N153) );
  INVX2M U21 ( .A(n3), .Y(n135) );
  AND2X2M U22 ( .A(n108), .B(n97), .Y(n49) );
  BUFX2M U23 ( .A(n34), .Y(n13) );
  NOR2X2M U24 ( .A(n107), .B(n149), .Y(n34) );
  INVX2M U25 ( .A(n38), .Y(n147) );
  INVX2M U26 ( .A(n5), .Y(n145) );
  INVX2M U27 ( .A(n45), .Y(n136) );
  INVX2M U28 ( .A(n4), .Y(n146) );
  INVX2M U29 ( .A(n10), .Y(n140) );
  INVX2M U30 ( .A(n7), .Y(n143) );
  INVX2M U31 ( .A(n6), .Y(n144) );
  INVX2M U32 ( .A(n8), .Y(n142) );
  INVX2M U33 ( .A(n9), .Y(n141) );
  INVX2M U34 ( .A(n11), .Y(n129) );
  AO21XLM U35 ( .A0(alu_out[0]), .A1(n12), .B0(n30), .Y(n109) );
  AOI31X2M U36 ( .A0(n31), .A1(n32), .A2(n33), .B0(n12), .Y(n30) );
  AOI22X1M U37 ( .A0(N96), .A1(n49), .B0(N88), .B1(n50), .Y(n31) );
  AOI211X2M U38 ( .A0(n13), .A1(n146), .B0(n35), .C0(n36), .Y(n33) );
  AO21XLM U39 ( .A0(alu_out[1]), .A1(n12), .B0(n51), .Y(n110) );
  AOI31X2M U40 ( .A0(n52), .A1(n53), .A2(n54), .B0(n12), .Y(n51) );
  AOI211X2M U41 ( .A0(n6), .A1(n147), .B0(n55), .C0(n56), .Y(n54) );
  AOI222X1M U42 ( .A0(N113), .A1(n48), .B0(n13), .B1(n145), .C0(n41), .C1(n5), 
        .Y(n53) );
  AO21XLM U43 ( .A0(alu_out[2]), .A1(n12), .B0(n62), .Y(n111) );
  AOI31X2M U44 ( .A0(n63), .A1(n64), .A2(n65), .B0(n12), .Y(n62) );
  AOI22X1M U45 ( .A0(N98), .A1(n49), .B0(N90), .B1(n50), .Y(n63) );
  AOI221XLM U46 ( .A0(n7), .A1(n147), .B0(n13), .B1(n144), .C0(n66), .Y(n65)
         );
  AO21XLM U47 ( .A0(alu_out[3]), .A1(n12), .B0(n69), .Y(n112) );
  AOI31X2M U48 ( .A0(n70), .A1(n71), .A2(n72), .B0(n12), .Y(n69) );
  AOI22X1M U49 ( .A0(N99), .A1(n49), .B0(N91), .B1(n50), .Y(n70) );
  AOI221XLM U50 ( .A0(n8), .A1(n147), .B0(n13), .B1(n143), .C0(n73), .Y(n72)
         );
  AO21XLM U51 ( .A0(alu_out[4]), .A1(n12), .B0(n76), .Y(n113) );
  AOI31X2M U52 ( .A0(n77), .A1(n78), .A2(n79), .B0(n12), .Y(n76) );
  AOI22X1M U53 ( .A0(N100), .A1(n49), .B0(N92), .B1(n50), .Y(n77) );
  AOI221XLM U54 ( .A0(n9), .A1(n147), .B0(n13), .B1(n142), .C0(n80), .Y(n79)
         );
  AO21XLM U55 ( .A0(alu_out[5]), .A1(n12), .B0(n83), .Y(n114) );
  AOI31X2M U56 ( .A0(n84), .A1(n85), .A2(n86), .B0(n12), .Y(n83) );
  AOI22X1M U57 ( .A0(N101), .A1(n49), .B0(N93), .B1(n50), .Y(n84) );
  AOI221XLM U58 ( .A0(n10), .A1(n147), .B0(n13), .B1(n141), .C0(n87), .Y(n86)
         );
  AO21XLM U59 ( .A0(alu_out[6]), .A1(n12), .B0(n90), .Y(n115) );
  AOI31X2M U60 ( .A0(n91), .A1(n92), .A2(n93), .B0(n12), .Y(n90) );
  AOI22X1M U61 ( .A0(N102), .A1(n49), .B0(N94), .B1(n50), .Y(n91) );
  AOI221XLM U62 ( .A0(n11), .A1(n147), .B0(n13), .B1(n140), .C0(n94), .Y(n93)
         );
  AO21XLM U63 ( .A0(alu_out[7]), .A1(n12), .B0(n98), .Y(n116) );
  AOI31X2M U64 ( .A0(n99), .A1(n100), .A2(n101), .B0(n12), .Y(n98) );
  AOI22X1M U65 ( .A0(N103), .A1(n49), .B0(N95), .B1(n50), .Y(n99) );
  AOI22X1M U66 ( .A0(N119), .A1(n48), .B0(N111), .B1(n47), .Y(n100) );
  OAI21X2M U67 ( .A0(alu_fun[1]), .A1(n107), .B0(n106), .Y(n40) );
  OAI222X1M U68 ( .A0(n67), .A1(n132), .B0(b[2]), .B1(n68), .C0(n145), .C1(n58), .Y(n66) );
  AOI221XLM U69 ( .A0(n6), .A1(n14), .B0(n46), .B1(n144), .C0(n13), .Y(n68) );
  AOI221XLM U70 ( .A0(n14), .A1(n144), .B0(n6), .B1(n40), .C0(n41), .Y(n67) );
  OAI222X1M U71 ( .A0(n74), .A1(n134), .B0(b[3]), .B1(n75), .C0(n58), .C1(n144), .Y(n73) );
  AOI221XLM U72 ( .A0(n7), .A1(n14), .B0(n46), .B1(n143), .C0(n13), .Y(n75) );
  AOI221XLM U73 ( .A0(n14), .A1(n143), .B0(n7), .B1(n40), .C0(n41), .Y(n74) );
  OAI222X1M U74 ( .A0(n81), .A1(n139), .B0(b[4]), .B1(n82), .C0(n58), .C1(n143), .Y(n80) );
  INVX2M U75 ( .A(b[4]), .Y(n139) );
  AOI221XLM U76 ( .A0(n8), .A1(n14), .B0(n46), .B1(n142), .C0(n13), .Y(n82) );
  AOI221XLM U77 ( .A0(n14), .A1(n142), .B0(n8), .B1(n40), .C0(n41), .Y(n81) );
  OAI222X1M U78 ( .A0(n88), .A1(n138), .B0(b[5]), .B1(n89), .C0(n58), .C1(n142), .Y(n87) );
  INVX2M U79 ( .A(b[5]), .Y(n138) );
  AOI221XLM U80 ( .A0(n9), .A1(n14), .B0(n46), .B1(n141), .C0(n13), .Y(n89) );
  AOI221XLM U81 ( .A0(n14), .A1(n141), .B0(n9), .B1(n40), .C0(n41), .Y(n88) );
  INVX2M U82 ( .A(n15), .Y(n131) );
  AOI221XLM U83 ( .A0(n13), .A1(n129), .B0(n11), .B1(n41), .C0(n102), .Y(n101)
         );
  OAI222X1M U84 ( .A0(n103), .A1(n137), .B0(b[7]), .B1(n104), .C0(n58), .C1(
        n140), .Y(n102) );
  INVX2M U85 ( .A(b[7]), .Y(n137) );
  AOI221XLM U86 ( .A0(n11), .A1(n14), .B0(n46), .B1(n129), .C0(n13), .Y(n104)
         );
  NAND4X2M U87 ( .A(N154), .B(alu_fun[3]), .C(n61), .D(alu_fun[2]), .Y(n45) );
  NOR2X2M U88 ( .A(alu_fun[1]), .B(alu_fun[0]), .Y(n61) );
  NAND3BX2M U89 ( .AN(alu_fun[2]), .B(alu_fun[3]), .C(n97), .Y(n106) );
  OAI2B2X1M U90 ( .A1N(b[0]), .A0(n37), .B0(n38), .B1(n145), .Y(n36) );
  AOI221XLM U91 ( .A0(n14), .A1(n146), .B0(n4), .B1(n40), .C0(n41), .Y(n37) );
  OAI2B2X1M U92 ( .A1N(b[1]), .A0(n57), .B0(n146), .B1(n58), .Y(n56) );
  AOI221XLM U93 ( .A0(n14), .A1(n145), .B0(n5), .B1(n40), .C0(n41), .Y(n57) );
  AND3X2M U94 ( .A(n97), .B(alu_fun[2]), .C(n150), .Y(n41) );
  AND3X2M U95 ( .A(n108), .B(alu_fun[1]), .C(n148), .Y(n47) );
  OAI211X2M U96 ( .A0(b[1]), .A1(n59), .B0(n60), .C0(n45), .Y(n55) );
  NAND4X2M U97 ( .A(N153), .B(alu_fun[3]), .C(alu_fun[1]), .D(alu_fun[0]), .Y(
        n60) );
  AOI221XLM U98 ( .A0(n5), .A1(n14), .B0(n46), .B1(n145), .C0(n13), .Y(n59) );
  AND3X2M U99 ( .A(n108), .B(alu_fun[1]), .C(alu_fun[0]), .Y(n48) );
  OAI21X2M U100 ( .A0(b[0]), .A1(n42), .B0(n43), .Y(n35) );
  AOI31X2M U101 ( .A0(N152), .A1(alu_fun[3]), .A2(n44), .B0(n136), .Y(n43) );
  AOI221XLM U102 ( .A0(n4), .A1(n14), .B0(n46), .B1(n146), .C0(n13), .Y(n42)
         );
  NOR3X2M U103 ( .A(n149), .B(alu_fun[2]), .C(alu_fun[0]), .Y(n44) );
  NAND3X2M U104 ( .A(alu_fun[3]), .B(alu_fun[2]), .C(n97), .Y(n38) );
  BUFX2M U105 ( .A(a[7]), .Y(n11) );
  BUFX2M U106 ( .A(a[1]), .Y(n5) );
  BUFX2M U107 ( .A(a[0]), .Y(n4) );
  BUFX2M U108 ( .A(a[3]), .Y(n7) );
  BUFX2M U109 ( .A(a[2]), .Y(n6) );
  BUFX2M U110 ( .A(a[4]), .Y(n8) );
  BUFX2M U111 ( .A(a[5]), .Y(n9) );
  BUFX2M U112 ( .A(b[6]), .Y(n3) );
  BUFX2M U113 ( .A(n29), .Y(n12) );
  OAI21X2M U114 ( .A0(n105), .A1(n150), .B0(en), .Y(n29) );
  BUFX2M U115 ( .A(n39), .Y(n14) );
  NOR4X1M U116 ( .A(n150), .B(alu_fun[0]), .C(alu_fun[1]), .D(alu_fun[2]), .Y(
        n39) );
  INVX2M U117 ( .A(b[0]), .Y(n130) );
  INVX2M U118 ( .A(b[2]), .Y(n132) );
  INVX2M U119 ( .A(b[3]), .Y(n134) );
  INVX2M U120 ( .A(alu_fun[3]), .Y(n150) );
  NAND3X2M U121 ( .A(alu_fun[2]), .B(alu_fun[1]), .C(alu_fun[3]), .Y(n58) );
  INVX2M U122 ( .A(alu_fun[0]), .Y(n148) );
  INVX2M U123 ( .A(alu_fun[1]), .Y(n149) );
  NOR2X2M U124 ( .A(n148), .B(alu_fun[1]), .Y(n97) );
  NAND3X2M U125 ( .A(alu_fun[1]), .B(alu_fun[0]), .C(alu_fun[2]), .Y(n105) );
  NAND3X2M U126 ( .A(n148), .B(n150), .C(alu_fun[2]), .Y(n107) );
  NOR2X2M U127 ( .A(alu_fun[3]), .B(alu_fun[2]), .Y(n108) );
  NOR2X1M U128 ( .A(n129), .B(b[7]), .Y(n125) );
  NAND2BX1M U129 ( .AN(b[4]), .B(n8), .Y(n118) );
  NAND2BX1M U130 ( .AN(n8), .B(b[4]), .Y(n19) );
  CLKNAND2X2M U131 ( .A(n118), .B(n19), .Y(n120) );
  NOR2X1M U132 ( .A(n134), .B(n7), .Y(n27) );
  NOR2X1M U133 ( .A(n132), .B(n6), .Y(n18) );
  NOR2X1M U134 ( .A(n130), .B(n4), .Y(n15) );
  CLKNAND2X2M U135 ( .A(n6), .B(n132), .Y(n117) );
  NAND2BX1M U136 ( .AN(n18), .B(n117), .Y(n24) );
  AOI21X1M U137 ( .A0(n15), .A1(n145), .B0(b[1]), .Y(n16) );
  AOI211X1M U138 ( .A0(n5), .A1(n131), .B0(n24), .C0(n16), .Y(n17) );
  CLKNAND2X2M U139 ( .A(n7), .B(n134), .Y(n28) );
  OAI31X1M U140 ( .A0(n27), .A1(n18), .A2(n17), .B0(n28), .Y(n20) );
  NAND2BX1M U141 ( .AN(n9), .B(b[5]), .Y(n123) );
  OAI211X1M U142 ( .A0(n120), .A1(n20), .B0(n19), .C0(n123), .Y(n21) );
  NAND2BX1M U143 ( .AN(b[5]), .B(n9), .Y(n119) );
  XNOR2X1M U144 ( .A(n10), .B(n3), .Y(n122) );
  AOI32X1M U145 ( .A0(n21), .A1(n119), .A2(n122), .B0(n3), .B1(n140), .Y(n22)
         );
  CLKNAND2X2M U146 ( .A(b[7]), .B(n129), .Y(n126) );
  OAI21X1M U147 ( .A0(n125), .A1(n22), .B0(n126), .Y(N154) );
  CLKNAND2X2M U148 ( .A(n4), .B(n130), .Y(n25) );
  OA21X1M U149 ( .A0(n25), .A1(n145), .B0(b[1]), .Y(n23) );
  AOI211X1M U150 ( .A0(n25), .A1(n145), .B0(n24), .C0(n23), .Y(n26) );
  AOI31X1M U151 ( .A0(n133), .A1(n117), .A2(n28), .B0(n27), .Y(n121) );
  OAI2B11X1M U152 ( .A1N(n121), .A0(n120), .B0(n119), .C0(n118), .Y(n124) );
  AOI32X1M U153 ( .A0(n124), .A1(n123), .A2(n122), .B0(n10), .B1(n135), .Y(
        n127) );
  AOI2B1X1M U154 ( .A1N(n127), .A0(n126), .B0(n125), .Y(n128) );
  NOR2X1M U155 ( .A(N154), .B(N153), .Y(N152) );
endmodule


module CLK_GATE ( CLK_EN, test_mode, CLK, GATED_CLK );
  input CLK_EN, test_mode, CLK;
  output GATED_CLK;
  wire   _0_net_;

  TLATNCAX4M U0_TLATNCAX4M ( .E(_0_net_), .CK(CLK), .ECK(GATED_CLK) );
  OR2X2M U1 ( .A(CLK_EN), .B(test_mode), .Y(_0_net_) );
endmodule


module reg_file ( WrData, Address, WrEn, RdEn, CLK, RST, RdData, RdData_valid, 
        REG0, REG1, REG2, REG3 );
  input [7:0] WrData;
  input [2:0] Address;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input WrEn, RdEn, CLK, RST;
  output RdData_valid;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190;

  DFFRQX2M \RdData_reg[7]  ( .D(n120), .CK(CLK), .RN(n43), .Q(RdData[7]) );
  DFFRQX2M \RdData_reg[6]  ( .D(n118), .CK(CLK), .RN(n43), .Q(RdData[6]) );
  DFFRQX2M \RdData_reg[5]  ( .D(n116), .CK(CLK), .RN(n43), .Q(RdData[5]) );
  DFFRQX2M \RdData_reg[4]  ( .D(n114), .CK(CLK), .RN(n43), .Q(RdData[4]) );
  DFFRQX2M \RdData_reg[3]  ( .D(n112), .CK(CLK), .RN(n43), .Q(RdData[3]) );
  DFFRQX2M \RdData_reg[2]  ( .D(n110), .CK(CLK), .RN(n43), .Q(RdData[2]) );
  DFFRQX2M \RdData_reg[1]  ( .D(n108), .CK(CLK), .RN(n43), .Q(RdData[1]) );
  DFFRQX2M \RdData_reg[0]  ( .D(n106), .CK(CLK), .RN(n42), .Q(RdData[0]) );
  DFFRQX2M \Regfile_reg[3][0]  ( .D(n138), .CK(CLK), .RN(n44), .Q(REG3[0]) );
  DFFRQX2M \Regfile_reg[3][4]  ( .D(n142), .CK(CLK), .RN(n44), .Q(REG3[4]) );
  DFFRQX2M \Regfile_reg[3][2]  ( .D(n140), .CK(CLK), .RN(n44), .Q(REG3[2]) );
  DFFRQX2M \Regfile_reg[3][3]  ( .D(n141), .CK(CLK), .RN(n44), .Q(REG3[3]) );
  DFFRQX2M \Regfile_reg[3][6]  ( .D(n144), .CK(CLK), .RN(n44), .Q(REG3[6]) );
  DFFRQX2M \Regfile_reg[3][7]  ( .D(n145), .CK(CLK), .RN(n42), .Q(REG3[7]) );
  DFFSQX2M \Regfile_reg[3][5]  ( .D(n143), .CK(CLK), .SN(n42), .Q(REG3[5]) );
  DFFRQX2M \Regfile_reg[1][6]  ( .D(n128), .CK(CLK), .RN(n44), .Q(REG1[6]) );
  DFFRQX2M \Regfile_reg[0][7]  ( .D(n121), .CK(CLK), .RN(n43), .Q(REG0[7]) );
  DFFRQX2M \Regfile_reg[0][6]  ( .D(n119), .CK(CLK), .RN(n43), .Q(REG0[6]) );
  DFFRQX2M \Regfile_reg[0][5]  ( .D(n117), .CK(CLK), .RN(n43), .Q(REG0[5]) );
  DFFRQX2M \Regfile_reg[0][4]  ( .D(n115), .CK(CLK), .RN(n43), .Q(REG0[4]) );
  DFFRQX2M \Regfile_reg[0][3]  ( .D(n113), .CK(CLK), .RN(n43), .Q(REG0[3]) );
  DFFRQX2M \Regfile_reg[0][2]  ( .D(n111), .CK(CLK), .RN(n43), .Q(REG0[2]) );
  DFFRQX2M \Regfile_reg[0][1]  ( .D(n109), .CK(CLK), .RN(n43), .Q(REG0[1]) );
  DFFRQX2M \Regfile_reg[0][0]  ( .D(n107), .CK(CLK), .RN(n42), .Q(REG0[0]) );
  DFFSQX2M \Regfile_reg[2][0]  ( .D(n130), .CK(CLK), .SN(n42), .Q(REG2[0]) );
  DFFRQX2M \Regfile_reg[2][1]  ( .D(n131), .CK(CLK), .RN(n44), .Q(REG2[1]) );
  DFFRQX2M \Regfile_reg[3][1]  ( .D(n139), .CK(CLK), .RN(n44), .Q(REG3[1]) );
  DFFRX1M \Regfile_reg[7][7]  ( .D(n177), .CK(CLK), .RN(n40), .QN(n1) );
  DFFRX1M \Regfile_reg[7][6]  ( .D(n176), .CK(CLK), .RN(n40), .QN(n2) );
  DFFRX1M \Regfile_reg[7][5]  ( .D(n175), .CK(CLK), .RN(n40), .QN(n3) );
  DFFRX1M \Regfile_reg[7][4]  ( .D(n174), .CK(CLK), .RN(n40), .QN(n4) );
  DFFRX1M \Regfile_reg[7][3]  ( .D(n173), .CK(CLK), .RN(n40), .QN(n5) );
  DFFRX1M \Regfile_reg[7][2]  ( .D(n172), .CK(CLK), .RN(n40), .QN(n6) );
  DFFRX1M \Regfile_reg[7][1]  ( .D(n171), .CK(CLK), .RN(n40), .QN(n7) );
  DFFRX1M \Regfile_reg[7][0]  ( .D(n170), .CK(CLK), .RN(n40), .QN(n8) );
  DFFRX1M \Regfile_reg[6][7]  ( .D(n169), .CK(CLK), .RN(n40), .QN(n9) );
  DFFRX1M \Regfile_reg[6][6]  ( .D(n168), .CK(CLK), .RN(n40), .QN(n10) );
  DFFRX1M \Regfile_reg[6][5]  ( .D(n167), .CK(CLK), .RN(n40), .QN(n11) );
  DFFRX1M \Regfile_reg[6][4]  ( .D(n166), .CK(CLK), .RN(n41), .QN(n12) );
  DFFRX1M \Regfile_reg[6][3]  ( .D(n165), .CK(CLK), .RN(n41), .QN(n13) );
  DFFRX1M \Regfile_reg[6][2]  ( .D(n164), .CK(CLK), .RN(n41), .QN(n14) );
  DFFRX1M \Regfile_reg[6][1]  ( .D(n163), .CK(CLK), .RN(n41), .QN(n15) );
  DFFRX1M \Regfile_reg[6][0]  ( .D(n162), .CK(CLK), .RN(n41), .QN(n16) );
  DFFRX1M \Regfile_reg[5][7]  ( .D(n161), .CK(CLK), .RN(n41), .QN(n17) );
  DFFRX1M \Regfile_reg[5][6]  ( .D(n160), .CK(CLK), .RN(n41), .QN(n18) );
  DFFRX1M \Regfile_reg[5][5]  ( .D(n159), .CK(CLK), .RN(n41), .QN(n19) );
  DFFRX1M \Regfile_reg[5][4]  ( .D(n158), .CK(CLK), .RN(n40), .QN(n20) );
  DFFRX1M \Regfile_reg[5][3]  ( .D(n157), .CK(CLK), .RN(n41), .QN(n21) );
  DFFRX1M \Regfile_reg[5][2]  ( .D(n156), .CK(CLK), .RN(n41), .QN(n22) );
  DFFRX1M \Regfile_reg[5][1]  ( .D(n155), .CK(CLK), .RN(n42), .QN(n23) );
  DFFRX1M \Regfile_reg[5][0]  ( .D(n154), .CK(CLK), .RN(n42), .QN(n24) );
  DFFRX1M \Regfile_reg[4][7]  ( .D(n153), .CK(CLK), .RN(n41), .QN(n25) );
  DFFRX1M \Regfile_reg[4][6]  ( .D(n152), .CK(CLK), .RN(n42), .QN(n26) );
  DFFRX1M \Regfile_reg[4][5]  ( .D(n151), .CK(CLK), .RN(n41), .QN(n27) );
  DFFRX1M \Regfile_reg[4][4]  ( .D(n150), .CK(CLK), .RN(n42), .QN(n28) );
  DFFRX1M \Regfile_reg[4][3]  ( .D(n149), .CK(CLK), .RN(n42), .QN(n29) );
  DFFRX1M \Regfile_reg[4][2]  ( .D(n148), .CK(CLK), .RN(n42), .QN(n30) );
  DFFRX1M \Regfile_reg[4][1]  ( .D(n147), .CK(CLK), .RN(n42), .QN(n31) );
  DFFRX1M \Regfile_reg[4][0]  ( .D(n146), .CK(CLK), .RN(n42), .QN(n32) );
  DFFRQX2M \Regfile_reg[2][4]  ( .D(n134), .CK(CLK), .RN(n44), .Q(REG2[4]) );
  DFFSQX2M \Regfile_reg[2][7]  ( .D(n137), .CK(CLK), .SN(n42), .Q(REG2[7]) );
  DFFRQX2M \Regfile_reg[1][1]  ( .D(n123), .CK(CLK), .RN(n43), .Q(REG1[1]) );
  DFFRQX2M \Regfile_reg[2][6]  ( .D(n136), .CK(CLK), .RN(n44), .Q(REG2[6]) );
  DFFRQX2M \Regfile_reg[1][5]  ( .D(n127), .CK(CLK), .RN(n44), .Q(REG1[5]) );
  DFFRQX2M \Regfile_reg[1][4]  ( .D(n126), .CK(CLK), .RN(n44), .Q(REG1[4]) );
  DFFRQX2M \Regfile_reg[1][7]  ( .D(n129), .CK(CLK), .RN(n44), .Q(REG1[7]) );
  DFFRQX2M \Regfile_reg[2][3]  ( .D(n133), .CK(CLK), .RN(n44), .Q(REG2[3]) );
  DFFRQX2M \Regfile_reg[1][3]  ( .D(n125), .CK(CLK), .RN(n44), .Q(REG1[3]) );
  DFFRQX2M \Regfile_reg[1][2]  ( .D(n124), .CK(CLK), .RN(n43), .Q(REG1[2]) );
  DFFRQX2M \Regfile_reg[1][0]  ( .D(n122), .CK(CLK), .RN(n43), .Q(REG1[0]) );
  DFFRQX2M \Regfile_reg[2][2]  ( .D(n132), .CK(CLK), .RN(n44), .Q(REG2[2]) );
  DFFRQX2M RdData_valid_reg ( .D(n178), .CK(CLK), .RN(n43), .Q(RdData_valid)
         );
  DFFRQX2M \Regfile_reg[2][5]  ( .D(n135), .CK(CLK), .RN(n44), .Q(REG2[5]) );
  NOR2X2M U3 ( .A(n190), .B(n33), .Y(n97) );
  NOR2X2M U4 ( .A(n190), .B(n188), .Y(n99) );
  INVX2M U5 ( .A(n36), .Y(n184) );
  INVX2M U6 ( .A(n102), .Y(n182) );
  INVX2M U7 ( .A(n103), .Y(n183) );
  INVX2M U8 ( .A(n104), .Y(n179) );
  INVX2M U9 ( .A(n105), .Y(n180) );
  BUFX2M U10 ( .A(n59), .Y(n37) );
  BUFX2M U11 ( .A(n59), .Y(n36) );
  INVX2M U12 ( .A(n34), .Y(n181) );
  NOR2X2M U13 ( .A(n186), .B(Address[2]), .Y(n56) );
  NAND2X2M U14 ( .A(n99), .B(n55), .Y(n98) );
  NAND2X2M U15 ( .A(n97), .B(n56), .Y(n100) );
  NAND2X2M U16 ( .A(n99), .B(n56), .Y(n101) );
  NAND2X2M U17 ( .A(n97), .B(n55), .Y(n61) );
  NAND2X2M U18 ( .A(n97), .B(n184), .Y(n102) );
  NAND2X2M U19 ( .A(n99), .B(n184), .Y(n103) );
  NAND2X2M U20 ( .A(n97), .B(n181), .Y(n104) );
  NAND2X2M U21 ( .A(n99), .B(n181), .Y(n105) );
  NAND2X2M U22 ( .A(Address[2]), .B(n186), .Y(n59) );
  BUFX2M U23 ( .A(n58), .Y(n35) );
  BUFX2M U24 ( .A(n58), .Y(n34) );
  INVX2M U25 ( .A(n33), .Y(n188) );
  NOR2X2M U26 ( .A(Address[1]), .B(Address[2]), .Y(n55) );
  BUFX2M U27 ( .A(Address[0]), .Y(n33) );
  NAND2X2M U28 ( .A(Address[2]), .B(Address[1]), .Y(n58) );
  INVX2M U29 ( .A(Address[1]), .Y(n186) );
  INVX2M U30 ( .A(n51), .Y(n189) );
  NAND2X2M U31 ( .A(RdEn), .B(n190), .Y(n51) );
  INVX2M U32 ( .A(WrData[3]), .Y(n49) );
  INVX2M U33 ( .A(WrData[6]), .Y(n46) );
  INVX2M U34 ( .A(WrData[7]), .Y(n45) );
  INVX2M U35 ( .A(WrEn), .Y(n190) );
  BUFX2M U36 ( .A(n38), .Y(n42) );
  BUFX2M U37 ( .A(n39), .Y(n43) );
  BUFX2M U38 ( .A(n38), .Y(n41) );
  BUFX2M U39 ( .A(n38), .Y(n40) );
  BUFX2M U40 ( .A(n39), .Y(n44) );
  INVX2M U41 ( .A(WrData[0]), .Y(n187) );
  INVX2M U42 ( .A(WrData[1]), .Y(n185) );
  INVX2M U43 ( .A(WrData[2]), .Y(n50) );
  INVX2M U44 ( .A(WrData[4]), .Y(n48) );
  INVX2M U45 ( .A(WrData[5]), .Y(n47) );
  BUFX2M U46 ( .A(RST), .Y(n38) );
  BUFX2M U47 ( .A(RST), .Y(n39) );
  OAI22X1M U48 ( .A0(n35), .A1(n16), .B0(n37), .B1(n32), .Y(n57) );
  OAI22X1M U49 ( .A0(n35), .A1(n8), .B0(n37), .B1(n24), .Y(n60) );
  OAI22X1M U50 ( .A0(n35), .A1(n15), .B0(n37), .B1(n31), .Y(n65) );
  OAI22X1M U51 ( .A0(n35), .A1(n7), .B0(n37), .B1(n23), .Y(n66) );
  OAI22X1M U52 ( .A0(n35), .A1(n14), .B0(n37), .B1(n30), .Y(n70) );
  OAI22X1M U53 ( .A0(n35), .A1(n6), .B0(n37), .B1(n22), .Y(n71) );
  OAI22X1M U54 ( .A0(n35), .A1(n13), .B0(n37), .B1(n29), .Y(n75) );
  OAI22X1M U55 ( .A0(n35), .A1(n5), .B0(n37), .B1(n21), .Y(n76) );
  OAI22X1M U56 ( .A0(n35), .A1(n12), .B0(n37), .B1(n28), .Y(n80) );
  OAI22X1M U57 ( .A0(n34), .A1(n4), .B0(n36), .B1(n20), .Y(n81) );
  OAI22X1M U58 ( .A0(n34), .A1(n11), .B0(n36), .B1(n27), .Y(n85) );
  OAI22X1M U59 ( .A0(n34), .A1(n3), .B0(n36), .B1(n19), .Y(n86) );
  OAI22X1M U60 ( .A0(n34), .A1(n10), .B0(n36), .B1(n26), .Y(n90) );
  OAI22X1M U61 ( .A0(n34), .A1(n2), .B0(n36), .B1(n18), .Y(n91) );
  OAI22X1M U62 ( .A0(n34), .A1(n9), .B0(n36), .B1(n25), .Y(n95) );
  OAI22X1M U63 ( .A0(n34), .A1(n1), .B0(n36), .B1(n17), .Y(n96) );
  OAI22X1M U64 ( .A0(n187), .A1(n102), .B0(n182), .B1(n32), .Y(n146) );
  OAI22X1M U65 ( .A0(n185), .A1(n102), .B0(n182), .B1(n31), .Y(n147) );
  OAI22X1M U66 ( .A0(n50), .A1(n102), .B0(n182), .B1(n30), .Y(n148) );
  OAI22X1M U67 ( .A0(n49), .A1(n102), .B0(n182), .B1(n29), .Y(n149) );
  OAI22X1M U68 ( .A0(n48), .A1(n102), .B0(n182), .B1(n28), .Y(n150) );
  OAI22X1M U69 ( .A0(n47), .A1(n102), .B0(n182), .B1(n27), .Y(n151) );
  OAI22X1M U70 ( .A0(n46), .A1(n102), .B0(n182), .B1(n26), .Y(n152) );
  OAI22X1M U71 ( .A0(n45), .A1(n102), .B0(n182), .B1(n25), .Y(n153) );
  OAI22X1M U72 ( .A0(n187), .A1(n103), .B0(n183), .B1(n24), .Y(n154) );
  OAI22X1M U73 ( .A0(n185), .A1(n103), .B0(n183), .B1(n23), .Y(n155) );
  OAI22X1M U74 ( .A0(n50), .A1(n103), .B0(n183), .B1(n22), .Y(n156) );
  OAI22X1M U75 ( .A0(n49), .A1(n103), .B0(n183), .B1(n21), .Y(n157) );
  OAI22X1M U76 ( .A0(n48), .A1(n103), .B0(n183), .B1(n20), .Y(n158) );
  OAI22X1M U77 ( .A0(n47), .A1(n103), .B0(n183), .B1(n19), .Y(n159) );
  OAI22X1M U78 ( .A0(n46), .A1(n103), .B0(n183), .B1(n18), .Y(n160) );
  OAI22X1M U79 ( .A0(n45), .A1(n103), .B0(n183), .B1(n17), .Y(n161) );
  OAI22X1M U80 ( .A0(n187), .A1(n104), .B0(n179), .B1(n16), .Y(n162) );
  OAI22X1M U81 ( .A0(n185), .A1(n104), .B0(n179), .B1(n15), .Y(n163) );
  OAI22X1M U82 ( .A0(n50), .A1(n104), .B0(n179), .B1(n14), .Y(n164) );
  OAI22X1M U83 ( .A0(n49), .A1(n104), .B0(n179), .B1(n13), .Y(n165) );
  OAI22X1M U84 ( .A0(n48), .A1(n104), .B0(n179), .B1(n12), .Y(n166) );
  OAI22X1M U85 ( .A0(n47), .A1(n104), .B0(n179), .B1(n11), .Y(n167) );
  OAI22X1M U86 ( .A0(n46), .A1(n104), .B0(n179), .B1(n10), .Y(n168) );
  OAI22X1M U87 ( .A0(n45), .A1(n104), .B0(n179), .B1(n9), .Y(n169) );
  OAI22X1M U88 ( .A0(n187), .A1(n105), .B0(n180), .B1(n8), .Y(n170) );
  OAI22X1M U89 ( .A0(n185), .A1(n105), .B0(n180), .B1(n7), .Y(n171) );
  OAI22X1M U90 ( .A0(n50), .A1(n105), .B0(n180), .B1(n6), .Y(n172) );
  OAI22X1M U91 ( .A0(n49), .A1(n105), .B0(n180), .B1(n5), .Y(n173) );
  OAI22X1M U92 ( .A0(n48), .A1(n105), .B0(n180), .B1(n4), .Y(n174) );
  OAI22X1M U93 ( .A0(n47), .A1(n105), .B0(n180), .B1(n3), .Y(n175) );
  OAI22X1M U94 ( .A0(n46), .A1(n105), .B0(n180), .B1(n2), .Y(n176) );
  OAI22X1M U95 ( .A0(n45), .A1(n105), .B0(n180), .B1(n1), .Y(n177) );
  OAI2BB2X1M U96 ( .B0(n61), .B1(n187), .A0N(n61), .A1N(REG0[0]), .Y(n107) );
  OAI2BB2X1M U97 ( .B0(n61), .B1(n185), .A0N(n61), .A1N(REG0[1]), .Y(n109) );
  OAI2BB2X1M U98 ( .B0(n61), .B1(n50), .A0N(n61), .A1N(REG0[2]), .Y(n111) );
  OAI2BB2X1M U99 ( .B0(n61), .B1(n49), .A0N(n61), .A1N(REG0[3]), .Y(n113) );
  OAI2BB2X1M U100 ( .B0(n61), .B1(n48), .A0N(n61), .A1N(REG0[4]), .Y(n115) );
  OAI2BB2X1M U101 ( .B0(n61), .B1(n47), .A0N(n61), .A1N(REG0[5]), .Y(n117) );
  OAI2BB2X1M U102 ( .B0(n61), .B1(n46), .A0N(n61), .A1N(REG0[6]), .Y(n119) );
  OAI2BB2X1M U103 ( .B0(n61), .B1(n45), .A0N(n61), .A1N(REG0[7]), .Y(n121) );
  OAI2BB2X1M U104 ( .B0(n185), .B1(n100), .A0N(n100), .A1N(REG2[1]), .Y(n131)
         );
  OAI2BB2X1M U105 ( .B0(n50), .B1(n100), .A0N(n100), .A1N(REG2[2]), .Y(n132)
         );
  OAI2BB2X1M U106 ( .B0(n49), .B1(n100), .A0N(n100), .A1N(REG2[3]), .Y(n133)
         );
  OAI2BB2X1M U107 ( .B0(n48), .B1(n100), .A0N(n100), .A1N(REG2[4]), .Y(n134)
         );
  OAI2BB2X1M U108 ( .B0(n47), .B1(n100), .A0N(n100), .A1N(REG2[5]), .Y(n135)
         );
  OAI2BB2X1M U109 ( .B0(n46), .B1(n100), .A0N(n100), .A1N(REG2[6]), .Y(n136)
         );
  OAI2BB2X1M U110 ( .B0(n187), .B1(n101), .A0N(n101), .A1N(REG3[0]), .Y(n138)
         );
  OAI2BB2X1M U111 ( .B0(n185), .B1(n101), .A0N(n101), .A1N(REG3[1]), .Y(n139)
         );
  OAI2BB2X1M U112 ( .B0(n50), .B1(n101), .A0N(n101), .A1N(REG3[2]), .Y(n140)
         );
  OAI2BB2X1M U113 ( .B0(n49), .B1(n101), .A0N(n101), .A1N(REG3[3]), .Y(n141)
         );
  OAI2BB2X1M U114 ( .B0(n48), .B1(n101), .A0N(n101), .A1N(REG3[4]), .Y(n142)
         );
  OAI2BB2X1M U115 ( .B0(n46), .B1(n101), .A0N(n101), .A1N(REG3[6]), .Y(n144)
         );
  OAI2BB2X1M U116 ( .B0(n45), .B1(n101), .A0N(n101), .A1N(REG3[7]), .Y(n145)
         );
  OAI2BB2X1M U117 ( .B0(n187), .B1(n98), .A0N(n98), .A1N(REG1[0]), .Y(n122) );
  OAI2BB2X1M U118 ( .B0(n185), .B1(n98), .A0N(n98), .A1N(REG1[1]), .Y(n123) );
  OAI2BB2X1M U119 ( .B0(n50), .B1(n98), .A0N(n98), .A1N(REG1[2]), .Y(n124) );
  OAI2BB2X1M U120 ( .B0(n49), .B1(n98), .A0N(n98), .A1N(REG1[3]), .Y(n125) );
  OAI2BB2X1M U121 ( .B0(n48), .B1(n98), .A0N(n98), .A1N(REG1[4]), .Y(n126) );
  OAI2BB2X1M U122 ( .B0(n47), .B1(n98), .A0N(n98), .A1N(REG1[5]), .Y(n127) );
  OAI2BB2X1M U123 ( .B0(n46), .B1(n98), .A0N(n98), .A1N(REG1[6]), .Y(n128) );
  OAI2BB2X1M U124 ( .B0(n45), .B1(n98), .A0N(n98), .A1N(REG1[7]), .Y(n129) );
  OAI2BB2X1M U125 ( .B0(n187), .B1(n100), .A0N(n100), .A1N(REG2[0]), .Y(n130)
         );
  OAI2BB2X1M U126 ( .B0(n45), .B1(n100), .A0N(n100), .A1N(REG2[7]), .Y(n137)
         );
  OAI2BB2X1M U127 ( .B0(n47), .B1(n101), .A0N(n101), .A1N(REG3[5]), .Y(n143)
         );
  AO22X1M U128 ( .A0(RdData[0]), .A1(n51), .B0(n189), .B1(n52), .Y(n106) );
  OAI22X1M U129 ( .A0(n53), .A1(n188), .B0(n33), .B1(n54), .Y(n52) );
  AOI221XLM U130 ( .A0(REG1[0]), .A1(n55), .B0(REG3[0]), .B1(n56), .C0(n60), 
        .Y(n53) );
  AOI221XLM U131 ( .A0(REG0[0]), .A1(n55), .B0(REG2[0]), .B1(n56), .C0(n57), 
        .Y(n54) );
  AO22X1M U132 ( .A0(RdData[1]), .A1(n51), .B0(n189), .B1(n62), .Y(n108) );
  OAI22X1M U133 ( .A0(n63), .A1(n188), .B0(n33), .B1(n64), .Y(n62) );
  AOI221XLM U134 ( .A0(REG1[1]), .A1(n55), .B0(REG3[1]), .B1(n56), .C0(n66), 
        .Y(n63) );
  AOI221XLM U135 ( .A0(REG0[1]), .A1(n55), .B0(REG2[1]), .B1(n56), .C0(n65), 
        .Y(n64) );
  AO22X1M U136 ( .A0(RdData[2]), .A1(n51), .B0(n189), .B1(n67), .Y(n110) );
  OAI22X1M U137 ( .A0(n68), .A1(n188), .B0(n33), .B1(n69), .Y(n67) );
  AOI221XLM U138 ( .A0(REG1[2]), .A1(n55), .B0(REG3[2]), .B1(n56), .C0(n71), 
        .Y(n68) );
  AOI221XLM U139 ( .A0(REG0[2]), .A1(n55), .B0(REG2[2]), .B1(n56), .C0(n70), 
        .Y(n69) );
  AO22X1M U140 ( .A0(RdData[3]), .A1(n51), .B0(n189), .B1(n72), .Y(n112) );
  OAI22X1M U141 ( .A0(n73), .A1(n188), .B0(n33), .B1(n74), .Y(n72) );
  AOI221XLM U142 ( .A0(REG1[3]), .A1(n55), .B0(REG3[3]), .B1(n56), .C0(n76), 
        .Y(n73) );
  AOI221XLM U143 ( .A0(REG0[3]), .A1(n55), .B0(REG2[3]), .B1(n56), .C0(n75), 
        .Y(n74) );
  AO22X1M U144 ( .A0(RdData[4]), .A1(n51), .B0(n189), .B1(n77), .Y(n114) );
  OAI22X1M U145 ( .A0(n78), .A1(n188), .B0(n33), .B1(n79), .Y(n77) );
  AOI221XLM U146 ( .A0(REG1[4]), .A1(n55), .B0(REG3[4]), .B1(n56), .C0(n81), 
        .Y(n78) );
  AOI221XLM U147 ( .A0(REG0[4]), .A1(n55), .B0(REG2[4]), .B1(n56), .C0(n80), 
        .Y(n79) );
  AO22X1M U148 ( .A0(RdData[5]), .A1(n51), .B0(n189), .B1(n82), .Y(n116) );
  OAI22X1M U149 ( .A0(n83), .A1(n188), .B0(n33), .B1(n84), .Y(n82) );
  AOI221XLM U150 ( .A0(REG1[5]), .A1(n55), .B0(REG3[5]), .B1(n56), .C0(n86), 
        .Y(n83) );
  AOI221XLM U151 ( .A0(REG0[5]), .A1(n55), .B0(REG2[5]), .B1(n56), .C0(n85), 
        .Y(n84) );
  AO22X1M U152 ( .A0(RdData[6]), .A1(n51), .B0(n189), .B1(n87), .Y(n118) );
  OAI22X1M U153 ( .A0(n88), .A1(n188), .B0(n33), .B1(n89), .Y(n87) );
  AOI221XLM U154 ( .A0(REG1[6]), .A1(n55), .B0(REG3[6]), .B1(n56), .C0(n91), 
        .Y(n88) );
  AOI221XLM U155 ( .A0(REG0[6]), .A1(n55), .B0(REG2[6]), .B1(n56), .C0(n90), 
        .Y(n89) );
  AO22X1M U156 ( .A0(RdData[7]), .A1(n51), .B0(n189), .B1(n92), .Y(n120) );
  OAI22X1M U157 ( .A0(n93), .A1(n188), .B0(n33), .B1(n94), .Y(n92) );
  AOI221XLM U158 ( .A0(REG1[7]), .A1(n55), .B0(REG3[7]), .B1(n56), .C0(n96), 
        .Y(n93) );
  AOI221XLM U159 ( .A0(REG0[7]), .A1(n55), .B0(REG2[7]), .B1(n56), .C0(n95), 
        .Y(n94) );
  AO21XLM U160 ( .A0(RdData_valid), .A1(n190), .B0(n189), .Y(n178) );
endmodule


module reset_sync_0 ( clk, reset, sync_reset );
  input clk, reset;
  output sync_reset;

  wire   [1:0] stages;

  DFFRQX2M \stages_reg[1]  ( .D(stages[0]), .CK(clk), .RN(reset), .Q(stages[1]) );
  DFFRQX2M \stages_reg[0]  ( .D(1'b1), .CK(clk), .RN(reset), .Q(stages[0]) );
  AND2X2M U3 ( .A(stages[1]), .B(reset), .Y(sync_reset) );
endmodule


module data_sync ( clk, reset, bus_enable, unsync_bus, sync_bus, enable_bus );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input clk, reset, bus_enable;
  output enable_bus;
  wire   sel, reg_enable_bus, n10, n11, n12, n13, n14, n15, n16, n17, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n18;
  wire   [1:0] reg_stage;
  wire   [7:0] reg_sync_bus;

  DFFRQX2M reg_enable_bus_reg ( .D(n1), .CK(clk), .RN(reset), .Q(
        reg_enable_bus) );
  DFFRQX2M \reg_stage_reg[1]  ( .D(reg_stage[0]), .CK(clk), .RN(reset), .Q(
        reg_stage[1]) );
  DFFRQX2M \reg_sync_bus_reg[7]  ( .D(n17), .CK(clk), .RN(reset), .Q(
        reg_sync_bus[7]) );
  DFFRQX2M \reg_sync_bus_reg[4]  ( .D(n14), .CK(clk), .RN(reset), .Q(
        reg_sync_bus[4]) );
  DFFRQX2M \reg_sync_bus_reg[3]  ( .D(n13), .CK(clk), .RN(reset), .Q(
        reg_sync_bus[3]) );
  DFFRQX2M \reg_stage_reg[0]  ( .D(bus_enable), .CK(clk), .RN(reset), .Q(
        reg_stage[0]) );
  DFFRQX2M \reg_sync_bus_reg[6]  ( .D(n16), .CK(clk), .RN(reset), .Q(
        reg_sync_bus[6]) );
  DFFRQX2M \reg_sync_bus_reg[5]  ( .D(n15), .CK(clk), .RN(reset), .Q(
        reg_sync_bus[5]) );
  DFFRQX2M \reg_sync_bus_reg[2]  ( .D(n12), .CK(clk), .RN(reset), .Q(
        reg_sync_bus[2]) );
  DFFRQX2M \reg_sync_bus_reg[1]  ( .D(n11), .CK(clk), .RN(reset), .Q(
        reg_sync_bus[1]) );
  DFFRQX2M \reg_sync_bus_reg[0]  ( .D(n10), .CK(clk), .RN(reset), .Q(
        reg_sync_bus[0]) );
  NOR2X2M U3 ( .A(n2), .B(n8), .Y(sync_bus[2]) );
  BUFX2M U4 ( .A(sel), .Y(n1) );
  NOR2X2M U5 ( .A(n2), .B(n4), .Y(sync_bus[6]) );
  NOR2X2M U6 ( .A(n3), .B(n2), .Y(sync_bus[7]) );
  NOR2X2M U7 ( .A(n2), .B(n7), .Y(sync_bus[3]) );
  NOR2X2M U8 ( .A(n2), .B(n18), .Y(sync_bus[0]) );
  NOR2X2M U9 ( .A(n2), .B(n6), .Y(sync_bus[4]) );
  NOR2X2M U10 ( .A(n2), .B(n9), .Y(sync_bus[1]) );
  NOR2X2M U11 ( .A(n2), .B(n5), .Y(sync_bus[5]) );
  INVX2M U12 ( .A(reset), .Y(n2) );
  INVX2M U13 ( .A(reg_sync_bus[1]), .Y(n9) );
  INVX2M U14 ( .A(reg_sync_bus[0]), .Y(n18) );
  INVX2M U15 ( .A(reg_sync_bus[2]), .Y(n8) );
  INVX2M U16 ( .A(reg_sync_bus[5]), .Y(n5) );
  INVX2M U17 ( .A(reg_sync_bus[6]), .Y(n4) );
  OAI2BB2X1M U18 ( .B0(n1), .B1(n18), .A0N(unsync_bus[0]), .A1N(n1), .Y(n10)
         );
  OAI2BB2X1M U19 ( .B0(n1), .B1(n9), .A0N(unsync_bus[1]), .A1N(n1), .Y(n11) );
  OAI2BB2X1M U20 ( .B0(n1), .B1(n8), .A0N(unsync_bus[2]), .A1N(n1), .Y(n12) );
  OAI2BB2X1M U21 ( .B0(n1), .B1(n7), .A0N(unsync_bus[3]), .A1N(n1), .Y(n13) );
  OAI2BB2X1M U22 ( .B0(n1), .B1(n6), .A0N(unsync_bus[4]), .A1N(n1), .Y(n14) );
  OAI2BB2X1M U23 ( .B0(n1), .B1(n5), .A0N(unsync_bus[5]), .A1N(n1), .Y(n15) );
  OAI2BB2X1M U24 ( .B0(n1), .B1(n4), .A0N(unsync_bus[6]), .A1N(n1), .Y(n16) );
  OAI2BB2X1M U25 ( .B0(n1), .B1(n3), .A0N(unsync_bus[7]), .A1N(n1), .Y(n17) );
  NOR2BX2M U26 ( .AN(reg_stage[1]), .B(reg_stage[0]), .Y(sel) );
  NOR2BX2M U27 ( .AN(reg_enable_bus), .B(n2), .Y(enable_bus) );
  INVX2M U28 ( .A(reg_sync_bus[7]), .Y(n3) );
  INVX2M U29 ( .A(reg_sync_bus[4]), .Y(n6) );
  INVX2M U30 ( .A(reg_sync_bus[3]), .Y(n7) );
endmodule


module fifo_wptr ( w_clk, wrst_n, winc, wq2_rptr, wptr, w_addr, w_full, 
        wire_w_full );
  input [3:0] wq2_rptr;
  output [3:0] wptr;
  output [2:0] w_addr;
  input w_clk, wrst_n, winc;
  output w_full, wire_w_full;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n1, n2, n3, n29;
  wire   [3:0] c_counter;

  DFFRQX2M \c_counter_reg[3]  ( .D(n24), .CK(w_clk), .RN(wrst_n), .Q(
        c_counter[3]) );
  DFFRQX2M \wptr_reg[0]  ( .D(n27), .CK(w_clk), .RN(wrst_n), .Q(wptr[0]) );
  DFFRQX2M \wptr_reg[1]  ( .D(n23), .CK(w_clk), .RN(wrst_n), .Q(wptr[1]) );
  DFFRQX2M \wptr_reg[3]  ( .D(n21), .CK(w_clk), .RN(wrst_n), .Q(wptr[3]) );
  DFFRQX2M \wptr_reg[2]  ( .D(n22), .CK(w_clk), .RN(wrst_n), .Q(wptr[2]) );
  DFFRQX2M \c_counter_reg[2]  ( .D(n25), .CK(w_clk), .RN(wrst_n), .Q(
        c_counter[2]) );
  DFFRQX2M \w_addr_reg[2]  ( .D(n20), .CK(w_clk), .RN(wrst_n), .Q(w_addr[2])
         );
  DFFRQX2M \c_counter_reg[1]  ( .D(n26), .CK(w_clk), .RN(wrst_n), .Q(
        c_counter[1]) );
  DFFRQX2M \c_counter_reg[0]  ( .D(n28), .CK(w_clk), .RN(wrst_n), .Q(
        c_counter[0]) );
  DFFRQX2M \w_addr_reg[1]  ( .D(n19), .CK(w_clk), .RN(wrst_n), .Q(w_addr[1])
         );
  DFFRQX2M \w_addr_reg[0]  ( .D(n18), .CK(w_clk), .RN(wrst_n), .Q(w_addr[0])
         );
  DFFRQX2M w_full_reg ( .D(n2), .CK(w_clk), .RN(wrst_n), .Q(w_full) );
  NAND2X2M U3 ( .A(winc), .B(n13), .Y(n1) );
  NAND2X2M U4 ( .A(winc), .B(n13), .Y(n4) );
  INVX2M U5 ( .A(n9), .Y(n29) );
  INVX2M U6 ( .A(n13), .Y(n2) );
  XNOR2X2M U7 ( .A(c_counter[0]), .B(n1), .Y(n28) );
  OAI2BB2X1M U8 ( .B0(n4), .B1(n12), .A0N(n4), .A1N(wptr[0]), .Y(n27) );
  XNOR2X2M U9 ( .A(c_counter[0]), .B(n5), .Y(n12) );
  OAI2BB2X1M U10 ( .B0(c_counter[0]), .B1(n1), .A0N(w_addr[0]), .A1N(n4), .Y(
        n18) );
  OAI2BB2X1M U11 ( .B0(n29), .B1(n1), .A0N(w_addr[2]), .A1N(n4), .Y(n20) );
  OAI2BB2X1M U12 ( .B0(n6), .B1(n1), .A0N(n4), .A1N(c_counter[3]), .Y(n24) );
  OAI2BB2X1M U13 ( .B0(n7), .B1(n1), .A0N(n4), .A1N(wptr[2]), .Y(n22) );
  XNOR2X2M U14 ( .A(n6), .B(n29), .Y(n7) );
  OAI2BB2X1M U15 ( .B0(n5), .B1(n1), .A0N(n4), .A1N(c_counter[1]), .Y(n26) );
  OAI2BB2X1M U16 ( .B0(n5), .B1(n4), .A0N(w_addr[1]), .A1N(n1), .Y(n19) );
  OAI2BB2X1M U17 ( .B0(n8), .B1(n4), .A0N(n1), .A1N(wptr[1]), .Y(n23) );
  XNOR2X2M U18 ( .A(n9), .B(n3), .Y(n8) );
  INVX2M U19 ( .A(n5), .Y(n3) );
  OAI2BB2X1M U20 ( .B0(n6), .B1(n4), .A0N(n1), .A1N(wptr[3]), .Y(n21) );
  OAI2BB2X1M U21 ( .B0(n29), .B1(n4), .A0N(n1), .A1N(c_counter[2]), .Y(n25) );
  NOR2BX2M U22 ( .AN(winc), .B(w_full), .Y(wire_w_full) );
  XNOR2X2M U23 ( .A(c_counter[1]), .B(c_counter[0]), .Y(n5) );
  XNOR2X2M U24 ( .A(c_counter[3]), .B(n10), .Y(n6) );
  NOR2BX2M U25 ( .AN(c_counter[2]), .B(n11), .Y(n10) );
  XNOR2X2M U26 ( .A(n11), .B(c_counter[2]), .Y(n9) );
  NAND4X2M U27 ( .A(n14), .B(n15), .C(n16), .D(n17), .Y(n13) );
  XNOR2X2M U28 ( .A(wptr[1]), .B(wq2_rptr[1]), .Y(n14) );
  XNOR2X2M U29 ( .A(wptr[0]), .B(wq2_rptr[0]), .Y(n15) );
  CLKXOR2X2M U30 ( .A(wq2_rptr[2]), .B(wptr[2]), .Y(n16) );
  NAND2X2M U31 ( .A(c_counter[0]), .B(c_counter[1]), .Y(n11) );
  CLKXOR2X2M U32 ( .A(wq2_rptr[3]), .B(wptr[3]), .Y(n17) );
endmodule


module fifo_memory ( w_clk, w_clk_en, reset, w_addr, r_addr, w_data, r_data );
  input [2:0] w_addr;
  input [2:0] r_addr;
  input [7:0] w_data;
  output [7:0] r_data;
  input w_clk, w_clk_en, reset;
  wire   N10, N11, N12, \memory[7][7] , \memory[7][6] , \memory[7][5] ,
         \memory[7][4] , \memory[7][3] , \memory[7][2] , \memory[7][1] ,
         \memory[7][0] , \memory[6][7] , \memory[6][6] , \memory[6][5] ,
         \memory[6][4] , \memory[6][3] , \memory[6][2] , \memory[6][1] ,
         \memory[6][0] , \memory[5][7] , \memory[5][6] , \memory[5][5] ,
         \memory[5][4] , \memory[5][3] , \memory[5][2] , \memory[5][1] ,
         \memory[5][0] , \memory[4][7] , \memory[4][6] , \memory[4][5] ,
         \memory[4][4] , \memory[4][3] , \memory[4][2] , \memory[4][1] ,
         \memory[4][0] , \memory[3][7] , \memory[3][6] , \memory[3][5] ,
         \memory[3][4] , \memory[3][3] , \memory[3][2] , \memory[3][1] ,
         \memory[3][0] , \memory[2][7] , \memory[2][6] , \memory[2][5] ,
         \memory[2][4] , \memory[2][3] , \memory[2][2] , \memory[2][1] ,
         \memory[2][0] , \memory[1][7] , \memory[1][6] , \memory[1][5] ,
         \memory[1][4] , \memory[1][3] , \memory[1][2] , \memory[1][1] ,
         \memory[1][0] , \memory[0][7] , \memory[0][6] , \memory[0][5] ,
         \memory[0][4] , \memory[0][3] , \memory[0][2] , \memory[0][1] ,
         \memory[0][0] , n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n1, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108;
  assign N10 = r_addr[0];
  assign N11 = r_addr[1];
  assign N12 = r_addr[2];

  DFFRQX2M \memory_reg[5][7]  ( .D(n68), .CK(w_clk), .RN(n95), .Q(
        \memory[5][7] ) );
  DFFRQX2M \memory_reg[5][6]  ( .D(n67), .CK(w_clk), .RN(n95), .Q(
        \memory[5][6] ) );
  DFFRQX2M \memory_reg[5][5]  ( .D(n66), .CK(w_clk), .RN(n95), .Q(
        \memory[5][5] ) );
  DFFRQX2M \memory_reg[5][4]  ( .D(n65), .CK(w_clk), .RN(n95), .Q(
        \memory[5][4] ) );
  DFFRQX2M \memory_reg[5][3]  ( .D(n64), .CK(w_clk), .RN(n95), .Q(
        \memory[5][3] ) );
  DFFRQX2M \memory_reg[5][2]  ( .D(n63), .CK(w_clk), .RN(n95), .Q(
        \memory[5][2] ) );
  DFFRQX2M \memory_reg[5][1]  ( .D(n62), .CK(w_clk), .RN(n95), .Q(
        \memory[5][1] ) );
  DFFRQX2M \memory_reg[5][0]  ( .D(n61), .CK(w_clk), .RN(n95), .Q(
        \memory[5][0] ) );
  DFFRQX2M \memory_reg[1][7]  ( .D(n36), .CK(w_clk), .RN(n97), .Q(
        \memory[1][7] ) );
  DFFRQX2M \memory_reg[1][6]  ( .D(n35), .CK(w_clk), .RN(n97), .Q(
        \memory[1][6] ) );
  DFFRQX2M \memory_reg[1][5]  ( .D(n34), .CK(w_clk), .RN(n97), .Q(
        \memory[1][5] ) );
  DFFRQX2M \memory_reg[1][4]  ( .D(n33), .CK(w_clk), .RN(n97), .Q(
        \memory[1][4] ) );
  DFFRQX2M \memory_reg[1][3]  ( .D(n32), .CK(w_clk), .RN(n98), .Q(
        \memory[1][3] ) );
  DFFRQX2M \memory_reg[1][2]  ( .D(n31), .CK(w_clk), .RN(n98), .Q(
        \memory[1][2] ) );
  DFFRQX2M \memory_reg[1][1]  ( .D(n30), .CK(w_clk), .RN(n98), .Q(
        \memory[1][1] ) );
  DFFRQX2M \memory_reg[1][0]  ( .D(n29), .CK(w_clk), .RN(n98), .Q(
        \memory[1][0] ) );
  DFFRQX2M \memory_reg[7][7]  ( .D(n84), .CK(w_clk), .RN(n94), .Q(
        \memory[7][7] ) );
  DFFRQX2M \memory_reg[7][6]  ( .D(n83), .CK(w_clk), .RN(n94), .Q(
        \memory[7][6] ) );
  DFFRQX2M \memory_reg[7][5]  ( .D(n82), .CK(w_clk), .RN(n94), .Q(
        \memory[7][5] ) );
  DFFRQX2M \memory_reg[7][4]  ( .D(n81), .CK(w_clk), .RN(n94), .Q(
        \memory[7][4] ) );
  DFFRQX2M \memory_reg[7][3]  ( .D(n80), .CK(w_clk), .RN(n94), .Q(
        \memory[7][3] ) );
  DFFRQX2M \memory_reg[7][2]  ( .D(n79), .CK(w_clk), .RN(n94), .Q(
        \memory[7][2] ) );
  DFFRQX2M \memory_reg[7][1]  ( .D(n78), .CK(w_clk), .RN(n94), .Q(
        \memory[7][1] ) );
  DFFRQX2M \memory_reg[7][0]  ( .D(n77), .CK(w_clk), .RN(n94), .Q(
        \memory[7][0] ) );
  DFFRQX2M \memory_reg[3][7]  ( .D(n52), .CK(w_clk), .RN(n96), .Q(
        \memory[3][7] ) );
  DFFRQX2M \memory_reg[3][6]  ( .D(n51), .CK(w_clk), .RN(n96), .Q(
        \memory[3][6] ) );
  DFFRQX2M \memory_reg[3][5]  ( .D(n50), .CK(w_clk), .RN(n96), .Q(
        \memory[3][5] ) );
  DFFRQX2M \memory_reg[3][4]  ( .D(n49), .CK(w_clk), .RN(n96), .Q(
        \memory[3][4] ) );
  DFFRQX2M \memory_reg[3][3]  ( .D(n48), .CK(w_clk), .RN(n96), .Q(
        \memory[3][3] ) );
  DFFRQX2M \memory_reg[3][2]  ( .D(n47), .CK(w_clk), .RN(n96), .Q(
        \memory[3][2] ) );
  DFFRQX2M \memory_reg[3][1]  ( .D(n46), .CK(w_clk), .RN(n96), .Q(
        \memory[3][1] ) );
  DFFRQX2M \memory_reg[3][0]  ( .D(n45), .CK(w_clk), .RN(n97), .Q(
        \memory[3][0] ) );
  DFFRQX2M \memory_reg[6][7]  ( .D(n76), .CK(w_clk), .RN(n94), .Q(
        \memory[6][7] ) );
  DFFRQX2M \memory_reg[6][6]  ( .D(n75), .CK(w_clk), .RN(n94), .Q(
        \memory[6][6] ) );
  DFFRQX2M \memory_reg[6][5]  ( .D(n74), .CK(w_clk), .RN(n94), .Q(
        \memory[6][5] ) );
  DFFRQX2M \memory_reg[6][4]  ( .D(n73), .CK(w_clk), .RN(n94), .Q(
        \memory[6][4] ) );
  DFFRQX2M \memory_reg[6][3]  ( .D(n72), .CK(w_clk), .RN(n94), .Q(
        \memory[6][3] ) );
  DFFRQX2M \memory_reg[6][2]  ( .D(n71), .CK(w_clk), .RN(n95), .Q(
        \memory[6][2] ) );
  DFFRQX2M \memory_reg[6][1]  ( .D(n70), .CK(w_clk), .RN(n95), .Q(
        \memory[6][1] ) );
  DFFRQX2M \memory_reg[6][0]  ( .D(n69), .CK(w_clk), .RN(n95), .Q(
        \memory[6][0] ) );
  DFFRQX2M \memory_reg[2][7]  ( .D(n44), .CK(w_clk), .RN(n97), .Q(
        \memory[2][7] ) );
  DFFRQX2M \memory_reg[2][6]  ( .D(n43), .CK(w_clk), .RN(n97), .Q(
        \memory[2][6] ) );
  DFFRQX2M \memory_reg[2][5]  ( .D(n42), .CK(w_clk), .RN(n97), .Q(
        \memory[2][5] ) );
  DFFRQX2M \memory_reg[2][4]  ( .D(n41), .CK(w_clk), .RN(n97), .Q(
        \memory[2][4] ) );
  DFFRQX2M \memory_reg[2][3]  ( .D(n40), .CK(w_clk), .RN(n97), .Q(
        \memory[2][3] ) );
  DFFRQX2M \memory_reg[2][2]  ( .D(n39), .CK(w_clk), .RN(n97), .Q(
        \memory[2][2] ) );
  DFFRQX2M \memory_reg[2][1]  ( .D(n38), .CK(w_clk), .RN(n97), .Q(
        \memory[2][1] ) );
  DFFRQX2M \memory_reg[2][0]  ( .D(n37), .CK(w_clk), .RN(n97), .Q(
        \memory[2][0] ) );
  DFFRQX2M \memory_reg[4][7]  ( .D(n60), .CK(w_clk), .RN(n95), .Q(
        \memory[4][7] ) );
  DFFRQX2M \memory_reg[4][6]  ( .D(n59), .CK(w_clk), .RN(n95), .Q(
        \memory[4][6] ) );
  DFFRQX2M \memory_reg[4][5]  ( .D(n58), .CK(w_clk), .RN(n96), .Q(
        \memory[4][5] ) );
  DFFRQX2M \memory_reg[4][4]  ( .D(n57), .CK(w_clk), .RN(n96), .Q(
        \memory[4][4] ) );
  DFFRQX2M \memory_reg[4][3]  ( .D(n56), .CK(w_clk), .RN(n96), .Q(
        \memory[4][3] ) );
  DFFRQX2M \memory_reg[4][2]  ( .D(n55), .CK(w_clk), .RN(n96), .Q(
        \memory[4][2] ) );
  DFFRQX2M \memory_reg[4][1]  ( .D(n54), .CK(w_clk), .RN(n96), .Q(
        \memory[4][1] ) );
  DFFRQX2M \memory_reg[4][0]  ( .D(n53), .CK(w_clk), .RN(n96), .Q(
        \memory[4][0] ) );
  DFFRQX2M \memory_reg[0][7]  ( .D(n28), .CK(w_clk), .RN(n98), .Q(
        \memory[0][7] ) );
  DFFRQX2M \memory_reg[0][6]  ( .D(n27), .CK(w_clk), .RN(n98), .Q(
        \memory[0][6] ) );
  DFFRQX2M \memory_reg[0][5]  ( .D(n26), .CK(w_clk), .RN(n98), .Q(
        \memory[0][5] ) );
  DFFRQX2M \memory_reg[0][4]  ( .D(n25), .CK(w_clk), .RN(n98), .Q(
        \memory[0][4] ) );
  DFFRQX2M \memory_reg[0][3]  ( .D(n24), .CK(w_clk), .RN(n98), .Q(
        \memory[0][3] ) );
  DFFRQX2M \memory_reg[0][2]  ( .D(n23), .CK(w_clk), .RN(n98), .Q(
        \memory[0][2] ) );
  DFFRQX2M \memory_reg[0][1]  ( .D(n22), .CK(w_clk), .RN(n98), .Q(
        \memory[0][1] ) );
  DFFRQX2M \memory_reg[0][0]  ( .D(n21), .CK(w_clk), .RN(n98), .Q(
        \memory[0][0] ) );
  NOR2BX2M U2 ( .AN(w_clk_en), .B(w_addr[2]), .Y(n12) );
  BUFX2M U3 ( .A(n92), .Y(n96) );
  BUFX2M U4 ( .A(n92), .Y(n95) );
  BUFX2M U5 ( .A(n92), .Y(n94) );
  BUFX2M U6 ( .A(n93), .Y(n97) );
  BUFX2M U7 ( .A(n93), .Y(n98) );
  BUFX2M U8 ( .A(reset), .Y(n92) );
  BUFX2M U9 ( .A(reset), .Y(n93) );
  NAND3X2M U10 ( .A(n108), .B(n107), .C(n17), .Y(n16) );
  NAND3X2M U11 ( .A(n108), .B(n107), .C(n12), .Y(n11) );
  NAND3X2M U12 ( .A(w_addr[0]), .B(n107), .C(n17), .Y(n18) );
  NAND3X2M U13 ( .A(w_addr[1]), .B(n108), .C(n17), .Y(n19) );
  NAND3X2M U14 ( .A(w_addr[1]), .B(w_addr[0]), .C(n17), .Y(n20) );
  NAND3X2M U15 ( .A(n12), .B(n107), .C(w_addr[0]), .Y(n13) );
  NAND3X2M U16 ( .A(n12), .B(n108), .C(w_addr[1]), .Y(n14) );
  NAND3X2M U17 ( .A(w_addr[0]), .B(n12), .C(w_addr[1]), .Y(n15) );
  OAI2BB2X1M U18 ( .B0(n11), .B1(n99), .A0N(\memory[0][0] ), .A1N(n11), .Y(n21) );
  OAI2BB2X1M U19 ( .B0(n11), .B1(n100), .A0N(\memory[0][1] ), .A1N(n11), .Y(
        n22) );
  OAI2BB2X1M U20 ( .B0(n11), .B1(n101), .A0N(\memory[0][2] ), .A1N(n11), .Y(
        n23) );
  OAI2BB2X1M U21 ( .B0(n11), .B1(n102), .A0N(\memory[0][3] ), .A1N(n11), .Y(
        n24) );
  OAI2BB2X1M U22 ( .B0(n11), .B1(n103), .A0N(\memory[0][4] ), .A1N(n11), .Y(
        n25) );
  OAI2BB2X1M U23 ( .B0(n11), .B1(n104), .A0N(\memory[0][5] ), .A1N(n11), .Y(
        n26) );
  OAI2BB2X1M U24 ( .B0(n11), .B1(n105), .A0N(\memory[0][6] ), .A1N(n11), .Y(
        n27) );
  OAI2BB2X1M U25 ( .B0(n11), .B1(n106), .A0N(\memory[0][7] ), .A1N(n11), .Y(
        n28) );
  OAI2BB2X1M U26 ( .B0(n99), .B1(n15), .A0N(\memory[3][0] ), .A1N(n15), .Y(n45) );
  OAI2BB2X1M U27 ( .B0(n100), .B1(n15), .A0N(\memory[3][1] ), .A1N(n15), .Y(
        n46) );
  OAI2BB2X1M U28 ( .B0(n101), .B1(n15), .A0N(\memory[3][2] ), .A1N(n15), .Y(
        n47) );
  OAI2BB2X1M U29 ( .B0(n102), .B1(n15), .A0N(\memory[3][3] ), .A1N(n15), .Y(
        n48) );
  OAI2BB2X1M U30 ( .B0(n103), .B1(n15), .A0N(\memory[3][4] ), .A1N(n15), .Y(
        n49) );
  OAI2BB2X1M U31 ( .B0(n104), .B1(n15), .A0N(\memory[3][5] ), .A1N(n15), .Y(
        n50) );
  OAI2BB2X1M U32 ( .B0(n105), .B1(n15), .A0N(\memory[3][6] ), .A1N(n15), .Y(
        n51) );
  OAI2BB2X1M U33 ( .B0(n106), .B1(n15), .A0N(\memory[3][7] ), .A1N(n15), .Y(
        n52) );
  OAI2BB2X1M U34 ( .B0(n99), .B1(n13), .A0N(\memory[1][0] ), .A1N(n13), .Y(n29) );
  OAI2BB2X1M U35 ( .B0(n100), .B1(n13), .A0N(\memory[1][1] ), .A1N(n13), .Y(
        n30) );
  OAI2BB2X1M U36 ( .B0(n101), .B1(n13), .A0N(\memory[1][2] ), .A1N(n13), .Y(
        n31) );
  OAI2BB2X1M U37 ( .B0(n102), .B1(n13), .A0N(\memory[1][3] ), .A1N(n13), .Y(
        n32) );
  OAI2BB2X1M U38 ( .B0(n103), .B1(n13), .A0N(\memory[1][4] ), .A1N(n13), .Y(
        n33) );
  OAI2BB2X1M U39 ( .B0(n104), .B1(n13), .A0N(\memory[1][5] ), .A1N(n13), .Y(
        n34) );
  OAI2BB2X1M U40 ( .B0(n105), .B1(n13), .A0N(\memory[1][6] ), .A1N(n13), .Y(
        n35) );
  OAI2BB2X1M U41 ( .B0(n106), .B1(n13), .A0N(\memory[1][7] ), .A1N(n13), .Y(
        n36) );
  OAI2BB2X1M U42 ( .B0(n99), .B1(n14), .A0N(\memory[2][0] ), .A1N(n14), .Y(n37) );
  OAI2BB2X1M U43 ( .B0(n100), .B1(n14), .A0N(\memory[2][1] ), .A1N(n14), .Y(
        n38) );
  OAI2BB2X1M U44 ( .B0(n101), .B1(n14), .A0N(\memory[2][2] ), .A1N(n14), .Y(
        n39) );
  OAI2BB2X1M U45 ( .B0(n102), .B1(n14), .A0N(\memory[2][3] ), .A1N(n14), .Y(
        n40) );
  OAI2BB2X1M U46 ( .B0(n103), .B1(n14), .A0N(\memory[2][4] ), .A1N(n14), .Y(
        n41) );
  OAI2BB2X1M U47 ( .B0(n104), .B1(n14), .A0N(\memory[2][5] ), .A1N(n14), .Y(
        n42) );
  OAI2BB2X1M U48 ( .B0(n105), .B1(n14), .A0N(\memory[2][6] ), .A1N(n14), .Y(
        n43) );
  OAI2BB2X1M U49 ( .B0(n106), .B1(n14), .A0N(\memory[2][7] ), .A1N(n14), .Y(
        n44) );
  OAI2BB2X1M U50 ( .B0(n99), .B1(n20), .A0N(\memory[7][0] ), .A1N(n20), .Y(n77) );
  OAI2BB2X1M U51 ( .B0(n100), .B1(n20), .A0N(\memory[7][1] ), .A1N(n20), .Y(
        n78) );
  OAI2BB2X1M U52 ( .B0(n101), .B1(n20), .A0N(\memory[7][2] ), .A1N(n20), .Y(
        n79) );
  OAI2BB2X1M U53 ( .B0(n102), .B1(n20), .A0N(\memory[7][3] ), .A1N(n20), .Y(
        n80) );
  OAI2BB2X1M U54 ( .B0(n103), .B1(n20), .A0N(\memory[7][4] ), .A1N(n20), .Y(
        n81) );
  OAI2BB2X1M U55 ( .B0(n104), .B1(n20), .A0N(\memory[7][5] ), .A1N(n20), .Y(
        n82) );
  OAI2BB2X1M U56 ( .B0(n105), .B1(n20), .A0N(\memory[7][6] ), .A1N(n20), .Y(
        n83) );
  OAI2BB2X1M U57 ( .B0(n106), .B1(n20), .A0N(\memory[7][7] ), .A1N(n20), .Y(
        n84) );
  OAI2BB2X1M U58 ( .B0(n99), .B1(n18), .A0N(\memory[5][0] ), .A1N(n18), .Y(n61) );
  OAI2BB2X1M U59 ( .B0(n100), .B1(n18), .A0N(\memory[5][1] ), .A1N(n18), .Y(
        n62) );
  OAI2BB2X1M U60 ( .B0(n101), .B1(n18), .A0N(\memory[5][2] ), .A1N(n18), .Y(
        n63) );
  OAI2BB2X1M U61 ( .B0(n102), .B1(n18), .A0N(\memory[5][3] ), .A1N(n18), .Y(
        n64) );
  OAI2BB2X1M U62 ( .B0(n103), .B1(n18), .A0N(\memory[5][4] ), .A1N(n18), .Y(
        n65) );
  OAI2BB2X1M U63 ( .B0(n104), .B1(n18), .A0N(\memory[5][5] ), .A1N(n18), .Y(
        n66) );
  OAI2BB2X1M U64 ( .B0(n105), .B1(n18), .A0N(\memory[5][6] ), .A1N(n18), .Y(
        n67) );
  OAI2BB2X1M U65 ( .B0(n106), .B1(n18), .A0N(\memory[5][7] ), .A1N(n18), .Y(
        n68) );
  OAI2BB2X1M U66 ( .B0(n99), .B1(n19), .A0N(\memory[6][0] ), .A1N(n19), .Y(n69) );
  OAI2BB2X1M U67 ( .B0(n100), .B1(n19), .A0N(\memory[6][1] ), .A1N(n19), .Y(
        n70) );
  OAI2BB2X1M U68 ( .B0(n101), .B1(n19), .A0N(\memory[6][2] ), .A1N(n19), .Y(
        n71) );
  OAI2BB2X1M U69 ( .B0(n102), .B1(n19), .A0N(\memory[6][3] ), .A1N(n19), .Y(
        n72) );
  OAI2BB2X1M U70 ( .B0(n103), .B1(n19), .A0N(\memory[6][4] ), .A1N(n19), .Y(
        n73) );
  OAI2BB2X1M U71 ( .B0(n104), .B1(n19), .A0N(\memory[6][5] ), .A1N(n19), .Y(
        n74) );
  OAI2BB2X1M U72 ( .B0(n105), .B1(n19), .A0N(\memory[6][6] ), .A1N(n19), .Y(
        n75) );
  OAI2BB2X1M U73 ( .B0(n106), .B1(n19), .A0N(\memory[6][7] ), .A1N(n19), .Y(
        n76) );
  OAI2BB2X1M U74 ( .B0(n99), .B1(n16), .A0N(\memory[4][0] ), .A1N(n16), .Y(n53) );
  OAI2BB2X1M U75 ( .B0(n100), .B1(n16), .A0N(\memory[4][1] ), .A1N(n16), .Y(
        n54) );
  OAI2BB2X1M U76 ( .B0(n101), .B1(n16), .A0N(\memory[4][2] ), .A1N(n16), .Y(
        n55) );
  OAI2BB2X1M U77 ( .B0(n102), .B1(n16), .A0N(\memory[4][3] ), .A1N(n16), .Y(
        n56) );
  OAI2BB2X1M U78 ( .B0(n103), .B1(n16), .A0N(\memory[4][4] ), .A1N(n16), .Y(
        n57) );
  OAI2BB2X1M U79 ( .B0(n104), .B1(n16), .A0N(\memory[4][5] ), .A1N(n16), .Y(
        n58) );
  OAI2BB2X1M U80 ( .B0(n105), .B1(n16), .A0N(\memory[4][6] ), .A1N(n16), .Y(
        n59) );
  OAI2BB2X1M U81 ( .B0(n106), .B1(n16), .A0N(\memory[4][7] ), .A1N(n16), .Y(
        n60) );
  INVX2M U82 ( .A(w_data[0]), .Y(n99) );
  INVX2M U83 ( .A(w_data[1]), .Y(n100) );
  INVX2M U84 ( .A(w_data[2]), .Y(n101) );
  INVX2M U85 ( .A(w_data[3]), .Y(n102) );
  INVX2M U86 ( .A(w_data[4]), .Y(n103) );
  INVX2M U87 ( .A(w_data[5]), .Y(n104) );
  INVX2M U88 ( .A(w_data[6]), .Y(n105) );
  INVX2M U89 ( .A(w_data[7]), .Y(n106) );
  AND2X2M U90 ( .A(w_addr[2]), .B(w_clk_en), .Y(n17) );
  INVX2M U91 ( .A(w_addr[0]), .Y(n108) );
  INVX2M U92 ( .A(w_addr[1]), .Y(n107) );
  BUFX4M U93 ( .A(N10), .Y(n91) );
  MX2X2M U94 ( .A(n88), .B(n87), .S0(N12), .Y(r_data[6]) );
  MX4X1M U95 ( .A(\memory[0][6] ), .B(\memory[1][6] ), .C(\memory[2][6] ), .D(
        \memory[3][6] ), .S0(n91), .S1(N11), .Y(n88) );
  MX4X1M U96 ( .A(\memory[4][6] ), .B(\memory[5][6] ), .C(\memory[6][6] ), .D(
        \memory[7][6] ), .S0(n91), .S1(N11), .Y(n87) );
  MX2X2M U97 ( .A(n6), .B(n5), .S0(N12), .Y(r_data[2]) );
  MX4X1M U98 ( .A(\memory[0][2] ), .B(\memory[1][2] ), .C(\memory[2][2] ), .D(
        \memory[3][2] ), .S0(n91), .S1(N11), .Y(n6) );
  MX4X1M U99 ( .A(\memory[4][2] ), .B(\memory[5][2] ), .C(\memory[6][2] ), .D(
        \memory[7][2] ), .S0(n91), .S1(N11), .Y(n5) );
  MX2X2M U100 ( .A(n90), .B(n89), .S0(N12), .Y(r_data[7]) );
  MX4X1M U101 ( .A(\memory[0][7] ), .B(\memory[1][7] ), .C(\memory[2][7] ), 
        .D(\memory[3][7] ), .S0(n91), .S1(N11), .Y(n90) );
  MX4X1M U102 ( .A(\memory[4][7] ), .B(\memory[5][7] ), .C(\memory[6][7] ), 
        .D(\memory[7][7] ), .S0(n91), .S1(N11), .Y(n89) );
  MX2X2M U103 ( .A(n8), .B(n7), .S0(N12), .Y(r_data[3]) );
  MX4X1M U104 ( .A(\memory[0][3] ), .B(\memory[1][3] ), .C(\memory[2][3] ), 
        .D(\memory[3][3] ), .S0(n91), .S1(N11), .Y(n8) );
  MX4X1M U105 ( .A(\memory[4][3] ), .B(\memory[5][3] ), .C(\memory[6][3] ), 
        .D(\memory[7][3] ), .S0(n91), .S1(N11), .Y(n7) );
  MX2X2M U106 ( .A(n86), .B(n85), .S0(N12), .Y(r_data[5]) );
  MX4X1M U107 ( .A(\memory[0][5] ), .B(\memory[1][5] ), .C(\memory[2][5] ), 
        .D(\memory[3][5] ), .S0(n91), .S1(N11), .Y(n86) );
  MX4X1M U108 ( .A(\memory[4][5] ), .B(\memory[5][5] ), .C(\memory[6][5] ), 
        .D(\memory[7][5] ), .S0(n91), .S1(N11), .Y(n85) );
  MX2X2M U109 ( .A(n4), .B(n3), .S0(N12), .Y(r_data[1]) );
  MX4X1M U110 ( .A(\memory[0][1] ), .B(\memory[1][1] ), .C(\memory[2][1] ), 
        .D(\memory[3][1] ), .S0(n91), .S1(N11), .Y(n4) );
  MX4X1M U111 ( .A(\memory[4][1] ), .B(\memory[5][1] ), .C(\memory[6][1] ), 
        .D(\memory[7][1] ), .S0(n91), .S1(N11), .Y(n3) );
  MX2X2M U112 ( .A(n10), .B(n9), .S0(N12), .Y(r_data[4]) );
  MX4X1M U113 ( .A(\memory[0][4] ), .B(\memory[1][4] ), .C(\memory[2][4] ), 
        .D(\memory[3][4] ), .S0(n91), .S1(N11), .Y(n10) );
  MX4X1M U114 ( .A(\memory[4][4] ), .B(\memory[5][4] ), .C(\memory[6][4] ), 
        .D(\memory[7][4] ), .S0(n91), .S1(N11), .Y(n9) );
  MX2X2M U115 ( .A(n2), .B(n1), .S0(N12), .Y(r_data[0]) );
  MX4X1M U116 ( .A(\memory[0][0] ), .B(\memory[1][0] ), .C(\memory[2][0] ), 
        .D(\memory[3][0] ), .S0(n91), .S1(N11), .Y(n2) );
  MX4X1M U117 ( .A(\memory[4][0] ), .B(\memory[5][0] ), .C(\memory[6][0] ), 
        .D(\memory[7][0] ), .S0(n91), .S1(N11), .Y(n1) );
endmodule


module fifo_rptr ( r_clk, r_rstn, r_inc, sync_wr_ptr, rd_addr, empty, 
        gray_rd_ptr );
  input [3:0] sync_wr_ptr;
  output [2:0] rd_addr;
  output [3:0] gray_rd_ptr;
  input r_clk, r_rstn, r_inc;
  output empty;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15;
  wire   [3:0] comb_gray_rd_ptr;

  DFFRQX2M \rd_ptr_reg[3]  ( .D(n12), .CK(r_clk), .RN(r_rstn), .Q(
        comb_gray_rd_ptr[3]) );
  DFFRX1M \rd_ptr_reg[0]  ( .D(n15), .CK(r_clk), .RN(r_rstn), .Q(rd_addr[0]), 
        .QN(n2) );
  DFFRQX2M \rd_ptr_reg[2]  ( .D(n13), .CK(r_clk), .RN(r_rstn), .Q(rd_addr[2])
         );
  DFFRQX2M \gray_rd_ptr_reg[3]  ( .D(comb_gray_rd_ptr[3]), .CK(r_clk), .RN(
        r_rstn), .Q(gray_rd_ptr[3]) );
  DFFRQX2M \gray_rd_ptr_reg[2]  ( .D(comb_gray_rd_ptr[2]), .CK(r_clk), .RN(
        r_rstn), .Q(gray_rd_ptr[2]) );
  DFFRQX2M \gray_rd_ptr_reg[1]  ( .D(comb_gray_rd_ptr[1]), .CK(r_clk), .RN(
        r_rstn), .Q(gray_rd_ptr[1]) );
  DFFRQX2M \gray_rd_ptr_reg[0]  ( .D(comb_gray_rd_ptr[0]), .CK(r_clk), .RN(
        r_rstn), .Q(gray_rd_ptr[0]) );
  DFFRQX2M \rd_ptr_reg[1]  ( .D(n14), .CK(r_clk), .RN(r_rstn), .Q(rd_addr[1])
         );
  INVX2M U3 ( .A(n7), .Y(empty) );
  XNOR2X2M U4 ( .A(comb_gray_rd_ptr[1]), .B(sync_wr_ptr[1]), .Y(n8) );
  XNOR2X2M U5 ( .A(n2), .B(rd_addr[1]), .Y(comb_gray_rd_ptr[0]) );
  NOR2X2M U6 ( .A(n6), .B(n2), .Y(n5) );
  NAND4X2M U7 ( .A(n8), .B(n9), .C(n10), .D(n11), .Y(n7) );
  XNOR2X2M U8 ( .A(comb_gray_rd_ptr[3]), .B(sync_wr_ptr[3]), .Y(n10) );
  XNOR2X2M U9 ( .A(comb_gray_rd_ptr[2]), .B(sync_wr_ptr[2]), .Y(n11) );
  XNOR2X2M U10 ( .A(comb_gray_rd_ptr[0]), .B(sync_wr_ptr[0]), .Y(n9) );
  NAND2X2M U11 ( .A(r_inc), .B(n7), .Y(n6) );
  NAND2X2M U12 ( .A(n5), .B(rd_addr[1]), .Y(n4) );
  XNOR2X2M U13 ( .A(comb_gray_rd_ptr[3]), .B(n3), .Y(n12) );
  NAND2BX2M U14 ( .AN(n4), .B(rd_addr[2]), .Y(n3) );
  CLKXOR2X2M U15 ( .A(rd_addr[1]), .B(rd_addr[2]), .Y(comb_gray_rd_ptr[1]) );
  CLKXOR2X2M U16 ( .A(comb_gray_rd_ptr[3]), .B(rd_addr[2]), .Y(
        comb_gray_rd_ptr[2]) );
  XNOR2X2M U17 ( .A(rd_addr[2]), .B(n4), .Y(n13) );
  CLKXOR2X2M U18 ( .A(rd_addr[1]), .B(n5), .Y(n14) );
  CLKXOR2X2M U19 ( .A(n2), .B(n6), .Y(n15) );
endmodule


module BIT_SYNC_0 ( CLK, RST, ASYNC, SYNC );
  input [3:0] ASYNC;
  output [3:0] SYNC;
  input CLK, RST;
  wire   \sync_reg[3][0] , \sync_reg[2][0] , \sync_reg[1][0] ,
         \sync_reg[0][0] ;

  DFFRQX2M \sync_reg_reg[1][1]  ( .D(\sync_reg[1][0] ), .CK(CLK), .RN(RST), 
        .Q(SYNC[1]) );
  DFFRQX2M \sync_reg_reg[0][1]  ( .D(\sync_reg[0][0] ), .CK(CLK), .RN(RST), 
        .Q(SYNC[0]) );
  DFFRQX2M \sync_reg_reg[3][1]  ( .D(\sync_reg[3][0] ), .CK(CLK), .RN(RST), 
        .Q(SYNC[3]) );
  DFFRQX2M \sync_reg_reg[2][1]  ( .D(\sync_reg[2][0] ), .CK(CLK), .RN(RST), 
        .Q(SYNC[2]) );
  DFFRQX2M \sync_reg_reg[3][0]  ( .D(ASYNC[3]), .CK(CLK), .RN(RST), .Q(
        \sync_reg[3][0] ) );
  DFFRQX2M \sync_reg_reg[2][0]  ( .D(ASYNC[2]), .CK(CLK), .RN(RST), .Q(
        \sync_reg[2][0] ) );
  DFFRQX2M \sync_reg_reg[1][0]  ( .D(ASYNC[1]), .CK(CLK), .RN(RST), .Q(
        \sync_reg[1][0] ) );
  DFFRQX2M \sync_reg_reg[0][0]  ( .D(ASYNC[0]), .CK(CLK), .RN(RST), .Q(
        \sync_reg[0][0] ) );
endmodule


module BIT_SYNC_1 ( CLK, RST, ASYNC, SYNC );
  input [3:0] ASYNC;
  output [3:0] SYNC;
  input CLK, RST;
  wire   \sync_reg[3][0] , \sync_reg[2][0] , \sync_reg[1][0] ,
         \sync_reg[0][0] ;

  DFFRQX2M \sync_reg_reg[3][1]  ( .D(\sync_reg[3][0] ), .CK(CLK), .RN(RST), 
        .Q(SYNC[3]) );
  DFFRQX2M \sync_reg_reg[2][1]  ( .D(\sync_reg[2][0] ), .CK(CLK), .RN(RST), 
        .Q(SYNC[2]) );
  DFFRQX2M \sync_reg_reg[1][1]  ( .D(\sync_reg[1][0] ), .CK(CLK), .RN(RST), 
        .Q(SYNC[1]) );
  DFFRQX2M \sync_reg_reg[0][1]  ( .D(\sync_reg[0][0] ), .CK(CLK), .RN(RST), 
        .Q(SYNC[0]) );
  DFFRQX2M \sync_reg_reg[3][0]  ( .D(ASYNC[3]), .CK(CLK), .RN(RST), .Q(
        \sync_reg[3][0] ) );
  DFFRQX2M \sync_reg_reg[2][0]  ( .D(ASYNC[2]), .CK(CLK), .RN(RST), .Q(
        \sync_reg[2][0] ) );
  DFFRQX2M \sync_reg_reg[1][0]  ( .D(ASYNC[1]), .CK(CLK), .RN(RST), .Q(
        \sync_reg[1][0] ) );
  DFFRQX2M \sync_reg_reg[0][0]  ( .D(ASYNC[0]), .CK(CLK), .RN(RST), .Q(
        \sync_reg[0][0] ) );
endmodule


module fifo_top ( wrst_n, reset, w_clk, winc, w_data, r_clk, rrest_n, rinc, 
        w_full, r_data, r_empty );
  input [7:0] w_data;
  output [7:0] r_data;
  input wrst_n, reset, w_clk, winc, r_clk, rrest_n, rinc;
  output w_full, r_empty;
  wire   in_full, n1, n2;
  wire   [3:0] in_wq2_rptr;
  wire   [3:0] in_wptr;
  wire   [2:0] in_w_addr;
  wire   [2:0] in_r_addr;
  wire   [3:0] in_rq2_wptr;
  wire   [3:0] in_rptr;

  fifo_wptr A0 ( .w_clk(w_clk), .wrst_n(n1), .winc(winc), .wq2_rptr(
        in_wq2_rptr), .wptr(in_wptr), .w_addr(in_w_addr), .w_full(w_full), 
        .wire_w_full(in_full) );
  fifo_memory A1 ( .w_clk(w_clk), .w_clk_en(in_full), .reset(reset), .w_addr(
        in_w_addr), .r_addr(in_r_addr), .w_data(w_data), .r_data(r_data) );
  fifo_rptr A2 ( .r_clk(r_clk), .r_rstn(rrest_n), .r_inc(rinc), .sync_wr_ptr(
        in_rq2_wptr), .rd_addr(in_r_addr), .empty(r_empty), .gray_rd_ptr(
        in_rptr) );
  BIT_SYNC_0 A3 ( .CLK(w_clk), .RST(n1), .ASYNC(in_rptr), .SYNC(in_wq2_rptr)
         );
  BIT_SYNC_1 A4 ( .CLK(r_clk), .RST(rrest_n), .ASYNC(in_wptr), .SYNC(
        in_rq2_wptr) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(wrst_n), .Y(n2) );
endmodule


module reset_sync_1 ( clk, reset, sync_reset );
  input clk, reset;
  output sync_reset;

  wire   [1:0] stages;

  DFFRQX2M \stages_reg[1]  ( .D(stages[0]), .CK(clk), .RN(reset), .Q(stages[1]) );
  DFFRQX2M \stages_reg[0]  ( .D(1'b1), .CK(clk), .RN(reset), .Q(stages[0]) );
  AND2X2M U3 ( .A(stages[1]), .B(reset), .Y(sync_reset) );
endmodule


module pluse_gen ( clk, reset, busy, rd_inc );
  input clk, reset, busy;
  output rd_inc;
  wire   n1;
  wire   [1:0] process;

  DFFRQX2M \process_reg[1]  ( .D(process[0]), .CK(clk), .RN(reset), .Q(
        process[1]) );
  DFFRQX2M \process_reg[0]  ( .D(busy), .CK(clk), .RN(reset), .Q(process[0])
         );
  NOR3BX2M U3 ( .AN(process[1]), .B(process[0]), .C(n1), .Y(rd_inc) );
  INVX2M U4 ( .A(reset), .Y(n1) );
endmodule


module uart_rx_fsm_DATA_WIDTH8 ( CLK, RST, S_DATA, Prescale, parity_enable, 
        bit_count, edge_count, par_err, stp_err, strt_glitch, strt_chk_en, 
        edge_bit_en, deser_en, par_chk_en, stp_chk_en, dat_samp_en, data_valid
 );
  input [5:0] Prescale;
  input [3:0] bit_count;
  input [5:0] edge_count;
  input CLK, RST, S_DATA, parity_enable, par_err, stp_err, strt_glitch;
  output strt_chk_en, edge_bit_en, deser_en, par_chk_en, stp_chk_en,
         dat_samp_en, data_valid;
  wire   \sub_40/carry[5] , \sub_40/carry[4] , \sub_40/carry[3] , n1, n2, n3,
         n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47;
  wire   [5:0] check_edge;
  wire   [5:0] error_check_edge;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  assign error_check_edge[0] = Prescale[0];

  DFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .CK(CLK), .RN(RST), .Q(
        current_state[2]) );
  DFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(RST), .Q(
        current_state[0]) );
  DFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .CK(CLK), .RN(RST), .Q(
        current_state[1]) );
  XNOR2X2M U3 ( .A(Prescale[1]), .B(edge_count[1]), .Y(n34) );
  INVX2M U4 ( .A(Prescale[3]), .Y(n5) );
  INVX2M U5 ( .A(error_check_edge[0]), .Y(check_edge[0]) );
  XNOR2X1M U6 ( .A(Prescale[5]), .B(\sub_40/carry[5] ), .Y(error_check_edge[5]) );
  OR2X1M U7 ( .A(Prescale[4]), .B(\sub_40/carry[4] ), .Y(\sub_40/carry[5] ) );
  XNOR2X1M U8 ( .A(\sub_40/carry[4] ), .B(Prescale[4]), .Y(error_check_edge[4]) );
  OR2X1M U9 ( .A(Prescale[3]), .B(\sub_40/carry[3] ), .Y(\sub_40/carry[4] ) );
  XNOR2X1M U10 ( .A(\sub_40/carry[3] ), .B(Prescale[3]), .Y(
        error_check_edge[3]) );
  OR2X1M U11 ( .A(Prescale[2]), .B(Prescale[1]), .Y(\sub_40/carry[3] ) );
  XNOR2X1M U12 ( .A(Prescale[1]), .B(Prescale[2]), .Y(error_check_edge[2]) );
  NAND2BX1M U13 ( .AN(Prescale[1]), .B(check_edge[0]), .Y(n1) );
  OAI2BB1X1M U14 ( .A0N(error_check_edge[0]), .A1N(Prescale[1]), .B0(n1), .Y(
        check_edge[1]) );
  NOR2X1M U15 ( .A(n1), .B(Prescale[2]), .Y(n2) );
  AO21XLM U16 ( .A0(n1), .A1(Prescale[2]), .B0(n2), .Y(check_edge[2]) );
  CLKNAND2X2M U17 ( .A(n2), .B(n5), .Y(n3) );
  OAI21X1M U18 ( .A0(n2), .A1(n5), .B0(n3), .Y(check_edge[3]) );
  XNOR2X1M U19 ( .A(Prescale[4]), .B(n3), .Y(check_edge[4]) );
  NOR2X1M U20 ( .A(Prescale[4]), .B(n3), .Y(n4) );
  CLKXOR2X2M U21 ( .A(Prescale[5]), .B(n4), .Y(check_edge[5]) );
  NOR2X1M U22 ( .A(current_state[1]), .B(n6), .Y(strt_chk_en) );
  NOR2X1M U23 ( .A(current_state[2]), .B(n7), .Y(par_chk_en) );
  OAI31X1M U24 ( .A0(n8), .A1(parity_enable), .A2(n9), .B0(n10), .Y(
        next_state[2]) );
  AOI31X1M U25 ( .A0(n11), .A1(n12), .A2(n13), .B0(stp_chk_en), .Y(n10) );
  NOR2X1M U26 ( .A(n14), .B(n15), .Y(n13) );
  CLKINVX1M U27 ( .A(bit_count[3]), .Y(n15) );
  CLKINVX1M U28 ( .A(n7), .Y(n12) );
  OAI21X1M U29 ( .A0(current_state[2]), .A1(n16), .B0(n7), .Y(next_state[1])
         );
  AOI31X1M U30 ( .A0(current_state[0]), .A1(n11), .A2(n17), .B0(
        current_state[1]), .Y(n16) );
  NOR3X1M U31 ( .A(bit_count[0]), .B(strt_glitch), .C(bit_count[3]), .Y(n17)
         );
  OAI221X1M U32 ( .A0(S_DATA), .A1(n18), .B0(n19), .B1(n8), .C0(n20), .Y(
        next_state[0]) );
  AOI31X1M U33 ( .A0(n21), .A1(n22), .A2(n23), .B0(n24), .Y(n20) );
  NOR4X1M U34 ( .A(n25), .B(n26), .C(n27), .D(n28), .Y(n24) );
  CLKXOR2X2M U35 ( .A(error_check_edge[5]), .B(edge_count[5]), .Y(n28) );
  CLKXOR2X2M U36 ( .A(error_check_edge[4]), .B(edge_count[4]), .Y(n27) );
  NAND3BX1M U37 ( .AN(bit_count[2]), .B(bit_count[3]), .C(stp_chk_en), .Y(n26)
         );
  NOR2X1M U38 ( .A(n22), .B(n7), .Y(stp_chk_en) );
  NAND4X1M U39 ( .A(n29), .B(n30), .C(n31), .D(n32), .Y(n25) );
  XNOR2X1M U40 ( .A(edge_count[2]), .B(error_check_edge[2]), .Y(n32) );
  NOR2X1M U41 ( .A(n33), .B(n34), .Y(n31) );
  CLKXOR2X2M U42 ( .A(error_check_edge[0]), .B(edge_count[0]), .Y(n33) );
  XNOR2X1M U43 ( .A(edge_count[3]), .B(error_check_edge[3]), .Y(n30) );
  MXI2X1M U44 ( .A(n35), .B(n36), .S0(parity_enable), .Y(n29) );
  CLKNAND2X2M U45 ( .A(bit_count[1]), .B(n14), .Y(n36) );
  OR2X1M U46 ( .A(bit_count[1]), .B(n14), .Y(n35) );
  MXI2X1M U47 ( .A(S_DATA), .B(n37), .S0(current_state[0]), .Y(n23) );
  NOR4BX1M U48 ( .AN(strt_glitch), .B(bit_count[3]), .C(bit_count[0]), .D(n38), 
        .Y(n37) );
  CLKINVX1M U49 ( .A(n9), .Y(n19) );
  NAND3X1M U50 ( .A(n11), .B(n14), .C(bit_count[3]), .Y(n9) );
  CLKINVX1M U51 ( .A(bit_count[0]), .Y(n14) );
  CLKINVX1M U52 ( .A(n38), .Y(n11) );
  CLKNAND2X2M U53 ( .A(n39), .B(n40), .Y(n38) );
  NOR4X1M U54 ( .A(bit_count[2]), .B(bit_count[1]), .C(n41), .D(n42), .Y(n40)
         );
  CLKXOR2X2M U55 ( .A(edge_count[0]), .B(check_edge[0]), .Y(n42) );
  CLKXOR2X2M U56 ( .A(edge_count[4]), .B(check_edge[4]), .Y(n41) );
  NOR4X1M U57 ( .A(n43), .B(n44), .C(n45), .D(n46), .Y(n39) );
  CLKXOR2X2M U58 ( .A(edge_count[3]), .B(check_edge[3]), .Y(n46) );
  CLKXOR2X2M U59 ( .A(edge_count[2]), .B(check_edge[2]), .Y(n45) );
  CLKXOR2X2M U60 ( .A(edge_count[5]), .B(check_edge[5]), .Y(n44) );
  CLKXOR2X2M U61 ( .A(edge_count[1]), .B(check_edge[1]), .Y(n43) );
  CLKNAND2X2M U62 ( .A(n6), .B(n7), .Y(edge_bit_en) );
  CLKNAND2X2M U63 ( .A(current_state[1]), .B(n47), .Y(n7) );
  CLKINVX1M U64 ( .A(n8), .Y(deser_en) );
  NAND3X1M U65 ( .A(current_state[1]), .B(n22), .C(current_state[0]), .Y(n8)
         );
  CLKINVX1M U66 ( .A(current_state[2]), .Y(n22) );
  NOR3X1M U67 ( .A(n18), .B(stp_err), .C(par_err), .Y(data_valid) );
  NAND3X1M U68 ( .A(current_state[2]), .B(current_state[1]), .C(
        current_state[0]), .Y(n18) );
  CLKNAND2X2M U69 ( .A(n21), .B(n6), .Y(dat_samp_en) );
  AO21XLM U70 ( .A0(n47), .A1(S_DATA), .B0(current_state[2]), .Y(n6) );
  CLKINVX1M U71 ( .A(current_state[0]), .Y(n47) );
  CLKINVX1M U72 ( .A(current_state[1]), .Y(n21) );
endmodule


module edge_bit_counter ( CLK, RST, Enable, Prescale, bit_count, edge_count );
  input [5:0] Prescale;
  output [3:0] bit_count;
  output [5:0] edge_count;
  input CLK, RST, Enable;
  wire   N8, N9, N10, N11, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28,
         N29, N30, N31, n4, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, \add_31/carry[5] , \add_31/carry[4] , \add_31/carry[3] ,
         \add_31/carry[2] , n1, n2, n3, n5, n6, n7, n8, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33;

  DFFRX1M \bit_count_reg[3]  ( .D(n17), .CK(CLK), .RN(RST), .Q(bit_count[3]), 
        .QN(n4) );
  DFFRQX2M \bit_count_reg[2]  ( .D(n18), .CK(CLK), .RN(RST), .Q(bit_count[2])
         );
  DFFRQX2M \bit_count_reg[1]  ( .D(n19), .CK(CLK), .RN(RST), .Q(bit_count[1])
         );
  DFFRQX2M \bit_count_reg[0]  ( .D(n20), .CK(CLK), .RN(RST), .Q(bit_count[0])
         );
  DFFRQX2M \edge_count_reg[5]  ( .D(N24), .CK(CLK), .RN(RST), .Q(edge_count[5]) );
  DFFRQX2M \edge_count_reg[4]  ( .D(N23), .CK(CLK), .RN(RST), .Q(edge_count[4]) );
  DFFRQX2M \edge_count_reg[0]  ( .D(N19), .CK(CLK), .RN(RST), .Q(edge_count[0]) );
  DFFRQX2M \edge_count_reg[3]  ( .D(N22), .CK(CLK), .RN(RST), .Q(edge_count[3]) );
  DFFRQX2M \edge_count_reg[2]  ( .D(N21), .CK(CLK), .RN(RST), .Q(edge_count[2]) );
  DFFRQX2M \edge_count_reg[1]  ( .D(N20), .CK(CLK), .RN(RST), .Q(edge_count[1]) );
  INVX2M U3 ( .A(n13), .Y(n29) );
  INVX2M U4 ( .A(Enable), .Y(n33) );
  NOR2X2M U5 ( .A(n33), .B(N31), .Y(n13) );
  AOI21X2M U6 ( .A0(n30), .A1(Enable), .B0(n13), .Y(n16) );
  NOR2BX2M U7 ( .AN(N8), .B(n29), .Y(N20) );
  NOR2BX2M U8 ( .AN(N9), .B(n29), .Y(N21) );
  NOR2BX2M U9 ( .AN(N10), .B(n29), .Y(N22) );
  NOR2BX2M U10 ( .AN(N11), .B(n29), .Y(N23) );
  OAI32X1M U11 ( .A0(n33), .A1(bit_count[0]), .A2(n13), .B0(n30), .B1(n29), 
        .Y(n20) );
  OAI32X1M U12 ( .A0(n14), .A1(bit_count[2]), .A2(n31), .B0(n15), .B1(n32), 
        .Y(n18) );
  AOI21BX2M U13 ( .A0(Enable), .A1(n31), .B0N(n16), .Y(n15) );
  OAI32X1M U14 ( .A0(n9), .A1(n10), .A2(n33), .B0(n11), .B1(n4), .Y(n17) );
  NAND3X2M U15 ( .A(N31), .B(n4), .C(bit_count[2]), .Y(n9) );
  NOR2X2M U16 ( .A(n12), .B(n13), .Y(n11) );
  AOI2BB1X2M U17 ( .A0N(n10), .A1N(n32), .B0(n33), .Y(n12) );
  NAND3X2M U18 ( .A(bit_count[0]), .B(n29), .C(Enable), .Y(n14) );
  OAI22X1M U19 ( .A0(n16), .A1(n31), .B0(bit_count[1]), .B1(n14), .Y(n19) );
  NOR2X2M U20 ( .A(n1), .B(n29), .Y(N24) );
  XNOR2X2M U21 ( .A(\add_31/carry[5] ), .B(edge_count[5]), .Y(n1) );
  NOR2X2M U22 ( .A(edge_count[0]), .B(n29), .Y(N19) );
  ADDHX1M U23 ( .A(edge_count[1]), .B(edge_count[0]), .CO(\add_31/carry[2] ), 
        .S(N8) );
  ADDHX1M U24 ( .A(edge_count[2]), .B(\add_31/carry[2] ), .CO(
        \add_31/carry[3] ), .S(N9) );
  ADDHX1M U25 ( .A(edge_count[3]), .B(\add_31/carry[3] ), .CO(
        \add_31/carry[4] ), .S(N10) );
  ADDHX1M U26 ( .A(edge_count[4]), .B(\add_31/carry[4] ), .CO(
        \add_31/carry[5] ), .S(N11) );
  NAND2X2M U27 ( .A(bit_count[1]), .B(bit_count[0]), .Y(n10) );
  INVX2M U28 ( .A(bit_count[0]), .Y(n30) );
  INVX2M U29 ( .A(bit_count[1]), .Y(n31) );
  INVX2M U30 ( .A(bit_count[2]), .Y(n32) );
  INVX2M U31 ( .A(Prescale[3]), .Y(n7) );
  INVX2M U32 ( .A(Prescale[0]), .Y(N25) );
  NAND2BX1M U33 ( .AN(Prescale[1]), .B(N25), .Y(n2) );
  OAI2BB1X1M U34 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n2), .Y(N26) );
  NOR2X1M U35 ( .A(n2), .B(Prescale[2]), .Y(n3) );
  AO21XLM U36 ( .A0(n2), .A1(Prescale[2]), .B0(n3), .Y(N27) );
  CLKNAND2X2M U37 ( .A(n3), .B(n7), .Y(n5) );
  OAI21X1M U38 ( .A0(n3), .A1(n7), .B0(n5), .Y(N28) );
  XNOR2X1M U39 ( .A(Prescale[4]), .B(n5), .Y(N29) );
  NOR2X1M U40 ( .A(Prescale[4]), .B(n5), .Y(n6) );
  CLKXOR2X2M U41 ( .A(Prescale[5]), .B(n6), .Y(N30) );
  NOR2BX1M U42 ( .AN(edge_count[0]), .B(N25), .Y(n8) );
  OAI2B2X1M U43 ( .A1N(N26), .A0(n8), .B0(edge_count[1]), .B1(n8), .Y(n24) );
  NOR2BX1M U44 ( .AN(N25), .B(edge_count[0]), .Y(n21) );
  OAI2B2X1M U45 ( .A1N(edge_count[1]), .A0(n21), .B0(N26), .B1(n21), .Y(n23)
         );
  XNOR2X1M U46 ( .A(N30), .B(edge_count[5]), .Y(n22) );
  NAND3X1M U47 ( .A(n24), .B(n23), .C(n22), .Y(n28) );
  CLKXOR2X2M U48 ( .A(N29), .B(edge_count[4]), .Y(n27) );
  CLKXOR2X2M U49 ( .A(N27), .B(edge_count[2]), .Y(n26) );
  CLKXOR2X2M U50 ( .A(N28), .B(edge_count[3]), .Y(n25) );
  NOR4X1M U51 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(N31) );
endmodule


module data_sampling ( CLK, RST, S_DATA, Prescale, edge_count, Enable, 
        sampled_bit );
  input [5:0] Prescale;
  input [5:0] edge_count;
  input CLK, RST, S_DATA, Enable;
  output sampled_bit;
  wire   N58, n19, n20, n21, \add_21/carry[4] , \add_21/carry[3] ,
         \add_21/carry[2] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;
  wire   [4:0] half_edges;
  wire   [4:0] half_edges_p1;
  wire   [4:0] half_edges_n1;
  wire   [2:0] Samples;

  DFFRQX2M \Samples_reg[2]  ( .D(n21), .CK(CLK), .RN(RST), .Q(Samples[2]) );
  DFFRQX2M \Samples_reg[1]  ( .D(n20), .CK(CLK), .RN(RST), .Q(Samples[1]) );
  DFFRQX2M \Samples_reg[0]  ( .D(n19), .CK(CLK), .RN(RST), .Q(Samples[0]) );
  DFFRQX2M sampled_bit_reg ( .D(N58), .CK(CLK), .RN(RST), .Q(sampled_bit) );
  INVX2M U3 ( .A(half_edges[2]), .Y(n8) );
  ADDHX1M U4 ( .A(half_edges[2]), .B(\add_21/carry[2] ), .CO(\add_21/carry[3] ), .S(half_edges_p1[2]) );
  ADDHX1M U5 ( .A(half_edges[1]), .B(half_edges[0]), .CO(\add_21/carry[2] ), 
        .S(half_edges_p1[1]) );
  ADDHX1M U6 ( .A(half_edges[3]), .B(\add_21/carry[3] ), .CO(\add_21/carry[4] ), .S(half_edges_p1[3]) );
  XNOR2X2M U7 ( .A(half_edges[0]), .B(edge_count[0]), .Y(n39) );
  CLKXOR2X2M U8 ( .A(edge_count[0]), .B(half_edges[0]), .Y(n23) );
  INVX2M U9 ( .A(Prescale[1]), .Y(half_edges[0]) );
  INVX2M U10 ( .A(Prescale[3]), .Y(n4) );
  NOR2X1M U11 ( .A(Prescale[2]), .B(Prescale[1]), .Y(n1) );
  AO21XLM U12 ( .A0(Prescale[1]), .A1(Prescale[2]), .B0(n1), .Y(half_edges[1])
         );
  CLKNAND2X2M U13 ( .A(n1), .B(n4), .Y(n2) );
  OAI21X1M U14 ( .A0(n1), .A1(n4), .B0(n2), .Y(half_edges[2]) );
  XNOR2X1M U15 ( .A(Prescale[4]), .B(n2), .Y(half_edges[3]) );
  NOR2X1M U16 ( .A(Prescale[4]), .B(n2), .Y(n3) );
  CLKXOR2X2M U17 ( .A(Prescale[5]), .B(n3), .Y(half_edges[4]) );
  CLKXOR2X2M U18 ( .A(\add_21/carry[4] ), .B(half_edges[4]), .Y(
        half_edges_p1[4]) );
  NOR2X1M U19 ( .A(half_edges[1]), .B(half_edges[0]), .Y(n5) );
  AO21XLM U20 ( .A0(half_edges[0]), .A1(half_edges[1]), .B0(n5), .Y(
        half_edges_n1[1]) );
  CLKNAND2X2M U21 ( .A(n5), .B(n8), .Y(n6) );
  OAI21X1M U22 ( .A0(n5), .A1(n8), .B0(n6), .Y(half_edges_n1[2]) );
  XNOR2X1M U23 ( .A(half_edges[3]), .B(n6), .Y(half_edges_n1[3]) );
  NOR2X1M U24 ( .A(half_edges[3]), .B(n6), .Y(n7) );
  CLKXOR2X2M U25 ( .A(half_edges[4]), .B(n7), .Y(half_edges_n1[4]) );
  MXI2X1M U26 ( .A(n9), .B(n10), .S0(n11), .Y(n21) );
  NOR2X1M U27 ( .A(n12), .B(n13), .Y(n11) );
  NAND4X1M U28 ( .A(n14), .B(n15), .C(n16), .D(n17), .Y(n13) );
  CLKXOR2X2M U29 ( .A(n18), .B(half_edges_p1[1]), .Y(n17) );
  XNOR2X1M U30 ( .A(edge_count[2]), .B(half_edges_p1[2]), .Y(n16) );
  XNOR2X1M U31 ( .A(edge_count[3]), .B(half_edges_p1[3]), .Y(n15) );
  CLKXOR2X2M U32 ( .A(n22), .B(half_edges_p1[4]), .Y(n14) );
  NAND4BX1M U33 ( .AN(edge_count[5]), .B(n23), .C(n24), .D(n25), .Y(n12) );
  CLKNAND2X2M U34 ( .A(Samples[2]), .B(Enable), .Y(n9) );
  MXI2X1M U35 ( .A(n10), .B(n26), .S0(n24), .Y(n20) );
  NAND4X1M U36 ( .A(n27), .B(n28), .C(n29), .D(n30), .Y(n24) );
  NOR4BX1M U37 ( .AN(n25), .B(edge_count[5]), .C(n31), .D(n32), .Y(n30) );
  CLKXOR2X2M U38 ( .A(half_edges[1]), .B(edge_count[1]), .Y(n32) );
  CLKXOR2X2M U39 ( .A(half_edges[0]), .B(edge_count[0]), .Y(n31) );
  XNOR2X1M U40 ( .A(edge_count[3]), .B(half_edges[3]), .Y(n29) );
  CLKXOR2X2M U41 ( .A(n22), .B(half_edges[4]), .Y(n28) );
  CLKINVX1M U42 ( .A(edge_count[4]), .Y(n22) );
  XNOR2X1M U43 ( .A(edge_count[2]), .B(half_edges[2]), .Y(n27) );
  CLKNAND2X2M U44 ( .A(Samples[1]), .B(Enable), .Y(n26) );
  MXI2X1M U45 ( .A(n10), .B(n33), .S0(n25), .Y(n19) );
  NAND4X1M U46 ( .A(n34), .B(n35), .C(n36), .D(n37), .Y(n25) );
  NOR3X1M U47 ( .A(n38), .B(edge_count[5]), .C(n39), .Y(n37) );
  CLKXOR2X2M U48 ( .A(half_edges_n1[4]), .B(edge_count[4]), .Y(n38) );
  XNOR2X1M U49 ( .A(edge_count[2]), .B(half_edges_n1[2]), .Y(n36) );
  XNOR2X1M U50 ( .A(edge_count[3]), .B(half_edges_n1[3]), .Y(n35) );
  CLKXOR2X2M U51 ( .A(n18), .B(half_edges_n1[1]), .Y(n34) );
  CLKINVX1M U52 ( .A(edge_count[1]), .Y(n18) );
  CLKNAND2X2M U53 ( .A(Samples[0]), .B(Enable), .Y(n33) );
  CLKNAND2X2M U54 ( .A(S_DATA), .B(Enable), .Y(n10) );
  AOI21BX1M U55 ( .A0(n40), .A1(n41), .B0N(Enable), .Y(N58) );
  OAI21X1M U56 ( .A0(Samples[0]), .A1(Samples[1]), .B0(Samples[2]), .Y(n41) );
  CLKNAND2X2M U57 ( .A(Samples[0]), .B(Samples[1]), .Y(n40) );
endmodule


module deserializer_DATA_WIDTH8 ( CLK, RST, sampled_bit, Enable, edge_count, 
        Prescale, P_DATA );
  input [5:0] edge_count;
  input [5:0] Prescale;
  output [7:0] P_DATA;
  input CLK, RST, sampled_bit, Enable;
  wire   N1, N2, N3, N4, N5, N6, N7, n1, n10, n11, n12, n13, n14, n15, n16,
         n17, n2, n3, n4, n5, n6, n7, n8, n9, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31;

  DFFRQX2M \P_DATA_reg[0]  ( .D(n10), .CK(CLK), .RN(RST), .Q(P_DATA[0]) );
  DFFRQX2M \P_DATA_reg[5]  ( .D(n15), .CK(CLK), .RN(RST), .Q(P_DATA[5]) );
  DFFRQX2M \P_DATA_reg[1]  ( .D(n11), .CK(CLK), .RN(RST), .Q(P_DATA[1]) );
  DFFRQX2M \P_DATA_reg[4]  ( .D(n14), .CK(CLK), .RN(RST), .Q(P_DATA[4]) );
  DFFRQX2M \P_DATA_reg[7]  ( .D(n17), .CK(CLK), .RN(RST), .Q(P_DATA[7]) );
  DFFRQX2M \P_DATA_reg[3]  ( .D(n13), .CK(CLK), .RN(RST), .Q(P_DATA[3]) );
  DFFRQX2M \P_DATA_reg[6]  ( .D(n16), .CK(CLK), .RN(RST), .Q(P_DATA[6]) );
  DFFRQX2M \P_DATA_reg[2]  ( .D(n12), .CK(CLK), .RN(RST), .Q(P_DATA[2]) );
  OAI22X1M U3 ( .A0(n31), .A1(n30), .B0(n1), .B1(n29), .Y(n11) );
  OAI22X1M U4 ( .A0(n31), .A1(n29), .B0(n1), .B1(n28), .Y(n12) );
  OAI22X1M U5 ( .A0(n31), .A1(n28), .B0(n1), .B1(n27), .Y(n13) );
  OAI22X1M U6 ( .A0(n31), .A1(n27), .B0(n1), .B1(n26), .Y(n14) );
  OAI22X1M U7 ( .A0(n31), .A1(n26), .B0(n1), .B1(n25), .Y(n15) );
  OAI22X1M U8 ( .A0(n31), .A1(n25), .B0(n1), .B1(n24), .Y(n16) );
  INVX2M U9 ( .A(n1), .Y(n31) );
  NAND2X2M U10 ( .A(N7), .B(Enable), .Y(n1) );
  OAI2BB2X1M U11 ( .B0(n1), .B1(n30), .A0N(P_DATA[0]), .A1N(n1), .Y(n10) );
  OAI2BB2X1M U12 ( .B0(n31), .B1(n24), .A0N(sampled_bit), .A1N(n31), .Y(n17)
         );
  INVX2M U13 ( .A(P_DATA[2]), .Y(n29) );
  INVX2M U14 ( .A(P_DATA[6]), .Y(n25) );
  INVX2M U15 ( .A(P_DATA[7]), .Y(n24) );
  INVX2M U16 ( .A(P_DATA[3]), .Y(n28) );
  INVX2M U17 ( .A(P_DATA[1]), .Y(n30) );
  INVX2M U18 ( .A(P_DATA[4]), .Y(n27) );
  INVX2M U19 ( .A(P_DATA[5]), .Y(n26) );
  INVX2M U20 ( .A(Prescale[3]), .Y(n6) );
  INVX2M U21 ( .A(Prescale[0]), .Y(N1) );
  NAND2BX1M U22 ( .AN(Prescale[1]), .B(N1), .Y(n2) );
  OAI2BB1X1M U23 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n2), .Y(N2) );
  NOR2X1M U24 ( .A(n2), .B(Prescale[2]), .Y(n3) );
  AO21XLM U25 ( .A0(n2), .A1(Prescale[2]), .B0(n3), .Y(N3) );
  CLKNAND2X2M U26 ( .A(n3), .B(n6), .Y(n4) );
  OAI21X1M U27 ( .A0(n3), .A1(n6), .B0(n4), .Y(N4) );
  XNOR2X1M U28 ( .A(Prescale[4]), .B(n4), .Y(N5) );
  NOR2X1M U29 ( .A(Prescale[4]), .B(n4), .Y(n5) );
  CLKXOR2X2M U30 ( .A(Prescale[5]), .B(n5), .Y(N6) );
  NOR2BX1M U31 ( .AN(edge_count[0]), .B(N1), .Y(n7) );
  OAI2B2X1M U32 ( .A1N(N2), .A0(n7), .B0(edge_count[1]), .B1(n7), .Y(n19) );
  NOR2BX1M U33 ( .AN(N1), .B(edge_count[0]), .Y(n8) );
  OAI2B2X1M U34 ( .A1N(edge_count[1]), .A0(n8), .B0(N2), .B1(n8), .Y(n18) );
  XNOR2X1M U35 ( .A(N6), .B(edge_count[5]), .Y(n9) );
  NAND3X1M U36 ( .A(n19), .B(n18), .C(n9), .Y(n23) );
  CLKXOR2X2M U37 ( .A(N5), .B(edge_count[4]), .Y(n22) );
  CLKXOR2X2M U38 ( .A(N3), .B(edge_count[2]), .Y(n21) );
  CLKXOR2X2M U39 ( .A(N4), .B(edge_count[3]), .Y(n20) );
  NOR4X1M U40 ( .A(n23), .B(n22), .C(n21), .D(n20), .Y(N7) );
endmodule


module strt_chk ( CLK, RST, sampled_bit, Enable, strt_glitch );
  input CLK, RST, sampled_bit, Enable;
  output strt_glitch;
  wire   n1;

  DFFRQX2M strt_glitch_reg ( .D(n1), .CK(CLK), .RN(RST), .Q(strt_glitch) );
  AO2B2X2M U2 ( .B0(sampled_bit), .B1(Enable), .A0(strt_glitch), .A1N(Enable), 
        .Y(n1) );
endmodule


module par_chk_DATA_WIDTH8 ( CLK, RST, parity_type, sampled_bit, Enable, 
        P_DATA, par_err );
  input [7:0] P_DATA;
  input CLK, RST, parity_type, sampled_bit, Enable;
  output par_err;
  wire   n1, n3, n4, n5, n6, n7, n8, n2;

  DFFRQX2M par_err_reg ( .D(n8), .CK(CLK), .RN(RST), .Q(par_err) );
  OAI2BB2X1M U2 ( .B0(n1), .B1(n2), .A0N(par_err), .A1N(n2), .Y(n8) );
  INVX2M U3 ( .A(Enable), .Y(n2) );
  XOR3XLM U4 ( .A(n3), .B(n4), .C(n5), .Y(n1) );
  XOR3XLM U5 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n6), .Y(n4) );
  XNOR2X2M U6 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n6) );
  XOR3XLM U7 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n7), .Y(n3) );
  XNOR2X2M U8 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n7) );
  XNOR2X2M U9 ( .A(sampled_bit), .B(parity_type), .Y(n5) );
endmodule


module stp_chk ( CLK, RST, sampled_bit, Enable, stp_err );
  input CLK, RST, sampled_bit, Enable;
  output stp_err;
  wire   n2, n1;

  DFFRQX2M stp_err_reg ( .D(n2), .CK(CLK), .RN(RST), .Q(stp_err) );
  OAI2BB2X1M U2 ( .B0(sampled_bit), .B1(n1), .A0N(stp_err), .A1N(n1), .Y(n2)
         );
  INVX2M U3 ( .A(Enable), .Y(n1) );
endmodule


module UART_RX ( CLK, RST, RX_IN, parity_enable, parity_type, Prescale, P_DATA, 
        data_valid, parity_error, framing_error );
  input [5:0] Prescale;
  output [7:0] P_DATA;
  input CLK, RST, RX_IN, parity_enable, parity_type;
  output data_valid, parity_error, framing_error;
  wire   strt_glitch, strt_chk_en, edge_bit_en, deser_en, par_chk_en,
         stp_chk_en, dat_samp_en, sampled_bit, n1, n2;
  wire   [3:0] bit_count;
  wire   [5:0] edge_count;

  uart_rx_fsm_DATA_WIDTH8 U0_uart_fsm ( .CLK(CLK), .RST(n1), .S_DATA(RX_IN), 
        .Prescale(Prescale), .parity_enable(parity_enable), .bit_count(
        bit_count), .edge_count(edge_count), .par_err(parity_error), .stp_err(
        framing_error), .strt_glitch(strt_glitch), .strt_chk_en(strt_chk_en), 
        .edge_bit_en(edge_bit_en), .deser_en(deser_en), .par_chk_en(par_chk_en), .stp_chk_en(stp_chk_en), .dat_samp_en(dat_samp_en), .data_valid(data_valid)
         );
  edge_bit_counter U0_edge_bit_counter ( .CLK(CLK), .RST(n1), .Enable(
        edge_bit_en), .Prescale(Prescale), .bit_count(bit_count), .edge_count(
        edge_count) );
  data_sampling U0_data_sampling ( .CLK(CLK), .RST(n1), .S_DATA(RX_IN), 
        .Prescale(Prescale), .edge_count(edge_count), .Enable(dat_samp_en), 
        .sampled_bit(sampled_bit) );
  deserializer_DATA_WIDTH8 U0_deserializer ( .CLK(CLK), .RST(n1), 
        .sampled_bit(sampled_bit), .Enable(deser_en), .edge_count(edge_count), 
        .Prescale(Prescale), .P_DATA(P_DATA) );
  strt_chk U0_strt_chk ( .CLK(CLK), .RST(n1), .sampled_bit(sampled_bit), 
        .Enable(strt_chk_en), .strt_glitch(strt_glitch) );
  par_chk_DATA_WIDTH8 U0_par_chk ( .CLK(CLK), .RST(n1), .parity_type(
        parity_type), .sampled_bit(sampled_bit), .Enable(par_chk_en), .P_DATA(
        P_DATA), .par_err(parity_error) );
  stp_chk U0_stp_chk ( .CLK(CLK), .RST(n1), .sampled_bit(sampled_bit), 
        .Enable(stp_chk_en), .stp_err(framing_error) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
endmodule


module clock_divider_0_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  INVX2M U1 ( .A(A[0]), .Y(SUM[0]) );
  CLKXOR2X2M U2 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
endmodule


module clock_divider_0 ( i_ref_clk, i_rst, i_clk_en, i_div_ratio, o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst, i_clk_en;
  output o_div_clk;
  wire   div_clk, odd_edge_tog, N16, N17, N18, N19, N20, N21, N22, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n1, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43;
  wire   [6:0] count;
  wire   [6:0] edge_flip_half;

  clock_divider_0_DW01_inc_0 add_49 ( .A(count), .SUM({N22, N21, N20, N19, N18, 
        N17, N16}) );
  DFFRQX2M div_clk_reg ( .D(n18), .CK(i_ref_clk), .RN(i_rst), .Q(div_clk) );
  DFFSQX2M odd_edge_tog_reg ( .D(n17), .CK(i_ref_clk), .SN(i_rst), .Q(
        odd_edge_tog) );
  DFFRQX2M \count_reg[5]  ( .D(n20), .CK(i_ref_clk), .RN(i_rst), .Q(count[5])
         );
  DFFRQX2M \count_reg[4]  ( .D(n21), .CK(i_ref_clk), .RN(i_rst), .Q(count[4])
         );
  DFFRQX2M \count_reg[3]  ( .D(n22), .CK(i_ref_clk), .RN(i_rst), .Q(count[3])
         );
  DFFRQX2M \count_reg[6]  ( .D(n19), .CK(i_ref_clk), .RN(i_rst), .Q(count[6])
         );
  DFFRQX2M \count_reg[0]  ( .D(n25), .CK(i_ref_clk), .RN(i_rst), .Q(count[0])
         );
  DFFRQX2M \count_reg[2]  ( .D(n23), .CK(i_ref_clk), .RN(i_rst), .Q(count[2])
         );
  DFFRQX2M \count_reg[1]  ( .D(n24), .CK(i_ref_clk), .RN(i_rst), .Q(count[1])
         );
  INVX2M U3 ( .A(i_div_ratio[1]), .Y(edge_flip_half[0]) );
  NAND2BX2M U4 ( .AN(n14), .B(i_clk_en), .Y(n7) );
  INVX2M U5 ( .A(i_div_ratio[5]), .Y(n6) );
  MX2X2M U6 ( .A(i_ref_clk), .B(div_clk), .S0(n43), .Y(o_div_clk) );
  NAND2BX1M U7 ( .AN(i_div_ratio[2]), .B(edge_flip_half[0]), .Y(n1) );
  OAI2BB1X1M U8 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n1), .Y(
        edge_flip_half[1]) );
  OR2X1M U9 ( .A(n1), .B(i_div_ratio[3]), .Y(n2) );
  OAI2BB1X1M U10 ( .A0N(n1), .A1N(i_div_ratio[3]), .B0(n2), .Y(
        edge_flip_half[2]) );
  NOR2X1M U11 ( .A(n2), .B(i_div_ratio[4]), .Y(n3) );
  AO21XLM U12 ( .A0(n2), .A1(i_div_ratio[4]), .B0(n3), .Y(edge_flip_half[3])
         );
  CLKNAND2X2M U13 ( .A(n3), .B(n6), .Y(n4) );
  OAI21X1M U14 ( .A0(n3), .A1(n6), .B0(n4), .Y(edge_flip_half[4]) );
  XNOR2X1M U15 ( .A(i_div_ratio[6]), .B(n4), .Y(edge_flip_half[5]) );
  NOR2X1M U16 ( .A(i_div_ratio[6]), .B(n4), .Y(n5) );
  CLKXOR2X2M U17 ( .A(i_div_ratio[7]), .B(n5), .Y(edge_flip_half[6]) );
  AO22X1M U18 ( .A0(n7), .A1(count[0]), .B0(N16), .B1(n8), .Y(n25) );
  AO22X1M U19 ( .A0(n7), .A1(count[1]), .B0(N17), .B1(n8), .Y(n24) );
  AO22X1M U20 ( .A0(n7), .A1(count[2]), .B0(N18), .B1(n8), .Y(n23) );
  AO22X1M U21 ( .A0(n7), .A1(count[3]), .B0(N19), .B1(n8), .Y(n22) );
  AO22X1M U22 ( .A0(n7), .A1(count[4]), .B0(N20), .B1(n8), .Y(n21) );
  AO22X1M U23 ( .A0(n7), .A1(count[5]), .B0(N21), .B1(n8), .Y(n20) );
  AO22X1M U24 ( .A0(n7), .A1(count[6]), .B0(N22), .B1(n8), .Y(n19) );
  AND3X1M U25 ( .A(n9), .B(n10), .C(n43), .Y(n8) );
  CLKINVX1M U26 ( .A(n7), .Y(n43) );
  CLKXOR2X2M U27 ( .A(div_clk), .B(n11), .Y(n18) );
  AOI21X1M U28 ( .A0(n10), .A1(n9), .B0(n7), .Y(n11) );
  OR2X1M U29 ( .A(n12), .B(i_div_ratio[0]), .Y(n9) );
  XNOR2X1M U30 ( .A(odd_edge_tog), .B(n13), .Y(n17) );
  OR2X1M U31 ( .A(n10), .B(n7), .Y(n13) );
  NOR4BX1M U32 ( .AN(n15), .B(i_div_ratio[2]), .C(i_div_ratio[3]), .D(
        i_div_ratio[1]), .Y(n14) );
  NOR4X1M U33 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n15) );
  CLKNAND2X2M U34 ( .A(n16), .B(i_div_ratio[0]), .Y(n10) );
  MXI2X1M U35 ( .A(n26), .B(n12), .S0(odd_edge_tog), .Y(n16) );
  NAND4X1M U36 ( .A(n27), .B(n28), .C(n29), .D(n30), .Y(n12) );
  NOR4X1M U37 ( .A(n31), .B(n32), .C(n33), .D(n34), .Y(n30) );
  CLKXOR2X2M U38 ( .A(edge_flip_half[2]), .B(count[2]), .Y(n34) );
  CLKXOR2X2M U39 ( .A(edge_flip_half[1]), .B(count[1]), .Y(n33) );
  CLKXOR2X2M U40 ( .A(edge_flip_half[0]), .B(count[0]), .Y(n32) );
  CLKXOR2X2M U41 ( .A(edge_flip_half[6]), .B(count[6]), .Y(n31) );
  XNOR2X1M U42 ( .A(count[4]), .B(edge_flip_half[4]), .Y(n29) );
  XNOR2X1M U43 ( .A(count[5]), .B(edge_flip_half[5]), .Y(n28) );
  XNOR2X1M U44 ( .A(count[3]), .B(edge_flip_half[3]), .Y(n27) );
  NAND4X1M U45 ( .A(n35), .B(n36), .C(n37), .D(n38), .Y(n26) );
  NOR4X1M U46 ( .A(n39), .B(n40), .C(n41), .D(n42), .Y(n38) );
  CLKXOR2X2M U47 ( .A(i_div_ratio[3]), .B(count[2]), .Y(n42) );
  CLKXOR2X2M U48 ( .A(i_div_ratio[2]), .B(count[1]), .Y(n41) );
  CLKXOR2X2M U49 ( .A(i_div_ratio[1]), .B(count[0]), .Y(n40) );
  CLKXOR2X2M U50 ( .A(i_div_ratio[7]), .B(count[6]), .Y(n39) );
  XNOR2X1M U51 ( .A(count[4]), .B(i_div_ratio[5]), .Y(n37) );
  XNOR2X1M U52 ( .A(count[5]), .B(i_div_ratio[6]), .Y(n36) );
  XNOR2X1M U53 ( .A(count[3]), .B(i_div_ratio[4]), .Y(n35) );
endmodule


module pre_mux ( prescale, clk_div_in );
  input [5:0] prescale;
  output [7:0] clk_div_in;
  wire   n5, n6, n7, n8, n9, n1, n2, n3, n4;
  assign clk_div_in[4] = 1'b0;
  assign clk_div_in[5] = 1'b0;
  assign clk_div_in[6] = 1'b0;
  assign clk_div_in[7] = 1'b0;

  NAND4BX1M U3 ( .AN(prescale[4]), .B(prescale[3]), .C(n2), .D(n1), .Y(n6) );
  NAND4BX1M U4 ( .AN(prescale[3]), .B(prescale[4]), .C(n2), .D(n1), .Y(n7) );
  NOR3X2M U5 ( .A(n7), .B(prescale[1]), .C(prescale[0]), .Y(clk_div_in[1]) );
  NOR3X2M U6 ( .A(n6), .B(prescale[1]), .C(prescale[0]), .Y(clk_div_in[2]) );
  NOR4X1M U7 ( .A(n5), .B(prescale[3]), .C(prescale[5]), .D(prescale[4]), .Y(
        clk_div_in[3]) );
  NAND3X2M U8 ( .A(n4), .B(n3), .C(prescale[2]), .Y(n5) );
  OAI211X2M U9 ( .A0(n8), .A1(n9), .B0(n4), .C0(n3), .Y(clk_div_in[0]) );
  NAND2X2M U10 ( .A(n7), .B(n6), .Y(n9) );
  NOR4X1M U11 ( .A(prescale[5]), .B(prescale[4]), .C(prescale[3]), .D(n2), .Y(
        n8) );
  INVX2M U12 ( .A(prescale[0]), .Y(n4) );
  INVX2M U13 ( .A(prescale[1]), .Y(n3) );
  INVX2M U14 ( .A(prescale[2]), .Y(n2) );
  INVX2M U15 ( .A(prescale[5]), .Y(n1) );
endmodule


module clock_divider_1_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  INVX2M U1 ( .A(A[0]), .Y(SUM[0]) );
  CLKXOR2X2M U2 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
endmodule


module clock_divider_1 ( i_ref_clk, i_rst, i_clk_en, i_div_ratio, o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst, i_clk_en;
  output o_div_clk;
  wire   div_clk, odd_edge_tog, N16, N17, N18, N19, N20, N21, N22, n1, n2, n3,
         n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52;
  wire   [6:0] count;
  wire   [6:0] edge_flip_half;

  clock_divider_1_DW01_inc_0 add_49 ( .A(count), .SUM({N22, N21, N20, N19, N18, 
        N17, N16}) );
  DFFRQX2M div_clk_reg ( .D(n51), .CK(i_ref_clk), .RN(i_rst), .Q(div_clk) );
  DFFSQX2M odd_edge_tog_reg ( .D(n52), .CK(i_ref_clk), .SN(i_rst), .Q(
        odd_edge_tog) );
  DFFRQX2M \count_reg[5]  ( .D(n49), .CK(i_ref_clk), .RN(i_rst), .Q(count[5])
         );
  DFFRQX2M \count_reg[4]  ( .D(n48), .CK(i_ref_clk), .RN(i_rst), .Q(count[4])
         );
  DFFRQX2M \count_reg[3]  ( .D(n47), .CK(i_ref_clk), .RN(i_rst), .Q(count[3])
         );
  DFFRQX2M \count_reg[6]  ( .D(n50), .CK(i_ref_clk), .RN(i_rst), .Q(count[6])
         );
  DFFRQX2M \count_reg[0]  ( .D(n44), .CK(i_ref_clk), .RN(i_rst), .Q(count[0])
         );
  DFFRQX2M \count_reg[2]  ( .D(n46), .CK(i_ref_clk), .RN(i_rst), .Q(count[2])
         );
  DFFRQX2M \count_reg[1]  ( .D(n45), .CK(i_ref_clk), .RN(i_rst), .Q(count[1])
         );
  NAND2BX2M U3 ( .AN(n14), .B(i_clk_en), .Y(n7) );
  INVX2M U4 ( .A(i_div_ratio[1]), .Y(edge_flip_half[0]) );
  INVX2M U5 ( .A(i_div_ratio[5]), .Y(n6) );
  MX2X2M U6 ( .A(i_ref_clk), .B(div_clk), .S0(n43), .Y(o_div_clk) );
  NAND2BX1M U7 ( .AN(i_div_ratio[2]), .B(edge_flip_half[0]), .Y(n1) );
  OAI2BB1X1M U8 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n1), .Y(
        edge_flip_half[1]) );
  OR2X1M U9 ( .A(n1), .B(i_div_ratio[3]), .Y(n2) );
  OAI2BB1X1M U10 ( .A0N(n1), .A1N(i_div_ratio[3]), .B0(n2), .Y(
        edge_flip_half[2]) );
  NOR2X1M U11 ( .A(n2), .B(i_div_ratio[4]), .Y(n3) );
  AO21XLM U12 ( .A0(n2), .A1(i_div_ratio[4]), .B0(n3), .Y(edge_flip_half[3])
         );
  CLKNAND2X2M U13 ( .A(n3), .B(n6), .Y(n4) );
  OAI21X1M U14 ( .A0(n3), .A1(n6), .B0(n4), .Y(edge_flip_half[4]) );
  XNOR2X1M U15 ( .A(i_div_ratio[6]), .B(n4), .Y(edge_flip_half[5]) );
  NOR2X1M U16 ( .A(i_div_ratio[6]), .B(n4), .Y(n5) );
  CLKXOR2X2M U17 ( .A(i_div_ratio[7]), .B(n5), .Y(edge_flip_half[6]) );
  AO22X1M U18 ( .A0(n7), .A1(count[0]), .B0(N16), .B1(n8), .Y(n44) );
  AO22X1M U19 ( .A0(n7), .A1(count[1]), .B0(N17), .B1(n8), .Y(n45) );
  AO22X1M U20 ( .A0(n7), .A1(count[2]), .B0(N18), .B1(n8), .Y(n46) );
  AO22X1M U21 ( .A0(n7), .A1(count[3]), .B0(N19), .B1(n8), .Y(n47) );
  AO22X1M U22 ( .A0(n7), .A1(count[4]), .B0(N20), .B1(n8), .Y(n48) );
  AO22X1M U23 ( .A0(n7), .A1(count[5]), .B0(N21), .B1(n8), .Y(n49) );
  AO22X1M U24 ( .A0(n7), .A1(count[6]), .B0(N22), .B1(n8), .Y(n50) );
  AND3X1M U25 ( .A(n9), .B(n10), .C(n43), .Y(n8) );
  CLKINVX1M U26 ( .A(n7), .Y(n43) );
  CLKXOR2X2M U27 ( .A(div_clk), .B(n11), .Y(n51) );
  AOI21X1M U28 ( .A0(n10), .A1(n9), .B0(n7), .Y(n11) );
  OR2X1M U29 ( .A(n12), .B(i_div_ratio[0]), .Y(n9) );
  XNOR2X1M U30 ( .A(odd_edge_tog), .B(n13), .Y(n52) );
  OR2X1M U31 ( .A(n10), .B(n7), .Y(n13) );
  NOR4BX1M U32 ( .AN(n15), .B(i_div_ratio[2]), .C(i_div_ratio[3]), .D(
        i_div_ratio[1]), .Y(n14) );
  NOR4X1M U33 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n15) );
  CLKNAND2X2M U34 ( .A(n16), .B(i_div_ratio[0]), .Y(n10) );
  MXI2X1M U35 ( .A(n26), .B(n12), .S0(odd_edge_tog), .Y(n16) );
  NAND4X1M U36 ( .A(n27), .B(n28), .C(n29), .D(n30), .Y(n12) );
  NOR4X1M U37 ( .A(n31), .B(n32), .C(n33), .D(n34), .Y(n30) );
  CLKXOR2X2M U38 ( .A(edge_flip_half[2]), .B(count[2]), .Y(n34) );
  CLKXOR2X2M U39 ( .A(edge_flip_half[1]), .B(count[1]), .Y(n33) );
  CLKXOR2X2M U40 ( .A(edge_flip_half[0]), .B(count[0]), .Y(n32) );
  CLKXOR2X2M U41 ( .A(edge_flip_half[6]), .B(count[6]), .Y(n31) );
  XNOR2X1M U42 ( .A(count[4]), .B(edge_flip_half[4]), .Y(n29) );
  XNOR2X1M U43 ( .A(count[5]), .B(edge_flip_half[5]), .Y(n28) );
  XNOR2X1M U44 ( .A(count[3]), .B(edge_flip_half[3]), .Y(n27) );
  NAND4X1M U45 ( .A(n35), .B(n36), .C(n37), .D(n38), .Y(n26) );
  NOR4X1M U46 ( .A(n39), .B(n40), .C(n41), .D(n42), .Y(n38) );
  CLKXOR2X2M U47 ( .A(i_div_ratio[3]), .B(count[2]), .Y(n42) );
  CLKXOR2X2M U48 ( .A(i_div_ratio[2]), .B(count[1]), .Y(n41) );
  CLKXOR2X2M U49 ( .A(i_div_ratio[1]), .B(count[0]), .Y(n40) );
  CLKXOR2X2M U50 ( .A(i_div_ratio[7]), .B(count[6]), .Y(n39) );
  XNOR2X1M U51 ( .A(count[4]), .B(i_div_ratio[5]), .Y(n37) );
  XNOR2X1M U52 ( .A(count[5]), .B(i_div_ratio[6]), .Y(n36) );
  XNOR2X1M U53 ( .A(count[3]), .B(i_div_ratio[4]), .Y(n35) );
endmodule


module fsm_uart ( clk, reset, data_valid, par_en, ser_done, ser_en, busy, 
        mux_sel );
  output [1:0] mux_sel;
  input clk, reset, data_valid, par_en, ser_done;
  output ser_en, busy;
  wire   \next_state[0] , N60, N61, n6, n7, n8, n9, n10, n11, n12, n1, n2, n3,
         n4, n5;
  wire   [2:0] current_state;

  DFFRQX2M \mux_sel_reg[1]  ( .D(n2), .CK(clk), .RN(reset), .Q(mux_sel[1]) );
  DFFSQX2M \mux_sel_reg[0]  ( .D(N61), .CK(clk), .SN(reset), .Q(mux_sel[0]) );
  DFFRQX2M \current_state_reg[2]  ( .D(n3), .CK(clk), .RN(reset), .Q(
        current_state[2]) );
  DFFRQX2M ser_en_reg ( .D(n1), .CK(clk), .RN(reset), .Q(ser_en) );
  DFFRQX2M \current_state_reg[0]  ( .D(\next_state[0] ), .CK(clk), .RN(reset), 
        .Q(current_state[0]) );
  DFFRQX2M \current_state_reg[1]  ( .D(n2), .CK(clk), .RN(reset), .Q(
        current_state[1]) );
  DFFRQX2M busy_reg ( .D(N60), .CK(clk), .RN(reset), .Q(busy) );
  INVX2M U3 ( .A(N61), .Y(n1) );
  NAND3X2M U4 ( .A(n9), .B(n6), .C(n8), .Y(N60) );
  CLKXOR2X2M U5 ( .A(n2), .B(n8), .Y(N61) );
  INVX2M U6 ( .A(n9), .Y(n2) );
  INVX2M U7 ( .A(n6), .Y(n3) );
  AOI31X2M U8 ( .A0(par_en), .A1(ser_done), .A2(current_state[1]), .B0(n10), 
        .Y(n7) );
  NOR2BX2M U9 ( .AN(data_valid), .B(current_state[1]), .Y(n10) );
  OR3X2M U10 ( .A(n7), .B(current_state[0]), .C(current_state[2]), .Y(n8) );
  NAND2X2M U11 ( .A(n12), .B(n5), .Y(n9) );
  OAI2B2X1M U12 ( .A1N(current_state[1]), .A0(n11), .B0(current_state[1]), 
        .B1(n4), .Y(n12) );
  OAI2B1X2M U13 ( .A1N(ser_done), .A0(par_en), .B0(n4), .Y(n11) );
  NOR3X2M U14 ( .A(n7), .B(current_state[2]), .C(current_state[0]), .Y(
        \next_state[0] ) );
  INVX2M U15 ( .A(current_state[0]), .Y(n4) );
  NAND3X2M U16 ( .A(n11), .B(n5), .C(current_state[1]), .Y(n6) );
  INVX2M U17 ( .A(current_state[2]), .Y(n5) );
endmodule


module mux4_1 ( clk, mux_sel, start, stop, ser_data, parity, tx_out );
  input [1:0] mux_sel;
  input clk, start, stop, ser_data, parity;
  output tx_out;
  wire   N12, n2, n3, n1;

  DFFQX2M tx_out_reg ( .D(N12), .CK(clk), .Q(tx_out) );
  OAI2B2X1M U3 ( .A1N(mux_sel[1]), .A0(n2), .B0(mux_sel[1]), .B1(n3), .Y(N12)
         );
  AOI22X1M U4 ( .A0(start), .A1(n1), .B0(stop), .B1(mux_sel[0]), .Y(n3) );
  AOI22X1M U5 ( .A0(ser_data), .A1(n1), .B0(parity), .B1(mux_sel[0]), .Y(n2)
         );
  INVX2M U6 ( .A(mux_sel[0]), .Y(n1) );
endmodule


module parity_calc ( clk, reset, par_type, data_valid, p_data, par_bit );
  input [7:0] p_data;
  input clk, reset, par_type, data_valid;
  output par_bit;
  wire   n1, n2, n3, n4, n5, n6;

  DFFRQX2M par_bit_reg ( .D(n6), .CK(clk), .RN(reset), .Q(par_bit) );
  XNOR2X2M U2 ( .A(p_data[7]), .B(p_data[6]), .Y(n5) );
  XNOR2X2M U3 ( .A(p_data[3]), .B(p_data[2]), .Y(n4) );
  OAI2BB2X1M U4 ( .B0(data_valid), .B1(n1), .A0N(par_bit), .A1N(data_valid), 
        .Y(n6) );
  XOR3XLM U5 ( .A(par_type), .B(n2), .C(n3), .Y(n1) );
  XOR3XLM U6 ( .A(p_data[1]), .B(p_data[0]), .C(n4), .Y(n3) );
  XOR3XLM U7 ( .A(p_data[5]), .B(p_data[4]), .C(n5), .Y(n2) );
endmodule


module serializer ( clk, reset, ser_en, p_data, ser_data, ser_done );
  input [7:0] p_data;
  input clk, reset, ser_en;
  output ser_data, ser_done;
  wire   N4, N5, N6, N11, n2, n5, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n1, n3, n4, n6, n21, n22, n23;
  wire   [7:0] data_set;

  DFFRQX2M ser_data_reg ( .D(n20), .CK(clk), .RN(reset), .Q(ser_data) );
  DFFRQX2M \counter_reg[2]  ( .D(n9), .CK(clk), .RN(reset), .Q(N6) );
  DFFRQX2M \data_set_reg[5]  ( .D(n17), .CK(clk), .RN(reset), .Q(data_set[5])
         );
  DFFRQX2M \data_set_reg[1]  ( .D(n13), .CK(clk), .RN(reset), .Q(data_set[1])
         );
  DFFRQX2M \data_set_reg[7]  ( .D(n19), .CK(clk), .RN(reset), .Q(data_set[7])
         );
  DFFRQX2M \data_set_reg[3]  ( .D(n15), .CK(clk), .RN(reset), .Q(data_set[3])
         );
  DFFRQX2M \data_set_reg[6]  ( .D(n18), .CK(clk), .RN(reset), .Q(data_set[6])
         );
  DFFRQX2M \data_set_reg[2]  ( .D(n14), .CK(clk), .RN(reset), .Q(data_set[2])
         );
  DFFRQX2M \data_set_reg[4]  ( .D(n16), .CK(clk), .RN(reset), .Q(data_set[4])
         );
  DFFRQX2M \data_set_reg[0]  ( .D(n12), .CK(clk), .RN(reset), .Q(data_set[0])
         );
  DFFRQX2M ser_done_reg ( .D(n8), .CK(clk), .RN(reset), .Q(ser_done) );
  DFFRQX2M \counter_reg[1]  ( .D(n10), .CK(clk), .RN(reset), .Q(N5) );
  DFFRQX2M \counter_reg[0]  ( .D(n11), .CK(clk), .RN(reset), .Q(N4) );
  INVX2M U3 ( .A(n1), .Y(n23) );
  XNOR2X2M U4 ( .A(n21), .B(n5), .Y(n9) );
  NOR2X2M U5 ( .A(n2), .B(n6), .Y(n5) );
  CLKXOR2X2M U6 ( .A(n6), .B(n2), .Y(n10) );
  BUFX2M U7 ( .A(ser_en), .Y(n1) );
  MX4X1M U8 ( .A(data_set[4]), .B(data_set[5]), .C(data_set[6]), .D(
        data_set[7]), .S0(N4), .S1(N5), .Y(n3) );
  AO2B2X2M U9 ( .B0(N11), .B1(n7), .A0(ser_data), .A1N(n7), .Y(n20) );
  AOI31X2M U10 ( .A0(N6), .A1(N4), .A2(N5), .B0(n23), .Y(n7) );
  MX2X2M U11 ( .A(n4), .B(n3), .S0(N6), .Y(N11) );
  MX4X1M U12 ( .A(data_set[0]), .B(data_set[1]), .C(data_set[2]), .D(
        data_set[3]), .S0(N4), .S1(N5), .Y(n4) );
  AO22X1M U13 ( .A0(p_data[0]), .A1(n1), .B0(data_set[0]), .B1(n23), .Y(n12)
         );
  AO22X1M U14 ( .A0(p_data[1]), .A1(n1), .B0(data_set[1]), .B1(n23), .Y(n13)
         );
  AO22X1M U15 ( .A0(p_data[2]), .A1(n1), .B0(data_set[2]), .B1(n23), .Y(n14)
         );
  AO22X1M U16 ( .A0(p_data[3]), .A1(n1), .B0(data_set[3]), .B1(n23), .Y(n15)
         );
  AO22X1M U17 ( .A0(p_data[4]), .A1(n1), .B0(data_set[4]), .B1(n23), .Y(n16)
         );
  AO22X1M U18 ( .A0(p_data[5]), .A1(n1), .B0(data_set[5]), .B1(n23), .Y(n17)
         );
  AO22X1M U19 ( .A0(p_data[6]), .A1(n1), .B0(data_set[6]), .B1(n23), .Y(n18)
         );
  AO22X1M U20 ( .A0(p_data[7]), .A1(n1), .B0(data_set[7]), .B1(n23), .Y(n19)
         );
  OAI31X1M U21 ( .A0(n21), .A1(n2), .A2(n6), .B0(n22), .Y(n8) );
  INVX2M U22 ( .A(ser_done), .Y(n22) );
  NAND2X2M U23 ( .A(n1), .B(N4), .Y(n2) );
  INVX2M U24 ( .A(N5), .Y(n6) );
  INVX2M U25 ( .A(N6), .Y(n21) );
  CLKXOR2X2M U26 ( .A(n1), .B(N4), .Y(n11) );
endmodule


module uart_tr ( clk, reset, data_valid, par_type, par_en, p_data, tx_out, 
        busy );
  input [7:0] p_data;
  input clk, reset, data_valid, par_type, par_en;
  output tx_out, busy;
  wire   in_s2f, in_f2s, in_s2m, in_p2m;
  wire   [1:0] in_f2m;

  fsm_uart a0 ( .clk(clk), .reset(reset), .data_valid(data_valid), .par_en(
        par_en), .ser_done(in_s2f), .ser_en(in_f2s), .busy(busy), .mux_sel(
        in_f2m) );
  mux4_1 a1 ( .clk(clk), .mux_sel(in_f2m), .start(1'b0), .stop(1'b1), 
        .ser_data(in_s2m), .parity(in_p2m), .tx_out(tx_out) );
  parity_calc a2 ( .clk(clk), .reset(reset), .par_type(par_type), .data_valid(
        data_valid), .p_data(p_data), .par_bit(in_p2m) );
  serializer a3 ( .clk(clk), .reset(reset), .ser_en(in_f2s), .p_data(p_data), 
        .ser_data(in_s2m), .ser_done(in_s2f) );
endmodule


module SYS_TOP ( REF_CLK, RST_N, UART_CLK, UART_RX_IN, scan_clk, scan_rst, 
        test_mode, SE, SI, UART_TX_O, framing_error, parity_error, SO );
  input REF_CLK, RST_N, UART_CLK, UART_RX_IN, scan_clk, scan_rst, test_mode,
         SE, SI;
  output UART_TX_O, framing_error, parity_error, SO;
  wire   ref_clock, uart_clock, o_div_clk_rx, rx_clock, o_div_clk_tx, tx_clock,
         RST_N_for_regfile, reset_1, RST_N_fifo, reset_2, reset_3,
         out_valid_f_alu, rdata_valid_f_reg_file, rx_d_vld_f_rx,
         fifo_full_f_fifo, wr_inc_f_fifo, wr_en_f_regfile, rd_en_f_regfile,
         clk_en_f_clock_gate, alu_clk_f_clk_gate, bus_enable_f_rx,
         rinc_f_pulse_gen, r_empty_f_tx, busy_f_tx, n2, n3, n4;
  wire   [7:0] alu_out_f_alu;
  wire   [7:0] rddata_f_reg_file;
  wire   [7:0] rx_p_data_f_rx;
  wire   [7:0] wr_data_f_fifo;
  wire   [3:0] alu_fun_f_alu;
  wire   [2:0] address_f_reg_file;
  wire   [7:0] wrdata_f_regfile;
  wire   [7:0] a_f_regfile;
  wire   [7:0] b_f_regfile;
  wire   [7:0] c_rx;
  wire   [7:0] d_div;
  wire   [7:0] unsync_bus_f_rx;
  wire   [7:0] fifo_full_f_fifo_f_tx;
  wire   [7:0] clk_rx;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3;

  mux2X1_1 b0 ( .IN_0(REF_CLK), .IN_1(scan_clk), .SEL(test_mode), .OUT(
        ref_clock) );
  mux2X1_4 b1 ( .IN_0(UART_CLK), .IN_1(scan_clk), .SEL(test_mode), .OUT(
        uart_clock) );
  mux2X1_3 b2 ( .IN_0(o_div_clk_rx), .IN_1(scan_clk), .SEL(test_mode), .OUT(
        rx_clock) );
  mux2X1_2 b3 ( .IN_0(o_div_clk_tx), .IN_1(scan_clk), .SEL(test_mode), .OUT(
        tx_clock) );
  mux2X1_0 b4 ( .IN_0(RST_N_for_regfile), .IN_1(scan_rst), .SEL(test_mode), 
        .OUT(reset_1) );
  mux2X1_6 b5 ( .IN_0(RST_N_fifo), .IN_1(scan_rst), .SEL(test_mode), .OUT(
        reset_2) );
  mux2X1_5 b6 ( .IN_0(RST_N), .IN_1(scan_rst), .SEL(test_mode), .OUT(reset_3)
         );
  sys_cnrt A0 ( .clk(ref_clock), .reset(reset_1), .alu_out(alu_out_f_alu), 
        .out_valid(out_valid_f_alu), .rddata(rddata_f_reg_file), 
        .rddata_valid(rdata_valid_f_reg_file), .rx_p_data(rx_p_data_f_rx), 
        .rx_d_vld(rx_d_vld_f_rx), .fifo_full(fifo_full_f_fifo), .wr_inc(
        wr_inc_f_fifo), .wr_data(wr_data_f_fifo), .address(address_f_reg_file), 
        .wr_en(wr_en_f_regfile), .rd_en(rd_en_f_regfile), .wrdata(
        wrdata_f_regfile), .clk_div_en(clk_en_f_clock_gate) );
  alu A1 ( .a(a_f_regfile), .b(b_f_regfile), .alu_fun({1'b0, 1'b0, 1'b0, 1'b0}), .reset(reset_1), .clk(alu_clk_f_clk_gate), .en(1'b0), .alu_out(alu_out_f_alu), .out_valid(out_valid_f_alu) );
  CLK_GATE A2 ( .CLK_EN(clk_en_f_clock_gate), .test_mode(test_mode), .CLK(
        ref_clock), .GATED_CLK(alu_clk_f_clk_gate) );
  reg_file A3 ( .WrData(wrdata_f_regfile), .Address(address_f_reg_file), 
        .WrEn(wr_en_f_regfile), .RdEn(rd_en_f_regfile), .CLK(ref_clock), .RST(
        reset_1), .RdData(rddata_f_reg_file), .RdData_valid(
        rdata_valid_f_reg_file), .REG0(a_f_regfile), .REG1(b_f_regfile), 
        .REG2(c_rx), .REG3(d_div) );
  reset_sync_0 A4 ( .clk(ref_clock), .reset(reset_3), .sync_reset(
        RST_N_for_regfile) );
  data_sync A5 ( .clk(ref_clock), .reset(reset_1), .bus_enable(bus_enable_f_rx), .unsync_bus(unsync_bus_f_rx), .sync_bus(rx_p_data_f_rx), .enable_bus(
        rx_d_vld_f_rx) );
  fifo_top A6 ( .wrst_n(reset_1), .reset(reset_1), .w_clk(ref_clock), .winc(
        wr_inc_f_fifo), .w_data(wr_data_f_fifo), .r_clk(tx_clock), .rrest_n(n2), .rinc(rinc_f_pulse_gen), .w_full(fifo_full_f_fifo), .r_data(
        fifo_full_f_fifo_f_tx), .r_empty(r_empty_f_tx) );
  reset_sync_1 A7 ( .clk(uart_clock), .reset(reset_3), .sync_reset(RST_N_fifo)
         );
  pluse_gen A8 ( .clk(tx_clock), .reset(n2), .busy(busy_f_tx), .rd_inc(
        rinc_f_pulse_gen) );
  UART_RX A9 ( .CLK(rx_clock), .RST(n2), .RX_IN(UART_RX_IN), .parity_enable(
        c_rx[0]), .parity_type(c_rx[1]), .Prescale(c_rx[7:2]), .P_DATA(
        unsync_bus_f_rx), .data_valid(bus_enable_f_rx), .parity_error(
        parity_error), .framing_error(framing_error) );
  clock_divider_0 A10 ( .i_ref_clk(uart_clock), .i_rst(n2), .i_clk_en(1'b1), 
        .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, clk_rx[3:0]}), .o_div_clk(
        o_div_clk_rx) );
  pre_mux A13 ( .prescale(c_rx[7:2]), .clk_div_in({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, clk_rx[3:0]}) );
  clock_divider_1 A11 ( .i_ref_clk(uart_clock), .i_rst(n2), .i_clk_en(1'b1), 
        .i_div_ratio(d_div), .o_div_clk(o_div_clk_tx) );
  uart_tr A12 ( .clk(tx_clock), .reset(n2), .data_valid(n4), .par_type(c_rx[1]), .par_en(c_rx[0]), .p_data(fifo_full_f_fifo_f_tx), .tx_out(UART_TX_O), .busy(
        busy_f_tx) );
  INVX2M U3 ( .A(r_empty_f_tx), .Y(n4) );
  INVX4M U4 ( .A(n3), .Y(n2) );
  INVX2M U5 ( .A(reset_2), .Y(n3) );
endmodule

