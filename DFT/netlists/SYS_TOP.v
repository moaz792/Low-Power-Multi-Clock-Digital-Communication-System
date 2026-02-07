/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Wed Oct  1 23:24:14 2025
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


module sys_cnrt_test_1 ( clk, reset, alu_out, out_valid, rddata, rddata_valid, 
        rx_p_data, rx_d_vld, fifo_full, wr_inc, wr_data, alu_fun, en, address, 
        wr_en, rd_en, wrdata, clk_div_en, test_si, test_so, test_se );
  input [7:0] alu_out;
  input [7:0] rddata;
  input [7:0] rx_p_data;
  output [7:0] wr_data;
  output [3:0] alu_fun;
  output [2:0] address;
  output [7:0] wrdata;
  input clk, reset, out_valid, rddata_valid, rx_d_vld, fifo_full, test_si,
         test_se;
  output wr_inc, en, wr_en, rd_en, clk_div_en, test_so;
  wire   rx_d_vld_tt, n22, n24, n25, n26, n27, n28, n29, n30, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n2,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n19, n20, n21,
         n23, n31, n48, n49, n50, n51;
  wire   [3:0] current_state;
  assign en = 1'b0;
  assign alu_fun[0] = 1'b0;
  assign alu_fun[1] = 1'b0;
  assign alu_fun[2] = 1'b0;
  assign alu_fun[3] = 1'b0;
  assign test_so = n20;

  SDFFRQX2M rx_d_vld_tt_reg ( .D(rx_d_vld), .SI(current_state[2]), .SE(test_se), .CK(clk), .RN(reset), .Q(rx_d_vld_tt) );
  SDFFRQX2M \current_state_reg[1]  ( .D(n46), .SI(n21), .SE(test_se), .CK(clk), 
        .RN(reset), .Q(current_state[1]) );
  SDFFRQX2M \current_state_reg[2]  ( .D(n9), .SI(n49), .SE(test_se), .CK(clk), 
        .RN(reset), .Q(current_state[2]) );
  SDFFRQX2M \current_state_reg[0]  ( .D(n47), .SI(test_si), .SE(test_se), .CK(
        clk), .RN(reset), .Q(current_state[0]) );
  AND3X2M U4 ( .A(n7), .B(n31), .C(out_valid), .Y(n2) );
  AND2X2M U6 ( .A(n25), .B(n20), .Y(n6) );
  NOR2X2M U7 ( .A(n14), .B(n19), .Y(address[2]) );
  NOR2X2M U10 ( .A(n16), .B(n19), .Y(address[0]) );
  NAND3X2M U11 ( .A(n16), .B(n13), .C(n42), .Y(n38) );
  OR3X2M U12 ( .A(n41), .B(n16), .C(n13), .Y(n30) );
  NOR4X1M U13 ( .A(n15), .B(n12), .C(rx_p_data[2]), .D(rx_p_data[6]), .Y(n42)
         );
  NOR2X2M U14 ( .A(n15), .B(n19), .Y(address[1]) );
  AND2X2M U15 ( .A(rx_p_data[3]), .B(wr_en), .Y(wrdata[3]) );
  AND2X2M U16 ( .A(rx_p_data[6]), .B(wr_en), .Y(wrdata[6]) );
  AND2X2M U17 ( .A(rx_p_data[7]), .B(wr_en), .Y(wrdata[7]) );
  OAI21X2M U18 ( .A0(n11), .A1(n8), .B0(n50), .Y(n46) );
  INVX2M U19 ( .A(n32), .Y(n11) );
  NAND2X2M U20 ( .A(n27), .B(n6), .Y(n50) );
  INVX2M U21 ( .A(rd_en), .Y(n19) );
  INVX2M U22 ( .A(rx_p_data[0]), .Y(n16) );
  INVX2M U23 ( .A(rx_p_data[2]), .Y(n14) );
  NAND3X2M U24 ( .A(rx_p_data[0]), .B(rx_p_data[4]), .C(n42), .Y(n39) );
  INVX2M U25 ( .A(n27), .Y(n8) );
  NAND4X2M U26 ( .A(rx_p_data[2]), .B(rx_p_data[6]), .C(n15), .D(n12), .Y(n41)
         );
  INVX2M U27 ( .A(rx_p_data[4]), .Y(n13) );
  NOR2X2M U28 ( .A(n20), .B(n44), .Y(rd_en) );
  NAND2X2M U29 ( .A(n35), .B(n36), .Y(n27) );
  NAND3X2M U30 ( .A(rx_p_data[7]), .B(n37), .C(rx_p_data[3]), .Y(n35) );
  OAI2BB1X2M U31 ( .A0N(n38), .A1N(n39), .B0(n20), .Y(n37) );
  NOR2X2M U32 ( .A(n22), .B(n16), .Y(wrdata[0]) );
  NOR2X2M U33 ( .A(n22), .B(n12), .Y(wrdata[5]) );
  INVX2M U34 ( .A(rx_p_data[1]), .Y(n15) );
  OR2X2M U35 ( .A(n2), .B(n24), .Y(wr_inc) );
  INVX2M U36 ( .A(n22), .Y(wr_en) );
  INVX2M U37 ( .A(rx_p_data[5]), .Y(n12) );
  OAI22X1M U38 ( .A0(n23), .A1(n39), .B0(n43), .B1(n44), .Y(n32) );
  NOR2X2M U39 ( .A(n20), .B(n17), .Y(n43) );
  NOR2X2M U40 ( .A(n22), .B(n15), .Y(wrdata[1]) );
  NOR2X2M U41 ( .A(n22), .B(n14), .Y(wrdata[2]) );
  NOR2X2M U42 ( .A(n22), .B(n13), .Y(wrdata[4]) );
  INVX2M U43 ( .A(n36), .Y(n23) );
  NOR3X2M U44 ( .A(n19), .B(fifo_full), .C(n17), .Y(n24) );
  NOR3X2M U45 ( .A(current_state[0]), .B(current_state[2]), .C(n49), .Y(n25)
         );
  NAND2X2M U46 ( .A(n25), .B(rx_d_vld_tt), .Y(n22) );
  NAND3X2M U47 ( .A(current_state[0]), .B(n49), .C(current_state[2]), .Y(n26)
         );
  AO22X1M U48 ( .A0(alu_out[0]), .A1(n2), .B0(rddata[0]), .B1(n24), .Y(
        wr_data[0]) );
  AO22X1M U49 ( .A0(alu_out[1]), .A1(n2), .B0(rddata[1]), .B1(n24), .Y(
        wr_data[1]) );
  AO22X1M U50 ( .A0(alu_out[2]), .A1(n2), .B0(rddata[2]), .B1(n24), .Y(
        wr_data[2]) );
  AO22X1M U51 ( .A0(alu_out[3]), .A1(n2), .B0(rddata[3]), .B1(n24), .Y(
        wr_data[3]) );
  AO22X1M U52 ( .A0(alu_out[4]), .A1(n2), .B0(rddata[4]), .B1(n24), .Y(
        wr_data[4]) );
  AO22X1M U53 ( .A0(alu_out[5]), .A1(n2), .B0(rddata[5]), .B1(n24), .Y(
        wr_data[5]) );
  AO22X1M U54 ( .A0(alu_out[6]), .A1(n2), .B0(rddata[6]), .B1(n24), .Y(
        wr_data[6]) );
  AO22X1M U55 ( .A0(alu_out[7]), .A1(n2), .B0(rddata[7]), .B1(n24), .Y(
        wr_data[7]) );
  NAND3X2M U56 ( .A(current_state[1]), .B(n48), .C(current_state[0]), .Y(n44)
         );
  OAI21X2M U57 ( .A0(n33), .A1(n8), .B0(n51), .Y(n47) );
  AOI2BB1X2M U58 ( .A0N(n26), .A1N(out_valid), .B0(n32), .Y(n33) );
  NAND2X2M U59 ( .A(n27), .B(n10), .Y(n51) );
  INVX2M U60 ( .A(n34), .Y(n10) );
  INVX2M U61 ( .A(rx_d_vld_tt), .Y(n20) );
  INVX2M U62 ( .A(current_state[1]), .Y(n49) );
  INVX2M U63 ( .A(current_state[2]), .Y(n48) );
  INVX2M U64 ( .A(fifo_full), .Y(n7) );
  INVX2M U65 ( .A(n26), .Y(n31) );
  INVX2M U66 ( .A(n28), .Y(n9) );
  AOI32X1M U67 ( .A0(n21), .A1(n49), .A2(current_state[2]), .B0(n29), .B1(n27), 
        .Y(n28) );
  INVX2M U68 ( .A(current_state[0]), .Y(n21) );
  OAI22X1M U69 ( .A0(out_valid), .A1(n26), .B0(n23), .B1(n30), .Y(n29) );
  INVX2M U70 ( .A(rddata_valid), .Y(n17) );
  NOR3X2M U71 ( .A(current_state[1]), .B(current_state[2]), .C(
        current_state[0]), .Y(n36) );
  AOI32X1M U72 ( .A0(n49), .A1(n48), .A2(current_state[0]), .B0(n36), .B1(n40), 
        .Y(n34) );
  OAI31X1M U73 ( .A0(n41), .A1(rx_p_data[4]), .A2(rx_p_data[0]), .B0(n38), .Y(
        n40) );
  NOR3X2M U74 ( .A(n45), .B(n23), .C(n30), .Y(clk_div_en) );
  NAND2X2M U75 ( .A(rx_p_data[7]), .B(rx_p_data[3]), .Y(n45) );
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


module alu_test_1 ( a, b, alu_fun, reset, clk, en, alu_out, out_valid, test_si, 
        test_se );
  input [7:0] a;
  input [7:0] b;
  input [3:0] alu_fun;
  output [7:0] alu_out;
  input reset, clk, en, test_si, test_se;
  output out_valid;
  wire   N88, N89, N90, N91, N92, N93, N94, N95, N96, N97, N98, N99, N100,
         N101, N102, N103, N104, N105, N106, N107, N108, N109, N110, N111,
         N112, N113, N114, N115, N116, N117, N118, N119, N152, N153, N154, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n4, n5, n6, n7, n8,
         n9, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7;

  SDFFRQX2M out_valid_reg ( .D(en), .SI(alu_out[7]), .SE(test_se), .CK(clk), 
        .RN(reset), .Q(out_valid) );
  SDFFRQX2M \alu_out_reg[6]  ( .D(n124), .SI(alu_out[5]), .SE(test_se), .CK(
        clk), .RN(reset), .Q(alu_out[6]) );
  SDFFRQX2M \alu_out_reg[5]  ( .D(n123), .SI(alu_out[4]), .SE(test_se), .CK(
        clk), .RN(reset), .Q(alu_out[5]) );
  SDFFRQX2M \alu_out_reg[4]  ( .D(n122), .SI(alu_out[3]), .SE(test_se), .CK(
        clk), .RN(reset), .Q(alu_out[4]) );
  SDFFRQX2M \alu_out_reg[3]  ( .D(n121), .SI(alu_out[2]), .SE(test_se), .CK(
        clk), .RN(reset), .Q(alu_out[3]) );
  SDFFRQX2M \alu_out_reg[2]  ( .D(n120), .SI(alu_out[1]), .SE(test_se), .CK(
        clk), .RN(reset), .Q(alu_out[2]) );
  SDFFRQX2M \alu_out_reg[1]  ( .D(n119), .SI(alu_out[0]), .SE(test_se), .CK(
        clk), .RN(reset), .Q(alu_out[1]) );
  SDFFRQX2M \alu_out_reg[0]  ( .D(n118), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(reset), .Q(alu_out[0]) );
  SDFFRQX1M \alu_out_reg[7]  ( .D(n125), .SI(alu_out[6]), .SE(test_se), .CK(
        clk), .RN(reset), .Q(alu_out[7]) );
  BUFX2M U15 ( .A(a[6]), .Y(n20) );
  AOI222X1M U16 ( .A0(N106), .A1(n56), .B0(n7), .B1(n50), .C0(N114), .C1(n57), 
        .Y(n73) );
  AOI222X1M U17 ( .A0(N107), .A1(n56), .B0(n8), .B1(n50), .C0(N115), .C1(n57), 
        .Y(n80) );
  AOI222X1M U18 ( .A0(N108), .A1(n56), .B0(n9), .B1(n50), .C0(N116), .C1(n57), 
        .Y(n87) );
  AOI222X1M U19 ( .A0(N109), .A1(n56), .B0(n19), .B1(n50), .C0(N117), .C1(n57), 
        .Y(n94) );
  AOI222X1M U20 ( .A0(N110), .A1(n56), .B0(n20), .B1(n50), .C0(N118), .C1(n57), 
        .Y(n101) );
  AOI222X1M U21 ( .A0(N89), .A1(n59), .B0(N105), .B1(n56), .C0(N97), .C1(n58), 
        .Y(n61) );
  AOI222X1M U22 ( .A0(N104), .A1(n56), .B0(n50), .B1(n5), .C0(N112), .C1(n57), 
        .Y(n41) );
  OAI222X1M U23 ( .A0(n104), .A1(n145), .B0(n4), .B1(n105), .C0(n67), .C1(n151), .Y(n103) );
  AOI221XLM U24 ( .A0(n20), .A1(n24), .B0(n55), .B1(n150), .C0(n23), .Y(n105)
         );
  AOI221XLM U25 ( .A0(n24), .A1(n150), .B0(n20), .B1(n49), .C0(n50), .Y(n104)
         );
  AOI221XLM U26 ( .A0(n24), .A1(n139), .B0(n21), .B1(n49), .C0(n50), .Y(n112)
         );
  INVX2M U27 ( .A(n36), .Y(n143) );
  AND3X2M U28 ( .A(n117), .B(n158), .C(n159), .Y(n59) );
  NAND2X2M U29 ( .A(n114), .B(n115), .Y(n55) );
  INVX2M U30 ( .A(n138), .Y(N153) );
  INVX2M U31 ( .A(n4), .Y(n145) );
  AND2X2M U32 ( .A(n117), .B(n106), .Y(n58) );
  BUFX2M U33 ( .A(n43), .Y(n23) );
  NOR2X2M U34 ( .A(n116), .B(n159), .Y(n43) );
  INVX2M U35 ( .A(n47), .Y(n157) );
  INVX2M U36 ( .A(n6), .Y(n155) );
  INVX2M U37 ( .A(n54), .Y(n146) );
  INVX2M U38 ( .A(n5), .Y(n156) );
  INVX2M U39 ( .A(n20), .Y(n150) );
  INVX2M U40 ( .A(n8), .Y(n153) );
  INVX2M U41 ( .A(n7), .Y(n154) );
  INVX2M U42 ( .A(n9), .Y(n152) );
  INVX2M U43 ( .A(n19), .Y(n151) );
  INVX2M U44 ( .A(n21), .Y(n139) );
  AO21XLM U45 ( .A0(alu_out[0]), .A1(n22), .B0(n39), .Y(n118) );
  AOI31X2M U46 ( .A0(n40), .A1(n41), .A2(n42), .B0(n22), .Y(n39) );
  AOI22X1M U47 ( .A0(N96), .A1(n58), .B0(N88), .B1(n59), .Y(n40) );
  AOI211X2M U48 ( .A0(n23), .A1(n156), .B0(n44), .C0(n45), .Y(n42) );
  AO21XLM U49 ( .A0(alu_out[1]), .A1(n22), .B0(n60), .Y(n119) );
  AOI31X2M U50 ( .A0(n61), .A1(n62), .A2(n63), .B0(n22), .Y(n60) );
  AOI211X2M U51 ( .A0(n7), .A1(n157), .B0(n64), .C0(n65), .Y(n63) );
  AOI222X1M U52 ( .A0(N113), .A1(n57), .B0(n23), .B1(n155), .C0(n50), .C1(n6), 
        .Y(n62) );
  AO21XLM U53 ( .A0(alu_out[2]), .A1(n22), .B0(n71), .Y(n120) );
  AOI31X2M U54 ( .A0(n72), .A1(n73), .A2(n74), .B0(n22), .Y(n71) );
  AOI22X1M U55 ( .A0(N98), .A1(n58), .B0(N90), .B1(n59), .Y(n72) );
  AOI221XLM U56 ( .A0(n8), .A1(n157), .B0(n23), .B1(n154), .C0(n75), .Y(n74)
         );
  AO21XLM U57 ( .A0(alu_out[3]), .A1(n22), .B0(n78), .Y(n121) );
  AOI31X2M U58 ( .A0(n79), .A1(n80), .A2(n81), .B0(n22), .Y(n78) );
  AOI22X1M U59 ( .A0(N99), .A1(n58), .B0(N91), .B1(n59), .Y(n79) );
  AOI221XLM U60 ( .A0(n9), .A1(n157), .B0(n23), .B1(n153), .C0(n82), .Y(n81)
         );
  AO21XLM U61 ( .A0(alu_out[4]), .A1(n22), .B0(n85), .Y(n122) );
  AOI31X2M U62 ( .A0(n86), .A1(n87), .A2(n88), .B0(n22), .Y(n85) );
  AOI22X1M U63 ( .A0(N100), .A1(n58), .B0(N92), .B1(n59), .Y(n86) );
  AOI221XLM U64 ( .A0(n19), .A1(n157), .B0(n23), .B1(n152), .C0(n89), .Y(n88)
         );
  AO21XLM U65 ( .A0(alu_out[5]), .A1(n22), .B0(n92), .Y(n123) );
  AOI31X2M U66 ( .A0(n93), .A1(n94), .A2(n95), .B0(n22), .Y(n92) );
  AOI22X1M U67 ( .A0(N101), .A1(n58), .B0(N93), .B1(n59), .Y(n93) );
  AOI221XLM U68 ( .A0(n20), .A1(n157), .B0(n23), .B1(n151), .C0(n96), .Y(n95)
         );
  AO21XLM U69 ( .A0(alu_out[6]), .A1(n22), .B0(n99), .Y(n124) );
  AOI31X2M U70 ( .A0(n100), .A1(n101), .A2(n102), .B0(n22), .Y(n99) );
  AOI22X1M U71 ( .A0(N102), .A1(n58), .B0(N94), .B1(n59), .Y(n100) );
  AOI221XLM U72 ( .A0(n21), .A1(n157), .B0(n23), .B1(n150), .C0(n103), .Y(n102) );
  AO21XLM U73 ( .A0(alu_out[7]), .A1(n22), .B0(n107), .Y(n125) );
  AOI31X2M U74 ( .A0(n108), .A1(n109), .A2(n110), .B0(n22), .Y(n107) );
  AOI22X1M U75 ( .A0(N103), .A1(n58), .B0(N95), .B1(n59), .Y(n108) );
  AOI22X1M U76 ( .A0(N119), .A1(n57), .B0(N111), .B1(n56), .Y(n109) );
  OAI21X2M U77 ( .A0(alu_fun[1]), .A1(n116), .B0(n115), .Y(n49) );
  OAI222X1M U78 ( .A0(n76), .A1(n142), .B0(b[2]), .B1(n77), .C0(n155), .C1(n67), .Y(n75) );
  AOI221XLM U79 ( .A0(n7), .A1(n24), .B0(n55), .B1(n154), .C0(n23), .Y(n77) );
  AOI221XLM U80 ( .A0(n24), .A1(n154), .B0(n7), .B1(n49), .C0(n50), .Y(n76) );
  OAI222X1M U81 ( .A0(n83), .A1(n144), .B0(b[3]), .B1(n84), .C0(n67), .C1(n154), .Y(n82) );
  AOI221XLM U82 ( .A0(n8), .A1(n24), .B0(n55), .B1(n153), .C0(n23), .Y(n84) );
  AOI221XLM U83 ( .A0(n24), .A1(n153), .B0(n8), .B1(n49), .C0(n50), .Y(n83) );
  OAI222X1M U84 ( .A0(n90), .A1(n149), .B0(b[4]), .B1(n91), .C0(n67), .C1(n153), .Y(n89) );
  INVX2M U85 ( .A(b[4]), .Y(n149) );
  AOI221XLM U86 ( .A0(n9), .A1(n24), .B0(n55), .B1(n152), .C0(n23), .Y(n91) );
  AOI221XLM U87 ( .A0(n24), .A1(n152), .B0(n9), .B1(n49), .C0(n50), .Y(n90) );
  OAI222X1M U88 ( .A0(n97), .A1(n148), .B0(b[5]), .B1(n98), .C0(n67), .C1(n152), .Y(n96) );
  INVX2M U89 ( .A(b[5]), .Y(n148) );
  AOI221XLM U90 ( .A0(n19), .A1(n24), .B0(n55), .B1(n151), .C0(n23), .Y(n98)
         );
  AOI221XLM U91 ( .A0(n24), .A1(n151), .B0(n19), .B1(n49), .C0(n50), .Y(n97)
         );
  INVX2M U92 ( .A(n25), .Y(n141) );
  AOI221XLM U93 ( .A0(n23), .A1(n139), .B0(n21), .B1(n50), .C0(n111), .Y(n110)
         );
  OAI222X1M U94 ( .A0(n112), .A1(n147), .B0(b[7]), .B1(n113), .C0(n67), .C1(
        n150), .Y(n111) );
  INVX2M U95 ( .A(b[7]), .Y(n147) );
  AOI221XLM U96 ( .A0(n21), .A1(n24), .B0(n55), .B1(n139), .C0(n23), .Y(n113)
         );
  NAND4X2M U97 ( .A(N154), .B(alu_fun[3]), .C(n70), .D(alu_fun[2]), .Y(n54) );
  NOR2X2M U98 ( .A(alu_fun[1]), .B(alu_fun[0]), .Y(n70) );
  NAND3BX2M U99 ( .AN(alu_fun[2]), .B(alu_fun[3]), .C(n106), .Y(n115) );
  OAI2B2X1M U100 ( .A1N(b[0]), .A0(n46), .B0(n47), .B1(n155), .Y(n45) );
  AOI221XLM U101 ( .A0(n24), .A1(n156), .B0(n5), .B1(n49), .C0(n50), .Y(n46)
         );
  OAI2B2X1M U102 ( .A1N(b[1]), .A0(n66), .B0(n156), .B1(n67), .Y(n65) );
  AOI221XLM U103 ( .A0(n24), .A1(n155), .B0(n6), .B1(n49), .C0(n50), .Y(n66)
         );
  AND3X2M U104 ( .A(n106), .B(alu_fun[2]), .C(n160), .Y(n50) );
  AND3X2M U105 ( .A(n117), .B(alu_fun[1]), .C(n158), .Y(n56) );
  OAI211X2M U106 ( .A0(b[1]), .A1(n68), .B0(n69), .C0(n54), .Y(n64) );
  NAND4X2M U107 ( .A(N153), .B(alu_fun[3]), .C(alu_fun[1]), .D(alu_fun[0]), 
        .Y(n69) );
  AOI221XLM U108 ( .A0(n6), .A1(n24), .B0(n55), .B1(n155), .C0(n23), .Y(n68)
         );
  AND3X2M U109 ( .A(n117), .B(alu_fun[1]), .C(alu_fun[0]), .Y(n57) );
  OAI21X2M U110 ( .A0(b[0]), .A1(n51), .B0(n52), .Y(n44) );
  AOI31X2M U111 ( .A0(N152), .A1(alu_fun[3]), .A2(n53), .B0(n146), .Y(n52) );
  AOI221XLM U112 ( .A0(n5), .A1(n24), .B0(n55), .B1(n156), .C0(n23), .Y(n51)
         );
  NOR3X2M U113 ( .A(n159), .B(alu_fun[2]), .C(alu_fun[0]), .Y(n53) );
  NAND3X2M U114 ( .A(alu_fun[3]), .B(alu_fun[2]), .C(n106), .Y(n47) );
  BUFX2M U115 ( .A(a[7]), .Y(n21) );
  BUFX2M U116 ( .A(a[1]), .Y(n6) );
  BUFX2M U117 ( .A(a[0]), .Y(n5) );
  BUFX2M U118 ( .A(a[3]), .Y(n8) );
  BUFX2M U119 ( .A(a[2]), .Y(n7) );
  BUFX2M U120 ( .A(a[4]), .Y(n9) );
  BUFX2M U121 ( .A(a[5]), .Y(n19) );
  BUFX2M U122 ( .A(b[6]), .Y(n4) );
  BUFX2M U123 ( .A(n38), .Y(n22) );
  OAI21X2M U124 ( .A0(n114), .A1(n160), .B0(en), .Y(n38) );
  BUFX2M U125 ( .A(n48), .Y(n24) );
  NOR4X1M U126 ( .A(n160), .B(alu_fun[0]), .C(alu_fun[1]), .D(alu_fun[2]), .Y(
        n48) );
  INVX2M U127 ( .A(b[0]), .Y(n140) );
  INVX2M U128 ( .A(b[2]), .Y(n142) );
  INVX2M U129 ( .A(b[3]), .Y(n144) );
  INVX2M U130 ( .A(alu_fun[3]), .Y(n160) );
  NAND3X2M U131 ( .A(alu_fun[2]), .B(alu_fun[1]), .C(alu_fun[3]), .Y(n67) );
  INVX2M U132 ( .A(alu_fun[0]), .Y(n158) );
  INVX2M U133 ( .A(alu_fun[1]), .Y(n159) );
  NOR2X2M U134 ( .A(n158), .B(alu_fun[1]), .Y(n106) );
  NAND3X2M U135 ( .A(alu_fun[1]), .B(alu_fun[0]), .C(alu_fun[2]), .Y(n114) );
  NAND3X2M U136 ( .A(n158), .B(n160), .C(alu_fun[2]), .Y(n116) );
  NOR2X2M U137 ( .A(alu_fun[3]), .B(alu_fun[2]), .Y(n117) );
  NOR2X1M U138 ( .A(n139), .B(b[7]), .Y(n135) );
  NAND2BX1M U139 ( .AN(b[4]), .B(n9), .Y(n128) );
  NAND2BX1M U140 ( .AN(n9), .B(b[4]), .Y(n29) );
  CLKNAND2X2M U141 ( .A(n128), .B(n29), .Y(n130) );
  NOR2X1M U142 ( .A(n144), .B(n8), .Y(n37) );
  NOR2X1M U143 ( .A(n142), .B(n7), .Y(n28) );
  NOR2X1M U144 ( .A(n140), .B(n5), .Y(n25) );
  CLKNAND2X2M U145 ( .A(n7), .B(n142), .Y(n127) );
  NAND2BX1M U146 ( .AN(n28), .B(n127), .Y(n34) );
  AOI21X1M U147 ( .A0(n25), .A1(n155), .B0(b[1]), .Y(n26) );
  AOI211X1M U148 ( .A0(n6), .A1(n141), .B0(n34), .C0(n26), .Y(n27) );
  CLKNAND2X2M U149 ( .A(n8), .B(n144), .Y(n126) );
  OAI31X1M U150 ( .A0(n37), .A1(n28), .A2(n27), .B0(n126), .Y(n30) );
  NAND2BX1M U151 ( .AN(n19), .B(b[5]), .Y(n133) );
  OAI211X1M U152 ( .A0(n130), .A1(n30), .B0(n29), .C0(n133), .Y(n31) );
  NAND2BX1M U153 ( .AN(b[5]), .B(n19), .Y(n129) );
  XNOR2X1M U154 ( .A(n20), .B(n4), .Y(n132) );
  AOI32X1M U155 ( .A0(n31), .A1(n129), .A2(n132), .B0(n4), .B1(n150), .Y(n32)
         );
  CLKNAND2X2M U156 ( .A(b[7]), .B(n139), .Y(n136) );
  OAI21X1M U157 ( .A0(n135), .A1(n32), .B0(n136), .Y(N154) );
  CLKNAND2X2M U158 ( .A(n5), .B(n140), .Y(n35) );
  OA21X1M U159 ( .A0(n35), .A1(n155), .B0(b[1]), .Y(n33) );
  AOI211X1M U160 ( .A0(n35), .A1(n155), .B0(n34), .C0(n33), .Y(n36) );
  AOI31X1M U161 ( .A0(n143), .A1(n127), .A2(n126), .B0(n37), .Y(n131) );
  OAI2B11X1M U162 ( .A1N(n131), .A0(n130), .B0(n129), .C0(n128), .Y(n134) );
  AOI32X1M U163 ( .A0(n134), .A1(n133), .A2(n132), .B0(n20), .B1(n145), .Y(
        n137) );
  AOI2B1X1M U164 ( .A1N(n137), .A0(n136), .B0(n135), .Y(n138) );
  NOR2X1M U165 ( .A(N154), .B(N153), .Y(N152) );
  alu_DW_div_uns_0 div_52 ( .a({n21, n20, n19, n9, n8, n7, n6, n5}), .b({b[7], 
        n4, b[5:0]}), .quotient({N119, N118, N117, N116, N115, N114, N113, 
        N112}) );
  alu_DW01_sub_0 sub_44 ( .A({n21, n20, n19, n9, n8, n7, n6, n5}), .B({b[7], 
        n4, b[5:0]}), .CI(1'b0), .DIFF({N103, N102, N101, N100, N99, N98, N97, 
        N96}) );
  alu_DW01_add_0 add_40 ( .A({n21, n20, n19, n9, n8, n7, n6, n5}), .B({b[7], 
        n4, b[5:0]}), .CI(1'b0), .SUM({N95, N94, N93, N92, N91, N90, N89, N88}) );
  alu_DW02_mult_0 mult_48 ( .A({n21, n20, n19, n9, n8, n7, n6, n5}), .B({b[7], 
        n4, b[5:0]}), .TC(1'b0), .PRODUCT({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, N111, N110, N109, N108, N107, N106, N105, 
        N104}) );
endmodule


module CLK_GATE ( CLK_EN, test_mode, CLK, GATED_CLK );
  input CLK_EN, test_mode, CLK;
  output GATED_CLK;
  wire   _0_net_;

  TLATNCAX4M U0_TLATNCAX4M ( .E(_0_net_), .CK(CLK), .ECK(GATED_CLK) );
  OR2X2M U1 ( .A(CLK_EN), .B(test_mode), .Y(_0_net_) );
endmodule


module reg_file_test_1 ( WrData, Address, WrEn, RdEn, CLK, RST, RdData, 
        RdData_valid, REG0, REG1, REG2, REG3, test_si, test_so, test_se );
  input [7:0] WrData;
  input [2:0] Address;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input WrEn, RdEn, CLK, RST, test_si, test_se;
  output RdData_valid, test_so;
  wire   n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n252, n253, n254, n255, n256,
         n257, n258, n259, n260, n261, n262, n263, n264, n265, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297;

  SDFFRQX2M \RdData_reg[7]  ( .D(n193), .SI(RdData[6]), .SE(test_se), .CK(CLK), 
        .RN(n118), .Q(RdData[7]) );
  SDFFRQX2M \RdData_reg[6]  ( .D(n191), .SI(RdData[5]), .SE(test_se), .CK(CLK), 
        .RN(n118), .Q(RdData[6]) );
  SDFFRQX2M \RdData_reg[5]  ( .D(n189), .SI(RdData[4]), .SE(test_se), .CK(CLK), 
        .RN(n118), .Q(RdData[5]) );
  SDFFRQX2M \RdData_reg[4]  ( .D(n187), .SI(RdData[3]), .SE(test_se), .CK(CLK), 
        .RN(n118), .Q(RdData[4]) );
  SDFFRQX2M \RdData_reg[3]  ( .D(n185), .SI(RdData[2]), .SE(test_se), .CK(CLK), 
        .RN(n118), .Q(RdData[3]) );
  SDFFRQX2M \RdData_reg[2]  ( .D(n183), .SI(RdData[1]), .SE(test_se), .CK(CLK), 
        .RN(n118), .Q(RdData[2]) );
  SDFFRQX2M \RdData_reg[1]  ( .D(n181), .SI(RdData[0]), .SE(test_se), .CK(CLK), 
        .RN(n117), .Q(RdData[1]) );
  SDFFRQX2M \RdData_reg[0]  ( .D(n179), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(n118), .Q(RdData[0]) );
  SDFFRQX2M \Regfile_reg[3][0]  ( .D(n211), .SI(REG2[7]), .SE(test_se), .CK(
        CLK), .RN(n119), .Q(REG3[0]) );
  SDFFSQX2M \Regfile_reg[2][0]  ( .D(n203), .SI(REG1[7]), .SE(test_se), .CK(
        CLK), .SN(n117), .Q(REG2[0]) );
  SDFFRQX2M \Regfile_reg[1][6]  ( .D(n201), .SI(REG1[5]), .SE(test_se), .CK(
        CLK), .RN(n118), .Q(REG1[6]) );
  SDFFRQX2M \Regfile_reg[0][7]  ( .D(n194), .SI(REG0[6]), .SE(test_se), .CK(
        CLK), .RN(n118), .Q(REG0[7]) );
  SDFFRQX2M \Regfile_reg[0][6]  ( .D(n192), .SI(REG0[5]), .SE(test_se), .CK(
        CLK), .RN(n118), .Q(REG0[6]) );
  SDFFRQX2M \Regfile_reg[0][5]  ( .D(n190), .SI(REG0[4]), .SE(test_se), .CK(
        CLK), .RN(n118), .Q(REG0[5]) );
  SDFFRQX2M \Regfile_reg[0][4]  ( .D(n188), .SI(REG0[3]), .SE(test_se), .CK(
        CLK), .RN(n118), .Q(REG0[4]) );
  SDFFRQX2M \Regfile_reg[0][3]  ( .D(n186), .SI(REG0[2]), .SE(test_se), .CK(
        CLK), .RN(n118), .Q(REG0[3]) );
  SDFFRQX2M \Regfile_reg[0][2]  ( .D(n184), .SI(REG0[1]), .SE(test_se), .CK(
        CLK), .RN(n118), .Q(REG0[2]) );
  SDFFRQX2M \Regfile_reg[0][1]  ( .D(n182), .SI(REG0[0]), .SE(test_se), .CK(
        CLK), .RN(n117), .Q(REG0[1]) );
  SDFFRQX2M \Regfile_reg[0][0]  ( .D(n180), .SI(RdData_valid), .SE(test_se), 
        .CK(CLK), .RN(n117), .Q(REG0[0]) );
  SDFFRQX2M \Regfile_reg[2][1]  ( .D(n204), .SI(REG2[0]), .SE(test_se), .CK(
        CLK), .RN(n118), .Q(REG2[1]) );
  SDFFRX1M \Regfile_reg[7][7]  ( .D(n250), .SI(n267), .SE(test_se), .CK(CLK), 
        .RN(n115), .Q(test_so), .QN(n74) );
  SDFFRX1M \Regfile_reg[7][6]  ( .D(n249), .SI(n268), .SE(test_se), .CK(CLK), 
        .RN(n115), .Q(n267), .QN(n75) );
  SDFFRX1M \Regfile_reg[7][5]  ( .D(n248), .SI(n269), .SE(test_se), .CK(CLK), 
        .RN(n115), .Q(n268), .QN(n76) );
  SDFFRX1M \Regfile_reg[7][4]  ( .D(n247), .SI(n270), .SE(test_se), .CK(CLK), 
        .RN(n115), .Q(n269), .QN(n77) );
  SDFFRX1M \Regfile_reg[7][3]  ( .D(n246), .SI(n271), .SE(test_se), .CK(CLK), 
        .RN(n115), .Q(n270), .QN(n78) );
  SDFFRX1M \Regfile_reg[7][2]  ( .D(n245), .SI(n272), .SE(test_se), .CK(CLK), 
        .RN(n115), .Q(n271), .QN(n79) );
  SDFFRX1M \Regfile_reg[7][1]  ( .D(n244), .SI(n273), .SE(test_se), .CK(CLK), 
        .RN(n115), .Q(n272), .QN(n80) );
  SDFFRX1M \Regfile_reg[7][0]  ( .D(n243), .SI(n274), .SE(test_se), .CK(CLK), 
        .RN(n115), .Q(n273), .QN(n81) );
  SDFFRX1M \Regfile_reg[6][7]  ( .D(n242), .SI(n275), .SE(test_se), .CK(CLK), 
        .RN(n115), .Q(n274), .QN(n82) );
  SDFFRX1M \Regfile_reg[6][6]  ( .D(n241), .SI(n276), .SE(test_se), .CK(CLK), 
        .RN(n115), .Q(n275), .QN(n83) );
  SDFFRX1M \Regfile_reg[6][5]  ( .D(n240), .SI(n277), .SE(test_se), .CK(CLK), 
        .RN(n115), .Q(n276), .QN(n84) );
  SDFFRX1M \Regfile_reg[6][4]  ( .D(n239), .SI(n278), .SE(test_se), .CK(CLK), 
        .RN(n115), .Q(n277), .QN(n85) );
  SDFFRX1M \Regfile_reg[6][3]  ( .D(n238), .SI(n279), .SE(test_se), .CK(CLK), 
        .RN(n116), .Q(n278), .QN(n86) );
  SDFFRX1M \Regfile_reg[6][2]  ( .D(n237), .SI(n280), .SE(test_se), .CK(CLK), 
        .RN(n116), .Q(n279), .QN(n87) );
  SDFFRX1M \Regfile_reg[6][1]  ( .D(n236), .SI(n281), .SE(test_se), .CK(CLK), 
        .RN(n116), .Q(n280), .QN(n88) );
  SDFFRX1M \Regfile_reg[6][0]  ( .D(n235), .SI(n282), .SE(test_se), .CK(CLK), 
        .RN(n116), .Q(n281), .QN(n89) );
  SDFFRX1M \Regfile_reg[5][7]  ( .D(n234), .SI(n283), .SE(test_se), .CK(CLK), 
        .RN(n116), .Q(n282), .QN(n90) );
  SDFFRX1M \Regfile_reg[5][6]  ( .D(n233), .SI(n284), .SE(test_se), .CK(CLK), 
        .RN(n116), .Q(n283), .QN(n91) );
  SDFFRX1M \Regfile_reg[5][5]  ( .D(n232), .SI(n285), .SE(test_se), .CK(CLK), 
        .RN(n116), .Q(n284), .QN(n92) );
  SDFFRX1M \Regfile_reg[5][4]  ( .D(n231), .SI(n286), .SE(test_se), .CK(CLK), 
        .RN(n116), .Q(n285), .QN(n93) );
  SDFFRX1M \Regfile_reg[5][3]  ( .D(n230), .SI(n287), .SE(test_se), .CK(CLK), 
        .RN(n116), .Q(n286), .QN(n94) );
  SDFFRX1M \Regfile_reg[5][2]  ( .D(n229), .SI(n288), .SE(test_se), .CK(CLK), 
        .RN(n116), .Q(n287), .QN(n95) );
  SDFFRX1M \Regfile_reg[5][1]  ( .D(n228), .SI(n289), .SE(test_se), .CK(CLK), 
        .RN(n116), .Q(n288), .QN(n96) );
  SDFFRX1M \Regfile_reg[5][0]  ( .D(n227), .SI(n290), .SE(test_se), .CK(CLK), 
        .RN(n116), .Q(n289), .QN(n97) );
  SDFFRX1M \Regfile_reg[4][6]  ( .D(n225), .SI(n292), .SE(test_se), .CK(CLK), 
        .RN(n117), .Q(n291), .QN(n99) );
  SDFFRX1M \Regfile_reg[4][5]  ( .D(n224), .SI(n293), .SE(test_se), .CK(CLK), 
        .RN(n117), .Q(n292), .QN(n100) );
  SDFFRX1M \Regfile_reg[4][4]  ( .D(n223), .SI(n294), .SE(test_se), .CK(CLK), 
        .RN(n117), .Q(n293), .QN(n101) );
  SDFFRX1M \Regfile_reg[4][3]  ( .D(n222), .SI(n295), .SE(test_se), .CK(CLK), 
        .RN(n117), .Q(n294), .QN(n102) );
  SDFFRX1M \Regfile_reg[4][2]  ( .D(n221), .SI(n296), .SE(test_se), .CK(CLK), 
        .RN(n117), .Q(n295), .QN(n103) );
  SDFFRX1M \Regfile_reg[4][1]  ( .D(n220), .SI(n297), .SE(test_se), .CK(CLK), 
        .RN(n117), .Q(n296), .QN(n104) );
  SDFFRX1M \Regfile_reg[4][0]  ( .D(n219), .SI(REG3[7]), .SE(test_se), .CK(CLK), .RN(n117), .Q(n297), .QN(n105) );
  SDFFRQX2M \Regfile_reg[1][1]  ( .D(n196), .SI(REG1[0]), .SE(test_se), .CK(
        CLK), .RN(n118), .Q(REG1[1]) );
  SDFFRQX2M \Regfile_reg[1][5]  ( .D(n200), .SI(REG1[4]), .SE(test_se), .CK(
        CLK), .RN(n118), .Q(REG1[5]) );
  SDFFRQX2M \Regfile_reg[1][4]  ( .D(n199), .SI(REG1[3]), .SE(test_se), .CK(
        CLK), .RN(n118), .Q(REG1[4]) );
  SDFFRQX2M \Regfile_reg[1][7]  ( .D(n202), .SI(REG1[6]), .SE(test_se), .CK(
        CLK), .RN(n118), .Q(REG1[7]) );
  SDFFRQX2M \Regfile_reg[1][3]  ( .D(n198), .SI(REG1[2]), .SE(test_se), .CK(
        CLK), .RN(n118), .Q(REG1[3]) );
  SDFFRQX2M \Regfile_reg[1][2]  ( .D(n197), .SI(REG1[1]), .SE(test_se), .CK(
        CLK), .RN(n118), .Q(REG1[2]) );
  SDFFRQX2M \Regfile_reg[1][0]  ( .D(n195), .SI(REG0[7]), .SE(test_se), .CK(
        CLK), .RN(n118), .Q(REG1[0]) );
  SDFFRQX2M \Regfile_reg[3][6]  ( .D(n217), .SI(REG3[5]), .SE(test_se), .CK(
        CLK), .RN(n119), .Q(REG3[6]) );
  SDFFRQX2M \Regfile_reg[3][7]  ( .D(n218), .SI(REG3[6]), .SE(test_se), .CK(
        CLK), .RN(n119), .Q(REG3[7]) );
  SDFFSQX2M \Regfile_reg[3][5]  ( .D(n216), .SI(REG3[4]), .SE(test_se), .CK(
        CLK), .SN(n117), .Q(REG3[5]) );
  SDFFRQX2M RdData_valid_reg ( .D(n251), .SI(RdData[7]), .SE(test_se), .CK(CLK), .RN(n117), .Q(RdData_valid) );
  SDFFRQX2M \Regfile_reg[3][4]  ( .D(n215), .SI(REG3[3]), .SE(test_se), .CK(
        CLK), .RN(n119), .Q(REG3[4]) );
  SDFFRQX2M \Regfile_reg[3][2]  ( .D(n213), .SI(REG3[1]), .SE(test_se), .CK(
        CLK), .RN(n119), .Q(REG3[2]) );
  SDFFRQX2M \Regfile_reg[3][3]  ( .D(n214), .SI(REG3[2]), .SE(test_se), .CK(
        CLK), .RN(n119), .Q(REG3[3]) );
  SDFFRQX2M \Regfile_reg[3][1]  ( .D(n212), .SI(REG3[0]), .SE(test_se), .CK(
        CLK), .RN(n119), .Q(REG3[1]) );
  SDFFRQX2M \Regfile_reg[2][2]  ( .D(n205), .SI(REG2[1]), .SE(test_se), .CK(
        CLK), .RN(n119), .Q(REG2[2]) );
  SDFFRQX2M \Regfile_reg[2][4]  ( .D(n207), .SI(REG2[3]), .SE(test_se), .CK(
        CLK), .RN(n119), .Q(REG2[4]) );
  SDFFRQX2M \Regfile_reg[2][6]  ( .D(n209), .SI(REG2[5]), .SE(test_se), .CK(
        CLK), .RN(n119), .Q(REG2[6]) );
  SDFFRQX2M \Regfile_reg[2][3]  ( .D(n206), .SI(REG2[2]), .SE(test_se), .CK(
        CLK), .RN(n119), .Q(REG2[3]) );
  SDFFRQX2M \Regfile_reg[2][5]  ( .D(n208), .SI(REG2[4]), .SE(test_se), .CK(
        CLK), .RN(n119), .Q(REG2[5]) );
  SDFFRX1M \Regfile_reg[4][7]  ( .D(n226), .SI(n291), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n290), .QN(n98) );
  SDFFSQX1M \Regfile_reg[2][7]  ( .D(n210), .SI(REG2[6]), .SE(test_se), .CK(
        CLK), .SN(RST), .Q(REG2[7]) );
  NOR2X2M U78 ( .A(n265), .B(n108), .Y(n170) );
  NOR2X2M U79 ( .A(n265), .B(n263), .Y(n172) );
  INVX2M U80 ( .A(n111), .Y(n259) );
  INVX2M U81 ( .A(n175), .Y(n257) );
  INVX2M U82 ( .A(n176), .Y(n258) );
  INVX2M U83 ( .A(n177), .Y(n254) );
  INVX2M U84 ( .A(n178), .Y(n255) );
  BUFX2M U85 ( .A(n132), .Y(n112) );
  BUFX2M U86 ( .A(n132), .Y(n111) );
  INVX2M U87 ( .A(n109), .Y(n256) );
  NOR2X2M U88 ( .A(n261), .B(Address[2]), .Y(n129) );
  NAND2X2M U89 ( .A(n172), .B(n128), .Y(n171) );
  NAND2X2M U90 ( .A(n170), .B(n129), .Y(n173) );
  NAND2X2M U91 ( .A(n172), .B(n129), .Y(n174) );
  NAND2X2M U92 ( .A(n170), .B(n128), .Y(n134) );
  NAND2X2M U93 ( .A(n170), .B(n259), .Y(n175) );
  NAND2X2M U94 ( .A(n172), .B(n259), .Y(n176) );
  NAND2X2M U95 ( .A(n170), .B(n256), .Y(n177) );
  NAND2X2M U96 ( .A(n172), .B(n256), .Y(n178) );
  NAND2X2M U97 ( .A(Address[2]), .B(n261), .Y(n132) );
  BUFX2M U98 ( .A(n131), .Y(n110) );
  BUFX2M U99 ( .A(n131), .Y(n109) );
  INVX2M U100 ( .A(n108), .Y(n263) );
  NOR2X2M U101 ( .A(Address[1]), .B(Address[2]), .Y(n128) );
  BUFX2M U102 ( .A(Address[0]), .Y(n108) );
  NAND2X2M U103 ( .A(Address[2]), .B(Address[1]), .Y(n131) );
  INVX2M U104 ( .A(Address[1]), .Y(n261) );
  INVX2M U105 ( .A(n124), .Y(n264) );
  NAND2X2M U106 ( .A(RdEn), .B(n265), .Y(n124) );
  INVX2M U107 ( .A(WrData[3]), .Y(n252) );
  INVX2M U108 ( .A(WrData[6]), .Y(n121) );
  INVX2M U109 ( .A(WrData[7]), .Y(n120) );
  INVX2M U110 ( .A(WrEn), .Y(n265) );
  BUFX2M U111 ( .A(n114), .Y(n118) );
  BUFX2M U112 ( .A(n113), .Y(n117) );
  BUFX2M U113 ( .A(n113), .Y(n116) );
  BUFX2M U114 ( .A(n113), .Y(n115) );
  BUFX2M U115 ( .A(n114), .Y(n119) );
  INVX2M U116 ( .A(WrData[0]), .Y(n262) );
  INVX2M U117 ( .A(WrData[5]), .Y(n122) );
  INVX2M U118 ( .A(WrData[1]), .Y(n260) );
  INVX2M U119 ( .A(WrData[2]), .Y(n253) );
  INVX2M U120 ( .A(WrData[4]), .Y(n123) );
  BUFX2M U121 ( .A(RST), .Y(n113) );
  BUFX2M U122 ( .A(RST), .Y(n114) );
  OAI22X1M U123 ( .A0(n110), .A1(n89), .B0(n112), .B1(n105), .Y(n130) );
  OAI22X1M U124 ( .A0(n110), .A1(n81), .B0(n112), .B1(n97), .Y(n133) );
  OAI22X1M U125 ( .A0(n110), .A1(n88), .B0(n112), .B1(n104), .Y(n138) );
  OAI22X1M U126 ( .A0(n110), .A1(n80), .B0(n112), .B1(n96), .Y(n139) );
  OAI22X1M U127 ( .A0(n110), .A1(n87), .B0(n112), .B1(n103), .Y(n143) );
  OAI22X1M U128 ( .A0(n110), .A1(n79), .B0(n112), .B1(n95), .Y(n144) );
  OAI22X1M U129 ( .A0(n110), .A1(n86), .B0(n112), .B1(n102), .Y(n148) );
  OAI22X1M U130 ( .A0(n110), .A1(n78), .B0(n112), .B1(n94), .Y(n149) );
  OAI22X1M U131 ( .A0(n110), .A1(n85), .B0(n112), .B1(n101), .Y(n153) );
  OAI22X1M U132 ( .A0(n109), .A1(n77), .B0(n111), .B1(n93), .Y(n154) );
  OAI22X1M U133 ( .A0(n109), .A1(n84), .B0(n111), .B1(n100), .Y(n158) );
  OAI22X1M U134 ( .A0(n109), .A1(n76), .B0(n111), .B1(n92), .Y(n159) );
  OAI22X1M U135 ( .A0(n109), .A1(n83), .B0(n111), .B1(n99), .Y(n163) );
  OAI22X1M U136 ( .A0(n109), .A1(n75), .B0(n111), .B1(n91), .Y(n164) );
  OAI22X1M U137 ( .A0(n109), .A1(n82), .B0(n111), .B1(n98), .Y(n168) );
  OAI22X1M U138 ( .A0(n109), .A1(n74), .B0(n111), .B1(n90), .Y(n169) );
  OAI22X1M U139 ( .A0(n262), .A1(n175), .B0(n257), .B1(n105), .Y(n219) );
  OAI22X1M U140 ( .A0(n260), .A1(n175), .B0(n257), .B1(n104), .Y(n220) );
  OAI22X1M U141 ( .A0(n253), .A1(n175), .B0(n257), .B1(n103), .Y(n221) );
  OAI22X1M U142 ( .A0(n252), .A1(n175), .B0(n257), .B1(n102), .Y(n222) );
  OAI22X1M U143 ( .A0(n123), .A1(n175), .B0(n257), .B1(n101), .Y(n223) );
  OAI22X1M U144 ( .A0(n122), .A1(n175), .B0(n257), .B1(n100), .Y(n224) );
  OAI22X1M U145 ( .A0(n121), .A1(n175), .B0(n257), .B1(n99), .Y(n225) );
  OAI22X1M U146 ( .A0(n120), .A1(n175), .B0(n257), .B1(n98), .Y(n226) );
  OAI22X1M U147 ( .A0(n262), .A1(n176), .B0(n258), .B1(n97), .Y(n227) );
  OAI22X1M U148 ( .A0(n260), .A1(n176), .B0(n258), .B1(n96), .Y(n228) );
  OAI22X1M U149 ( .A0(n253), .A1(n176), .B0(n258), .B1(n95), .Y(n229) );
  OAI22X1M U150 ( .A0(n252), .A1(n176), .B0(n258), .B1(n94), .Y(n230) );
  OAI22X1M U151 ( .A0(n123), .A1(n176), .B0(n258), .B1(n93), .Y(n231) );
  OAI22X1M U152 ( .A0(n122), .A1(n176), .B0(n258), .B1(n92), .Y(n232) );
  OAI22X1M U153 ( .A0(n121), .A1(n176), .B0(n258), .B1(n91), .Y(n233) );
  OAI22X1M U154 ( .A0(n120), .A1(n176), .B0(n258), .B1(n90), .Y(n234) );
  OAI22X1M U155 ( .A0(n262), .A1(n177), .B0(n254), .B1(n89), .Y(n235) );
  OAI22X1M U156 ( .A0(n260), .A1(n177), .B0(n254), .B1(n88), .Y(n236) );
  OAI22X1M U157 ( .A0(n253), .A1(n177), .B0(n254), .B1(n87), .Y(n237) );
  OAI22X1M U158 ( .A0(n252), .A1(n177), .B0(n254), .B1(n86), .Y(n238) );
  OAI22X1M U159 ( .A0(n123), .A1(n177), .B0(n254), .B1(n85), .Y(n239) );
  OAI22X1M U160 ( .A0(n122), .A1(n177), .B0(n254), .B1(n84), .Y(n240) );
  OAI22X1M U161 ( .A0(n121), .A1(n177), .B0(n254), .B1(n83), .Y(n241) );
  OAI22X1M U162 ( .A0(n120), .A1(n177), .B0(n254), .B1(n82), .Y(n242) );
  OAI22X1M U163 ( .A0(n262), .A1(n178), .B0(n255), .B1(n81), .Y(n243) );
  OAI22X1M U164 ( .A0(n260), .A1(n178), .B0(n255), .B1(n80), .Y(n244) );
  OAI22X1M U165 ( .A0(n253), .A1(n178), .B0(n255), .B1(n79), .Y(n245) );
  OAI22X1M U166 ( .A0(n252), .A1(n178), .B0(n255), .B1(n78), .Y(n246) );
  OAI22X1M U167 ( .A0(n123), .A1(n178), .B0(n255), .B1(n77), .Y(n247) );
  OAI22X1M U168 ( .A0(n122), .A1(n178), .B0(n255), .B1(n76), .Y(n248) );
  OAI22X1M U169 ( .A0(n121), .A1(n178), .B0(n255), .B1(n75), .Y(n249) );
  OAI22X1M U170 ( .A0(n120), .A1(n178), .B0(n255), .B1(n74), .Y(n250) );
  OAI2BB2X1M U171 ( .B0(n134), .B1(n262), .A0N(n134), .A1N(REG0[0]), .Y(n180)
         );
  OAI2BB2X1M U172 ( .B0(n134), .B1(n260), .A0N(n134), .A1N(REG0[1]), .Y(n182)
         );
  OAI2BB2X1M U173 ( .B0(n134), .B1(n253), .A0N(n134), .A1N(REG0[2]), .Y(n184)
         );
  OAI2BB2X1M U174 ( .B0(n134), .B1(n252), .A0N(n134), .A1N(REG0[3]), .Y(n186)
         );
  OAI2BB2X1M U175 ( .B0(n134), .B1(n123), .A0N(n134), .A1N(REG0[4]), .Y(n188)
         );
  OAI2BB2X1M U176 ( .B0(n134), .B1(n122), .A0N(n134), .A1N(REG0[5]), .Y(n190)
         );
  OAI2BB2X1M U177 ( .B0(n134), .B1(n121), .A0N(n134), .A1N(REG0[6]), .Y(n192)
         );
  OAI2BB2X1M U178 ( .B0(n134), .B1(n120), .A0N(n134), .A1N(REG0[7]), .Y(n194)
         );
  OAI2BB2X1M U179 ( .B0(n260), .B1(n173), .A0N(n173), .A1N(REG2[1]), .Y(n204)
         );
  OAI2BB2X1M U180 ( .B0(n253), .B1(n173), .A0N(n173), .A1N(REG2[2]), .Y(n205)
         );
  OAI2BB2X1M U181 ( .B0(n252), .B1(n173), .A0N(n173), .A1N(REG2[3]), .Y(n206)
         );
  OAI2BB2X1M U182 ( .B0(n123), .B1(n173), .A0N(n173), .A1N(REG2[4]), .Y(n207)
         );
  OAI2BB2X1M U183 ( .B0(n122), .B1(n173), .A0N(n173), .A1N(REG2[5]), .Y(n208)
         );
  OAI2BB2X1M U184 ( .B0(n121), .B1(n173), .A0N(n173), .A1N(REG2[6]), .Y(n209)
         );
  OAI2BB2X1M U185 ( .B0(n262), .B1(n174), .A0N(n174), .A1N(REG3[0]), .Y(n211)
         );
  OAI2BB2X1M U186 ( .B0(n260), .B1(n174), .A0N(n174), .A1N(REG3[1]), .Y(n212)
         );
  OAI2BB2X1M U187 ( .B0(n253), .B1(n174), .A0N(n174), .A1N(REG3[2]), .Y(n213)
         );
  OAI2BB2X1M U188 ( .B0(n252), .B1(n174), .A0N(n174), .A1N(REG3[3]), .Y(n214)
         );
  OAI2BB2X1M U189 ( .B0(n123), .B1(n174), .A0N(n174), .A1N(REG3[4]), .Y(n215)
         );
  OAI2BB2X1M U190 ( .B0(n121), .B1(n174), .A0N(n174), .A1N(REG3[6]), .Y(n217)
         );
  OAI2BB2X1M U191 ( .B0(n120), .B1(n174), .A0N(n174), .A1N(REG3[7]), .Y(n218)
         );
  OAI2BB2X1M U192 ( .B0(n262), .B1(n171), .A0N(n171), .A1N(REG1[0]), .Y(n195)
         );
  OAI2BB2X1M U193 ( .B0(n260), .B1(n171), .A0N(n171), .A1N(REG1[1]), .Y(n196)
         );
  OAI2BB2X1M U194 ( .B0(n253), .B1(n171), .A0N(n171), .A1N(REG1[2]), .Y(n197)
         );
  OAI2BB2X1M U195 ( .B0(n252), .B1(n171), .A0N(n171), .A1N(REG1[3]), .Y(n198)
         );
  OAI2BB2X1M U196 ( .B0(n123), .B1(n171), .A0N(n171), .A1N(REG1[4]), .Y(n199)
         );
  OAI2BB2X1M U197 ( .B0(n122), .B1(n171), .A0N(n171), .A1N(REG1[5]), .Y(n200)
         );
  OAI2BB2X1M U198 ( .B0(n121), .B1(n171), .A0N(n171), .A1N(REG1[6]), .Y(n201)
         );
  OAI2BB2X1M U199 ( .B0(n120), .B1(n171), .A0N(n171), .A1N(REG1[7]), .Y(n202)
         );
  OAI2BB2X1M U200 ( .B0(n262), .B1(n173), .A0N(n173), .A1N(REG2[0]), .Y(n203)
         );
  OAI2BB2X1M U201 ( .B0(n120), .B1(n173), .A0N(n173), .A1N(REG2[7]), .Y(n210)
         );
  OAI2BB2X1M U202 ( .B0(n122), .B1(n174), .A0N(n174), .A1N(REG3[5]), .Y(n216)
         );
  AO22X1M U203 ( .A0(RdData[0]), .A1(n124), .B0(n264), .B1(n125), .Y(n179) );
  OAI22X1M U204 ( .A0(n126), .A1(n263), .B0(n108), .B1(n127), .Y(n125) );
  AOI221XLM U205 ( .A0(REG1[0]), .A1(n128), .B0(REG3[0]), .B1(n129), .C0(n133), 
        .Y(n126) );
  AOI221XLM U206 ( .A0(REG0[0]), .A1(n128), .B0(REG2[0]), .B1(n129), .C0(n130), 
        .Y(n127) );
  AO22X1M U207 ( .A0(RdData[1]), .A1(n124), .B0(n264), .B1(n135), .Y(n181) );
  OAI22X1M U208 ( .A0(n136), .A1(n263), .B0(n108), .B1(n137), .Y(n135) );
  AOI221XLM U209 ( .A0(REG1[1]), .A1(n128), .B0(REG3[1]), .B1(n129), .C0(n139), 
        .Y(n136) );
  AOI221XLM U210 ( .A0(REG0[1]), .A1(n128), .B0(REG2[1]), .B1(n129), .C0(n138), 
        .Y(n137) );
  AO22X1M U211 ( .A0(RdData[2]), .A1(n124), .B0(n264), .B1(n140), .Y(n183) );
  OAI22X1M U212 ( .A0(n141), .A1(n263), .B0(n108), .B1(n142), .Y(n140) );
  AOI221XLM U213 ( .A0(REG1[2]), .A1(n128), .B0(REG3[2]), .B1(n129), .C0(n144), 
        .Y(n141) );
  AOI221XLM U214 ( .A0(REG0[2]), .A1(n128), .B0(REG2[2]), .B1(n129), .C0(n143), 
        .Y(n142) );
  AO22X1M U215 ( .A0(RdData[3]), .A1(n124), .B0(n264), .B1(n145), .Y(n185) );
  OAI22X1M U216 ( .A0(n146), .A1(n263), .B0(n108), .B1(n147), .Y(n145) );
  AOI221XLM U217 ( .A0(REG1[3]), .A1(n128), .B0(REG3[3]), .B1(n129), .C0(n149), 
        .Y(n146) );
  AOI221XLM U218 ( .A0(REG0[3]), .A1(n128), .B0(REG2[3]), .B1(n129), .C0(n148), 
        .Y(n147) );
  AO22X1M U219 ( .A0(RdData[4]), .A1(n124), .B0(n264), .B1(n150), .Y(n187) );
  OAI22X1M U220 ( .A0(n151), .A1(n263), .B0(n108), .B1(n152), .Y(n150) );
  AOI221XLM U221 ( .A0(REG1[4]), .A1(n128), .B0(REG3[4]), .B1(n129), .C0(n154), 
        .Y(n151) );
  AOI221XLM U222 ( .A0(REG0[4]), .A1(n128), .B0(REG2[4]), .B1(n129), .C0(n153), 
        .Y(n152) );
  AO22X1M U223 ( .A0(RdData[5]), .A1(n124), .B0(n264), .B1(n155), .Y(n189) );
  OAI22X1M U224 ( .A0(n156), .A1(n263), .B0(n108), .B1(n157), .Y(n155) );
  AOI221XLM U225 ( .A0(REG1[5]), .A1(n128), .B0(REG3[5]), .B1(n129), .C0(n159), 
        .Y(n156) );
  AOI221XLM U226 ( .A0(REG0[5]), .A1(n128), .B0(REG2[5]), .B1(n129), .C0(n158), 
        .Y(n157) );
  AO22X1M U227 ( .A0(RdData[6]), .A1(n124), .B0(n264), .B1(n160), .Y(n191) );
  OAI22X1M U228 ( .A0(n161), .A1(n263), .B0(n108), .B1(n162), .Y(n160) );
  AOI221XLM U229 ( .A0(REG1[6]), .A1(n128), .B0(REG3[6]), .B1(n129), .C0(n164), 
        .Y(n161) );
  AOI221XLM U230 ( .A0(REG0[6]), .A1(n128), .B0(REG2[6]), .B1(n129), .C0(n163), 
        .Y(n162) );
  AO22X1M U231 ( .A0(RdData[7]), .A1(n124), .B0(n264), .B1(n165), .Y(n193) );
  OAI22X1M U232 ( .A0(n166), .A1(n263), .B0(n108), .B1(n167), .Y(n165) );
  AOI221XLM U233 ( .A0(REG1[7]), .A1(n128), .B0(REG3[7]), .B1(n129), .C0(n169), 
        .Y(n166) );
  AOI221XLM U234 ( .A0(REG0[7]), .A1(n128), .B0(REG2[7]), .B1(n129), .C0(n168), 
        .Y(n167) );
  AO21XLM U235 ( .A0(RdData_valid), .A1(n265), .B0(n264), .Y(n251) );
endmodule


module reset_sync_test_0 ( clk, reset, sync_reset, test_si, test_so, test_se
 );
  input clk, reset, test_si, test_se;
  output sync_reset, test_so;

  wire   [1:0] stages;
  assign test_so = stages[1];

  SDFFRQX2M \stages_reg[1]  ( .D(stages[0]), .SI(stages[0]), .SE(test_se), 
        .CK(clk), .RN(reset), .Q(stages[1]) );
  SDFFRQX2M \stages_reg[0]  ( .D(1'b1), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(reset), .Q(stages[0]) );
  AND2X2M U5 ( .A(stages[1]), .B(reset), .Y(sync_reset) );
endmodule


module data_sync_test_1 ( clk, reset, bus_enable, unsync_bus, sync_bus, 
        enable_bus, test_si2, test_si1, test_so2, test_so1, test_se );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input clk, reset, bus_enable, test_si2, test_si1, test_se;
  output enable_bus, test_so2, test_so1;
  wire   sel, reg_enable_bus, n11, n13, n15, n17, n19, n21, n23, n25, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n29;
  wire   [1:0] reg_stage;
  wire   [7:0] reg_sync_bus;
  assign test_so1 = reg_stage[1];
  assign test_so2 = reg_sync_bus[7];

  SDFFRQX2M reg_enable_bus_reg ( .D(n1), .SI(test_si1), .SE(test_se), .CK(clk), 
        .RN(reset), .Q(reg_enable_bus) );
  SDFFRQX2M \reg_stage_reg[1]  ( .D(reg_stage[0]), .SI(reg_stage[0]), .SE(
        test_se), .CK(clk), .RN(reset), .Q(reg_stage[1]) );
  SDFFRQX2M \reg_sync_bus_reg[7]  ( .D(n25), .SI(reg_sync_bus[6]), .SE(test_se), .CK(clk), .RN(reset), .Q(reg_sync_bus[7]) );
  SDFFRQX2M \reg_sync_bus_reg[4]  ( .D(n19), .SI(reg_sync_bus[3]), .SE(test_se), .CK(clk), .RN(reset), .Q(reg_sync_bus[4]) );
  SDFFRQX2M \reg_sync_bus_reg[3]  ( .D(n17), .SI(reg_sync_bus[2]), .SE(test_se), .CK(clk), .RN(reset), .Q(reg_sync_bus[3]) );
  SDFFRQX2M \reg_stage_reg[0]  ( .D(bus_enable), .SI(reg_enable_bus), .SE(
        test_se), .CK(clk), .RN(reset), .Q(reg_stage[0]) );
  SDFFRQX2M \reg_sync_bus_reg[6]  ( .D(n23), .SI(reg_sync_bus[5]), .SE(test_se), .CK(clk), .RN(reset), .Q(reg_sync_bus[6]) );
  SDFFRQX2M \reg_sync_bus_reg[5]  ( .D(n21), .SI(reg_sync_bus[4]), .SE(test_se), .CK(clk), .RN(reset), .Q(reg_sync_bus[5]) );
  SDFFRQX2M \reg_sync_bus_reg[2]  ( .D(n15), .SI(reg_sync_bus[1]), .SE(test_se), .CK(clk), .RN(reset), .Q(reg_sync_bus[2]) );
  SDFFRQX2M \reg_sync_bus_reg[1]  ( .D(n13), .SI(reg_sync_bus[0]), .SE(test_se), .CK(clk), .RN(reset), .Q(reg_sync_bus[1]) );
  SDFFRQX2M \reg_sync_bus_reg[0]  ( .D(n11), .SI(test_si2), .SE(test_se), .CK(
        clk), .RN(reset), .Q(reg_sync_bus[0]) );
  NOR2X2M U3 ( .A(n2), .B(n8), .Y(sync_bus[2]) );
  BUFX2M U4 ( .A(sel), .Y(n1) );
  NOR2X2M U5 ( .A(n2), .B(n4), .Y(sync_bus[6]) );
  NOR2X2M U6 ( .A(n2), .B(n29), .Y(sync_bus[0]) );
  NOR2X2M U7 ( .A(n2), .B(n9), .Y(sync_bus[1]) );
  NOR2X2M U8 ( .A(n2), .B(n5), .Y(sync_bus[5]) );
  NOR2X2M U9 ( .A(n3), .B(n2), .Y(sync_bus[7]) );
  NOR2X2M U10 ( .A(n2), .B(n7), .Y(sync_bus[3]) );
  NOR2X2M U11 ( .A(n2), .B(n6), .Y(sync_bus[4]) );
  INVX2M U12 ( .A(reset), .Y(n2) );
  INVX2M U13 ( .A(reg_sync_bus[1]), .Y(n9) );
  INVX2M U14 ( .A(reg_sync_bus[0]), .Y(n29) );
  INVX2M U15 ( .A(reg_sync_bus[2]), .Y(n8) );
  INVX2M U16 ( .A(reg_sync_bus[5]), .Y(n5) );
  INVX2M U17 ( .A(reg_sync_bus[6]), .Y(n4) );
  OAI2BB2X1M U18 ( .B0(n1), .B1(n29), .A0N(unsync_bus[0]), .A1N(n1), .Y(n11)
         );
  OAI2BB2X1M U19 ( .B0(n1), .B1(n9), .A0N(unsync_bus[1]), .A1N(n1), .Y(n13) );
  OAI2BB2X1M U20 ( .B0(n1), .B1(n8), .A0N(unsync_bus[2]), .A1N(n1), .Y(n15) );
  OAI2BB2X1M U21 ( .B0(n1), .B1(n7), .A0N(unsync_bus[3]), .A1N(n1), .Y(n17) );
  OAI2BB2X1M U22 ( .B0(n1), .B1(n6), .A0N(unsync_bus[4]), .A1N(n1), .Y(n19) );
  OAI2BB2X1M U23 ( .B0(n1), .B1(n5), .A0N(unsync_bus[5]), .A1N(n1), .Y(n21) );
  OAI2BB2X1M U24 ( .B0(n1), .B1(n4), .A0N(unsync_bus[6]), .A1N(n1), .Y(n23) );
  OAI2BB2X1M U25 ( .B0(n1), .B1(n3), .A0N(unsync_bus[7]), .A1N(n1), .Y(n25) );
  NOR2BX2M U26 ( .AN(reg_stage[1]), .B(reg_stage[0]), .Y(sel) );
  INVX2M U27 ( .A(reg_sync_bus[7]), .Y(n3) );
  INVX2M U28 ( .A(reg_sync_bus[4]), .Y(n6) );
  INVX2M U29 ( .A(reg_sync_bus[3]), .Y(n7) );
  NOR2BX2M U41 ( .AN(reg_enable_bus), .B(n2), .Y(enable_bus) );
endmodule


module fifo_wptr_test_1 ( w_clk, wrst_n, winc, wq2_rptr, wptr, w_addr, w_full, 
        wire_w_full, test_si, test_se );
  input [3:0] wq2_rptr;
  output [3:0] wptr;
  output [2:0] w_addr;
  input w_clk, wrst_n, winc, test_si, test_se;
  output w_full, wire_w_full;
  wire   n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n13, n14, n15,
         n41;
  wire   [3:0] c_counter;

  SDFFRQX2M \c_counter_reg[3]  ( .D(n36), .SI(c_counter[2]), .SE(test_se), 
        .CK(w_clk), .RN(wrst_n), .Q(c_counter[3]) );
  SDFFRQX2M \wptr_reg[0]  ( .D(n39), .SI(w_full), .SE(test_se), .CK(w_clk), 
        .RN(wrst_n), .Q(wptr[0]) );
  SDFFRQX2M \wptr_reg[1]  ( .D(n35), .SI(wptr[0]), .SE(test_se), .CK(w_clk), 
        .RN(wrst_n), .Q(wptr[1]) );
  SDFFRQX2M \wptr_reg[3]  ( .D(n33), .SI(wptr[2]), .SE(test_se), .CK(w_clk), 
        .RN(wrst_n), .Q(wptr[3]) );
  SDFFRQX2M \wptr_reg[2]  ( .D(n34), .SI(wptr[1]), .SE(test_se), .CK(w_clk), 
        .RN(wrst_n), .Q(wptr[2]) );
  SDFFRQX2M \c_counter_reg[2]  ( .D(n37), .SI(c_counter[1]), .SE(test_se), 
        .CK(w_clk), .RN(wrst_n), .Q(c_counter[2]) );
  SDFFRQX2M \w_addr_reg[2]  ( .D(n32), .SI(w_addr[1]), .SE(test_se), .CK(w_clk), .RN(wrst_n), .Q(w_addr[2]) );
  SDFFRQX2M \c_counter_reg[1]  ( .D(n38), .SI(c_counter[0]), .SE(test_se), 
        .CK(w_clk), .RN(wrst_n), .Q(c_counter[1]) );
  SDFFRQX2M \c_counter_reg[0]  ( .D(n40), .SI(test_si), .SE(test_se), .CK(
        w_clk), .RN(wrst_n), .Q(c_counter[0]) );
  SDFFRQX2M \w_addr_reg[1]  ( .D(n31), .SI(w_addr[0]), .SE(test_se), .CK(w_clk), .RN(wrst_n), .Q(w_addr[1]) );
  SDFFRQX2M \w_addr_reg[0]  ( .D(n30), .SI(c_counter[3]), .SE(test_se), .CK(
        w_clk), .RN(wrst_n), .Q(w_addr[0]) );
  SDFFRQX2M w_full_reg ( .D(n14), .SI(w_addr[2]), .SE(test_se), .CK(w_clk), 
        .RN(wrst_n), .Q(w_full) );
  NAND2X2M U15 ( .A(winc), .B(n25), .Y(n13) );
  NAND2X2M U16 ( .A(winc), .B(n25), .Y(n16) );
  INVX2M U17 ( .A(n21), .Y(n41) );
  INVX2M U18 ( .A(n25), .Y(n14) );
  XNOR2X2M U19 ( .A(c_counter[0]), .B(n13), .Y(n40) );
  OAI2BB2X1M U20 ( .B0(n16), .B1(n24), .A0N(n16), .A1N(wptr[0]), .Y(n39) );
  XNOR2X2M U21 ( .A(c_counter[0]), .B(n17), .Y(n24) );
  OAI2BB2X1M U22 ( .B0(c_counter[0]), .B1(n13), .A0N(w_addr[0]), .A1N(n16), 
        .Y(n30) );
  OAI2BB2X1M U23 ( .B0(n41), .B1(n13), .A0N(w_addr[2]), .A1N(n16), .Y(n32) );
  OAI2BB2X1M U24 ( .B0(n18), .B1(n13), .A0N(n16), .A1N(c_counter[3]), .Y(n36)
         );
  OAI2BB2X1M U25 ( .B0(n19), .B1(n13), .A0N(n16), .A1N(wptr[2]), .Y(n34) );
  XNOR2X2M U26 ( .A(n18), .B(n41), .Y(n19) );
  OAI2BB2X1M U27 ( .B0(n17), .B1(n13), .A0N(n16), .A1N(c_counter[1]), .Y(n38)
         );
  OAI2BB2X1M U28 ( .B0(n17), .B1(n16), .A0N(w_addr[1]), .A1N(n13), .Y(n31) );
  OAI2BB2X1M U29 ( .B0(n20), .B1(n16), .A0N(n13), .A1N(wptr[1]), .Y(n35) );
  XNOR2X2M U30 ( .A(n21), .B(n15), .Y(n20) );
  INVX2M U31 ( .A(n17), .Y(n15) );
  OAI2BB2X1M U32 ( .B0(n18), .B1(n16), .A0N(n13), .A1N(wptr[3]), .Y(n33) );
  OAI2BB2X1M U33 ( .B0(n41), .B1(n16), .A0N(n13), .A1N(c_counter[2]), .Y(n37)
         );
  NOR2BX2M U34 ( .AN(winc), .B(w_full), .Y(wire_w_full) );
  XNOR2X2M U35 ( .A(c_counter[1]), .B(c_counter[0]), .Y(n17) );
  XNOR2X2M U36 ( .A(c_counter[3]), .B(n22), .Y(n18) );
  NOR2BX2M U37 ( .AN(c_counter[2]), .B(n23), .Y(n22) );
  XNOR2X2M U38 ( .A(n23), .B(c_counter[2]), .Y(n21) );
  NAND4X2M U39 ( .A(n26), .B(n27), .C(n28), .D(n29), .Y(n25) );
  XNOR2X2M U40 ( .A(wptr[1]), .B(wq2_rptr[1]), .Y(n26) );
  XNOR2X2M U41 ( .A(wptr[0]), .B(wq2_rptr[0]), .Y(n27) );
  CLKXOR2X2M U42 ( .A(wq2_rptr[2]), .B(wptr[2]), .Y(n28) );
  NAND2X2M U43 ( .A(c_counter[0]), .B(c_counter[1]), .Y(n23) );
  CLKXOR2X2M U44 ( .A(wq2_rptr[3]), .B(wptr[3]), .Y(n29) );
endmodule


module fifo_memory_test_1 ( w_clk, w_clk_en, reset, w_addr, r_addr, w_data, 
        r_data, test_si, test_so, test_se );
  input [2:0] w_addr;
  input [2:0] r_addr;
  input [7:0] w_data;
  output [7:0] r_data;
  input w_clk, w_clk_en, reset, test_si, test_se;
  output test_so;
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
         \memory[0][0] , n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173;
  assign N10 = r_addr[0];
  assign N11 = r_addr[1];
  assign N12 = r_addr[2];
  assign test_so = \memory[7][7] ;

  SDFFRQX2M \memory_reg[5][7]  ( .D(n132), .SI(\memory[5][6] ), .SE(test_se), 
        .CK(w_clk), .RN(n159), .Q(\memory[5][7] ) );
  SDFFRQX2M \memory_reg[5][6]  ( .D(n131), .SI(\memory[5][5] ), .SE(test_se), 
        .CK(w_clk), .RN(n159), .Q(\memory[5][6] ) );
  SDFFRQX2M \memory_reg[5][5]  ( .D(n130), .SI(\memory[5][4] ), .SE(test_se), 
        .CK(w_clk), .RN(n159), .Q(\memory[5][5] ) );
  SDFFRQX2M \memory_reg[5][4]  ( .D(n129), .SI(\memory[5][3] ), .SE(test_se), 
        .CK(w_clk), .RN(n159), .Q(\memory[5][4] ) );
  SDFFRQX2M \memory_reg[5][3]  ( .D(n128), .SI(\memory[5][2] ), .SE(test_se), 
        .CK(w_clk), .RN(n159), .Q(\memory[5][3] ) );
  SDFFRQX2M \memory_reg[5][2]  ( .D(n127), .SI(\memory[5][1] ), .SE(test_se), 
        .CK(w_clk), .RN(n159), .Q(\memory[5][2] ) );
  SDFFRQX2M \memory_reg[5][1]  ( .D(n126), .SI(\memory[5][0] ), .SE(test_se), 
        .CK(w_clk), .RN(n159), .Q(\memory[5][1] ) );
  SDFFRQX2M \memory_reg[5][0]  ( .D(n125), .SI(\memory[4][7] ), .SE(test_se), 
        .CK(w_clk), .RN(n159), .Q(\memory[5][0] ) );
  SDFFRQX2M \memory_reg[1][7]  ( .D(n100), .SI(\memory[1][6] ), .SE(test_se), 
        .CK(w_clk), .RN(n162), .Q(\memory[1][7] ) );
  SDFFRQX2M \memory_reg[1][6]  ( .D(n99), .SI(\memory[1][5] ), .SE(test_se), 
        .CK(w_clk), .RN(n162), .Q(\memory[1][6] ) );
  SDFFRQX2M \memory_reg[1][5]  ( .D(n98), .SI(\memory[1][4] ), .SE(test_se), 
        .CK(w_clk), .RN(n162), .Q(\memory[1][5] ) );
  SDFFRQX2M \memory_reg[1][4]  ( .D(n97), .SI(\memory[1][3] ), .SE(test_se), 
        .CK(w_clk), .RN(n162), .Q(\memory[1][4] ) );
  SDFFRQX2M \memory_reg[1][3]  ( .D(n96), .SI(\memory[1][2] ), .SE(test_se), 
        .CK(w_clk), .RN(n162), .Q(\memory[1][3] ) );
  SDFFRQX2M \memory_reg[1][2]  ( .D(n95), .SI(\memory[1][1] ), .SE(test_se), 
        .CK(w_clk), .RN(n162), .Q(\memory[1][2] ) );
  SDFFRQX2M \memory_reg[1][1]  ( .D(n94), .SI(\memory[1][0] ), .SE(test_se), 
        .CK(w_clk), .RN(n162), .Q(\memory[1][1] ) );
  SDFFRQX2M \memory_reg[1][0]  ( .D(n93), .SI(\memory[0][7] ), .SE(test_se), 
        .CK(w_clk), .RN(n162), .Q(\memory[1][0] ) );
  SDFFRQX2M \memory_reg[7][7]  ( .D(n148), .SI(\memory[7][6] ), .SE(test_se), 
        .CK(w_clk), .RN(n158), .Q(\memory[7][7] ) );
  SDFFRQX2M \memory_reg[7][6]  ( .D(n147), .SI(\memory[7][5] ), .SE(test_se), 
        .CK(w_clk), .RN(n158), .Q(\memory[7][6] ) );
  SDFFRQX2M \memory_reg[7][5]  ( .D(n146), .SI(\memory[7][4] ), .SE(test_se), 
        .CK(w_clk), .RN(n158), .Q(\memory[7][5] ) );
  SDFFRQX2M \memory_reg[7][4]  ( .D(n145), .SI(\memory[7][3] ), .SE(test_se), 
        .CK(w_clk), .RN(n158), .Q(\memory[7][4] ) );
  SDFFRQX2M \memory_reg[7][3]  ( .D(n144), .SI(\memory[7][2] ), .SE(test_se), 
        .CK(w_clk), .RN(n158), .Q(\memory[7][3] ) );
  SDFFRQX2M \memory_reg[7][2]  ( .D(n143), .SI(\memory[7][1] ), .SE(test_se), 
        .CK(w_clk), .RN(n158), .Q(\memory[7][2] ) );
  SDFFRQX2M \memory_reg[7][1]  ( .D(n142), .SI(\memory[7][0] ), .SE(test_se), 
        .CK(w_clk), .RN(n158), .Q(\memory[7][1] ) );
  SDFFRQX2M \memory_reg[7][0]  ( .D(n141), .SI(\memory[6][7] ), .SE(test_se), 
        .CK(w_clk), .RN(n158), .Q(\memory[7][0] ) );
  SDFFRQX2M \memory_reg[3][7]  ( .D(n116), .SI(\memory[3][6] ), .SE(test_se), 
        .CK(w_clk), .RN(n160), .Q(\memory[3][7] ) );
  SDFFRQX2M \memory_reg[3][6]  ( .D(n115), .SI(\memory[3][5] ), .SE(test_se), 
        .CK(w_clk), .RN(n160), .Q(\memory[3][6] ) );
  SDFFRQX2M \memory_reg[3][5]  ( .D(n114), .SI(\memory[3][4] ), .SE(test_se), 
        .CK(w_clk), .RN(n160), .Q(\memory[3][5] ) );
  SDFFRQX2M \memory_reg[3][4]  ( .D(n113), .SI(\memory[3][3] ), .SE(test_se), 
        .CK(w_clk), .RN(n160), .Q(\memory[3][4] ) );
  SDFFRQX2M \memory_reg[3][3]  ( .D(n112), .SI(\memory[3][2] ), .SE(test_se), 
        .CK(w_clk), .RN(n161), .Q(\memory[3][3] ) );
  SDFFRQX2M \memory_reg[3][2]  ( .D(n111), .SI(\memory[3][1] ), .SE(test_se), 
        .CK(w_clk), .RN(n161), .Q(\memory[3][2] ) );
  SDFFRQX2M \memory_reg[3][1]  ( .D(n110), .SI(\memory[3][0] ), .SE(test_se), 
        .CK(w_clk), .RN(n161), .Q(\memory[3][1] ) );
  SDFFRQX2M \memory_reg[3][0]  ( .D(n109), .SI(\memory[2][7] ), .SE(test_se), 
        .CK(w_clk), .RN(n161), .Q(\memory[3][0] ) );
  SDFFRQX2M \memory_reg[6][7]  ( .D(n140), .SI(\memory[6][6] ), .SE(test_se), 
        .CK(w_clk), .RN(n158), .Q(\memory[6][7] ) );
  SDFFRQX2M \memory_reg[6][6]  ( .D(n139), .SI(\memory[6][5] ), .SE(test_se), 
        .CK(w_clk), .RN(n158), .Q(\memory[6][6] ) );
  SDFFRQX2M \memory_reg[6][5]  ( .D(n138), .SI(\memory[6][4] ), .SE(test_se), 
        .CK(w_clk), .RN(n158), .Q(\memory[6][5] ) );
  SDFFRQX2M \memory_reg[6][4]  ( .D(n137), .SI(\memory[6][3] ), .SE(test_se), 
        .CK(w_clk), .RN(n158), .Q(\memory[6][4] ) );
  SDFFRQX2M \memory_reg[6][3]  ( .D(n136), .SI(\memory[6][2] ), .SE(test_se), 
        .CK(w_clk), .RN(n159), .Q(\memory[6][3] ) );
  SDFFRQX2M \memory_reg[6][2]  ( .D(n135), .SI(\memory[6][1] ), .SE(test_se), 
        .CK(w_clk), .RN(n159), .Q(\memory[6][2] ) );
  SDFFRQX2M \memory_reg[6][1]  ( .D(n134), .SI(\memory[6][0] ), .SE(test_se), 
        .CK(w_clk), .RN(n159), .Q(\memory[6][1] ) );
  SDFFRQX2M \memory_reg[6][0]  ( .D(n133), .SI(\memory[5][7] ), .SE(test_se), 
        .CK(w_clk), .RN(n159), .Q(\memory[6][0] ) );
  SDFFRQX2M \memory_reg[2][7]  ( .D(n108), .SI(\memory[2][6] ), .SE(test_se), 
        .CK(w_clk), .RN(n161), .Q(\memory[2][7] ) );
  SDFFRQX2M \memory_reg[2][6]  ( .D(n107), .SI(\memory[2][5] ), .SE(test_se), 
        .CK(w_clk), .RN(n161), .Q(\memory[2][6] ) );
  SDFFRQX2M \memory_reg[2][5]  ( .D(n106), .SI(\memory[2][4] ), .SE(test_se), 
        .CK(w_clk), .RN(n161), .Q(\memory[2][5] ) );
  SDFFRQX2M \memory_reg[2][4]  ( .D(n105), .SI(\memory[2][3] ), .SE(test_se), 
        .CK(w_clk), .RN(n161), .Q(\memory[2][4] ) );
  SDFFRQX2M \memory_reg[2][3]  ( .D(n104), .SI(\memory[2][2] ), .SE(test_se), 
        .CK(w_clk), .RN(n161), .Q(\memory[2][3] ) );
  SDFFRQX2M \memory_reg[2][2]  ( .D(n103), .SI(\memory[2][1] ), .SE(test_se), 
        .CK(w_clk), .RN(n161), .Q(\memory[2][2] ) );
  SDFFRQX2M \memory_reg[2][1]  ( .D(n102), .SI(\memory[2][0] ), .SE(test_se), 
        .CK(w_clk), .RN(n161), .Q(\memory[2][1] ) );
  SDFFRQX2M \memory_reg[2][0]  ( .D(n101), .SI(\memory[1][7] ), .SE(test_se), 
        .CK(w_clk), .RN(n161), .Q(\memory[2][0] ) );
  SDFFRQX2M \memory_reg[4][7]  ( .D(n124), .SI(\memory[4][6] ), .SE(test_se), 
        .CK(w_clk), .RN(n160), .Q(\memory[4][7] ) );
  SDFFRQX2M \memory_reg[4][6]  ( .D(n123), .SI(\memory[4][5] ), .SE(test_se), 
        .CK(w_clk), .RN(n160), .Q(\memory[4][6] ) );
  SDFFRQX2M \memory_reg[4][5]  ( .D(n122), .SI(\memory[4][4] ), .SE(test_se), 
        .CK(w_clk), .RN(n160), .Q(\memory[4][5] ) );
  SDFFRQX2M \memory_reg[4][4]  ( .D(n121), .SI(\memory[4][3] ), .SE(test_se), 
        .CK(w_clk), .RN(n160), .Q(\memory[4][4] ) );
  SDFFRQX2M \memory_reg[4][3]  ( .D(n120), .SI(\memory[4][2] ), .SE(test_se), 
        .CK(w_clk), .RN(n160), .Q(\memory[4][3] ) );
  SDFFRQX2M \memory_reg[4][2]  ( .D(n119), .SI(\memory[4][1] ), .SE(test_se), 
        .CK(w_clk), .RN(n160), .Q(\memory[4][2] ) );
  SDFFRQX2M \memory_reg[4][1]  ( .D(n118), .SI(\memory[4][0] ), .SE(test_se), 
        .CK(w_clk), .RN(n160), .Q(\memory[4][1] ) );
  SDFFRQX2M \memory_reg[4][0]  ( .D(n117), .SI(\memory[3][7] ), .SE(test_se), 
        .CK(w_clk), .RN(n160), .Q(\memory[4][0] ) );
  SDFFRQX2M \memory_reg[0][7]  ( .D(n92), .SI(\memory[0][6] ), .SE(test_se), 
        .CK(w_clk), .RN(n162), .Q(\memory[0][7] ) );
  SDFFRQX2M \memory_reg[0][6]  ( .D(n91), .SI(\memory[0][5] ), .SE(test_se), 
        .CK(w_clk), .RN(n162), .Q(\memory[0][6] ) );
  SDFFRQX2M \memory_reg[0][5]  ( .D(n90), .SI(\memory[0][4] ), .SE(test_se), 
        .CK(w_clk), .RN(n162), .Q(\memory[0][5] ) );
  SDFFRQX2M \memory_reg[0][4]  ( .D(n89), .SI(\memory[0][3] ), .SE(test_se), 
        .CK(w_clk), .RN(n162), .Q(\memory[0][4] ) );
  SDFFRQX2M \memory_reg[0][3]  ( .D(n88), .SI(\memory[0][2] ), .SE(test_se), 
        .CK(w_clk), .RN(n163), .Q(\memory[0][3] ) );
  SDFFRQX2M \memory_reg[0][2]  ( .D(n87), .SI(\memory[0][1] ), .SE(test_se), 
        .CK(w_clk), .RN(n163), .Q(\memory[0][2] ) );
  SDFFRQX2M \memory_reg[0][1]  ( .D(n86), .SI(\memory[0][0] ), .SE(test_se), 
        .CK(w_clk), .RN(n163), .Q(\memory[0][1] ) );
  SDFFRQX2M \memory_reg[0][0]  ( .D(n85), .SI(test_si), .SE(test_se), .CK(
        w_clk), .RN(n163), .Q(\memory[0][0] ) );
  NOR2BX2M U66 ( .AN(w_clk_en), .B(w_addr[2]), .Y(n76) );
  BUFX2M U67 ( .A(n157), .Y(n162) );
  BUFX2M U68 ( .A(n157), .Y(n161) );
  BUFX2M U69 ( .A(n156), .Y(n160) );
  BUFX2M U70 ( .A(n156), .Y(n159) );
  BUFX2M U71 ( .A(n156), .Y(n158) );
  BUFX2M U72 ( .A(n157), .Y(n163) );
  BUFX2M U73 ( .A(reset), .Y(n157) );
  BUFX2M U74 ( .A(reset), .Y(n156) );
  NAND3X2M U75 ( .A(n173), .B(n172), .C(n81), .Y(n80) );
  NAND3X2M U76 ( .A(n173), .B(n172), .C(n76), .Y(n75) );
  NAND3X2M U77 ( .A(w_addr[0]), .B(n172), .C(n81), .Y(n82) );
  NAND3X2M U78 ( .A(w_addr[1]), .B(n173), .C(n81), .Y(n83) );
  NAND3X2M U79 ( .A(w_addr[1]), .B(w_addr[0]), .C(n81), .Y(n84) );
  NAND3X2M U80 ( .A(n76), .B(n172), .C(w_addr[0]), .Y(n77) );
  NAND3X2M U81 ( .A(n76), .B(n173), .C(w_addr[1]), .Y(n78) );
  NAND3X2M U82 ( .A(w_addr[0]), .B(n76), .C(w_addr[1]), .Y(n79) );
  OAI2BB2X1M U83 ( .B0(n75), .B1(n164), .A0N(\memory[0][0] ), .A1N(n75), .Y(
        n85) );
  OAI2BB2X1M U84 ( .B0(n75), .B1(n165), .A0N(\memory[0][1] ), .A1N(n75), .Y(
        n86) );
  OAI2BB2X1M U85 ( .B0(n75), .B1(n166), .A0N(\memory[0][2] ), .A1N(n75), .Y(
        n87) );
  OAI2BB2X1M U86 ( .B0(n75), .B1(n167), .A0N(\memory[0][3] ), .A1N(n75), .Y(
        n88) );
  OAI2BB2X1M U87 ( .B0(n75), .B1(n168), .A0N(\memory[0][4] ), .A1N(n75), .Y(
        n89) );
  OAI2BB2X1M U88 ( .B0(n75), .B1(n169), .A0N(\memory[0][5] ), .A1N(n75), .Y(
        n90) );
  OAI2BB2X1M U89 ( .B0(n75), .B1(n170), .A0N(\memory[0][6] ), .A1N(n75), .Y(
        n91) );
  OAI2BB2X1M U90 ( .B0(n75), .B1(n171), .A0N(\memory[0][7] ), .A1N(n75), .Y(
        n92) );
  OAI2BB2X1M U91 ( .B0(n164), .B1(n79), .A0N(\memory[3][0] ), .A1N(n79), .Y(
        n109) );
  OAI2BB2X1M U92 ( .B0(n165), .B1(n79), .A0N(\memory[3][1] ), .A1N(n79), .Y(
        n110) );
  OAI2BB2X1M U93 ( .B0(n166), .B1(n79), .A0N(\memory[3][2] ), .A1N(n79), .Y(
        n111) );
  OAI2BB2X1M U94 ( .B0(n167), .B1(n79), .A0N(\memory[3][3] ), .A1N(n79), .Y(
        n112) );
  OAI2BB2X1M U95 ( .B0(n168), .B1(n79), .A0N(\memory[3][4] ), .A1N(n79), .Y(
        n113) );
  OAI2BB2X1M U96 ( .B0(n169), .B1(n79), .A0N(\memory[3][5] ), .A1N(n79), .Y(
        n114) );
  OAI2BB2X1M U97 ( .B0(n170), .B1(n79), .A0N(\memory[3][6] ), .A1N(n79), .Y(
        n115) );
  OAI2BB2X1M U98 ( .B0(n171), .B1(n79), .A0N(\memory[3][7] ), .A1N(n79), .Y(
        n116) );
  OAI2BB2X1M U99 ( .B0(n164), .B1(n77), .A0N(\memory[1][0] ), .A1N(n77), .Y(
        n93) );
  OAI2BB2X1M U100 ( .B0(n165), .B1(n77), .A0N(\memory[1][1] ), .A1N(n77), .Y(
        n94) );
  OAI2BB2X1M U101 ( .B0(n166), .B1(n77), .A0N(\memory[1][2] ), .A1N(n77), .Y(
        n95) );
  OAI2BB2X1M U102 ( .B0(n167), .B1(n77), .A0N(\memory[1][3] ), .A1N(n77), .Y(
        n96) );
  OAI2BB2X1M U103 ( .B0(n168), .B1(n77), .A0N(\memory[1][4] ), .A1N(n77), .Y(
        n97) );
  OAI2BB2X1M U104 ( .B0(n169), .B1(n77), .A0N(\memory[1][5] ), .A1N(n77), .Y(
        n98) );
  OAI2BB2X1M U105 ( .B0(n170), .B1(n77), .A0N(\memory[1][6] ), .A1N(n77), .Y(
        n99) );
  OAI2BB2X1M U106 ( .B0(n171), .B1(n77), .A0N(\memory[1][7] ), .A1N(n77), .Y(
        n100) );
  OAI2BB2X1M U107 ( .B0(n164), .B1(n78), .A0N(\memory[2][0] ), .A1N(n78), .Y(
        n101) );
  OAI2BB2X1M U108 ( .B0(n165), .B1(n78), .A0N(\memory[2][1] ), .A1N(n78), .Y(
        n102) );
  OAI2BB2X1M U109 ( .B0(n166), .B1(n78), .A0N(\memory[2][2] ), .A1N(n78), .Y(
        n103) );
  OAI2BB2X1M U110 ( .B0(n167), .B1(n78), .A0N(\memory[2][3] ), .A1N(n78), .Y(
        n104) );
  OAI2BB2X1M U111 ( .B0(n168), .B1(n78), .A0N(\memory[2][4] ), .A1N(n78), .Y(
        n105) );
  OAI2BB2X1M U112 ( .B0(n169), .B1(n78), .A0N(\memory[2][5] ), .A1N(n78), .Y(
        n106) );
  OAI2BB2X1M U113 ( .B0(n170), .B1(n78), .A0N(\memory[2][6] ), .A1N(n78), .Y(
        n107) );
  OAI2BB2X1M U114 ( .B0(n171), .B1(n78), .A0N(\memory[2][7] ), .A1N(n78), .Y(
        n108) );
  OAI2BB2X1M U115 ( .B0(n164), .B1(n84), .A0N(\memory[7][0] ), .A1N(n84), .Y(
        n141) );
  OAI2BB2X1M U116 ( .B0(n165), .B1(n84), .A0N(\memory[7][1] ), .A1N(n84), .Y(
        n142) );
  OAI2BB2X1M U117 ( .B0(n166), .B1(n84), .A0N(\memory[7][2] ), .A1N(n84), .Y(
        n143) );
  OAI2BB2X1M U118 ( .B0(n167), .B1(n84), .A0N(\memory[7][3] ), .A1N(n84), .Y(
        n144) );
  OAI2BB2X1M U119 ( .B0(n168), .B1(n84), .A0N(\memory[7][4] ), .A1N(n84), .Y(
        n145) );
  OAI2BB2X1M U120 ( .B0(n169), .B1(n84), .A0N(\memory[7][5] ), .A1N(n84), .Y(
        n146) );
  OAI2BB2X1M U121 ( .B0(n170), .B1(n84), .A0N(\memory[7][6] ), .A1N(n84), .Y(
        n147) );
  OAI2BB2X1M U122 ( .B0(n171), .B1(n84), .A0N(\memory[7][7] ), .A1N(n84), .Y(
        n148) );
  OAI2BB2X1M U123 ( .B0(n164), .B1(n82), .A0N(\memory[5][0] ), .A1N(n82), .Y(
        n125) );
  OAI2BB2X1M U124 ( .B0(n165), .B1(n82), .A0N(\memory[5][1] ), .A1N(n82), .Y(
        n126) );
  OAI2BB2X1M U125 ( .B0(n166), .B1(n82), .A0N(\memory[5][2] ), .A1N(n82), .Y(
        n127) );
  OAI2BB2X1M U126 ( .B0(n167), .B1(n82), .A0N(\memory[5][3] ), .A1N(n82), .Y(
        n128) );
  OAI2BB2X1M U127 ( .B0(n168), .B1(n82), .A0N(\memory[5][4] ), .A1N(n82), .Y(
        n129) );
  OAI2BB2X1M U128 ( .B0(n169), .B1(n82), .A0N(\memory[5][5] ), .A1N(n82), .Y(
        n130) );
  OAI2BB2X1M U129 ( .B0(n170), .B1(n82), .A0N(\memory[5][6] ), .A1N(n82), .Y(
        n131) );
  OAI2BB2X1M U130 ( .B0(n171), .B1(n82), .A0N(\memory[5][7] ), .A1N(n82), .Y(
        n132) );
  OAI2BB2X1M U131 ( .B0(n164), .B1(n83), .A0N(\memory[6][0] ), .A1N(n83), .Y(
        n133) );
  OAI2BB2X1M U132 ( .B0(n165), .B1(n83), .A0N(\memory[6][1] ), .A1N(n83), .Y(
        n134) );
  OAI2BB2X1M U133 ( .B0(n166), .B1(n83), .A0N(\memory[6][2] ), .A1N(n83), .Y(
        n135) );
  OAI2BB2X1M U134 ( .B0(n167), .B1(n83), .A0N(\memory[6][3] ), .A1N(n83), .Y(
        n136) );
  OAI2BB2X1M U135 ( .B0(n168), .B1(n83), .A0N(\memory[6][4] ), .A1N(n83), .Y(
        n137) );
  OAI2BB2X1M U136 ( .B0(n169), .B1(n83), .A0N(\memory[6][5] ), .A1N(n83), .Y(
        n138) );
  OAI2BB2X1M U137 ( .B0(n170), .B1(n83), .A0N(\memory[6][6] ), .A1N(n83), .Y(
        n139) );
  OAI2BB2X1M U138 ( .B0(n171), .B1(n83), .A0N(\memory[6][7] ), .A1N(n83), .Y(
        n140) );
  OAI2BB2X1M U139 ( .B0(n164), .B1(n80), .A0N(\memory[4][0] ), .A1N(n80), .Y(
        n117) );
  OAI2BB2X1M U140 ( .B0(n165), .B1(n80), .A0N(\memory[4][1] ), .A1N(n80), .Y(
        n118) );
  OAI2BB2X1M U141 ( .B0(n166), .B1(n80), .A0N(\memory[4][2] ), .A1N(n80), .Y(
        n119) );
  OAI2BB2X1M U142 ( .B0(n167), .B1(n80), .A0N(\memory[4][3] ), .A1N(n80), .Y(
        n120) );
  OAI2BB2X1M U143 ( .B0(n168), .B1(n80), .A0N(\memory[4][4] ), .A1N(n80), .Y(
        n121) );
  OAI2BB2X1M U144 ( .B0(n169), .B1(n80), .A0N(\memory[4][5] ), .A1N(n80), .Y(
        n122) );
  OAI2BB2X1M U145 ( .B0(n170), .B1(n80), .A0N(\memory[4][6] ), .A1N(n80), .Y(
        n123) );
  OAI2BB2X1M U146 ( .B0(n171), .B1(n80), .A0N(\memory[4][7] ), .A1N(n80), .Y(
        n124) );
  BUFX4M U147 ( .A(N10), .Y(n155) );
  INVX2M U148 ( .A(w_data[0]), .Y(n164) );
  INVX2M U149 ( .A(w_data[1]), .Y(n165) );
  INVX2M U150 ( .A(w_data[2]), .Y(n166) );
  INVX2M U151 ( .A(w_data[3]), .Y(n167) );
  INVX2M U152 ( .A(w_data[4]), .Y(n168) );
  INVX2M U153 ( .A(w_data[5]), .Y(n169) );
  INVX2M U154 ( .A(w_data[6]), .Y(n170) );
  INVX2M U155 ( .A(w_data[7]), .Y(n171) );
  AND2X2M U156 ( .A(w_addr[2]), .B(w_clk_en), .Y(n81) );
  MX2X2M U157 ( .A(n152), .B(n151), .S0(N12), .Y(r_data[6]) );
  MX4X1M U158 ( .A(\memory[0][6] ), .B(\memory[1][6] ), .C(\memory[2][6] ), 
        .D(\memory[3][6] ), .S0(n155), .S1(N11), .Y(n152) );
  MX4X1M U159 ( .A(\memory[4][6] ), .B(\memory[5][6] ), .C(\memory[6][6] ), 
        .D(\memory[7][6] ), .S0(n155), .S1(N11), .Y(n151) );
  MX2X2M U160 ( .A(n70), .B(n69), .S0(N12), .Y(r_data[2]) );
  MX4X1M U161 ( .A(\memory[0][2] ), .B(\memory[1][2] ), .C(\memory[2][2] ), 
        .D(\memory[3][2] ), .S0(n155), .S1(N11), .Y(n70) );
  MX4X1M U162 ( .A(\memory[4][2] ), .B(\memory[5][2] ), .C(\memory[6][2] ), 
        .D(\memory[7][2] ), .S0(n155), .S1(N11), .Y(n69) );
  MX2X2M U163 ( .A(n154), .B(n153), .S0(N12), .Y(r_data[7]) );
  MX4X1M U164 ( .A(\memory[0][7] ), .B(\memory[1][7] ), .C(\memory[2][7] ), 
        .D(\memory[3][7] ), .S0(n155), .S1(N11), .Y(n154) );
  MX4X1M U165 ( .A(\memory[4][7] ), .B(\memory[5][7] ), .C(\memory[6][7] ), 
        .D(\memory[7][7] ), .S0(n155), .S1(N11), .Y(n153) );
  MX2X2M U166 ( .A(n72), .B(n71), .S0(N12), .Y(r_data[3]) );
  MX4X1M U167 ( .A(\memory[0][3] ), .B(\memory[1][3] ), .C(\memory[2][3] ), 
        .D(\memory[3][3] ), .S0(n155), .S1(N11), .Y(n72) );
  MX4X1M U168 ( .A(\memory[4][3] ), .B(\memory[5][3] ), .C(\memory[6][3] ), 
        .D(\memory[7][3] ), .S0(n155), .S1(N11), .Y(n71) );
  MX2X2M U169 ( .A(n74), .B(n73), .S0(N12), .Y(r_data[4]) );
  MX4X1M U170 ( .A(\memory[0][4] ), .B(\memory[1][4] ), .C(\memory[2][4] ), 
        .D(\memory[3][4] ), .S0(n155), .S1(N11), .Y(n74) );
  MX4X1M U171 ( .A(\memory[4][4] ), .B(\memory[5][4] ), .C(\memory[6][4] ), 
        .D(\memory[7][4] ), .S0(n155), .S1(N11), .Y(n73) );
  MX2X2M U172 ( .A(n66), .B(n65), .S0(N12), .Y(r_data[0]) );
  MX4X1M U173 ( .A(\memory[0][0] ), .B(\memory[1][0] ), .C(\memory[2][0] ), 
        .D(\memory[3][0] ), .S0(n155), .S1(N11), .Y(n66) );
  MX4X1M U174 ( .A(\memory[4][0] ), .B(\memory[5][0] ), .C(\memory[6][0] ), 
        .D(\memory[7][0] ), .S0(n155), .S1(N11), .Y(n65) );
  MX2X2M U175 ( .A(n150), .B(n149), .S0(N12), .Y(r_data[5]) );
  MX4X1M U176 ( .A(\memory[0][5] ), .B(\memory[1][5] ), .C(\memory[2][5] ), 
        .D(\memory[3][5] ), .S0(n155), .S1(N11), .Y(n150) );
  MX4X1M U177 ( .A(\memory[4][5] ), .B(\memory[5][5] ), .C(\memory[6][5] ), 
        .D(\memory[7][5] ), .S0(n155), .S1(N11), .Y(n149) );
  MX2X2M U178 ( .A(n68), .B(n67), .S0(N12), .Y(r_data[1]) );
  MX4X1M U179 ( .A(\memory[0][1] ), .B(\memory[1][1] ), .C(\memory[2][1] ), 
        .D(\memory[3][1] ), .S0(n155), .S1(N11), .Y(n68) );
  MX4X1M U180 ( .A(\memory[4][1] ), .B(\memory[5][1] ), .C(\memory[6][1] ), 
        .D(\memory[7][1] ), .S0(n155), .S1(N11), .Y(n67) );
  INVX2M U181 ( .A(w_addr[0]), .Y(n173) );
  INVX2M U182 ( .A(w_addr[1]), .Y(n172) );
endmodule


module fifo_rptr_test_1 ( r_clk, r_rstn, r_inc, sync_wr_ptr, rd_addr, empty, 
        gray_rd_ptr, test_si2, test_si1, test_so1, test_se );
  input [3:0] sync_wr_ptr;
  output [2:0] rd_addr;
  output [3:0] gray_rd_ptr;
  input r_clk, r_rstn, r_inc, test_si2, test_si1, test_se;
  output empty, test_so1;
  wire   n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23;
  wire   [3:0] comb_gray_rd_ptr;
  assign test_so1 = comb_gray_rd_ptr[3];

  SDFFRQX2M \rd_ptr_reg[3]  ( .D(n20), .SI(rd_addr[2]), .SE(test_se), .CK(
        r_clk), .RN(r_rstn), .Q(comb_gray_rd_ptr[3]) );
  SDFFRQX2M \rd_ptr_reg[2]  ( .D(n21), .SI(test_si2), .SE(test_se), .CK(r_clk), 
        .RN(r_rstn), .Q(rd_addr[2]) );
  SDFFRQX2M \gray_rd_ptr_reg[3]  ( .D(comb_gray_rd_ptr[3]), .SI(gray_rd_ptr[2]), .SE(test_se), .CK(r_clk), .RN(r_rstn), .Q(gray_rd_ptr[3]) );
  SDFFRQX2M \gray_rd_ptr_reg[2]  ( .D(comb_gray_rd_ptr[2]), .SI(gray_rd_ptr[1]), .SE(test_se), .CK(r_clk), .RN(r_rstn), .Q(gray_rd_ptr[2]) );
  SDFFRQX2M \gray_rd_ptr_reg[1]  ( .D(comb_gray_rd_ptr[1]), .SI(gray_rd_ptr[0]), .SE(test_se), .CK(r_clk), .RN(r_rstn), .Q(gray_rd_ptr[1]) );
  SDFFRQX2M \gray_rd_ptr_reg[0]  ( .D(comb_gray_rd_ptr[0]), .SI(test_si1), 
        .SE(test_se), .CK(r_clk), .RN(r_rstn), .Q(gray_rd_ptr[0]) );
  SDFFRQX2M \rd_ptr_reg[1]  ( .D(n22), .SI(n10), .SE(test_se), .CK(r_clk), 
        .RN(r_rstn), .Q(rd_addr[1]) );
  SDFFRX1M \rd_ptr_reg[0]  ( .D(n23), .SI(gray_rd_ptr[3]), .SE(test_se), .CK(
        r_clk), .RN(r_rstn), .Q(rd_addr[0]), .QN(n10) );
  INVX2M U12 ( .A(n15), .Y(empty) );
  XNOR2X2M U13 ( .A(comb_gray_rd_ptr[0]), .B(sync_wr_ptr[0]), .Y(n17) );
  XNOR2X2M U14 ( .A(n10), .B(rd_addr[1]), .Y(comb_gray_rd_ptr[0]) );
  NOR2X2M U15 ( .A(n14), .B(n10), .Y(n13) );
  XNOR2X2M U16 ( .A(rd_addr[2]), .B(n12), .Y(n21) );
  XNOR2X2M U17 ( .A(comb_gray_rd_ptr[3]), .B(n11), .Y(n20) );
  NAND2BX2M U18 ( .AN(n12), .B(rd_addr[2]), .Y(n11) );
  NAND4X2M U19 ( .A(n16), .B(n17), .C(n18), .D(n19), .Y(n15) );
  XNOR2X2M U20 ( .A(comb_gray_rd_ptr[3]), .B(sync_wr_ptr[3]), .Y(n18) );
  XNOR2X2M U21 ( .A(comb_gray_rd_ptr[2]), .B(sync_wr_ptr[2]), .Y(n19) );
  XNOR2X2M U22 ( .A(comb_gray_rd_ptr[1]), .B(sync_wr_ptr[1]), .Y(n16) );
  NAND2X2M U23 ( .A(r_inc), .B(n15), .Y(n14) );
  NAND2X2M U24 ( .A(n13), .B(rd_addr[1]), .Y(n12) );
  CLKXOR2X2M U25 ( .A(rd_addr[1]), .B(rd_addr[2]), .Y(comb_gray_rd_ptr[1]) );
  CLKXOR2X2M U26 ( .A(comb_gray_rd_ptr[3]), .B(rd_addr[2]), .Y(
        comb_gray_rd_ptr[2]) );
  CLKXOR2X2M U27 ( .A(rd_addr[1]), .B(n13), .Y(n22) );
  CLKXOR2X2M U28 ( .A(n10), .B(n14), .Y(n23) );
endmodule


module BIT_SYNC_test_0 ( CLK, RST, ASYNC, SYNC, test_si, test_se );
  input [3:0] ASYNC;
  output [3:0] SYNC;
  input CLK, RST, test_si, test_se;
  wire   \sync_reg[3][0] , \sync_reg[2][0] , \sync_reg[1][0] ,
         \sync_reg[0][0] ;

  SDFFRQX2M \sync_reg_reg[1][1]  ( .D(\sync_reg[1][0] ), .SI(\sync_reg[1][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC[1]) );
  SDFFRQX2M \sync_reg_reg[0][1]  ( .D(\sync_reg[0][0] ), .SI(\sync_reg[0][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC[0]) );
  SDFFRQX2M \sync_reg_reg[3][1]  ( .D(\sync_reg[3][0] ), .SI(\sync_reg[3][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC[3]) );
  SDFFRQX2M \sync_reg_reg[2][1]  ( .D(\sync_reg[2][0] ), .SI(\sync_reg[2][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC[2]) );
  SDFFRQX2M \sync_reg_reg[3][0]  ( .D(ASYNC[3]), .SI(SYNC[2]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\sync_reg[3][0] ) );
  SDFFRQX2M \sync_reg_reg[2][0]  ( .D(ASYNC[2]), .SI(SYNC[1]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\sync_reg[2][0] ) );
  SDFFRQX2M \sync_reg_reg[1][0]  ( .D(ASYNC[1]), .SI(SYNC[0]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\sync_reg[1][0] ) );
  SDFFRQX2M \sync_reg_reg[0][0]  ( .D(ASYNC[0]), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\sync_reg[0][0] ) );
endmodule


module BIT_SYNC_test_1 ( CLK, RST, ASYNC, SYNC, test_si, test_se );
  input [3:0] ASYNC;
  output [3:0] SYNC;
  input CLK, RST, test_si, test_se;
  wire   \sync_reg[3][0] , \sync_reg[2][0] , \sync_reg[1][0] ,
         \sync_reg[0][0] ;

  SDFFRQX2M \sync_reg_reg[3][1]  ( .D(\sync_reg[3][0] ), .SI(\sync_reg[3][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC[3]) );
  SDFFRQX2M \sync_reg_reg[2][1]  ( .D(\sync_reg[2][0] ), .SI(\sync_reg[2][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC[2]) );
  SDFFRQX2M \sync_reg_reg[1][1]  ( .D(\sync_reg[1][0] ), .SI(\sync_reg[1][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC[1]) );
  SDFFRQX2M \sync_reg_reg[0][1]  ( .D(\sync_reg[0][0] ), .SI(\sync_reg[0][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC[0]) );
  SDFFRQX2M \sync_reg_reg[3][0]  ( .D(ASYNC[3]), .SI(SYNC[2]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\sync_reg[3][0] ) );
  SDFFRQX2M \sync_reg_reg[2][0]  ( .D(ASYNC[2]), .SI(SYNC[1]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\sync_reg[2][0] ) );
  SDFFRQX2M \sync_reg_reg[1][0]  ( .D(ASYNC[1]), .SI(SYNC[0]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\sync_reg[1][0] ) );
  SDFFRQX2M \sync_reg_reg[0][0]  ( .D(ASYNC[0]), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\sync_reg[0][0] ) );
endmodule


module fifo_top_test_1 ( wrst_n, reset, w_clk, winc, w_data, r_clk, rrest_n, 
        rinc, w_full, r_data, r_empty, test_si2, test_si1, test_so2, test_so1, 
        test_se );
  input [7:0] w_data;
  output [7:0] r_data;
  input wrst_n, reset, w_clk, winc, r_clk, rrest_n, rinc, test_si2, test_si1,
         test_se;
  output w_full, r_empty, test_so2, test_so1;
  wire   in_full, n1, n2, n3, n4, n5, n6;
  wire   [3:0] in_wq2_rptr;
  wire   [3:0] in_wptr;
  wire   [2:0] in_w_addr;
  wire   [2:0] in_r_addr;
  wire   [3:0] in_rq2_wptr;
  wire   [3:0] in_rptr;
  assign test_so1 = in_r_addr[1];
  assign test_so2 = in_rq2_wptr[3];

  INVX2M U1 ( .A(n4), .Y(n3) );
  INVX2M U2 ( .A(wrst_n), .Y(n4) );
  INVX2M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(rrest_n), .Y(n2) );
  fifo_wptr_test_1 A0 ( .w_clk(w_clk), .wrst_n(n3), .winc(winc), .wq2_rptr(
        in_wq2_rptr), .wptr(in_wptr), .w_addr(in_w_addr), .w_full(w_full), 
        .wire_w_full(in_full), .test_si(test_si1), .test_se(test_se) );
  fifo_memory_test_1 A1 ( .w_clk(w_clk), .w_clk_en(in_full), .reset(reset), 
        .w_addr(in_w_addr), .r_addr(in_r_addr), .w_data(w_data), .r_data(
        r_data), .test_si(in_wptr[3]), .test_so(n6), .test_se(test_se) );
  fifo_rptr_test_1 A2 ( .r_clk(r_clk), .r_rstn(n1), .r_inc(rinc), 
        .sync_wr_ptr(in_rq2_wptr), .rd_addr(in_r_addr), .empty(r_empty), 
        .gray_rd_ptr(in_rptr), .test_si2(test_si2), .test_si1(n6), .test_so1(
        n5), .test_se(test_se) );
  BIT_SYNC_test_0 A3 ( .CLK(w_clk), .RST(n3), .ASYNC(in_rptr), .SYNC(
        in_wq2_rptr), .test_si(n5), .test_se(test_se) );
  BIT_SYNC_test_1 A4 ( .CLK(r_clk), .RST(n1), .ASYNC(in_wptr), .SYNC(
        in_rq2_wptr), .test_si(in_wq2_rptr[3]), .test_se(test_se) );
endmodule


module reset_sync_test_1 ( clk, reset, sync_reset, test_si, test_so, test_se
 );
  input clk, reset, test_si, test_se;
  output sync_reset, test_so;

  wire   [1:0] stages;
  assign test_so = stages[1];

  SDFFRQX2M \stages_reg[0]  ( .D(1'b1), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(reset), .Q(stages[0]) );
  SDFFRQX1M \stages_reg[1]  ( .D(stages[0]), .SI(stages[0]), .SE(test_se), 
        .CK(clk), .RN(reset), .Q(stages[1]) );
  AND2X2M U6 ( .A(stages[1]), .B(reset), .Y(sync_reset) );
endmodule


module pluse_gen_test_1 ( clk, reset, busy, rd_inc, test_si, test_so, test_se
 );
  input clk, reset, busy, test_si, test_se;
  output rd_inc, test_so;
  wire   n4;
  wire   [1:0] process;
  assign test_so = process[1];

  SDFFRQX2M \process_reg[1]  ( .D(process[0]), .SI(process[0]), .SE(test_se), 
        .CK(clk), .RN(reset), .Q(process[1]) );
  SDFFRQX1M \process_reg[0]  ( .D(busy), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(reset), .Q(process[0]) );
  INVX2M U6 ( .A(reset), .Y(n4) );
  NOR3BX2M U7 ( .AN(process[1]), .B(process[0]), .C(n4), .Y(rd_inc) );
endmodule


module uart_rx_fsm_DATA_WIDTH8_test_1 ( CLK, RST, S_DATA, Prescale, 
        parity_enable, bit_count, edge_count, par_err, stp_err, strt_glitch, 
        strt_chk_en, edge_bit_en, deser_en, par_chk_en, stp_chk_en, 
        dat_samp_en, data_valid, test_so, test_se );
  input [5:0] Prescale;
  input [3:0] bit_count;
  input [5:0] edge_count;
  input CLK, RST, S_DATA, parity_enable, par_err, stp_err, strt_glitch,
         test_se;
  output strt_chk_en, edge_bit_en, deser_en, par_chk_en, stp_chk_en,
         dat_samp_en, data_valid, test_so;
  wire   \sub_40/carry[5] , \sub_40/carry[4] , \sub_40/carry[3] , n1, n2, n3,
         n4, n5, n6, n7, n8, n9, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50;
  wire   [5:0] check_edge;
  wire   [5:0] error_check_edge;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  assign error_check_edge[0] = Prescale[0];
  assign test_so = n25;

  SDFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .SI(n24), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current_state[2]) );
  SDFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .SI(strt_glitch), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(current_state[0]) );
  SDFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .SI(current_state[0]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(current_state[1]) );
  INVX2M U4 ( .A(error_check_edge[0]), .Y(check_edge[0]) );
  INVX2M U5 ( .A(Prescale[3]), .Y(n5) );
  XNOR2X2M U6 ( .A(Prescale[1]), .B(edge_count[1]), .Y(n37) );
  XNOR2X1M U9 ( .A(Prescale[5]), .B(\sub_40/carry[5] ), .Y(error_check_edge[5]) );
  OR2X1M U10 ( .A(Prescale[4]), .B(\sub_40/carry[4] ), .Y(\sub_40/carry[5] )
         );
  XNOR2X1M U11 ( .A(\sub_40/carry[4] ), .B(Prescale[4]), .Y(
        error_check_edge[4]) );
  OR2X1M U12 ( .A(Prescale[3]), .B(\sub_40/carry[3] ), .Y(\sub_40/carry[4] )
         );
  XNOR2X1M U13 ( .A(\sub_40/carry[3] ), .B(Prescale[3]), .Y(
        error_check_edge[3]) );
  OR2X1M U14 ( .A(Prescale[2]), .B(Prescale[1]), .Y(\sub_40/carry[3] ) );
  XNOR2X1M U15 ( .A(Prescale[1]), .B(Prescale[2]), .Y(error_check_edge[2]) );
  NAND2BX1M U16 ( .AN(Prescale[1]), .B(check_edge[0]), .Y(n1) );
  OAI2BB1X1M U17 ( .A0N(error_check_edge[0]), .A1N(Prescale[1]), .B0(n1), .Y(
        check_edge[1]) );
  NOR2X1M U18 ( .A(n1), .B(Prescale[2]), .Y(n2) );
  AO21XLM U19 ( .A0(n1), .A1(Prescale[2]), .B0(n2), .Y(check_edge[2]) );
  CLKNAND2X2M U20 ( .A(n2), .B(n5), .Y(n3) );
  OAI21X1M U21 ( .A0(n2), .A1(n5), .B0(n3), .Y(check_edge[3]) );
  XNOR2X1M U22 ( .A(Prescale[4]), .B(n3), .Y(check_edge[4]) );
  NOR2X1M U23 ( .A(Prescale[4]), .B(n3), .Y(n4) );
  CLKXOR2X2M U24 ( .A(Prescale[5]), .B(n4), .Y(check_edge[5]) );
  NOR2X1M U25 ( .A(current_state[1]), .B(n6), .Y(strt_chk_en) );
  NOR2X1M U26 ( .A(current_state[2]), .B(n7), .Y(par_chk_en) );
  OAI31X1M U27 ( .A0(n8), .A1(parity_enable), .A2(n9), .B0(n13), .Y(
        next_state[2]) );
  AOI31X1M U28 ( .A0(n14), .A1(n15), .A2(n16), .B0(stp_chk_en), .Y(n13) );
  NOR2X1M U29 ( .A(n17), .B(n18), .Y(n16) );
  CLKINVX1M U30 ( .A(bit_count[3]), .Y(n18) );
  CLKINVX1M U31 ( .A(n7), .Y(n15) );
  OAI21X1M U32 ( .A0(current_state[2]), .A1(n19), .B0(n7), .Y(next_state[1])
         );
  AOI31X1M U33 ( .A0(current_state[0]), .A1(n14), .A2(n20), .B0(
        current_state[1]), .Y(n19) );
  NOR3X1M U34 ( .A(bit_count[0]), .B(strt_glitch), .C(bit_count[3]), .Y(n20)
         );
  OAI221X1M U35 ( .A0(S_DATA), .A1(n21), .B0(n22), .B1(n8), .C0(n23), .Y(
        next_state[0]) );
  AOI31X1M U36 ( .A0(n24), .A1(n25), .A2(n26), .B0(n27), .Y(n23) );
  NOR4X1M U37 ( .A(n28), .B(n29), .C(n30), .D(n31), .Y(n27) );
  CLKXOR2X2M U38 ( .A(error_check_edge[5]), .B(edge_count[5]), .Y(n31) );
  CLKXOR2X2M U39 ( .A(error_check_edge[4]), .B(edge_count[4]), .Y(n30) );
  NAND3BX1M U40 ( .AN(bit_count[2]), .B(bit_count[3]), .C(stp_chk_en), .Y(n29)
         );
  NOR2X1M U41 ( .A(n25), .B(n7), .Y(stp_chk_en) );
  NAND4X1M U42 ( .A(n32), .B(n33), .C(n34), .D(n35), .Y(n28) );
  XNOR2X1M U43 ( .A(edge_count[2]), .B(error_check_edge[2]), .Y(n35) );
  NOR2X1M U44 ( .A(n36), .B(n37), .Y(n34) );
  CLKXOR2X2M U45 ( .A(error_check_edge[0]), .B(edge_count[0]), .Y(n36) );
  XNOR2X1M U46 ( .A(edge_count[3]), .B(error_check_edge[3]), .Y(n33) );
  MXI2X1M U47 ( .A(n38), .B(n39), .S0(parity_enable), .Y(n32) );
  CLKNAND2X2M U48 ( .A(bit_count[1]), .B(n17), .Y(n39) );
  OR2X1M U49 ( .A(bit_count[1]), .B(n17), .Y(n38) );
  MXI2X1M U50 ( .A(S_DATA), .B(n40), .S0(current_state[0]), .Y(n26) );
  NOR4BX1M U51 ( .AN(strt_glitch), .B(bit_count[3]), .C(bit_count[0]), .D(n41), 
        .Y(n40) );
  CLKINVX1M U52 ( .A(n9), .Y(n22) );
  NAND3X1M U53 ( .A(n14), .B(n17), .C(bit_count[3]), .Y(n9) );
  CLKINVX1M U54 ( .A(bit_count[0]), .Y(n17) );
  CLKINVX1M U55 ( .A(n41), .Y(n14) );
  CLKNAND2X2M U56 ( .A(n42), .B(n43), .Y(n41) );
  NOR4X1M U57 ( .A(bit_count[2]), .B(bit_count[1]), .C(n44), .D(n45), .Y(n43)
         );
  CLKXOR2X2M U58 ( .A(edge_count[0]), .B(check_edge[0]), .Y(n45) );
  CLKXOR2X2M U59 ( .A(edge_count[4]), .B(check_edge[4]), .Y(n44) );
  NOR4X1M U60 ( .A(n46), .B(n47), .C(n48), .D(n49), .Y(n42) );
  CLKXOR2X2M U61 ( .A(edge_count[3]), .B(check_edge[3]), .Y(n49) );
  CLKXOR2X2M U62 ( .A(edge_count[2]), .B(check_edge[2]), .Y(n48) );
  CLKXOR2X2M U63 ( .A(edge_count[5]), .B(check_edge[5]), .Y(n47) );
  CLKXOR2X2M U64 ( .A(edge_count[1]), .B(check_edge[1]), .Y(n46) );
  CLKNAND2X2M U65 ( .A(n6), .B(n7), .Y(edge_bit_en) );
  CLKNAND2X2M U66 ( .A(current_state[1]), .B(n50), .Y(n7) );
  CLKINVX1M U67 ( .A(n8), .Y(deser_en) );
  NAND3X1M U68 ( .A(current_state[1]), .B(n25), .C(current_state[0]), .Y(n8)
         );
  CLKINVX1M U69 ( .A(current_state[2]), .Y(n25) );
  NOR3X1M U70 ( .A(n21), .B(stp_err), .C(par_err), .Y(data_valid) );
  NAND3X1M U71 ( .A(current_state[2]), .B(current_state[1]), .C(
        current_state[0]), .Y(n21) );
  CLKNAND2X2M U72 ( .A(n24), .B(n6), .Y(dat_samp_en) );
  AO21XLM U73 ( .A0(n50), .A1(S_DATA), .B0(current_state[2]), .Y(n6) );
  CLKINVX1M U74 ( .A(current_state[0]), .Y(n50) );
  CLKINVX1M U75 ( .A(current_state[1]), .Y(n24) );
endmodule


module edge_bit_counter_test_1 ( CLK, RST, Enable, Prescale, bit_count, 
        edge_count, test_si, test_se );
  input [5:0] Prescale;
  output [3:0] bit_count;
  output [5:0] edge_count;
  input CLK, RST, Enable, test_si, test_se;
  wire   N8, N9, N10, N11, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28,
         N29, N30, N31, n14, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, \add_31/carry[5] , \add_31/carry[4] , \add_31/carry[3] ,
         \add_31/carry[2] , n1, n2, n13, n15, n16, n17, n18, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43;

  SDFFRX1M \bit_count_reg[3]  ( .D(n27), .SI(n42), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(bit_count[3]), .QN(n14) );
  SDFFRQX2M \bit_count_reg[2]  ( .D(n28), .SI(n41), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(bit_count[2]) );
  SDFFRQX2M \bit_count_reg[1]  ( .D(n29), .SI(n40), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(bit_count[1]) );
  SDFFRQX2M \bit_count_reg[0]  ( .D(n30), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(bit_count[0]) );
  SDFFRQX2M \edge_count_reg[5]  ( .D(N24), .SI(edge_count[4]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(edge_count[5]) );
  SDFFRQX2M \edge_count_reg[4]  ( .D(N23), .SI(edge_count[3]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(edge_count[4]) );
  SDFFRQX2M \edge_count_reg[0]  ( .D(N19), .SI(n14), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(edge_count[0]) );
  SDFFRQX2M \edge_count_reg[3]  ( .D(N22), .SI(edge_count[2]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(edge_count[3]) );
  SDFFRQX2M \edge_count_reg[2]  ( .D(N21), .SI(edge_count[1]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(edge_count[2]) );
  SDFFRQX2M \edge_count_reg[1]  ( .D(N20), .SI(edge_count[0]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(edge_count[1]) );
  INVX2M U6 ( .A(n23), .Y(n39) );
  INVX2M U14 ( .A(Enable), .Y(n43) );
  NOR2X2M U15 ( .A(n43), .B(N31), .Y(n23) );
  AOI21X2M U16 ( .A0(n40), .A1(Enable), .B0(n23), .Y(n26) );
  NOR2BX2M U17 ( .AN(N8), .B(n39), .Y(N20) );
  NOR2BX2M U18 ( .AN(N9), .B(n39), .Y(N21) );
  NOR2BX2M U19 ( .AN(N10), .B(n39), .Y(N22) );
  NOR2BX2M U20 ( .AN(N11), .B(n39), .Y(N23) );
  OAI32X1M U21 ( .A0(n43), .A1(bit_count[0]), .A2(n23), .B0(n40), .B1(n39), 
        .Y(n30) );
  OAI32X1M U22 ( .A0(n24), .A1(bit_count[2]), .A2(n41), .B0(n25), .B1(n42), 
        .Y(n28) );
  AOI21BX2M U23 ( .A0(Enable), .A1(n41), .B0N(n26), .Y(n25) );
  OAI32X1M U24 ( .A0(n19), .A1(n20), .A2(n43), .B0(n21), .B1(n14), .Y(n27) );
  NAND3X2M U25 ( .A(N31), .B(n14), .C(bit_count[2]), .Y(n19) );
  NOR2X2M U26 ( .A(n22), .B(n23), .Y(n21) );
  AOI2BB1X2M U27 ( .A0N(n20), .A1N(n42), .B0(n43), .Y(n22) );
  NAND3X2M U28 ( .A(bit_count[0]), .B(n39), .C(Enable), .Y(n24) );
  OAI22X1M U29 ( .A0(n26), .A1(n41), .B0(bit_count[1]), .B1(n24), .Y(n29) );
  NOR2X2M U30 ( .A(n1), .B(n39), .Y(N24) );
  XNOR2X2M U31 ( .A(\add_31/carry[5] ), .B(edge_count[5]), .Y(n1) );
  NOR2X2M U32 ( .A(edge_count[0]), .B(n39), .Y(N19) );
  INVX2M U33 ( .A(Prescale[3]), .Y(n17) );
  INVX2M U34 ( .A(Prescale[0]), .Y(N25) );
  NAND2X2M U35 ( .A(bit_count[1]), .B(bit_count[0]), .Y(n20) );
  INVX2M U36 ( .A(bit_count[0]), .Y(n40) );
  INVX2M U37 ( .A(bit_count[1]), .Y(n41) );
  ADDHX1M U38 ( .A(edge_count[1]), .B(edge_count[0]), .CO(\add_31/carry[2] ), 
        .S(N8) );
  ADDHX1M U39 ( .A(edge_count[2]), .B(\add_31/carry[2] ), .CO(
        \add_31/carry[3] ), .S(N9) );
  ADDHX1M U40 ( .A(edge_count[3]), .B(\add_31/carry[3] ), .CO(
        \add_31/carry[4] ), .S(N10) );
  INVX2M U41 ( .A(bit_count[2]), .Y(n42) );
  ADDHX1M U42 ( .A(edge_count[4]), .B(\add_31/carry[4] ), .CO(
        \add_31/carry[5] ), .S(N11) );
  NAND2BX1M U43 ( .AN(Prescale[1]), .B(N25), .Y(n2) );
  OAI2BB1X1M U44 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n2), .Y(N26) );
  NOR2X1M U45 ( .A(n2), .B(Prescale[2]), .Y(n13) );
  AO21XLM U46 ( .A0(n2), .A1(Prescale[2]), .B0(n13), .Y(N27) );
  CLKNAND2X2M U47 ( .A(n13), .B(n17), .Y(n15) );
  OAI21X1M U48 ( .A0(n13), .A1(n17), .B0(n15), .Y(N28) );
  XNOR2X1M U49 ( .A(Prescale[4]), .B(n15), .Y(N29) );
  NOR2X1M U50 ( .A(Prescale[4]), .B(n15), .Y(n16) );
  CLKXOR2X2M U51 ( .A(Prescale[5]), .B(n16), .Y(N30) );
  NOR2BX1M U52 ( .AN(edge_count[0]), .B(N25), .Y(n18) );
  OAI2B2X1M U53 ( .A1N(N26), .A0(n18), .B0(edge_count[1]), .B1(n18), .Y(n34)
         );
  NOR2BX1M U54 ( .AN(N25), .B(edge_count[0]), .Y(n31) );
  OAI2B2X1M U55 ( .A1N(edge_count[1]), .A0(n31), .B0(N26), .B1(n31), .Y(n33)
         );
  XNOR2X1M U56 ( .A(N30), .B(edge_count[5]), .Y(n32) );
  NAND3X1M U57 ( .A(n34), .B(n33), .C(n32), .Y(n38) );
  CLKXOR2X2M U58 ( .A(N29), .B(edge_count[4]), .Y(n37) );
  CLKXOR2X2M U59 ( .A(N27), .B(edge_count[2]), .Y(n36) );
  CLKXOR2X2M U60 ( .A(N28), .B(edge_count[3]), .Y(n35) );
  NOR4X1M U61 ( .A(n38), .B(n37), .C(n36), .D(n35), .Y(N31) );
endmodule


module data_sampling_test_1 ( CLK, RST, S_DATA, Prescale, edge_count, Enable, 
        sampled_bit, test_si, test_se );
  input [5:0] Prescale;
  input [5:0] edge_count;
  input CLK, RST, S_DATA, Enable, test_si, test_se;
  output sampled_bit;
  wire   N58, n23, n24, n25, \add_21/carry[4] , \add_21/carry[3] ,
         \add_21/carry[2] , n1, n2, n3, n4, n5, n6, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45;
  wire   [4:0] half_edges;
  wire   [4:0] half_edges_p1;
  wire   [4:0] half_edges_n1;
  wire   [2:0] Samples;

  SDFFRQX2M \Samples_reg[2]  ( .D(n25), .SI(Samples[1]), .SE(test_se), .CK(CLK), .RN(RST), .Q(Samples[2]) );
  SDFFRQX2M \Samples_reg[1]  ( .D(n24), .SI(Samples[0]), .SE(test_se), .CK(CLK), .RN(RST), .Q(Samples[1]) );
  SDFFRQX2M \Samples_reg[0]  ( .D(n23), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(Samples[0]) );
  SDFFRQX2M sampled_bit_reg ( .D(N58), .SI(Samples[2]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(sampled_bit) );
  INVX2M U4 ( .A(half_edges[2]), .Y(n12) );
  ADDHX1M U5 ( .A(half_edges[2]), .B(\add_21/carry[2] ), .CO(\add_21/carry[3] ), .S(half_edges_p1[2]) );
  ADDHX1M U6 ( .A(half_edges[1]), .B(half_edges[0]), .CO(\add_21/carry[2] ), 
        .S(half_edges_p1[1]) );
  ADDHX1M U10 ( .A(half_edges[3]), .B(\add_21/carry[3] ), .CO(
        \add_21/carry[4] ), .S(half_edges_p1[3]) );
  CLKXOR2X2M U11 ( .A(edge_count[0]), .B(half_edges[0]), .Y(n27) );
  INVX2M U12 ( .A(Prescale[3]), .Y(n4) );
  XNOR2X2M U13 ( .A(half_edges[0]), .B(edge_count[0]), .Y(n43) );
  INVX2M U14 ( .A(Prescale[1]), .Y(half_edges[0]) );
  NOR2X1M U15 ( .A(Prescale[2]), .B(Prescale[1]), .Y(n1) );
  AO21XLM U16 ( .A0(Prescale[1]), .A1(Prescale[2]), .B0(n1), .Y(half_edges[1])
         );
  CLKNAND2X2M U17 ( .A(n1), .B(n4), .Y(n2) );
  OAI21X1M U18 ( .A0(n1), .A1(n4), .B0(n2), .Y(half_edges[2]) );
  XNOR2X1M U19 ( .A(Prescale[4]), .B(n2), .Y(half_edges[3]) );
  NOR2X1M U20 ( .A(Prescale[4]), .B(n2), .Y(n3) );
  CLKXOR2X2M U21 ( .A(Prescale[5]), .B(n3), .Y(half_edges[4]) );
  CLKXOR2X2M U22 ( .A(\add_21/carry[4] ), .B(half_edges[4]), .Y(
        half_edges_p1[4]) );
  NOR2X1M U23 ( .A(half_edges[1]), .B(half_edges[0]), .Y(n5) );
  AO21XLM U24 ( .A0(half_edges[0]), .A1(half_edges[1]), .B0(n5), .Y(
        half_edges_n1[1]) );
  CLKNAND2X2M U25 ( .A(n5), .B(n12), .Y(n6) );
  OAI21X1M U26 ( .A0(n5), .A1(n12), .B0(n6), .Y(half_edges_n1[2]) );
  XNOR2X1M U27 ( .A(half_edges[3]), .B(n6), .Y(half_edges_n1[3]) );
  NOR2X1M U28 ( .A(half_edges[3]), .B(n6), .Y(n11) );
  CLKXOR2X2M U29 ( .A(half_edges[4]), .B(n11), .Y(half_edges_n1[4]) );
  MXI2X1M U30 ( .A(n13), .B(n14), .S0(n15), .Y(n25) );
  NOR2X1M U31 ( .A(n16), .B(n17), .Y(n15) );
  NAND4X1M U32 ( .A(n18), .B(n19), .C(n20), .D(n21), .Y(n17) );
  CLKXOR2X2M U33 ( .A(n22), .B(half_edges_p1[1]), .Y(n21) );
  XNOR2X1M U34 ( .A(edge_count[2]), .B(half_edges_p1[2]), .Y(n20) );
  XNOR2X1M U35 ( .A(edge_count[3]), .B(half_edges_p1[3]), .Y(n19) );
  CLKXOR2X2M U36 ( .A(n26), .B(half_edges_p1[4]), .Y(n18) );
  NAND4BX1M U37 ( .AN(edge_count[5]), .B(n27), .C(n28), .D(n29), .Y(n16) );
  CLKNAND2X2M U38 ( .A(Samples[2]), .B(Enable), .Y(n13) );
  MXI2X1M U39 ( .A(n14), .B(n30), .S0(n28), .Y(n24) );
  NAND4X1M U40 ( .A(n31), .B(n32), .C(n33), .D(n34), .Y(n28) );
  NOR4BX1M U41 ( .AN(n29), .B(edge_count[5]), .C(n35), .D(n36), .Y(n34) );
  CLKXOR2X2M U42 ( .A(half_edges[1]), .B(edge_count[1]), .Y(n36) );
  CLKXOR2X2M U43 ( .A(half_edges[0]), .B(edge_count[0]), .Y(n35) );
  XNOR2X1M U44 ( .A(edge_count[3]), .B(half_edges[3]), .Y(n33) );
  CLKXOR2X2M U45 ( .A(n26), .B(half_edges[4]), .Y(n32) );
  CLKINVX1M U46 ( .A(edge_count[4]), .Y(n26) );
  XNOR2X1M U47 ( .A(edge_count[2]), .B(half_edges[2]), .Y(n31) );
  CLKNAND2X2M U48 ( .A(Samples[1]), .B(Enable), .Y(n30) );
  MXI2X1M U49 ( .A(n14), .B(n37), .S0(n29), .Y(n23) );
  NAND4X1M U50 ( .A(n38), .B(n39), .C(n40), .D(n41), .Y(n29) );
  NOR3X1M U51 ( .A(n42), .B(edge_count[5]), .C(n43), .Y(n41) );
  CLKXOR2X2M U52 ( .A(half_edges_n1[4]), .B(edge_count[4]), .Y(n42) );
  XNOR2X1M U53 ( .A(edge_count[2]), .B(half_edges_n1[2]), .Y(n40) );
  XNOR2X1M U54 ( .A(edge_count[3]), .B(half_edges_n1[3]), .Y(n39) );
  CLKXOR2X2M U55 ( .A(n22), .B(half_edges_n1[1]), .Y(n38) );
  CLKINVX1M U56 ( .A(edge_count[1]), .Y(n22) );
  CLKNAND2X2M U57 ( .A(Samples[0]), .B(Enable), .Y(n37) );
  CLKNAND2X2M U58 ( .A(S_DATA), .B(Enable), .Y(n14) );
  AOI21BX1M U59 ( .A0(n44), .A1(n45), .B0N(Enable), .Y(N58) );
  OAI21X1M U60 ( .A0(Samples[0]), .A1(Samples[1]), .B0(Samples[2]), .Y(n45) );
  CLKNAND2X2M U61 ( .A(Samples[0]), .B(Samples[1]), .Y(n44) );
endmodule


module deserializer_DATA_WIDTH8_test_1 ( CLK, RST, sampled_bit, Enable, 
        edge_count, Prescale, P_DATA, test_so, test_se );
  input [5:0] edge_count;
  input [5:0] Prescale;
  output [7:0] P_DATA;
  input CLK, RST, sampled_bit, Enable, test_se;
  output test_so;
  wire   N1, N2, N3, N4, N5, N6, N7, n1, n11, n13, n15, n17, n19, n21, n23,
         n25, n2, n3, n4, n5, n6, n7, n8, n9, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39;
  assign test_so = n32;

  SDFFRQX2M \P_DATA_reg[0]  ( .D(n11), .SI(sampled_bit), .SE(test_se), .CK(CLK), .RN(RST), .Q(P_DATA[0]) );
  SDFFRQX2M \P_DATA_reg[5]  ( .D(n21), .SI(n35), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(P_DATA[5]) );
  SDFFRQX2M \P_DATA_reg[1]  ( .D(n13), .SI(P_DATA[0]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[1]) );
  SDFFRQX2M \P_DATA_reg[4]  ( .D(n19), .SI(n36), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(P_DATA[4]) );
  SDFFRQX2M \P_DATA_reg[7]  ( .D(n25), .SI(n33), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(P_DATA[7]) );
  SDFFRQX2M \P_DATA_reg[3]  ( .D(n17), .SI(n37), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(P_DATA[3]) );
  SDFFRQX2M \P_DATA_reg[6]  ( .D(n23), .SI(n34), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(P_DATA[6]) );
  SDFFRQX2M \P_DATA_reg[2]  ( .D(n15), .SI(n38), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(P_DATA[2]) );
  OAI22X1M U3 ( .A0(n39), .A1(n38), .B0(n1), .B1(n37), .Y(n13) );
  OAI22X1M U4 ( .A0(n39), .A1(n37), .B0(n1), .B1(n36), .Y(n15) );
  OAI22X1M U5 ( .A0(n39), .A1(n36), .B0(n1), .B1(n35), .Y(n17) );
  OAI22X1M U6 ( .A0(n39), .A1(n35), .B0(n1), .B1(n34), .Y(n19) );
  OAI22X1M U7 ( .A0(n39), .A1(n34), .B0(n1), .B1(n33), .Y(n21) );
  OAI22X1M U8 ( .A0(n39), .A1(n33), .B0(n1), .B1(n32), .Y(n23) );
  INVX2M U9 ( .A(n1), .Y(n39) );
  NAND2X2M U10 ( .A(N7), .B(Enable), .Y(n1) );
  OAI2BB2X1M U11 ( .B0(n1), .B1(n38), .A0N(P_DATA[0]), .A1N(n1), .Y(n11) );
  OAI2BB2X1M U12 ( .B0(n39), .B1(n32), .A0N(sampled_bit), .A1N(n39), .Y(n25)
         );
  INVX2M U13 ( .A(Prescale[0]), .Y(N1) );
  INVX2M U14 ( .A(Prescale[3]), .Y(n6) );
  INVX2M U15 ( .A(P_DATA[2]), .Y(n37) );
  INVX2M U16 ( .A(P_DATA[6]), .Y(n33) );
  INVX2M U17 ( .A(P_DATA[7]), .Y(n32) );
  INVX2M U18 ( .A(P_DATA[3]), .Y(n36) );
  INVX2M U19 ( .A(P_DATA[4]), .Y(n35) );
  INVX2M U28 ( .A(P_DATA[5]), .Y(n34) );
  INVX2M U29 ( .A(P_DATA[1]), .Y(n38) );
  NAND2BX1M U30 ( .AN(Prescale[1]), .B(N1), .Y(n2) );
  OAI2BB1X1M U31 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n2), .Y(N2) );
  NOR2X1M U32 ( .A(n2), .B(Prescale[2]), .Y(n3) );
  AO21XLM U33 ( .A0(n2), .A1(Prescale[2]), .B0(n3), .Y(N3) );
  CLKNAND2X2M U34 ( .A(n3), .B(n6), .Y(n4) );
  OAI21X1M U35 ( .A0(n3), .A1(n6), .B0(n4), .Y(N4) );
  XNOR2X1M U36 ( .A(Prescale[4]), .B(n4), .Y(N5) );
  NOR2X1M U37 ( .A(Prescale[4]), .B(n4), .Y(n5) );
  CLKXOR2X2M U38 ( .A(Prescale[5]), .B(n5), .Y(N6) );
  NOR2BX1M U39 ( .AN(edge_count[0]), .B(N1), .Y(n7) );
  OAI2B2X1M U40 ( .A1N(N2), .A0(n7), .B0(edge_count[1]), .B1(n7), .Y(n27) );
  NOR2BX1M U41 ( .AN(N1), .B(edge_count[0]), .Y(n8) );
  OAI2B2X1M U42 ( .A1N(edge_count[1]), .A0(n8), .B0(N2), .B1(n8), .Y(n26) );
  XNOR2X1M U43 ( .A(N6), .B(edge_count[5]), .Y(n9) );
  NAND3X1M U44 ( .A(n27), .B(n26), .C(n9), .Y(n31) );
  CLKXOR2X2M U45 ( .A(N5), .B(edge_count[4]), .Y(n30) );
  CLKXOR2X2M U46 ( .A(N3), .B(edge_count[2]), .Y(n29) );
  CLKXOR2X2M U47 ( .A(N4), .B(edge_count[3]), .Y(n28) );
  NOR4X1M U48 ( .A(n31), .B(n30), .C(n29), .D(n28), .Y(N7) );
endmodule


module strt_chk_test_1 ( CLK, RST, sampled_bit, Enable, strt_glitch, test_si, 
        test_se );
  input CLK, RST, sampled_bit, Enable, test_si, test_se;
  output strt_glitch;
  wire   n2;

  SDFFRQX2M strt_glitch_reg ( .D(n2), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(strt_glitch) );
  AO2B2X2M U2 ( .B0(sampled_bit), .B1(Enable), .A0(strt_glitch), .A1N(Enable), 
        .Y(n2) );
endmodule


module par_chk_DATA_WIDTH8_test_1 ( CLK, RST, parity_type, sampled_bit, Enable, 
        P_DATA, par_err, test_si, test_se );
  input [7:0] P_DATA;
  input CLK, RST, parity_type, sampled_bit, Enable, test_si, test_se;
  output par_err;
  wire   n1, n3, n4, n5, n6, n7, n9, n2;

  SDFFRQX2M par_err_reg ( .D(n9), .SI(test_si), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(par_err) );
  XNOR2X2M U2 ( .A(sampled_bit), .B(parity_type), .Y(n5) );
  XOR3XLM U3 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n6), .Y(n4) );
  XNOR2X2M U4 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n6) );
  XOR3XLM U5 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n7), .Y(n3) );
  XNOR2X2M U6 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n7) );
  OAI2BB2X1M U7 ( .B0(n1), .B1(n2), .A0N(par_err), .A1N(n2), .Y(n9) );
  INVX2M U8 ( .A(Enable), .Y(n2) );
  XOR3XLM U9 ( .A(n3), .B(n4), .C(n5), .Y(n1) );
endmodule


module stp_chk_test_1 ( CLK, RST, sampled_bit, Enable, stp_err, test_si, 
        test_se );
  input CLK, RST, sampled_bit, Enable, test_si, test_se;
  output stp_err;
  wire   n3, n1;

  SDFFRQX2M stp_err_reg ( .D(n3), .SI(test_si), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(stp_err) );
  OAI2BB2X1M U2 ( .B0(sampled_bit), .B1(n1), .A0N(stp_err), .A1N(n1), .Y(n3)
         );
  INVX2M U3 ( .A(Enable), .Y(n1) );
endmodule


module UART_RX_test_1 ( CLK, RST, RX_IN, parity_enable, parity_type, Prescale, 
        P_DATA, data_valid, parity_error, framing_error, test_si, test_so, 
        test_se );
  input [5:0] Prescale;
  output [7:0] P_DATA;
  input CLK, RST, RX_IN, parity_enable, parity_type, test_si, test_se;
  output data_valid, parity_error, framing_error, test_so;
  wire   strt_glitch, strt_chk_en, edge_bit_en, deser_en, par_chk_en,
         stp_chk_en, dat_samp_en, sampled_bit, n1, n2, n4;
  wire   [3:0] bit_count;
  wire   [5:0] edge_count;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
  uart_rx_fsm_DATA_WIDTH8_test_1 U0_uart_fsm ( .CLK(CLK), .RST(n1), .S_DATA(
        RX_IN), .Prescale(Prescale), .parity_enable(parity_enable), 
        .bit_count(bit_count), .edge_count(edge_count), .par_err(parity_error), 
        .stp_err(framing_error), .strt_glitch(strt_glitch), .strt_chk_en(
        strt_chk_en), .edge_bit_en(edge_bit_en), .deser_en(deser_en), 
        .par_chk_en(par_chk_en), .stp_chk_en(stp_chk_en), .dat_samp_en(
        dat_samp_en), .data_valid(data_valid), .test_so(test_so), .test_se(
        test_se) );
  edge_bit_counter_test_1 U0_edge_bit_counter ( .CLK(CLK), .RST(n1), .Enable(
        edge_bit_en), .Prescale(Prescale), .bit_count(bit_count), .edge_count(
        edge_count), .test_si(n4), .test_se(test_se) );
  data_sampling_test_1 U0_data_sampling ( .CLK(CLK), .RST(n1), .S_DATA(RX_IN), 
        .Prescale(Prescale), .edge_count(edge_count), .Enable(dat_samp_en), 
        .sampled_bit(sampled_bit), .test_si(test_si), .test_se(test_se) );
  deserializer_DATA_WIDTH8_test_1 U0_deserializer ( .CLK(CLK), .RST(n1), 
        .sampled_bit(sampled_bit), .Enable(deser_en), .edge_count(edge_count), 
        .Prescale(Prescale), .P_DATA(P_DATA), .test_so(n4), .test_se(test_se)
         );
  strt_chk_test_1 U0_strt_chk ( .CLK(CLK), .RST(n1), .sampled_bit(sampled_bit), 
        .Enable(strt_chk_en), .strt_glitch(strt_glitch), .test_si(
        framing_error), .test_se(test_se) );
  par_chk_DATA_WIDTH8_test_1 U0_par_chk ( .CLK(CLK), .RST(n1), .parity_type(
        parity_type), .sampled_bit(sampled_bit), .Enable(par_chk_en), .P_DATA(
        P_DATA), .par_err(parity_error), .test_si(edge_count[5]), .test_se(
        test_se) );
  stp_chk_test_1 U0_stp_chk ( .CLK(CLK), .RST(n1), .sampled_bit(sampled_bit), 
        .Enable(stp_chk_en), .stp_err(framing_error), .test_si(parity_error), 
        .test_se(test_se) );
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


module clock_divider_test_0 ( i_ref_clk, i_rst, i_clk_en, i_div_ratio, 
        o_div_clk, test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   div_clk, odd_edge_tog, N16, N17, N18, N19, N20, N21, N22, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n1, n2, n3, n4, n5, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52;
  wire   [6:0] count;
  wire   [6:0] edge_flip_half;
  assign test_so = odd_edge_tog;

  SDFFRQX2M div_clk_reg ( .D(n27), .SI(count[6]), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst), .Q(div_clk) );
  SDFFSQX2M odd_edge_tog_reg ( .D(n26), .SI(div_clk), .SE(test_se), .CK(
        i_ref_clk), .SN(i_rst), .Q(odd_edge_tog) );
  SDFFRQX2M \count_reg[6]  ( .D(n28), .SI(count[5]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[6]) );
  SDFFRQX2M \count_reg[0]  ( .D(n34), .SI(test_si), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[0]) );
  SDFFRQX2M \count_reg[5]  ( .D(n29), .SI(count[4]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[5]) );
  SDFFRQX2M \count_reg[4]  ( .D(n30), .SI(count[3]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[4]) );
  SDFFRQX2M \count_reg[3]  ( .D(n31), .SI(count[2]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[3]) );
  SDFFRQX2M \count_reg[2]  ( .D(n32), .SI(count[1]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[2]) );
  SDFFRQX2M \count_reg[1]  ( .D(n33), .SI(count[0]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[1]) );
  INVX2M U5 ( .A(i_div_ratio[1]), .Y(edge_flip_half[0]) );
  NAND2BX2M U6 ( .AN(n23), .B(i_clk_en), .Y(n16) );
  INVX2M U11 ( .A(i_div_ratio[5]), .Y(n15) );
  MX2X2M U15 ( .A(i_ref_clk), .B(div_clk), .S0(n52), .Y(o_div_clk) );
  NAND2BX1M U16 ( .AN(i_div_ratio[2]), .B(edge_flip_half[0]), .Y(n1) );
  OAI2BB1X1M U17 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n1), .Y(
        edge_flip_half[1]) );
  OR2X1M U18 ( .A(n1), .B(i_div_ratio[3]), .Y(n2) );
  OAI2BB1X1M U19 ( .A0N(n1), .A1N(i_div_ratio[3]), .B0(n2), .Y(
        edge_flip_half[2]) );
  NOR2X1M U20 ( .A(n2), .B(i_div_ratio[4]), .Y(n3) );
  AO21XLM U21 ( .A0(n2), .A1(i_div_ratio[4]), .B0(n3), .Y(edge_flip_half[3])
         );
  CLKNAND2X2M U22 ( .A(n3), .B(n15), .Y(n4) );
  OAI21X1M U23 ( .A0(n3), .A1(n15), .B0(n4), .Y(edge_flip_half[4]) );
  XNOR2X1M U24 ( .A(i_div_ratio[6]), .B(n4), .Y(edge_flip_half[5]) );
  NOR2X1M U25 ( .A(i_div_ratio[6]), .B(n4), .Y(n5) );
  CLKXOR2X2M U26 ( .A(i_div_ratio[7]), .B(n5), .Y(edge_flip_half[6]) );
  AO22X1M U27 ( .A0(n16), .A1(count[0]), .B0(N16), .B1(n17), .Y(n34) );
  AO22X1M U28 ( .A0(n16), .A1(count[1]), .B0(N17), .B1(n17), .Y(n33) );
  AO22X1M U29 ( .A0(n16), .A1(count[2]), .B0(N18), .B1(n17), .Y(n32) );
  AO22X1M U30 ( .A0(n16), .A1(count[3]), .B0(N19), .B1(n17), .Y(n31) );
  AO22X1M U31 ( .A0(n16), .A1(count[4]), .B0(N20), .B1(n17), .Y(n30) );
  AO22X1M U32 ( .A0(n16), .A1(count[5]), .B0(N21), .B1(n17), .Y(n29) );
  AO22X1M U33 ( .A0(n16), .A1(count[6]), .B0(N22), .B1(n17), .Y(n28) );
  AND3X1M U34 ( .A(n18), .B(n19), .C(n52), .Y(n17) );
  CLKINVX1M U35 ( .A(n16), .Y(n52) );
  CLKXOR2X2M U36 ( .A(div_clk), .B(n20), .Y(n27) );
  AOI21X1M U37 ( .A0(n19), .A1(n18), .B0(n16), .Y(n20) );
  OR2X1M U38 ( .A(n21), .B(i_div_ratio[0]), .Y(n18) );
  XNOR2X1M U39 ( .A(odd_edge_tog), .B(n22), .Y(n26) );
  OR2X1M U40 ( .A(n19), .B(n16), .Y(n22) );
  NOR4BX1M U41 ( .AN(n24), .B(i_div_ratio[2]), .C(i_div_ratio[3]), .D(
        i_div_ratio[1]), .Y(n23) );
  NOR4X1M U42 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n24) );
  CLKNAND2X2M U43 ( .A(n25), .B(i_div_ratio[0]), .Y(n19) );
  MXI2X1M U44 ( .A(n35), .B(n21), .S0(odd_edge_tog), .Y(n25) );
  NAND4X1M U45 ( .A(n36), .B(n37), .C(n38), .D(n39), .Y(n21) );
  NOR4X1M U46 ( .A(n40), .B(n41), .C(n42), .D(n43), .Y(n39) );
  CLKXOR2X2M U47 ( .A(edge_flip_half[2]), .B(count[2]), .Y(n43) );
  CLKXOR2X2M U48 ( .A(edge_flip_half[1]), .B(count[1]), .Y(n42) );
  CLKXOR2X2M U49 ( .A(edge_flip_half[0]), .B(count[0]), .Y(n41) );
  CLKXOR2X2M U50 ( .A(edge_flip_half[6]), .B(count[6]), .Y(n40) );
  XNOR2X1M U51 ( .A(count[4]), .B(edge_flip_half[4]), .Y(n38) );
  XNOR2X1M U52 ( .A(count[5]), .B(edge_flip_half[5]), .Y(n37) );
  XNOR2X1M U53 ( .A(count[3]), .B(edge_flip_half[3]), .Y(n36) );
  NAND4X1M U54 ( .A(n44), .B(n45), .C(n46), .D(n47), .Y(n35) );
  NOR4X1M U55 ( .A(n48), .B(n49), .C(n50), .D(n51), .Y(n47) );
  CLKXOR2X2M U56 ( .A(i_div_ratio[3]), .B(count[2]), .Y(n51) );
  CLKXOR2X2M U57 ( .A(i_div_ratio[2]), .B(count[1]), .Y(n50) );
  CLKXOR2X2M U58 ( .A(i_div_ratio[1]), .B(count[0]), .Y(n49) );
  CLKXOR2X2M U59 ( .A(i_div_ratio[7]), .B(count[6]), .Y(n48) );
  XNOR2X1M U60 ( .A(count[4]), .B(i_div_ratio[5]), .Y(n46) );
  XNOR2X1M U61 ( .A(count[5]), .B(i_div_ratio[6]), .Y(n45) );
  XNOR2X1M U62 ( .A(count[3]), .B(i_div_ratio[4]), .Y(n44) );
  clock_divider_0_DW01_inc_0 add_49 ( .A(count), .SUM({N22, N21, N20, N19, N18, 
        N17, N16}) );
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
  INVX2M U7 ( .A(prescale[2]), .Y(n2) );
  INVX2M U8 ( .A(prescale[5]), .Y(n1) );
  NOR4X1M U9 ( .A(n5), .B(prescale[3]), .C(prescale[5]), .D(prescale[4]), .Y(
        clk_div_in[3]) );
  NAND3X2M U10 ( .A(n4), .B(n3), .C(prescale[2]), .Y(n5) );
  INVX2M U11 ( .A(prescale[0]), .Y(n4) );
  INVX2M U12 ( .A(prescale[1]), .Y(n3) );
  OAI211X2M U13 ( .A0(n8), .A1(n9), .B0(n4), .C0(n3), .Y(clk_div_in[0]) );
  NOR4X1M U14 ( .A(prescale[5]), .B(prescale[4]), .C(prescale[3]), .D(n2), .Y(
        n8) );
  NAND2X2M U15 ( .A(n7), .B(n6), .Y(n9) );
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


module clock_divider_test_1 ( i_ref_clk, i_rst, i_clk_en, i_div_ratio, 
        o_div_clk, test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   div_clk, odd_edge_tog, N16, N17, N18, N19, N20, N21, N22, n2, n3, n4,
         n5, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62;
  wire   [6:0] count;
  wire   [6:0] edge_flip_half;
  assign test_so = odd_edge_tog;

  SDFFRQX2M div_clk_reg ( .D(n61), .SI(count[6]), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst), .Q(div_clk) );
  SDFFRQX2M \count_reg[6]  ( .D(n60), .SI(count[5]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[6]) );
  SDFFRQX2M \count_reg[0]  ( .D(n54), .SI(test_si), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[0]) );
  SDFFRQX2M \count_reg[5]  ( .D(n59), .SI(count[4]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[5]) );
  SDFFRQX2M \count_reg[4]  ( .D(n58), .SI(count[3]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[4]) );
  SDFFRQX2M \count_reg[3]  ( .D(n57), .SI(count[2]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[3]) );
  SDFFRQX2M \count_reg[2]  ( .D(n56), .SI(count[1]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[2]) );
  SDFFRQX2M \count_reg[1]  ( .D(n55), .SI(count[0]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[1]) );
  SDFFSQX1M odd_edge_tog_reg ( .D(n62), .SI(div_clk), .SE(test_se), .CK(
        i_ref_clk), .SN(i_rst), .Q(odd_edge_tog) );
  INVX2M U6 ( .A(i_div_ratio[1]), .Y(edge_flip_half[0]) );
  NAND2BX2M U11 ( .AN(n24), .B(i_clk_en), .Y(n17) );
  INVX2M U15 ( .A(i_div_ratio[5]), .Y(n16) );
  MX2X2M U16 ( .A(i_ref_clk), .B(div_clk), .S0(n53), .Y(o_div_clk) );
  NAND2BX1M U17 ( .AN(i_div_ratio[2]), .B(edge_flip_half[0]), .Y(n2) );
  OAI2BB1X1M U18 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n2), .Y(
        edge_flip_half[1]) );
  OR2X1M U19 ( .A(n2), .B(i_div_ratio[3]), .Y(n3) );
  OAI2BB1X1M U20 ( .A0N(n2), .A1N(i_div_ratio[3]), .B0(n3), .Y(
        edge_flip_half[2]) );
  NOR2X1M U21 ( .A(n3), .B(i_div_ratio[4]), .Y(n4) );
  AO21XLM U22 ( .A0(n3), .A1(i_div_ratio[4]), .B0(n4), .Y(edge_flip_half[3])
         );
  CLKNAND2X2M U23 ( .A(n4), .B(n16), .Y(n5) );
  OAI21X1M U24 ( .A0(n4), .A1(n16), .B0(n5), .Y(edge_flip_half[4]) );
  XNOR2X1M U25 ( .A(i_div_ratio[6]), .B(n5), .Y(edge_flip_half[5]) );
  NOR2X1M U26 ( .A(i_div_ratio[6]), .B(n5), .Y(n15) );
  CLKXOR2X2M U27 ( .A(i_div_ratio[7]), .B(n15), .Y(edge_flip_half[6]) );
  AO22X1M U28 ( .A0(n17), .A1(count[0]), .B0(N16), .B1(n18), .Y(n54) );
  AO22X1M U29 ( .A0(n17), .A1(count[1]), .B0(N17), .B1(n18), .Y(n55) );
  AO22X1M U30 ( .A0(n17), .A1(count[2]), .B0(N18), .B1(n18), .Y(n56) );
  AO22X1M U31 ( .A0(n17), .A1(count[3]), .B0(N19), .B1(n18), .Y(n57) );
  AO22X1M U32 ( .A0(n17), .A1(count[4]), .B0(N20), .B1(n18), .Y(n58) );
  AO22X1M U33 ( .A0(n17), .A1(count[5]), .B0(N21), .B1(n18), .Y(n59) );
  AO22X1M U34 ( .A0(n17), .A1(count[6]), .B0(N22), .B1(n18), .Y(n60) );
  AND3X1M U35 ( .A(n19), .B(n20), .C(n53), .Y(n18) );
  CLKINVX1M U36 ( .A(n17), .Y(n53) );
  CLKXOR2X2M U37 ( .A(div_clk), .B(n21), .Y(n61) );
  AOI21X1M U38 ( .A0(n20), .A1(n19), .B0(n17), .Y(n21) );
  OR2X1M U39 ( .A(n22), .B(i_div_ratio[0]), .Y(n19) );
  XNOR2X1M U40 ( .A(odd_edge_tog), .B(n23), .Y(n62) );
  OR2X1M U41 ( .A(n20), .B(n17), .Y(n23) );
  NOR4BX1M U42 ( .AN(n25), .B(i_div_ratio[2]), .C(i_div_ratio[3]), .D(
        i_div_ratio[1]), .Y(n24) );
  NOR4X1M U43 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n25) );
  CLKNAND2X2M U44 ( .A(n35), .B(i_div_ratio[0]), .Y(n20) );
  MXI2X1M U45 ( .A(n36), .B(n22), .S0(odd_edge_tog), .Y(n35) );
  NAND4X1M U46 ( .A(n37), .B(n38), .C(n39), .D(n40), .Y(n22) );
  NOR4X1M U47 ( .A(n41), .B(n42), .C(n43), .D(n44), .Y(n40) );
  CLKXOR2X2M U48 ( .A(edge_flip_half[2]), .B(count[2]), .Y(n44) );
  CLKXOR2X2M U49 ( .A(edge_flip_half[1]), .B(count[1]), .Y(n43) );
  CLKXOR2X2M U50 ( .A(edge_flip_half[0]), .B(count[0]), .Y(n42) );
  CLKXOR2X2M U51 ( .A(edge_flip_half[6]), .B(count[6]), .Y(n41) );
  XNOR2X1M U52 ( .A(count[4]), .B(edge_flip_half[4]), .Y(n39) );
  XNOR2X1M U53 ( .A(count[5]), .B(edge_flip_half[5]), .Y(n38) );
  XNOR2X1M U54 ( .A(count[3]), .B(edge_flip_half[3]), .Y(n37) );
  NAND4X1M U55 ( .A(n45), .B(n46), .C(n47), .D(n48), .Y(n36) );
  NOR4X1M U56 ( .A(n49), .B(n50), .C(n51), .D(n52), .Y(n48) );
  CLKXOR2X2M U57 ( .A(i_div_ratio[3]), .B(count[2]), .Y(n52) );
  CLKXOR2X2M U58 ( .A(i_div_ratio[2]), .B(count[1]), .Y(n51) );
  CLKXOR2X2M U59 ( .A(i_div_ratio[1]), .B(count[0]), .Y(n50) );
  CLKXOR2X2M U60 ( .A(i_div_ratio[7]), .B(count[6]), .Y(n49) );
  XNOR2X1M U61 ( .A(count[4]), .B(i_div_ratio[5]), .Y(n47) );
  XNOR2X1M U62 ( .A(count[5]), .B(i_div_ratio[6]), .Y(n46) );
  XNOR2X1M U63 ( .A(count[3]), .B(i_div_ratio[4]), .Y(n45) );
  clock_divider_1_DW01_inc_0 add_49 ( .A(count), .SUM({N22, N21, N20, N19, N18, 
        N17, N16}) );
endmodule


module fsm_uart_test_1 ( clk, reset, data_valid, par_en, ser_done, ser_en, 
        busy, mux_sel, test_si, test_se );
  output [1:0] mux_sel;
  input clk, reset, data_valid, par_en, ser_done, test_si, test_se;
  output ser_en, busy;
  wire   \next_state[0] , N60, N61, n13, n14, n15, n16, n17, n18, n19, n8, n9,
         n10, n11, n12;
  wire   [2:0] current_state;

  SDFFRQX2M \mux_sel_reg[1]  ( .D(n9), .SI(mux_sel[0]), .SE(test_se), .CK(clk), 
        .RN(reset), .Q(mux_sel[1]) );
  SDFFRQX2M ser_en_reg ( .D(n8), .SI(mux_sel[1]), .SE(test_se), .CK(clk), .RN(
        reset), .Q(ser_en) );
  SDFFSQX2M \mux_sel_reg[0]  ( .D(N61), .SI(n12), .SE(test_se), .CK(clk), .SN(
        reset), .Q(mux_sel[0]) );
  SDFFRQX2M \current_state_reg[2]  ( .D(n10), .SI(current_state[1]), .SE(
        test_se), .CK(clk), .RN(reset), .Q(current_state[2]) );
  SDFFRQX2M \current_state_reg[0]  ( .D(\next_state[0] ), .SI(busy), .SE(
        test_se), .CK(clk), .RN(reset), .Q(current_state[0]) );
  SDFFRQX2M \current_state_reg[1]  ( .D(n9), .SI(current_state[0]), .SE(
        test_se), .CK(clk), .RN(reset), .Q(current_state[1]) );
  SDFFRQX2M busy_reg ( .D(N60), .SI(test_si), .SE(test_se), .CK(clk), .RN(
        reset), .Q(busy) );
  INVX2M U10 ( .A(N61), .Y(n8) );
  NAND3X2M U11 ( .A(n16), .B(n13), .C(n15), .Y(N60) );
  CLKXOR2X2M U12 ( .A(n9), .B(n15), .Y(N61) );
  INVX2M U13 ( .A(n16), .Y(n9) );
  INVX2M U14 ( .A(n13), .Y(n10) );
  AOI31X2M U15 ( .A0(par_en), .A1(ser_done), .A2(current_state[1]), .B0(n17), 
        .Y(n14) );
  NOR2BX2M U16 ( .AN(data_valid), .B(current_state[1]), .Y(n17) );
  NOR3X2M U17 ( .A(n14), .B(current_state[2]), .C(current_state[0]), .Y(
        \next_state[0] ) );
  OR3X2M U18 ( .A(n14), .B(current_state[0]), .C(current_state[2]), .Y(n15) );
  OAI2B1X2M U19 ( .A1N(ser_done), .A0(par_en), .B0(n11), .Y(n18) );
  NAND2X2M U20 ( .A(n19), .B(n12), .Y(n16) );
  OAI2B2X1M U21 ( .A1N(current_state[1]), .A0(n18), .B0(current_state[1]), 
        .B1(n11), .Y(n19) );
  NAND3X2M U22 ( .A(n18), .B(n12), .C(current_state[1]), .Y(n13) );
  INVX2M U23 ( .A(current_state[2]), .Y(n12) );
  INVX2M U24 ( .A(current_state[0]), .Y(n11) );
endmodule


module mux4_1_test_1 ( clk, mux_sel, start, stop, ser_data, parity, tx_out, 
        test_si, test_se );
  input [1:0] mux_sel;
  input clk, start, stop, ser_data, parity, test_si, test_se;
  output tx_out;
  wire   N12, n3, n4, n5;

  SDFFQX2M tx_out_reg ( .D(N12), .SI(test_si), .SE(test_se), .CK(clk), .Q(
        tx_out) );
  OAI2B2X1M U5 ( .A1N(mux_sel[1]), .A0(n3), .B0(mux_sel[1]), .B1(n4), .Y(N12)
         );
  AOI22X1M U6 ( .A0(start), .A1(n5), .B0(stop), .B1(mux_sel[0]), .Y(n4) );
  AOI22X1M U7 ( .A0(ser_data), .A1(n5), .B0(parity), .B1(mux_sel[0]), .Y(n3)
         );
  INVX2M U8 ( .A(mux_sel[0]), .Y(n5) );
endmodule


module parity_calc_test_1 ( clk, reset, par_type, data_valid, p_data, par_bit, 
        test_si, test_se );
  input [7:0] p_data;
  input clk, reset, par_type, data_valid, test_si, test_se;
  output par_bit;
  wire   n1, n2, n3, n4, n5, n7;

  SDFFRQX2M par_bit_reg ( .D(n7), .SI(test_si), .SE(test_se), .CK(clk), .RN(
        reset), .Q(par_bit) );
  XNOR2X2M U2 ( .A(p_data[7]), .B(p_data[6]), .Y(n5) );
  XNOR2X2M U3 ( .A(p_data[3]), .B(p_data[2]), .Y(n4) );
  OAI2BB2X1M U4 ( .B0(data_valid), .B1(n1), .A0N(par_bit), .A1N(data_valid), 
        .Y(n7) );
  XOR3XLM U5 ( .A(par_type), .B(n2), .C(n3), .Y(n1) );
  XOR3XLM U6 ( .A(p_data[1]), .B(p_data[0]), .C(n4), .Y(n3) );
  XOR3XLM U7 ( .A(p_data[5]), .B(p_data[4]), .C(n5), .Y(n2) );
endmodule


module serializer_test_1 ( clk, reset, ser_en, p_data, ser_data, ser_done, 
        test_si, test_so, test_se );
  input [7:0] p_data;
  input clk, reset, ser_en, test_si, test_se;
  output ser_data, ser_done, test_so;
  wire   N4, N5, N6, N11, n2, n5, n7, n9, n12, n14, n16, n18, n20, n22, n24,
         n26, n28, n30, n32, n33, n1, n3, n4, n6, n34, n35, n36, n37;
  wire   [7:0] data_set;
  assign test_so = n36;

  SDFFRQX2M ser_data_reg ( .D(n33), .SI(data_set[7]), .SE(test_se), .CK(clk), 
        .RN(n3), .Q(ser_data) );
  SDFFRQX2M \data_set_reg[5]  ( .D(n28), .SI(data_set[4]), .SE(test_se), .CK(
        clk), .RN(n3), .Q(data_set[5]) );
  SDFFRQX2M \data_set_reg[1]  ( .D(n20), .SI(data_set[0]), .SE(test_se), .CK(
        clk), .RN(n3), .Q(data_set[1]) );
  SDFFRQX2M \data_set_reg[7]  ( .D(n32), .SI(data_set[6]), .SE(test_se), .CK(
        clk), .RN(reset), .Q(data_set[7]) );
  SDFFRQX2M \data_set_reg[3]  ( .D(n24), .SI(data_set[2]), .SE(test_se), .CK(
        clk), .RN(n3), .Q(data_set[3]) );
  SDFFRQX2M \data_set_reg[6]  ( .D(n30), .SI(data_set[5]), .SE(test_se), .CK(
        clk), .RN(n3), .Q(data_set[6]) );
  SDFFRQX2M \data_set_reg[2]  ( .D(n22), .SI(data_set[1]), .SE(test_se), .CK(
        clk), .RN(n3), .Q(data_set[2]) );
  SDFFRQX2M \data_set_reg[4]  ( .D(n26), .SI(data_set[3]), .SE(test_se), .CK(
        clk), .RN(n3), .Q(data_set[4]) );
  SDFFRQX2M \data_set_reg[0]  ( .D(n18), .SI(n35), .SE(test_se), .CK(clk), 
        .RN(n3), .Q(data_set[0]) );
  SDFFRQX2M \counter_reg[2]  ( .D(n12), .SI(n34), .SE(test_se), .CK(clk), .RN(
        n3), .Q(N6) );
  SDFFRQX2M \counter_reg[1]  ( .D(n14), .SI(N4), .SE(test_se), .CK(clk), .RN(
        n3), .Q(N5) );
  SDFFRQX2M \counter_reg[0]  ( .D(n16), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(n3), .Q(N4) );
  BUFX2M U3 ( .A(reset), .Y(n3) );
  XNOR2X2M U4 ( .A(n35), .B(n5), .Y(n12) );
  NOR2X2M U5 ( .A(n2), .B(n34), .Y(n5) );
  INVX2M U6 ( .A(n1), .Y(n37) );
  CLKXOR2X2M U7 ( .A(n34), .B(n2), .Y(n14) );
  AO22X1M U8 ( .A0(p_data[2]), .A1(n1), .B0(data_set[2]), .B1(n37), .Y(n22) );
  AO22X1M U9 ( .A0(p_data[6]), .A1(n1), .B0(data_set[6]), .B1(n37), .Y(n30) );
  OAI31X1M U10 ( .A0(n35), .A1(n2), .A2(n34), .B0(n36), .Y(n9) );
  NAND2X2M U12 ( .A(n1), .B(N4), .Y(n2) );
  BUFX2M U13 ( .A(ser_en), .Y(n1) );
  MX4X1M U14 ( .A(data_set[4]), .B(data_set[5]), .C(data_set[6]), .D(
        data_set[7]), .S0(N4), .S1(N5), .Y(n4) );
  AO2B2X2M U15 ( .B0(N11), .B1(n7), .A0(ser_data), .A1N(n7), .Y(n33) );
  AOI31X2M U16 ( .A0(N6), .A1(N4), .A2(N5), .B0(n37), .Y(n7) );
  MX2X2M U17 ( .A(n6), .B(n4), .S0(N6), .Y(N11) );
  MX4X1M U18 ( .A(data_set[0]), .B(data_set[1]), .C(data_set[2]), .D(
        data_set[3]), .S0(N4), .S1(N5), .Y(n6) );
  INVX2M U19 ( .A(N5), .Y(n34) );
  AO22X1M U20 ( .A0(p_data[0]), .A1(n1), .B0(data_set[0]), .B1(n37), .Y(n18)
         );
  AO22X1M U21 ( .A0(p_data[1]), .A1(n1), .B0(data_set[1]), .B1(n37), .Y(n20)
         );
  AO22X1M U22 ( .A0(p_data[3]), .A1(n1), .B0(data_set[3]), .B1(n37), .Y(n24)
         );
  AO22X1M U36 ( .A0(p_data[4]), .A1(n1), .B0(data_set[4]), .B1(n37), .Y(n26)
         );
  AO22X1M U37 ( .A0(p_data[5]), .A1(n1), .B0(data_set[5]), .B1(n37), .Y(n28)
         );
  AO22X1M U38 ( .A0(p_data[7]), .A1(n1), .B0(data_set[7]), .B1(n37), .Y(n32)
         );
  INVX2M U39 ( .A(N6), .Y(n35) );
  CLKXOR2X2M U40 ( .A(n1), .B(N4), .Y(n16) );
  SDFFRX1M ser_done_reg ( .D(n9), .SI(ser_data), .SE(test_se), .CK(clk), .RN(
        reset), .Q(ser_done), .QN(n36) );
endmodule


module uart_tr_test_1 ( clk, reset, data_valid, par_type, par_en, p_data, 
        tx_out, busy, test_si, test_se );
  input [7:0] p_data;
  input clk, reset, data_valid, par_type, par_en, test_si, test_se;
  output tx_out, busy;
  wire   in_s2f, in_f2s, in_s2m, in_p2m, n1;
  wire   [1:0] in_f2m;

  fsm_uart_test_1 a0 ( .clk(clk), .reset(reset), .data_valid(data_valid), 
        .par_en(par_en), .ser_done(in_s2f), .ser_en(in_f2s), .busy(busy), 
        .mux_sel(in_f2m), .test_si(test_si), .test_se(test_se) );
  mux4_1_test_1 a1 ( .clk(clk), .mux_sel(in_f2m), .start(1'b0), .stop(1'b1), 
        .ser_data(in_s2m), .parity(in_p2m), .tx_out(tx_out), .test_si(n1), 
        .test_se(test_se) );
  parity_calc_test_1 a2 ( .clk(clk), .reset(reset), .par_type(par_type), 
        .data_valid(data_valid), .p_data(p_data), .par_bit(in_p2m), .test_si(
        in_f2s), .test_se(test_se) );
  serializer_test_1 a3 ( .clk(clk), .reset(reset), .ser_en(in_f2s), .p_data(
        p_data), .ser_data(in_s2m), .ser_done(in_s2f), .test_si(in_p2m), 
        .test_so(n1), .test_se(test_se) );
endmodule


module SYS_TOP ( REF_CLK, RST_N, UART_CLK, UART_RX_IN, scan_clk, scan_rst, 
        test_mode, SE, SI, UART_TX_O, framing_error, parity_error, SO, 
        test_si2, test_so2, test_si3 );
  input REF_CLK, RST_N, UART_CLK, UART_RX_IN, scan_clk, scan_rst, test_mode,
         SE, SI, test_si2, test_si3;
  output UART_TX_O, framing_error, parity_error, SO, test_so2;
  wire   ref_clock, uart_clock, o_div_clk_rx, rx_clock, o_div_clk_tx, tx_clock,
         RST_N_for_regfile, reset_1, RST_N_fifo, reset_2, reset_3,
         out_valid_f_alu, rdata_valid_f_reg_file, rx_d_vld_f_rx,
         fifo_full_f_fifo, wr_inc_f_fifo, wr_en_f_regfile, rd_en_f_regfile,
         clk_en_f_clock_gate, alu_clk_f_clk_gate, bus_enable_f_rx,
         rinc_f_pulse_gen, r_empty_f_tx, busy_f_tx, n2, n4, n5, n6, n7, n8, n9,
         n12, n15, n16, n17;
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

  INVX2M U3 ( .A(r_empty_f_tx), .Y(n2) );
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
  sys_cnrt_test_1 A0 ( .clk(ref_clock), .reset(reset_1), .alu_out(
        alu_out_f_alu), .out_valid(out_valid_f_alu), .rddata(rddata_f_reg_file), .rddata_valid(rdata_valid_f_reg_file), .rx_p_data(rx_p_data_f_rx), 
        .rx_d_vld(rx_d_vld_f_rx), .fifo_full(fifo_full_f_fifo), .wr_inc(
        wr_inc_f_fifo), .wr_data(wr_data_f_fifo), .address(address_f_reg_file), 
        .wr_en(wr_en_f_regfile), .rd_en(rd_en_f_regfile), .wrdata(
        wrdata_f_regfile), .clk_div_en(clk_en_f_clock_gate), .test_si(SI), 
        .test_so(n17), .test_se(SE) );
  alu_test_1 A1 ( .a(a_f_regfile), .b(b_f_regfile), .alu_fun({1'b0, 1'b0, 1'b0, 
        1'b0}), .reset(reset_1), .clk(alu_clk_f_clk_gate), .en(1'b0), 
        .alu_out(alu_out_f_alu), .out_valid(out_valid_f_alu), .test_si(n17), 
        .test_se(SE) );
  CLK_GATE A2 ( .CLK_EN(clk_en_f_clock_gate), .test_mode(test_mode), .CLK(
        ref_clock), .GATED_CLK(alu_clk_f_clk_gate) );
  reg_file_test_1 A3 ( .WrData(wrdata_f_regfile), .Address(address_f_reg_file), 
        .WrEn(wr_en_f_regfile), .RdEn(rd_en_f_regfile), .CLK(ref_clock), .RST(
        reset_1), .RdData(rddata_f_reg_file), .RdData_valid(
        rdata_valid_f_reg_file), .REG0(a_f_regfile), .REG1(b_f_regfile), 
        .REG2(c_rx), .REG3(d_div), .test_si(out_valid_f_alu), .test_so(n16), 
        .test_se(SE) );
  reset_sync_test_0 A4 ( .clk(ref_clock), .reset(reset_3), .sync_reset(
        RST_N_for_regfile), .test_si(n16), .test_so(n15), .test_se(SE) );
  data_sync_test_1 A5 ( .clk(ref_clock), .reset(reset_1), .bus_enable(
        bus_enable_f_rx), .unsync_bus(unsync_bus_f_rx), .sync_bus(
        rx_p_data_f_rx), .enable_bus(rx_d_vld_f_rx), .test_si2(test_si2), 
        .test_si1(n15), .test_so2(n12), .test_so1(SO), .test_se(SE) );
  fifo_top_test_1 A6 ( .wrst_n(reset_1), .reset(reset_1), .w_clk(ref_clock), 
        .winc(wr_inc_f_fifo), .w_data(wr_data_f_fifo), .r_clk(tx_clock), 
        .rrest_n(reset_2), .rinc(rinc_f_pulse_gen), .w_full(fifo_full_f_fifo), 
        .r_data(fifo_full_f_fifo_f_tx), .r_empty(r_empty_f_tx), .test_si2(
        test_si3), .test_si1(n12), .test_so2(n9), .test_so1(test_so2), 
        .test_se(SE) );
  reset_sync_test_1 A7 ( .clk(uart_clock), .reset(reset_3), .sync_reset(
        RST_N_fifo), .test_si(n9), .test_so(n8), .test_se(SE) );
  pluse_gen_test_1 A8 ( .clk(tx_clock), .reset(reset_2), .busy(busy_f_tx), 
        .rd_inc(rinc_f_pulse_gen), .test_si(n8), .test_so(n7), .test_se(SE) );
  UART_RX_test_1 A9 ( .CLK(rx_clock), .RST(reset_2), .RX_IN(UART_RX_IN), 
        .parity_enable(c_rx[0]), .parity_type(c_rx[1]), .Prescale(c_rx[7:2]), 
        .P_DATA(unsync_bus_f_rx), .data_valid(bus_enable_f_rx), .parity_error(
        parity_error), .framing_error(framing_error), .test_si(n7), .test_so(
        n6), .test_se(SE) );
  clock_divider_test_0 A10 ( .i_ref_clk(uart_clock), .i_rst(reset_2), 
        .i_clk_en(1'b1), .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, clk_rx[3:0]}), 
        .o_div_clk(o_div_clk_rx), .test_si(n6), .test_so(n5), .test_se(SE) );
  pre_mux A13 ( .prescale(c_rx[7:2]), .clk_div_in({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, clk_rx[3:0]}) );
  clock_divider_test_1 A11 ( .i_ref_clk(uart_clock), .i_rst(reset_2), 
        .i_clk_en(1'b1), .i_div_ratio(d_div), .o_div_clk(o_div_clk_tx), 
        .test_si(n5), .test_so(n4), .test_se(SE) );
  uart_tr_test_1 A12 ( .clk(tx_clock), .reset(reset_2), .data_valid(n2), 
        .par_type(c_rx[1]), .par_en(c_rx[0]), .p_data(fifo_full_f_fifo_f_tx), 
        .tx_out(UART_TX_O), .busy(busy_f_tx), .test_si(n4), .test_se(SE) );
endmodule

