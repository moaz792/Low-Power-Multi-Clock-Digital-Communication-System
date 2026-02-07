/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Wed Oct  1 23:24:14 2025
/////////////////////////////////////////////////////////////
module mux2X1_1 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   CLKMX2X4M U1 (.Y(OUT), 
	.S0(SEL), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module mux2X1_4 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   MX2X2M U1 (.Y(OUT), 
	.S0(SEL), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module mux2X1_3 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   MX2X2M U1 (.Y(OUT), 
	.S0(SEL), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module mux2X1_2 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   MX2X2M U1 (.Y(OUT), 
	.S0(SEL), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module mux2X1_0 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire FE_PHN6_scan_rst;

   DLY4X1M FE_PHC6_scan_rst (.Y(FE_PHN6_scan_rst), 
	.A(IN_1));
   AO2B2X4M U1 (.Y(OUT), 
	.B1(FE_PHN6_scan_rst), 
	.B0(SEL), 
	.A1N(SEL), 
	.A0(IN_0));
endmodule

module mux2X1_6 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire FE_PHN8_scan_rst;
   wire FE_PHN5_scan_rst;

   DLY4X1M FE_PHC8_scan_rst (.Y(FE_PHN8_scan_rst), 
	.A(FE_PHN5_scan_rst));
   DLY4X1M FE_PHC5_scan_rst (.Y(FE_PHN5_scan_rst), 
	.A(IN_1));
   AO2B2X4M U1 (.Y(OUT), 
	.B1(FE_PHN8_scan_rst), 
	.B0(SEL), 
	.A1N(SEL), 
	.A0(IN_0));
endmodule

module mux2X1_5 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire FE_PHN10_RST_N;
   wire FE_PHN9_RST_N;
   wire FE_PHN7_scan_rst;
   wire FE_PHN4_scan_rst;

   DLY4X1M FE_PHC10_RST_N (.Y(FE_PHN10_RST_N), 
	.A(FE_PHN9_RST_N));
   DLY4X1M FE_PHC9_RST_N (.Y(FE_PHN9_RST_N), 
	.A(IN_0));
   DLY4X1M FE_PHC7_scan_rst (.Y(FE_PHN7_scan_rst), 
	.A(FE_PHN4_scan_rst));
   DLY4X1M FE_PHC4_scan_rst (.Y(FE_PHN4_scan_rst), 
	.A(IN_1));
   AO2B2X2M U1 (.Y(OUT), 
	.B1(FE_PHN7_scan_rst), 
	.B0(SEL), 
	.A1N(SEL), 
	.A0(FE_PHN10_RST_N));
endmodule

module sys_cnrt_test_1 (
	clk, 
	reset, 
	alu_out, 
	out_valid, 
	rddata, 
	rddata_valid, 
	rx_p_data, 
	rx_d_vld, 
	fifo_full, 
	wr_inc, 
	wr_data, 
	alu_fun, 
	en, 
	address, 
	wr_en, 
	rd_en, 
	wrdata, 
	clk_div_en, 
	test_si, 
	test_so, 
	test_se);
   input clk;
   input reset;
   input [7:0] alu_out;
   input out_valid;
   input [7:0] rddata;
   input rddata_valid;
   input [7:0] rx_p_data;
   input rx_d_vld;
   input fifo_full;
   output wr_inc;
   output [7:0] wr_data;
   output [3:0] alu_fun;
   output en;
   output [2:0] address;
   output wr_en;
   output rd_en;
   output [7:0] wrdata;
   output clk_div_en;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire rx_d_vld_tt;
   wire n22;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n2;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n19;
   wire n20;
   wire n21;
   wire n23;
   wire n31;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire [3:0] current_state;

   assign en = 1'b0 ;
   assign alu_fun[0] = 1'b0 ;
   assign alu_fun[1] = 1'b0 ;
   assign alu_fun[2] = 1'b0 ;
   assign alu_fun[3] = 1'b0 ;
   assign test_so = n20 ;

   SDFFRQX2M rx_d_vld_tt_reg (.SI(current_state[2]), 
	.SE(test_se), 
	.RN(reset), 
	.Q(rx_d_vld_tt), 
	.D(rx_d_vld), 
	.CK(clk));
   SDFFRQX2M \current_state_reg[1]  (.SI(n21), 
	.SE(test_se), 
	.RN(reset), 
	.Q(current_state[1]), 
	.D(n46), 
	.CK(clk));
   SDFFRQX2M \current_state_reg[2]  (.SI(n49), 
	.SE(test_se), 
	.RN(reset), 
	.Q(current_state[2]), 
	.D(n9), 
	.CK(clk));
   SDFFRQX2M \current_state_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(reset), 
	.Q(current_state[0]), 
	.D(n47), 
	.CK(clk));
   AND3X2M U4 (.Y(n2), 
	.C(out_valid), 
	.B(n31), 
	.A(n7));
   AND2X2M U6 (.Y(n6), 
	.B(n20), 
	.A(n25));
   NOR2X2M U7 (.Y(address[2]), 
	.B(n19), 
	.A(n14));
   NOR2X2M U10 (.Y(address[0]), 
	.B(n19), 
	.A(n16));
   NAND3X2M U11 (.Y(n38), 
	.C(n42), 
	.B(n13), 
	.A(n16));
   OR3X2M U12 (.Y(n30), 
	.C(n13), 
	.B(n16), 
	.A(n41));
   NOR4X1M U13 (.Y(n42), 
	.D(rx_p_data[6]), 
	.C(rx_p_data[2]), 
	.B(n12), 
	.A(n15));
   NOR2X2M U14 (.Y(address[1]), 
	.B(n19), 
	.A(n15));
   AND2X2M U15 (.Y(wrdata[3]), 
	.B(wr_en), 
	.A(rx_p_data[3]));
   AND2X2M U16 (.Y(wrdata[6]), 
	.B(wr_en), 
	.A(rx_p_data[6]));
   AND2X2M U17 (.Y(wrdata[7]), 
	.B(wr_en), 
	.A(rx_p_data[7]));
   OAI21X2M U18 (.Y(n46), 
	.B0(n50), 
	.A1(n8), 
	.A0(n11));
   INVX2M U19 (.Y(n11), 
	.A(n32));
   NAND2X2M U20 (.Y(n50), 
	.B(n6), 
	.A(n27));
   INVX2M U21 (.Y(n19), 
	.A(rd_en));
   INVX2M U22 (.Y(n16), 
	.A(rx_p_data[0]));
   INVX2M U23 (.Y(n14), 
	.A(rx_p_data[2]));
   NAND3X2M U24 (.Y(n39), 
	.C(n42), 
	.B(rx_p_data[4]), 
	.A(rx_p_data[0]));
   INVX2M U25 (.Y(n8), 
	.A(n27));
   NAND4X2M U26 (.Y(n41), 
	.D(n12), 
	.C(n15), 
	.B(rx_p_data[6]), 
	.A(rx_p_data[2]));
   INVX2M U27 (.Y(n13), 
	.A(rx_p_data[4]));
   NOR2X2M U28 (.Y(rd_en), 
	.B(n44), 
	.A(n20));
   NAND2X2M U29 (.Y(n27), 
	.B(n36), 
	.A(n35));
   NAND3X2M U30 (.Y(n35), 
	.C(rx_p_data[3]), 
	.B(n37), 
	.A(rx_p_data[7]));
   OAI2BB1X2M U31 (.Y(n37), 
	.B0(n20), 
	.A1N(n39), 
	.A0N(n38));
   NOR2X2M U32 (.Y(wrdata[0]), 
	.B(n16), 
	.A(n22));
   NOR2X2M U33 (.Y(wrdata[5]), 
	.B(n12), 
	.A(n22));
   INVX2M U34 (.Y(n15), 
	.A(rx_p_data[1]));
   OR2X2M U35 (.Y(wr_inc), 
	.B(n24), 
	.A(n2));
   INVX2M U36 (.Y(wr_en), 
	.A(n22));
   INVX2M U37 (.Y(n12), 
	.A(rx_p_data[5]));
   OAI22X1M U38 (.Y(n32), 
	.B1(n44), 
	.B0(n43), 
	.A1(n39), 
	.A0(n23));
   NOR2X2M U39 (.Y(n43), 
	.B(n17), 
	.A(n20));
   NOR2X2M U40 (.Y(wrdata[1]), 
	.B(n15), 
	.A(n22));
   NOR2X2M U41 (.Y(wrdata[2]), 
	.B(n14), 
	.A(n22));
   NOR2X2M U42 (.Y(wrdata[4]), 
	.B(n13), 
	.A(n22));
   INVX2M U43 (.Y(n23), 
	.A(n36));
   NOR3X2M U44 (.Y(n24), 
	.C(n17), 
	.B(fifo_full), 
	.A(n19));
   NOR3X2M U45 (.Y(n25), 
	.C(n49), 
	.B(current_state[2]), 
	.A(current_state[0]));
   NAND2X2M U46 (.Y(n22), 
	.B(rx_d_vld_tt), 
	.A(n25));
   NAND3X2M U47 (.Y(n26), 
	.C(current_state[2]), 
	.B(n49), 
	.A(current_state[0]));
   AO22X1M U48 (.Y(wr_data[0]), 
	.B1(n24), 
	.B0(rddata[0]), 
	.A1(n2), 
	.A0(alu_out[0]));
   AO22X1M U49 (.Y(wr_data[1]), 
	.B1(n24), 
	.B0(rddata[1]), 
	.A1(n2), 
	.A0(alu_out[1]));
   AO22X1M U50 (.Y(wr_data[2]), 
	.B1(n24), 
	.B0(rddata[2]), 
	.A1(n2), 
	.A0(alu_out[2]));
   AO22X1M U51 (.Y(wr_data[3]), 
	.B1(n24), 
	.B0(rddata[3]), 
	.A1(n2), 
	.A0(alu_out[3]));
   AO22X1M U52 (.Y(wr_data[4]), 
	.B1(n24), 
	.B0(rddata[4]), 
	.A1(n2), 
	.A0(alu_out[4]));
   AO22X1M U53 (.Y(wr_data[5]), 
	.B1(n24), 
	.B0(rddata[5]), 
	.A1(n2), 
	.A0(alu_out[5]));
   AO22X1M U54 (.Y(wr_data[6]), 
	.B1(n24), 
	.B0(rddata[6]), 
	.A1(n2), 
	.A0(alu_out[6]));
   AO22X1M U55 (.Y(wr_data[7]), 
	.B1(n24), 
	.B0(rddata[7]), 
	.A1(n2), 
	.A0(alu_out[7]));
   NAND3X2M U56 (.Y(n44), 
	.C(current_state[0]), 
	.B(n48), 
	.A(current_state[1]));
   OAI21X2M U57 (.Y(n47), 
	.B0(n51), 
	.A1(n8), 
	.A0(n33));
   AOI2BB1X2M U58 (.Y(n33), 
	.B0(n32), 
	.A1N(out_valid), 
	.A0N(n26));
   NAND2X2M U59 (.Y(n51), 
	.B(n10), 
	.A(n27));
   INVX2M U60 (.Y(n10), 
	.A(n34));
   INVX2M U61 (.Y(n20), 
	.A(rx_d_vld_tt));
   INVX2M U62 (.Y(n49), 
	.A(current_state[1]));
   INVX2M U63 (.Y(n48), 
	.A(current_state[2]));
   INVX2M U64 (.Y(n7), 
	.A(fifo_full));
   INVX2M U65 (.Y(n31), 
	.A(n26));
   INVX2M U66 (.Y(n9), 
	.A(n28));
   AOI32X1M U67 (.Y(n28), 
	.B1(n27), 
	.B0(n29), 
	.A2(current_state[2]), 
	.A1(n49), 
	.A0(n21));
   INVX2M U68 (.Y(n21), 
	.A(current_state[0]));
   OAI22X1M U69 (.Y(n29), 
	.B1(n30), 
	.B0(n23), 
	.A1(n26), 
	.A0(out_valid));
   INVX2M U70 (.Y(n17), 
	.A(rddata_valid));
   NOR3X2M U71 (.Y(n36), 
	.C(current_state[0]), 
	.B(current_state[2]), 
	.A(current_state[1]));
   AOI32X1M U72 (.Y(n34), 
	.B1(n40), 
	.B0(n36), 
	.A2(current_state[0]), 
	.A1(n48), 
	.A0(n49));
   OAI31X1M U73 (.Y(n40), 
	.B0(n38), 
	.A2(rx_p_data[0]), 
	.A1(rx_p_data[4]), 
	.A0(n41));
   NOR3X2M U74 (.Y(clk_div_en), 
	.C(n30), 
	.B(n23), 
	.A(n45));
   NAND2X2M U75 (.Y(n45), 
	.B(rx_p_data[3]), 
	.A(rx_p_data[7]));
endmodule

module alu_DW_div_uns_0 (
	a, 
	b, 
	quotient, 
	remainder, 
	divide_by_0);
   input [7:0] a;
   input [7:0] b;
   output [7:0] quotient;
   output [7:0] remainder;
   output divide_by_0;

   // Internal wires
   wire \u_div/SumTmp[1][0] ;
   wire \u_div/SumTmp[1][1] ;
   wire \u_div/SumTmp[1][2] ;
   wire \u_div/SumTmp[1][3] ;
   wire \u_div/SumTmp[1][4] ;
   wire \u_div/SumTmp[1][5] ;
   wire \u_div/SumTmp[1][6] ;
   wire \u_div/SumTmp[2][0] ;
   wire \u_div/SumTmp[2][1] ;
   wire \u_div/SumTmp[2][2] ;
   wire \u_div/SumTmp[2][3] ;
   wire \u_div/SumTmp[2][4] ;
   wire \u_div/SumTmp[2][5] ;
   wire \u_div/SumTmp[3][0] ;
   wire \u_div/SumTmp[3][1] ;
   wire \u_div/SumTmp[3][2] ;
   wire \u_div/SumTmp[3][3] ;
   wire \u_div/SumTmp[3][4] ;
   wire \u_div/SumTmp[4][0] ;
   wire \u_div/SumTmp[4][1] ;
   wire \u_div/SumTmp[4][2] ;
   wire \u_div/SumTmp[4][3] ;
   wire \u_div/SumTmp[5][0] ;
   wire \u_div/SumTmp[5][1] ;
   wire \u_div/SumTmp[5][2] ;
   wire \u_div/SumTmp[6][0] ;
   wire \u_div/SumTmp[6][1] ;
   wire \u_div/SumTmp[7][0] ;
   wire \u_div/CryTmp[0][1] ;
   wire \u_div/CryTmp[0][2] ;
   wire \u_div/CryTmp[0][3] ;
   wire \u_div/CryTmp[0][4] ;
   wire \u_div/CryTmp[0][5] ;
   wire \u_div/CryTmp[0][6] ;
   wire \u_div/CryTmp[0][7] ;
   wire \u_div/CryTmp[1][1] ;
   wire \u_div/CryTmp[1][2] ;
   wire \u_div/CryTmp[1][3] ;
   wire \u_div/CryTmp[1][4] ;
   wire \u_div/CryTmp[1][5] ;
   wire \u_div/CryTmp[1][6] ;
   wire \u_div/CryTmp[1][7] ;
   wire \u_div/CryTmp[2][1] ;
   wire \u_div/CryTmp[2][2] ;
   wire \u_div/CryTmp[2][3] ;
   wire \u_div/CryTmp[2][4] ;
   wire \u_div/CryTmp[2][5] ;
   wire \u_div/CryTmp[2][6] ;
   wire \u_div/CryTmp[3][1] ;
   wire \u_div/CryTmp[3][2] ;
   wire \u_div/CryTmp[3][3] ;
   wire \u_div/CryTmp[3][4] ;
   wire \u_div/CryTmp[3][5] ;
   wire \u_div/CryTmp[4][1] ;
   wire \u_div/CryTmp[4][2] ;
   wire \u_div/CryTmp[4][3] ;
   wire \u_div/CryTmp[4][4] ;
   wire \u_div/CryTmp[5][1] ;
   wire \u_div/CryTmp[5][2] ;
   wire \u_div/CryTmp[5][3] ;
   wire \u_div/CryTmp[6][1] ;
   wire \u_div/CryTmp[6][2] ;
   wire \u_div/CryTmp[7][1] ;
   wire \u_div/PartRem[1][1] ;
   wire \u_div/PartRem[1][2] ;
   wire \u_div/PartRem[1][3] ;
   wire \u_div/PartRem[1][4] ;
   wire \u_div/PartRem[1][5] ;
   wire \u_div/PartRem[1][6] ;
   wire \u_div/PartRem[1][7] ;
   wire \u_div/PartRem[2][1] ;
   wire \u_div/PartRem[2][2] ;
   wire \u_div/PartRem[2][3] ;
   wire \u_div/PartRem[2][4] ;
   wire \u_div/PartRem[2][5] ;
   wire \u_div/PartRem[2][6] ;
   wire \u_div/PartRem[3][1] ;
   wire \u_div/PartRem[3][2] ;
   wire \u_div/PartRem[3][3] ;
   wire \u_div/PartRem[3][4] ;
   wire \u_div/PartRem[3][5] ;
   wire \u_div/PartRem[4][1] ;
   wire \u_div/PartRem[4][2] ;
   wire \u_div/PartRem[4][3] ;
   wire \u_div/PartRem[4][4] ;
   wire \u_div/PartRem[5][1] ;
   wire \u_div/PartRem[5][2] ;
   wire \u_div/PartRem[5][3] ;
   wire \u_div/PartRem[6][1] ;
   wire \u_div/PartRem[6][2] ;
   wire \u_div/PartRem[7][1] ;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;

   ADDFX2M \u_div/u_fa_PartRem_0_2_5  (.S(\u_div/SumTmp[2][5] ), 
	.CO(\u_div/CryTmp[2][6] ), 
	.CI(\u_div/CryTmp[2][5] ), 
	.B(n13), 
	.A(\u_div/PartRem[3][5] ));
   ADDFX2M \u_div/u_fa_PartRem_0_4_3  (.S(\u_div/SumTmp[4][3] ), 
	.CO(\u_div/CryTmp[4][4] ), 
	.CI(\u_div/CryTmp[4][3] ), 
	.B(n15), 
	.A(\u_div/PartRem[5][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_5_2  (.S(\u_div/SumTmp[5][2] ), 
	.CO(\u_div/CryTmp[5][3] ), 
	.CI(\u_div/CryTmp[5][2] ), 
	.B(n16), 
	.A(\u_div/PartRem[6][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_6_1  (.S(\u_div/SumTmp[6][1] ), 
	.CO(\u_div/CryTmp[6][2] ), 
	.CI(\u_div/CryTmp[6][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[7][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_4  (.S(\u_div/SumTmp[3][4] ), 
	.CO(\u_div/CryTmp[3][5] ), 
	.CI(\u_div/CryTmp[3][4] ), 
	.B(n14), 
	.A(\u_div/PartRem[4][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_1  (.S(\u_div/SumTmp[1][1] ), 
	.CO(\u_div/CryTmp[1][2] ), 
	.CI(\u_div/CryTmp[1][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[2][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_1  (.S(\u_div/SumTmp[2][1] ), 
	.CO(\u_div/CryTmp[2][2] ), 
	.CI(\u_div/CryTmp[2][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[3][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_1  (.S(\u_div/SumTmp[3][1] ), 
	.CO(\u_div/CryTmp[3][2] ), 
	.CI(\u_div/CryTmp[3][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[4][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_4_1  (.S(\u_div/SumTmp[4][1] ), 
	.CO(\u_div/CryTmp[4][2] ), 
	.CI(\u_div/CryTmp[4][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[5][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_5_1  (.S(\u_div/SumTmp[5][1] ), 
	.CO(\u_div/CryTmp[5][2] ), 
	.CI(\u_div/CryTmp[5][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[6][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_3  (.CO(\u_div/CryTmp[0][4] ), 
	.CI(\u_div/CryTmp[0][3] ), 
	.B(n15), 
	.A(\u_div/PartRem[1][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_4  (.CO(\u_div/CryTmp[0][5] ), 
	.CI(\u_div/CryTmp[0][4] ), 
	.B(n14), 
	.A(\u_div/PartRem[1][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_5  (.CO(\u_div/CryTmp[0][6] ), 
	.CI(\u_div/CryTmp[0][5] ), 
	.B(n13), 
	.A(\u_div/PartRem[1][5] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_5  (.S(\u_div/SumTmp[1][5] ), 
	.CO(\u_div/CryTmp[1][6] ), 
	.CI(\u_div/CryTmp[1][5] ), 
	.B(n13), 
	.A(\u_div/PartRem[2][5] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_4  (.S(\u_div/SumTmp[1][4] ), 
	.CO(\u_div/CryTmp[1][5] ), 
	.CI(\u_div/CryTmp[1][4] ), 
	.B(n14), 
	.A(\u_div/PartRem[2][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_1  (.CO(\u_div/CryTmp[0][2] ), 
	.CI(\u_div/CryTmp[0][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[1][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_2  (.CO(\u_div/CryTmp[0][3] ), 
	.CI(\u_div/CryTmp[0][2] ), 
	.B(n16), 
	.A(\u_div/PartRem[1][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_3  (.S(\u_div/SumTmp[1][3] ), 
	.CO(\u_div/CryTmp[1][4] ), 
	.CI(\u_div/CryTmp[1][3] ), 
	.B(n15), 
	.A(\u_div/PartRem[2][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_2  (.S(\u_div/SumTmp[1][2] ), 
	.CO(\u_div/CryTmp[1][3] ), 
	.CI(\u_div/CryTmp[1][2] ), 
	.B(n16), 
	.A(\u_div/PartRem[2][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_4  (.S(\u_div/SumTmp[2][4] ), 
	.CO(\u_div/CryTmp[2][5] ), 
	.CI(\u_div/CryTmp[2][4] ), 
	.B(n14), 
	.A(\u_div/PartRem[3][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_3  (.S(\u_div/SumTmp[2][3] ), 
	.CO(\u_div/CryTmp[2][4] ), 
	.CI(\u_div/CryTmp[2][3] ), 
	.B(n15), 
	.A(\u_div/PartRem[3][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_2  (.S(\u_div/SumTmp[2][2] ), 
	.CO(\u_div/CryTmp[2][3] ), 
	.CI(\u_div/CryTmp[2][2] ), 
	.B(n16), 
	.A(\u_div/PartRem[3][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_3  (.S(\u_div/SumTmp[3][3] ), 
	.CO(\u_div/CryTmp[3][4] ), 
	.CI(\u_div/CryTmp[3][3] ), 
	.B(n15), 
	.A(\u_div/PartRem[4][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_2  (.S(\u_div/SumTmp[3][2] ), 
	.CO(\u_div/CryTmp[3][3] ), 
	.CI(\u_div/CryTmp[3][2] ), 
	.B(n16), 
	.A(\u_div/PartRem[4][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_4_2  (.S(\u_div/SumTmp[4][2] ), 
	.CO(\u_div/CryTmp[4][3] ), 
	.CI(\u_div/CryTmp[4][2] ), 
	.B(n16), 
	.A(\u_div/PartRem[5][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_6  (.CO(\u_div/CryTmp[0][7] ), 
	.CI(\u_div/CryTmp[0][6] ), 
	.B(n12), 
	.A(\u_div/PartRem[1][6] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_7  (.CO(quotient[0]), 
	.CI(\u_div/CryTmp[0][7] ), 
	.B(n11), 
	.A(\u_div/PartRem[1][7] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_6  (.S(\u_div/SumTmp[1][6] ), 
	.CO(\u_div/CryTmp[1][7] ), 
	.CI(\u_div/CryTmp[1][6] ), 
	.B(n12), 
	.A(\u_div/PartRem[2][6] ));
   INVX2M U1 (.Y(n18), 
	.A(b[0]));
   XNOR2X2M U2 (.Y(\u_div/SumTmp[7][0] ), 
	.B(a[7]), 
	.A(n18));
   XNOR2X2M U3 (.Y(\u_div/SumTmp[6][0] ), 
	.B(a[6]), 
	.A(n18));
   XNOR2X2M U4 (.Y(\u_div/SumTmp[5][0] ), 
	.B(a[5]), 
	.A(n18));
   XNOR2X2M U5 (.Y(\u_div/SumTmp[4][0] ), 
	.B(a[4]), 
	.A(n18));
   XNOR2X2M U6 (.Y(\u_div/SumTmp[3][0] ), 
	.B(a[3]), 
	.A(n18));
   XNOR2X2M U7 (.Y(\u_div/SumTmp[2][0] ), 
	.B(a[2]), 
	.A(n18));
   XNOR2X2M U8 (.Y(\u_div/SumTmp[1][0] ), 
	.B(a[1]), 
	.A(n18));
   OR2X2M U9 (.Y(\u_div/CryTmp[7][1] ), 
	.B(a[7]), 
	.A(n18));
   NAND2X2M U10 (.Y(\u_div/CryTmp[0][1] ), 
	.B(n10), 
	.A(n2));
   NAND2X2M U11 (.Y(\u_div/CryTmp[5][1] ), 
	.B(n3), 
	.A(n2));
   INVX2M U12 (.Y(n3), 
	.A(a[5]));
   INVX2M U13 (.Y(n2), 
	.A(n18));
   NAND2X2M U14 (.Y(\u_div/CryTmp[4][1] ), 
	.B(n5), 
	.A(n4));
   INVX2M U15 (.Y(n5), 
	.A(a[4]));
   INVX2M U16 (.Y(n4), 
	.A(n18));
   NAND2X2M U17 (.Y(\u_div/CryTmp[3][1] ), 
	.B(n7), 
	.A(n6));
   INVX2M U18 (.Y(n7), 
	.A(a[3]));
   INVX2M U19 (.Y(n6), 
	.A(n18));
   NAND2X2M U20 (.Y(\u_div/CryTmp[2][1] ), 
	.B(n8), 
	.A(n6));
   INVX2M U21 (.Y(n8), 
	.A(a[2]));
   NAND2X2M U22 (.Y(\u_div/CryTmp[1][1] ), 
	.B(n9), 
	.A(n4));
   INVX2M U23 (.Y(n9), 
	.A(a[1]));
   NAND2X2M U24 (.Y(\u_div/CryTmp[6][1] ), 
	.B(n1), 
	.A(n2));
   INVX2M U25 (.Y(n1), 
	.A(a[6]));
   INVX2M U26 (.Y(n12), 
	.A(b[6]));
   INVX2M U27 (.Y(n10), 
	.A(a[0]));
   INVX2M U28 (.Y(n17), 
	.A(b[1]));
   INVX2M U29 (.Y(n16), 
	.A(b[2]));
   INVX2M U30 (.Y(n15), 
	.A(b[3]));
   INVX2M U31 (.Y(n14), 
	.A(b[4]));
   INVX2M U32 (.Y(n13), 
	.A(b[5]));
   INVX2M U33 (.Y(n11), 
	.A(b[7]));
   CLKMX2X2M U34 (.Y(\u_div/PartRem[1][7] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][6] ), 
	.A(\u_div/PartRem[2][6] ));
   CLKMX2X2M U35 (.Y(\u_div/PartRem[2][6] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][5] ), 
	.A(\u_div/PartRem[3][5] ));
   CLKMX2X2M U36 (.Y(\u_div/PartRem[3][5] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][4] ), 
	.A(\u_div/PartRem[4][4] ));
   CLKMX2X2M U37 (.Y(\u_div/PartRem[4][4] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][3] ), 
	.A(\u_div/PartRem[5][3] ));
   CLKMX2X2M U38 (.Y(\u_div/PartRem[5][3] ), 
	.S0(quotient[5]), 
	.B(\u_div/SumTmp[5][2] ), 
	.A(\u_div/PartRem[6][2] ));
   CLKMX2X2M U39 (.Y(\u_div/PartRem[6][2] ), 
	.S0(quotient[6]), 
	.B(\u_div/SumTmp[6][1] ), 
	.A(\u_div/PartRem[7][1] ));
   CLKMX2X2M U40 (.Y(\u_div/PartRem[7][1] ), 
	.S0(quotient[7]), 
	.B(\u_div/SumTmp[7][0] ), 
	.A(a[7]));
   CLKMX2X2M U41 (.Y(\u_div/PartRem[1][6] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][5] ), 
	.A(\u_div/PartRem[2][5] ));
   CLKMX2X2M U42 (.Y(\u_div/PartRem[2][5] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][4] ), 
	.A(\u_div/PartRem[3][4] ));
   CLKMX2X2M U43 (.Y(\u_div/PartRem[3][4] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][3] ), 
	.A(\u_div/PartRem[4][3] ));
   CLKMX2X2M U44 (.Y(\u_div/PartRem[4][3] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][2] ), 
	.A(\u_div/PartRem[5][2] ));
   CLKMX2X2M U45 (.Y(\u_div/PartRem[5][2] ), 
	.S0(quotient[5]), 
	.B(\u_div/SumTmp[5][1] ), 
	.A(\u_div/PartRem[6][1] ));
   CLKMX2X2M U46 (.Y(\u_div/PartRem[6][1] ), 
	.S0(quotient[6]), 
	.B(\u_div/SumTmp[6][0] ), 
	.A(a[6]));
   CLKMX2X2M U47 (.Y(\u_div/PartRem[1][5] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][4] ), 
	.A(\u_div/PartRem[2][4] ));
   CLKMX2X2M U48 (.Y(\u_div/PartRem[2][4] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][3] ), 
	.A(\u_div/PartRem[3][3] ));
   CLKMX2X2M U49 (.Y(\u_div/PartRem[3][3] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][2] ), 
	.A(\u_div/PartRem[4][2] ));
   CLKMX2X2M U50 (.Y(\u_div/PartRem[4][2] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][1] ), 
	.A(\u_div/PartRem[5][1] ));
   CLKMX2X2M U51 (.Y(\u_div/PartRem[5][1] ), 
	.S0(quotient[5]), 
	.B(\u_div/SumTmp[5][0] ), 
	.A(a[5]));
   CLKMX2X2M U52 (.Y(\u_div/PartRem[1][4] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][3] ), 
	.A(\u_div/PartRem[2][3] ));
   CLKMX2X2M U53 (.Y(\u_div/PartRem[2][3] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][2] ), 
	.A(\u_div/PartRem[3][2] ));
   CLKMX2X2M U54 (.Y(\u_div/PartRem[3][2] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][1] ), 
	.A(\u_div/PartRem[4][1] ));
   CLKMX2X2M U55 (.Y(\u_div/PartRem[4][1] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][0] ), 
	.A(a[4]));
   CLKMX2X2M U56 (.Y(\u_div/PartRem[1][3] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][2] ), 
	.A(\u_div/PartRem[2][2] ));
   CLKMX2X2M U57 (.Y(\u_div/PartRem[2][2] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][1] ), 
	.A(\u_div/PartRem[3][1] ));
   CLKMX2X2M U58 (.Y(\u_div/PartRem[3][1] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][0] ), 
	.A(a[3]));
   CLKMX2X2M U59 (.Y(\u_div/PartRem[1][2] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][1] ), 
	.A(\u_div/PartRem[2][1] ));
   CLKMX2X2M U60 (.Y(\u_div/PartRem[2][1] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][0] ), 
	.A(a[2]));
   CLKMX2X2M U61 (.Y(\u_div/PartRem[1][1] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][0] ), 
	.A(a[1]));
   AND4X1M U62 (.Y(quotient[7]), 
	.D(n16), 
	.C(n17), 
	.B(n19), 
	.A(\u_div/CryTmp[7][1] ));
   AND3X1M U63 (.Y(quotient[6]), 
	.C(\u_div/CryTmp[6][2] ), 
	.B(n16), 
	.A(n19));
   AND2X1M U64 (.Y(quotient[5]), 
	.B(n19), 
	.A(\u_div/CryTmp[5][3] ));
   AND2X1M U65 (.Y(n19), 
	.B(n15), 
	.A(n20));
   AND2X1M U66 (.Y(quotient[4]), 
	.B(n20), 
	.A(\u_div/CryTmp[4][4] ));
   AND3X1M U67 (.Y(n20), 
	.C(n13), 
	.B(n14), 
	.A(n21));
   AND3X1M U68 (.Y(quotient[3]), 
	.C(\u_div/CryTmp[3][5] ), 
	.B(n13), 
	.A(n21));
   AND2X1M U69 (.Y(quotient[2]), 
	.B(n21), 
	.A(\u_div/CryTmp[2][6] ));
   NOR2X1M U70 (.Y(n21), 
	.B(b[7]), 
	.A(b[6]));
   AND2X1M U71 (.Y(quotient[1]), 
	.B(n11), 
	.A(\u_div/CryTmp[1][7] ));
endmodule

module alu_DW01_sub_0 (
	A, 
	B, 
	CI, 
	DIFF, 
	CO);
   input [7:0] A;
   input [7:0] B;
   input CI;
   output [7:0] DIFF;
   output CO;

   // Internal wires
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire [8:0] carry;

   XOR3XLM U2_7 (.Y(DIFF[7]), 
	.C(carry[7]), 
	.B(n2), 
	.A(A[7]));
   ADDFX2M U2_1 (.S(DIFF[1]), 
	.CO(carry[2]), 
	.CI(carry[1]), 
	.B(n8), 
	.A(A[1]));
   ADDFX2M U2_5 (.S(DIFF[5]), 
	.CO(carry[6]), 
	.CI(carry[5]), 
	.B(n4), 
	.A(A[5]));
   ADDFX2M U2_4 (.S(DIFF[4]), 
	.CO(carry[5]), 
	.CI(carry[4]), 
	.B(n5), 
	.A(A[4]));
   ADDFX2M U2_3 (.S(DIFF[3]), 
	.CO(carry[4]), 
	.CI(carry[3]), 
	.B(n6), 
	.A(A[3]));
   ADDFX2M U2_2 (.S(DIFF[2]), 
	.CO(carry[3]), 
	.CI(carry[2]), 
	.B(n7), 
	.A(A[2]));
   ADDFX2M U2_6 (.S(DIFF[6]), 
	.CO(carry[7]), 
	.CI(carry[6]), 
	.B(n3), 
	.A(A[6]));
   XNOR2X2M U1 (.Y(DIFF[0]), 
	.B(A[0]), 
	.A(n9));
   INVX2M U2 (.Y(n3), 
	.A(B[6]));
   INVX2M U3 (.Y(n9), 
	.A(B[0]));
   INVX2M U4 (.Y(n7), 
	.A(B[2]));
   INVX2M U5 (.Y(n6), 
	.A(B[3]));
   INVX2M U6 (.Y(n5), 
	.A(B[4]));
   INVX2M U7 (.Y(n4), 
	.A(B[5]));
   NAND2X2M U8 (.Y(carry[1]), 
	.B(n1), 
	.A(B[0]));
   INVX2M U9 (.Y(n8), 
	.A(B[1]));
   INVX2M U10 (.Y(n1), 
	.A(A[0]));
   INVX2M U11 (.Y(n2), 
	.A(B[7]));
endmodule

module alu_DW01_add_0 (
	A, 
	B, 
	CI, 
	SUM, 
	CO);
   input [7:0] A;
   input [7:0] B;
   input CI;
   output [7:0] SUM;
   output CO;

   // Internal wires
   wire n1;
   wire [7:1] carry;

   XOR3XLM U1_7 (.Y(SUM[7]), 
	.C(carry[7]), 
	.B(B[7]), 
	.A(A[7]));
   ADDFX2M U1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.CI(n1), 
	.B(B[1]), 
	.A(A[1]));
   ADDFX2M U1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.CI(carry[5]), 
	.B(B[5]), 
	.A(A[5]));
   ADDFX2M U1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.CI(carry[4]), 
	.B(B[4]), 
	.A(A[4]));
   ADDFX2M U1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.CI(carry[3]), 
	.B(B[3]), 
	.A(A[3]));
   ADDFX2M U1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.CI(carry[2]), 
	.B(B[2]), 
	.A(A[2]));
   ADDFX2M U1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.CI(carry[6]), 
	.B(B[6]), 
	.A(A[6]));
   AND2X2M U1 (.Y(n1), 
	.B(A[0]), 
	.A(B[0]));
   CLKXOR2X2M U2 (.Y(SUM[0]), 
	.B(A[0]), 
	.A(B[0]));
endmodule

module alu_DW02_mult_0 (
	A, 
	B, 
	TC, 
	PRODUCT);
   input [7:0] A;
   input [7:0] B;
   input TC;
   output [15:0] PRODUCT;

   // Internal wires
   wire \ab[7][0] ;
   wire \ab[6][1] ;
   wire \ab[6][0] ;
   wire \ab[5][2] ;
   wire \ab[5][1] ;
   wire \ab[5][0] ;
   wire \ab[4][3] ;
   wire \ab[4][2] ;
   wire \ab[4][1] ;
   wire \ab[4][0] ;
   wire \ab[3][4] ;
   wire \ab[3][3] ;
   wire \ab[3][2] ;
   wire \ab[3][1] ;
   wire \ab[3][0] ;
   wire \ab[2][5] ;
   wire \ab[2][4] ;
   wire \ab[2][3] ;
   wire \ab[2][2] ;
   wire \ab[2][1] ;
   wire \ab[2][0] ;
   wire \ab[1][6] ;
   wire \ab[1][5] ;
   wire \ab[1][4] ;
   wire \ab[1][3] ;
   wire \ab[1][2] ;
   wire \ab[1][1] ;
   wire \ab[1][0] ;
   wire \ab[0][7] ;
   wire \ab[0][6] ;
   wire \ab[0][5] ;
   wire \ab[0][4] ;
   wire \ab[0][3] ;
   wire \ab[0][2] ;
   wire \ab[0][1] ;
   wire \CARRYB[6][0] ;
   wire \CARRYB[5][1] ;
   wire \CARRYB[5][0] ;
   wire \CARRYB[4][2] ;
   wire \CARRYB[4][1] ;
   wire \CARRYB[4][0] ;
   wire \CARRYB[3][3] ;
   wire \CARRYB[3][2] ;
   wire \CARRYB[3][1] ;
   wire \CARRYB[3][0] ;
   wire \CARRYB[2][4] ;
   wire \CARRYB[2][3] ;
   wire \CARRYB[2][2] ;
   wire \CARRYB[2][1] ;
   wire \CARRYB[2][0] ;
   wire \SUMB[6][1] ;
   wire \SUMB[5][2] ;
   wire \SUMB[5][1] ;
   wire \SUMB[4][3] ;
   wire \SUMB[4][2] ;
   wire \SUMB[4][1] ;
   wire \SUMB[3][4] ;
   wire \SUMB[3][3] ;
   wire \SUMB[3][2] ;
   wire \SUMB[3][1] ;
   wire \SUMB[2][5] ;
   wire \SUMB[2][4] ;
   wire \SUMB[2][3] ;
   wire \SUMB[2][2] ;
   wire \SUMB[2][1] ;
   wire \SUMB[1][6] ;
   wire \SUMB[1][5] ;
   wire \SUMB[1][4] ;
   wire \SUMB[1][3] ;
   wire \SUMB[1][2] ;
   wire \SUMB[1][1] ;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;

   XOR3XLM S2_5_2 (.Y(\SUMB[5][2] ), 
	.C(\SUMB[4][3] ), 
	.B(\CARRYB[4][2] ), 
	.A(\ab[5][2] ));
   XOR3XLM S2_6_1 (.Y(\SUMB[6][1] ), 
	.C(\SUMB[5][2] ), 
	.B(\CARRYB[5][1] ), 
	.A(\ab[6][1] ));
   XOR3XLM S4_0 (.Y(PRODUCT[7]), 
	.C(\SUMB[6][1] ), 
	.B(\CARRYB[6][0] ), 
	.A(\ab[7][0] ));
   XOR3XLM S2_2_5 (.Y(\SUMB[2][5] ), 
	.C(\SUMB[1][6] ), 
	.B(n8), 
	.A(\ab[2][5] ));
   XOR3XLM S2_3_4 (.Y(\SUMB[3][4] ), 
	.C(\SUMB[2][5] ), 
	.B(\CARRYB[2][4] ), 
	.A(\ab[3][4] ));
   XOR3XLM S2_4_3 (.Y(\SUMB[4][3] ), 
	.C(\SUMB[3][4] ), 
	.B(\CARRYB[3][3] ), 
	.A(\ab[4][3] ));
   ADDFX2M S1_6_0 (.S(PRODUCT[6]), 
	.CO(\CARRYB[6][0] ), 
	.CI(\SUMB[5][1] ), 
	.B(\CARRYB[5][0] ), 
	.A(\ab[6][0] ));
   ADDFX2M S1_5_0 (.S(PRODUCT[5]), 
	.CO(\CARRYB[5][0] ), 
	.CI(\SUMB[4][1] ), 
	.B(\CARRYB[4][0] ), 
	.A(\ab[5][0] ));
   ADDFX2M S2_5_1 (.S(\SUMB[5][1] ), 
	.CO(\CARRYB[5][1] ), 
	.CI(\SUMB[4][2] ), 
	.B(\CARRYB[4][1] ), 
	.A(\ab[5][1] ));
   ADDFX2M S1_4_0 (.S(PRODUCT[4]), 
	.CO(\CARRYB[4][0] ), 
	.CI(\SUMB[3][1] ), 
	.B(\CARRYB[3][0] ), 
	.A(\ab[4][0] ));
   ADDFX2M S2_4_1 (.S(\SUMB[4][1] ), 
	.CO(\CARRYB[4][1] ), 
	.CI(\SUMB[3][2] ), 
	.B(\CARRYB[3][1] ), 
	.A(\ab[4][1] ));
   ADDFX2M S2_4_2 (.S(\SUMB[4][2] ), 
	.CO(\CARRYB[4][2] ), 
	.CI(\SUMB[3][3] ), 
	.B(\CARRYB[3][2] ), 
	.A(\ab[4][2] ));
   ADDFX2M S1_3_0 (.S(PRODUCT[3]), 
	.CO(\CARRYB[3][0] ), 
	.CI(\SUMB[2][1] ), 
	.B(\CARRYB[2][0] ), 
	.A(\ab[3][0] ));
   ADDFX2M S2_3_1 (.S(\SUMB[3][1] ), 
	.CO(\CARRYB[3][1] ), 
	.CI(\SUMB[2][2] ), 
	.B(\CARRYB[2][1] ), 
	.A(\ab[3][1] ));
   ADDFX2M S2_3_2 (.S(\SUMB[3][2] ), 
	.CO(\CARRYB[3][2] ), 
	.CI(\SUMB[2][3] ), 
	.B(\CARRYB[2][2] ), 
	.A(\ab[3][2] ));
   ADDFX2M S2_3_3 (.S(\SUMB[3][3] ), 
	.CO(\CARRYB[3][3] ), 
	.CI(\SUMB[2][4] ), 
	.B(\CARRYB[2][3] ), 
	.A(\ab[3][3] ));
   ADDFX2M S1_2_0 (.S(PRODUCT[2]), 
	.CO(\CARRYB[2][0] ), 
	.CI(\SUMB[1][1] ), 
	.B(n7), 
	.A(\ab[2][0] ));
   ADDFX2M S2_2_1 (.S(\SUMB[2][1] ), 
	.CO(\CARRYB[2][1] ), 
	.CI(\SUMB[1][2] ), 
	.B(n6), 
	.A(\ab[2][1] ));
   ADDFX2M S2_2_2 (.S(\SUMB[2][2] ), 
	.CO(\CARRYB[2][2] ), 
	.CI(\SUMB[1][3] ), 
	.B(n5), 
	.A(\ab[2][2] ));
   ADDFX2M S2_2_3 (.S(\SUMB[2][3] ), 
	.CO(\CARRYB[2][3] ), 
	.CI(\SUMB[1][4] ), 
	.B(n4), 
	.A(\ab[2][3] ));
   ADDFX2M S2_2_4 (.S(\SUMB[2][4] ), 
	.CO(\CARRYB[2][4] ), 
	.CI(\SUMB[1][5] ), 
	.B(n3), 
	.A(\ab[2][4] ));
   AND2X2M U2 (.Y(n3), 
	.B(\ab[1][4] ), 
	.A(\ab[0][5] ));
   AND2X2M U3 (.Y(n4), 
	.B(\ab[1][3] ), 
	.A(\ab[0][4] ));
   AND2X2M U4 (.Y(n5), 
	.B(\ab[1][2] ), 
	.A(\ab[0][3] ));
   AND2X2M U5 (.Y(n6), 
	.B(\ab[1][1] ), 
	.A(\ab[0][2] ));
   AND2X2M U6 (.Y(n7), 
	.B(\ab[1][0] ), 
	.A(\ab[0][1] ));
   INVX2M U7 (.Y(n14), 
	.A(\ab[0][6] ));
   INVX2M U8 (.Y(n13), 
	.A(\ab[0][5] ));
   INVX2M U9 (.Y(n12), 
	.A(\ab[0][4] ));
   INVX2M U10 (.Y(n11), 
	.A(\ab[0][3] ));
   INVX2M U11 (.Y(n10), 
	.A(\ab[0][2] ));
   AND2X2M U12 (.Y(n8), 
	.B(\ab[1][5] ), 
	.A(\ab[0][6] ));
   XNOR2X2M U13 (.Y(PRODUCT[1]), 
	.B(n9), 
	.A(\ab[1][0] ));
   INVX2M U14 (.Y(n9), 
	.A(\ab[0][1] ));
   CLKXOR2X2M U15 (.Y(\SUMB[1][6] ), 
	.B(\ab[0][7] ), 
	.A(\ab[1][6] ));
   XNOR2X2M U16 (.Y(\SUMB[1][5] ), 
	.B(n14), 
	.A(\ab[1][5] ));
   XNOR2X2M U17 (.Y(\SUMB[1][4] ), 
	.B(n13), 
	.A(\ab[1][4] ));
   XNOR2X2M U18 (.Y(\SUMB[1][3] ), 
	.B(n12), 
	.A(\ab[1][3] ));
   XNOR2X2M U19 (.Y(\SUMB[1][2] ), 
	.B(n11), 
	.A(\ab[1][2] ));
   XNOR2X2M U20 (.Y(\SUMB[1][1] ), 
	.B(n10), 
	.A(\ab[1][1] ));
   INVX2M U21 (.Y(n30), 
	.A(A[0]));
   INVX2M U22 (.Y(n29), 
	.A(A[1]));
   INVX2M U23 (.Y(n28), 
	.A(A[2]));
   INVX2M U24 (.Y(n27), 
	.A(A[3]));
   INVX2M U25 (.Y(n26), 
	.A(A[4]));
   INVX2M U26 (.Y(n24), 
	.A(A[6]));
   INVX2M U27 (.Y(n25), 
	.A(A[5]));
   INVX2M U28 (.Y(n23), 
	.A(A[7]));
   INVX2M U29 (.Y(n16), 
	.A(B[6]));
   INVX2M U30 (.Y(n22), 
	.A(B[0]));
   INVX2M U31 (.Y(n20), 
	.A(B[2]));
   INVX2M U32 (.Y(n19), 
	.A(B[3]));
   INVX2M U33 (.Y(n21), 
	.A(B[1]));
   INVX2M U34 (.Y(n18), 
	.A(B[4]));
   INVX2M U35 (.Y(n17), 
	.A(B[5]));
   INVX2M U36 (.Y(n15), 
	.A(B[7]));
   NOR2X1M U37 (.Y(\ab[7][0] ), 
	.B(n22), 
	.A(n23));
   NOR2X1M U38 (.Y(\ab[6][1] ), 
	.B(n24), 
	.A(n21));
   NOR2X1M U39 (.Y(\ab[6][0] ), 
	.B(n24), 
	.A(n22));
   NOR2X1M U40 (.Y(\ab[5][2] ), 
	.B(n25), 
	.A(n20));
   NOR2X1M U41 (.Y(\ab[5][1] ), 
	.B(n25), 
	.A(n21));
   NOR2X1M U42 (.Y(\ab[5][0] ), 
	.B(n25), 
	.A(n22));
   NOR2X1M U43 (.Y(\ab[4][3] ), 
	.B(n26), 
	.A(n19));
   NOR2X1M U44 (.Y(\ab[4][2] ), 
	.B(n26), 
	.A(n20));
   NOR2X1M U45 (.Y(\ab[4][1] ), 
	.B(n26), 
	.A(n21));
   NOR2X1M U46 (.Y(\ab[4][0] ), 
	.B(n26), 
	.A(n22));
   NOR2X1M U47 (.Y(\ab[3][4] ), 
	.B(n27), 
	.A(n18));
   NOR2X1M U48 (.Y(\ab[3][3] ), 
	.B(n27), 
	.A(n19));
   NOR2X1M U49 (.Y(\ab[3][2] ), 
	.B(n27), 
	.A(n20));
   NOR2X1M U50 (.Y(\ab[3][1] ), 
	.B(n27), 
	.A(n21));
   NOR2X1M U51 (.Y(\ab[3][0] ), 
	.B(n27), 
	.A(n22));
   NOR2X1M U52 (.Y(\ab[2][5] ), 
	.B(n28), 
	.A(n17));
   NOR2X1M U53 (.Y(\ab[2][4] ), 
	.B(n28), 
	.A(n18));
   NOR2X1M U54 (.Y(\ab[2][3] ), 
	.B(n28), 
	.A(n19));
   NOR2X1M U55 (.Y(\ab[2][2] ), 
	.B(n28), 
	.A(n20));
   NOR2X1M U56 (.Y(\ab[2][1] ), 
	.B(n28), 
	.A(n21));
   NOR2X1M U57 (.Y(\ab[2][0] ), 
	.B(n28), 
	.A(n22));
   NOR2X1M U58 (.Y(\ab[1][6] ), 
	.B(n29), 
	.A(n16));
   NOR2X1M U59 (.Y(\ab[1][5] ), 
	.B(n29), 
	.A(n17));
   NOR2X1M U60 (.Y(\ab[1][4] ), 
	.B(n29), 
	.A(n18));
   NOR2X1M U61 (.Y(\ab[1][3] ), 
	.B(n29), 
	.A(n19));
   NOR2X1M U62 (.Y(\ab[1][2] ), 
	.B(n29), 
	.A(n20));
   NOR2X1M U63 (.Y(\ab[1][1] ), 
	.B(n29), 
	.A(n21));
   NOR2X1M U64 (.Y(\ab[1][0] ), 
	.B(n29), 
	.A(n22));
   NOR2X1M U65 (.Y(\ab[0][7] ), 
	.B(n30), 
	.A(n15));
   NOR2X1M U66 (.Y(\ab[0][6] ), 
	.B(n30), 
	.A(n16));
   NOR2X1M U67 (.Y(\ab[0][5] ), 
	.B(n30), 
	.A(n17));
   NOR2X1M U68 (.Y(\ab[0][4] ), 
	.B(n30), 
	.A(n18));
   NOR2X1M U69 (.Y(\ab[0][3] ), 
	.B(n30), 
	.A(n19));
   NOR2X1M U70 (.Y(\ab[0][2] ), 
	.B(n30), 
	.A(n20));
   NOR2X1M U71 (.Y(\ab[0][1] ), 
	.B(n30), 
	.A(n21));
   NOR2X1M U72 (.Y(PRODUCT[0]), 
	.B(n30), 
	.A(n22));
endmodule

module alu_test_1 (
	a, 
	b, 
	alu_fun, 
	reset, 
	clk, 
	en, 
	alu_out, 
	out_valid, 
	test_si, 
	test_se, 
	FE_OFN1_reset_1);
   input [7:0] a;
   input [7:0] b;
   input [3:0] alu_fun;
   input reset;
   input clk;
   input en;
   output [7:0] alu_out;
   output out_valid;
   input test_si;
   input test_se;
   input FE_OFN1_reset_1;

   // Internal wires
   wire LTIE_LTIELO_NET;
   wire N88;
   wire N89;
   wire N90;
   wire N91;
   wire N92;
   wire N93;
   wire N94;
   wire N95;
   wire N96;
   wire N97;
   wire N98;
   wire N99;
   wire N100;
   wire N101;
   wire N102;
   wire N103;
   wire N104;
   wire N105;
   wire N106;
   wire N107;
   wire N108;
   wire N109;
   wire N110;
   wire N111;
   wire N112;
   wire N113;
   wire N114;
   wire N115;
   wire N116;
   wire N117;
   wire N118;
   wire N119;
   wire N152;
   wire N153;
   wire N154;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n125;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire SYNOPSYS_UNCONNECTED__0;
   wire SYNOPSYS_UNCONNECTED__1;
   wire SYNOPSYS_UNCONNECTED__2;
   wire SYNOPSYS_UNCONNECTED__3;
   wire SYNOPSYS_UNCONNECTED__4;
   wire SYNOPSYS_UNCONNECTED__5;
   wire SYNOPSYS_UNCONNECTED__6;
   wire SYNOPSYS_UNCONNECTED__7;

   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   SDFFRQX2M out_valid_reg (.SI(alu_out[7]), 
	.SE(test_se), 
	.RN(reset), 
	.Q(out_valid), 
	.D(LTIE_LTIELO_NET), 
	.CK(clk));
   SDFFRQX2M \alu_out_reg[6]  (.SI(alu_out[5]), 
	.SE(test_se), 
	.RN(reset), 
	.Q(alu_out[6]), 
	.D(n124), 
	.CK(clk));
   SDFFRQX2M \alu_out_reg[5]  (.SI(alu_out[4]), 
	.SE(test_se), 
	.RN(reset), 
	.Q(alu_out[5]), 
	.D(n123), 
	.CK(clk));
   SDFFRQX2M \alu_out_reg[4]  (.SI(alu_out[3]), 
	.SE(test_se), 
	.RN(reset), 
	.Q(alu_out[4]), 
	.D(n122), 
	.CK(clk));
   SDFFRQX2M \alu_out_reg[3]  (.SI(alu_out[2]), 
	.SE(test_se), 
	.RN(FE_OFN1_reset_1), 
	.Q(alu_out[3]), 
	.D(n121), 
	.CK(clk));
   SDFFRQX2M \alu_out_reg[2]  (.SI(alu_out[1]), 
	.SE(test_se), 
	.RN(reset), 
	.Q(alu_out[2]), 
	.D(n120), 
	.CK(clk));
   SDFFRQX2M \alu_out_reg[1]  (.SI(alu_out[0]), 
	.SE(test_se), 
	.RN(reset), 
	.Q(alu_out[1]), 
	.D(n119), 
	.CK(clk));
   SDFFRQX2M \alu_out_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(FE_OFN1_reset_1), 
	.Q(alu_out[0]), 
	.D(n118), 
	.CK(clk));
   SDFFRQX1M \alu_out_reg[7]  (.SI(alu_out[6]), 
	.SE(test_se), 
	.RN(reset), 
	.Q(alu_out[7]), 
	.D(n125), 
	.CK(clk));
   AOI222X1M U16 (.Y(n73), 
	.C1(n57), 
	.C0(N114), 
	.B1(n50), 
	.B0(a[2]), 
	.A1(n56), 
	.A0(N106));
   AOI222X1M U17 (.Y(n80), 
	.C1(n57), 
	.C0(N115), 
	.B1(n50), 
	.B0(a[3]), 
	.A1(n56), 
	.A0(N107));
   AOI222X1M U18 (.Y(n87), 
	.C1(n57), 
	.C0(N116), 
	.B1(n50), 
	.B0(a[4]), 
	.A1(n56), 
	.A0(N108));
   AOI222X1M U19 (.Y(n94), 
	.C1(n57), 
	.C0(N117), 
	.B1(n50), 
	.B0(a[5]), 
	.A1(n56), 
	.A0(N109));
   AOI222X1M U20 (.Y(n101), 
	.C1(n57), 
	.C0(N118), 
	.B1(n50), 
	.B0(a[6]), 
	.A1(n56), 
	.A0(N110));
   AOI222X1M U21 (.Y(n61), 
	.C1(n58), 
	.C0(N97), 
	.B1(n56), 
	.B0(N105), 
	.A1(n59), 
	.A0(N89));
   AOI222X1M U22 (.Y(n41), 
	.C1(n57), 
	.C0(N112), 
	.B1(a[0]), 
	.B0(n50), 
	.A1(n56), 
	.A0(N104));
   OAI222X1M U23 (.Y(n103), 
	.C1(n151), 
	.C0(n67), 
	.B1(n105), 
	.B0(b[6]), 
	.A1(n145), 
	.A0(n104));
   AOI221XLM U24 (.Y(n105), 
	.C0(n23), 
	.B1(n150), 
	.B0(n55), 
	.A1(n24), 
	.A0(a[6]));
   AOI221XLM U25 (.Y(n104), 
	.C0(n50), 
	.B1(n49), 
	.B0(a[6]), 
	.A1(n150), 
	.A0(n24));
   AOI221XLM U26 (.Y(n112), 
	.C0(n50), 
	.B1(n49), 
	.B0(a[7]), 
	.A1(n139), 
	.A0(n24));
   INVX2M U27 (.Y(n143), 
	.A(n36));
   AND3X2M U28 (.Y(n59), 
	.C(n159), 
	.B(n158), 
	.A(n117));
   NAND2X2M U29 (.Y(n55), 
	.B(n115), 
	.A(n114));
   INVX2M U30 (.Y(N153), 
	.A(n138));
   INVX2M U31 (.Y(n145), 
	.A(b[6]));
   AND2X2M U32 (.Y(n58), 
	.B(n106), 
	.A(n117));
   BUFX2M U33 (.Y(n23), 
	.A(n43));
   NOR2X2M U34 (.Y(n43), 
	.B(n159), 
	.A(n116));
   INVX2M U35 (.Y(n157), 
	.A(n47));
   INVX2M U36 (.Y(n155), 
	.A(a[1]));
   INVX2M U37 (.Y(n146), 
	.A(n54));
   INVX2M U38 (.Y(n156), 
	.A(a[0]));
   INVX2M U39 (.Y(n150), 
	.A(a[6]));
   INVX2M U40 (.Y(n153), 
	.A(a[3]));
   INVX2M U41 (.Y(n154), 
	.A(a[2]));
   INVX2M U42 (.Y(n152), 
	.A(a[4]));
   INVX2M U43 (.Y(n151), 
	.A(a[5]));
   INVX2M U44 (.Y(n139), 
	.A(a[7]));
   AO21XLM U45 (.Y(n118), 
	.B0(n39), 
	.A1(n22), 
	.A0(alu_out[0]));
   AOI31X2M U46 (.Y(n39), 
	.B0(n22), 
	.A2(n42), 
	.A1(n41), 
	.A0(n40));
   AOI22X1M U47 (.Y(n40), 
	.B1(n59), 
	.B0(N88), 
	.A1(n58), 
	.A0(N96));
   AOI211X2M U48 (.Y(n42), 
	.C0(n45), 
	.B0(n44), 
	.A1(n156), 
	.A0(n23));
   AO21XLM U49 (.Y(n119), 
	.B0(n60), 
	.A1(n22), 
	.A0(alu_out[1]));
   AOI31X2M U50 (.Y(n60), 
	.B0(n22), 
	.A2(n63), 
	.A1(n62), 
	.A0(n61));
   AOI211X2M U51 (.Y(n63), 
	.C0(n65), 
	.B0(n64), 
	.A1(n157), 
	.A0(a[2]));
   AOI222X1M U52 (.Y(n62), 
	.C1(a[1]), 
	.C0(n50), 
	.B1(n155), 
	.B0(n23), 
	.A1(n57), 
	.A0(N113));
   AO21XLM U53 (.Y(n120), 
	.B0(n71), 
	.A1(n22), 
	.A0(alu_out[2]));
   AOI31X2M U54 (.Y(n71), 
	.B0(n22), 
	.A2(n74), 
	.A1(n73), 
	.A0(n72));
   AOI22X1M U55 (.Y(n72), 
	.B1(n59), 
	.B0(N90), 
	.A1(n58), 
	.A0(N98));
   AOI221XLM U56 (.Y(n74), 
	.C0(n75), 
	.B1(n154), 
	.B0(n23), 
	.A1(n157), 
	.A0(a[3]));
   AO21XLM U57 (.Y(n121), 
	.B0(n78), 
	.A1(n22), 
	.A0(alu_out[3]));
   AOI31X2M U58 (.Y(n78), 
	.B0(n22), 
	.A2(n81), 
	.A1(n80), 
	.A0(n79));
   AOI22X1M U59 (.Y(n79), 
	.B1(n59), 
	.B0(N91), 
	.A1(n58), 
	.A0(N99));
   AOI221XLM U60 (.Y(n81), 
	.C0(n82), 
	.B1(n153), 
	.B0(n23), 
	.A1(n157), 
	.A0(a[4]));
   AO21XLM U61 (.Y(n122), 
	.B0(n85), 
	.A1(n22), 
	.A0(alu_out[4]));
   AOI31X2M U62 (.Y(n85), 
	.B0(n22), 
	.A2(n88), 
	.A1(n87), 
	.A0(n86));
   AOI22X1M U63 (.Y(n86), 
	.B1(n59), 
	.B0(N92), 
	.A1(n58), 
	.A0(N100));
   AOI221XLM U64 (.Y(n88), 
	.C0(n89), 
	.B1(n152), 
	.B0(n23), 
	.A1(n157), 
	.A0(a[5]));
   AO21XLM U65 (.Y(n123), 
	.B0(n92), 
	.A1(n22), 
	.A0(alu_out[5]));
   AOI31X2M U66 (.Y(n92), 
	.B0(n22), 
	.A2(n95), 
	.A1(n94), 
	.A0(n93));
   AOI22X1M U67 (.Y(n93), 
	.B1(n59), 
	.B0(N93), 
	.A1(n58), 
	.A0(N101));
   AOI221XLM U68 (.Y(n95), 
	.C0(n96), 
	.B1(n151), 
	.B0(n23), 
	.A1(n157), 
	.A0(a[6]));
   AO21XLM U69 (.Y(n124), 
	.B0(n99), 
	.A1(n22), 
	.A0(alu_out[6]));
   AOI31X2M U70 (.Y(n99), 
	.B0(n22), 
	.A2(n102), 
	.A1(n101), 
	.A0(n100));
   AOI22X1M U71 (.Y(n100), 
	.B1(n59), 
	.B0(N94), 
	.A1(n58), 
	.A0(N102));
   AOI221XLM U72 (.Y(n102), 
	.C0(n103), 
	.B1(n150), 
	.B0(n23), 
	.A1(n157), 
	.A0(a[7]));
   AO21XLM U73 (.Y(n125), 
	.B0(n107), 
	.A1(n22), 
	.A0(alu_out[7]));
   AOI31X2M U74 (.Y(n107), 
	.B0(n22), 
	.A2(n110), 
	.A1(n109), 
	.A0(n108));
   AOI22X1M U75 (.Y(n108), 
	.B1(n59), 
	.B0(N95), 
	.A1(n58), 
	.A0(N103));
   AOI22X1M U76 (.Y(n109), 
	.B1(n56), 
	.B0(N111), 
	.A1(n57), 
	.A0(N119));
   OAI21X2M U77 (.Y(n49), 
	.B0(n115), 
	.A1(n116), 
	.A0(LTIE_LTIELO_NET));
   OAI222X1M U78 (.Y(n75), 
	.C1(n67), 
	.C0(n155), 
	.B1(n77), 
	.B0(b[2]), 
	.A1(n142), 
	.A0(n76));
   AOI221XLM U79 (.Y(n77), 
	.C0(n23), 
	.B1(n154), 
	.B0(n55), 
	.A1(n24), 
	.A0(a[2]));
   AOI221XLM U80 (.Y(n76), 
	.C0(n50), 
	.B1(n49), 
	.B0(a[2]), 
	.A1(n154), 
	.A0(n24));
   OAI222X1M U81 (.Y(n82), 
	.C1(n154), 
	.C0(n67), 
	.B1(n84), 
	.B0(b[3]), 
	.A1(n144), 
	.A0(n83));
   AOI221XLM U82 (.Y(n84), 
	.C0(n23), 
	.B1(n153), 
	.B0(n55), 
	.A1(n24), 
	.A0(a[3]));
   AOI221XLM U83 (.Y(n83), 
	.C0(n50), 
	.B1(n49), 
	.B0(a[3]), 
	.A1(n153), 
	.A0(n24));
   OAI222X1M U84 (.Y(n89), 
	.C1(n153), 
	.C0(n67), 
	.B1(n91), 
	.B0(b[4]), 
	.A1(n149), 
	.A0(n90));
   INVX2M U85 (.Y(n149), 
	.A(b[4]));
   AOI221XLM U86 (.Y(n91), 
	.C0(n23), 
	.B1(n152), 
	.B0(n55), 
	.A1(n24), 
	.A0(a[4]));
   AOI221XLM U87 (.Y(n90), 
	.C0(n50), 
	.B1(n49), 
	.B0(a[4]), 
	.A1(n152), 
	.A0(n24));
   OAI222X1M U88 (.Y(n96), 
	.C1(n152), 
	.C0(n67), 
	.B1(n98), 
	.B0(b[5]), 
	.A1(n148), 
	.A0(n97));
   INVX2M U89 (.Y(n148), 
	.A(b[5]));
   AOI221XLM U90 (.Y(n98), 
	.C0(n23), 
	.B1(n151), 
	.B0(n55), 
	.A1(n24), 
	.A0(a[5]));
   AOI221XLM U91 (.Y(n97), 
	.C0(n50), 
	.B1(n49), 
	.B0(a[5]), 
	.A1(n151), 
	.A0(n24));
   INVX2M U92 (.Y(n141), 
	.A(n25));
   AOI221XLM U93 (.Y(n110), 
	.C0(n111), 
	.B1(n50), 
	.B0(a[7]), 
	.A1(n139), 
	.A0(n23));
   OAI222X1M U94 (.Y(n111), 
	.C1(n150), 
	.C0(n67), 
	.B1(n113), 
	.B0(b[7]), 
	.A1(n147), 
	.A0(n112));
   INVX2M U95 (.Y(n147), 
	.A(b[7]));
   AOI221XLM U96 (.Y(n113), 
	.C0(n23), 
	.B1(n139), 
	.B0(n55), 
	.A1(n24), 
	.A0(a[7]));
   NAND4X2M U97 (.Y(n54), 
	.D(LTIE_LTIELO_NET), 
	.C(n70), 
	.B(LTIE_LTIELO_NET), 
	.A(N154));
   NOR2X2M U98 (.Y(n70), 
	.B(LTIE_LTIELO_NET), 
	.A(LTIE_LTIELO_NET));
   NAND3BX2M U99 (.Y(n115), 
	.C(n106), 
	.B(LTIE_LTIELO_NET), 
	.AN(LTIE_LTIELO_NET));
   OAI2B2X1M U100 (.Y(n45), 
	.B1(n155), 
	.B0(n47), 
	.A1N(b[0]), 
	.A0(n46));
   AOI221XLM U101 (.Y(n46), 
	.C0(n50), 
	.B1(n49), 
	.B0(a[0]), 
	.A1(n156), 
	.A0(n24));
   OAI2B2X1M U102 (.Y(n65), 
	.B1(n67), 
	.B0(n156), 
	.A1N(b[1]), 
	.A0(n66));
   AOI221XLM U103 (.Y(n66), 
	.C0(n50), 
	.B1(n49), 
	.B0(a[1]), 
	.A1(n155), 
	.A0(n24));
   AND3X2M U104 (.Y(n50), 
	.C(n160), 
	.B(LTIE_LTIELO_NET), 
	.A(n106));
   AND3X2M U105 (.Y(n56), 
	.C(n158), 
	.B(LTIE_LTIELO_NET), 
	.A(n117));
   OAI211X2M U106 (.Y(n64), 
	.C0(n54), 
	.B0(n69), 
	.A1(n68), 
	.A0(b[1]));
   NAND4X2M U107 (.Y(n69), 
	.D(LTIE_LTIELO_NET), 
	.C(LTIE_LTIELO_NET), 
	.B(LTIE_LTIELO_NET), 
	.A(N153));
   AOI221XLM U108 (.Y(n68), 
	.C0(n23), 
	.B1(n155), 
	.B0(n55), 
	.A1(n24), 
	.A0(a[1]));
   AND3X2M U109 (.Y(n57), 
	.C(LTIE_LTIELO_NET), 
	.B(LTIE_LTIELO_NET), 
	.A(n117));
   OAI21X2M U110 (.Y(n44), 
	.B0(n52), 
	.A1(n51), 
	.A0(b[0]));
   AOI31X2M U111 (.Y(n52), 
	.B0(n146), 
	.A2(n53), 
	.A1(LTIE_LTIELO_NET), 
	.A0(N152));
   AOI221XLM U112 (.Y(n51), 
	.C0(n23), 
	.B1(n156), 
	.B0(n55), 
	.A1(n24), 
	.A0(a[0]));
   NOR3X2M U113 (.Y(n53), 
	.C(LTIE_LTIELO_NET), 
	.B(LTIE_LTIELO_NET), 
	.A(n159));
   NAND3X2M U114 (.Y(n47), 
	.C(n106), 
	.B(LTIE_LTIELO_NET), 
	.A(LTIE_LTIELO_NET));
   BUFX2M U123 (.Y(n22), 
	.A(n38));
   OAI21X2M U124 (.Y(n38), 
	.B0(LTIE_LTIELO_NET), 
	.A1(n160), 
	.A0(n114));
   BUFX2M U125 (.Y(n24), 
	.A(n48));
   NOR4X1M U126 (.Y(n48), 
	.D(LTIE_LTIELO_NET), 
	.C(LTIE_LTIELO_NET), 
	.B(LTIE_LTIELO_NET), 
	.A(n160));
   INVX2M U127 (.Y(n140), 
	.A(b[0]));
   INVX2M U128 (.Y(n142), 
	.A(b[2]));
   INVX2M U129 (.Y(n144), 
	.A(b[3]));
   INVX2M U130 (.Y(n160), 
	.A(LTIE_LTIELO_NET));
   NAND3X2M U131 (.Y(n67), 
	.C(LTIE_LTIELO_NET), 
	.B(LTIE_LTIELO_NET), 
	.A(LTIE_LTIELO_NET));
   INVX2M U132 (.Y(n158), 
	.A(LTIE_LTIELO_NET));
   INVX2M U133 (.Y(n159), 
	.A(LTIE_LTIELO_NET));
   NOR2X2M U134 (.Y(n106), 
	.B(LTIE_LTIELO_NET), 
	.A(n158));
   NAND3X2M U135 (.Y(n114), 
	.C(LTIE_LTIELO_NET), 
	.B(LTIE_LTIELO_NET), 
	.A(LTIE_LTIELO_NET));
   NAND3X2M U136 (.Y(n116), 
	.C(LTIE_LTIELO_NET), 
	.B(n160), 
	.A(n158));
   NOR2X2M U137 (.Y(n117), 
	.B(LTIE_LTIELO_NET), 
	.A(LTIE_LTIELO_NET));
   NOR2X1M U138 (.Y(n135), 
	.B(b[7]), 
	.A(n139));
   NAND2BX1M U139 (.Y(n128), 
	.B(a[4]), 
	.AN(b[4]));
   NAND2BX1M U140 (.Y(n29), 
	.B(b[4]), 
	.AN(a[4]));
   CLKNAND2X2M U141 (.Y(n130), 
	.B(n29), 
	.A(n128));
   NOR2X1M U142 (.Y(n37), 
	.B(a[3]), 
	.A(n144));
   NOR2X1M U143 (.Y(n28), 
	.B(a[2]), 
	.A(n142));
   NOR2X1M U144 (.Y(n25), 
	.B(a[0]), 
	.A(n140));
   CLKNAND2X2M U145 (.Y(n127), 
	.B(n142), 
	.A(a[2]));
   NAND2BX1M U146 (.Y(n34), 
	.B(n127), 
	.AN(n28));
   AOI21X1M U147 (.Y(n26), 
	.B0(b[1]), 
	.A1(n155), 
	.A0(n25));
   AOI211X1M U148 (.Y(n27), 
	.C0(n26), 
	.B0(n34), 
	.A1(n141), 
	.A0(a[1]));
   CLKNAND2X2M U149 (.Y(n126), 
	.B(n144), 
	.A(a[3]));
   OAI31X1M U150 (.Y(n30), 
	.B0(n126), 
	.A2(n27), 
	.A1(n28), 
	.A0(n37));
   NAND2BX1M U151 (.Y(n133), 
	.B(b[5]), 
	.AN(a[5]));
   OAI211X1M U152 (.Y(n31), 
	.C0(n133), 
	.B0(n29), 
	.A1(n30), 
	.A0(n130));
   NAND2BX1M U153 (.Y(n129), 
	.B(a[5]), 
	.AN(b[5]));
   XNOR2X1M U154 (.Y(n132), 
	.B(b[6]), 
	.A(a[6]));
   AOI32X1M U155 (.Y(n32), 
	.B1(n150), 
	.B0(b[6]), 
	.A2(n132), 
	.A1(n129), 
	.A0(n31));
   CLKNAND2X2M U156 (.Y(n136), 
	.B(n139), 
	.A(b[7]));
   OAI21X1M U157 (.Y(N154), 
	.B0(n136), 
	.A1(n32), 
	.A0(n135));
   CLKNAND2X2M U158 (.Y(n35), 
	.B(n140), 
	.A(a[0]));
   OA21X1M U159 (.Y(n33), 
	.B0(b[1]), 
	.A1(n155), 
	.A0(n35));
   AOI211X1M U160 (.Y(n36), 
	.C0(n33), 
	.B0(n34), 
	.A1(n155), 
	.A0(n35));
   AOI31X1M U161 (.Y(n131), 
	.B0(n37), 
	.A2(n126), 
	.A1(n127), 
	.A0(n143));
   OAI2B11X1M U162 (.Y(n134), 
	.C0(n128), 
	.B0(n129), 
	.A1N(n131), 
	.A0(n130));
   AOI32X1M U163 (.Y(n137), 
	.B1(n145), 
	.B0(a[6]), 
	.A2(n132), 
	.A1(n133), 
	.A0(n134));
   AOI2B1X1M U164 (.Y(n138), 
	.B0(n135), 
	.A1N(n137), 
	.A0(n136));
   NOR2X1M U165 (.Y(N152), 
	.B(N153), 
	.A(N154));
   alu_DW_div_uns_0 div_52 (.a({ a[7],
		a[6],
		a[5],
		a[4],
		a[3],
		a[2],
		a[1],
		a[0] }), 
	.b({ b[7],
		b[6],
		b[5],
		b[4],
		b[3],
		b[2],
		b[1],
		b[0] }), 
	.quotient({ N119,
		N118,
		N117,
		N116,
		N115,
		N114,
		N113,
		N112 }));
   alu_DW01_sub_0 sub_44 (.A({ a[7],
		a[6],
		a[5],
		a[4],
		a[3],
		a[2],
		a[1],
		a[0] }), 
	.B({ b[7],
		b[6],
		b[5],
		b[4],
		b[3],
		b[2],
		b[1],
		b[0] }), 
	.CI(1'b0), 
	.DIFF({ N103,
		N102,
		N101,
		N100,
		N99,
		N98,
		N97,
		N96 }));
   alu_DW01_add_0 add_40 (.A({ a[7],
		a[6],
		a[5],
		a[4],
		a[3],
		a[2],
		a[1],
		a[0] }), 
	.B({ b[7],
		b[6],
		b[5],
		b[4],
		b[3],
		b[2],
		b[1],
		b[0] }), 
	.CI(1'b0), 
	.SUM({ N95,
		N94,
		N93,
		N92,
		N91,
		N90,
		N89,
		N88 }));
   alu_DW02_mult_0 mult_48 (.A({ a[7],
		a[6],
		a[5],
		a[4],
		a[3],
		a[2],
		a[1],
		a[0] }), 
	.B({ b[7],
		b[6],
		b[5],
		b[4],
		b[3],
		b[2],
		b[1],
		b[0] }), 
	.TC(1'b0), 
	.PRODUCT({ SYNOPSYS_UNCONNECTED__0,
		SYNOPSYS_UNCONNECTED__1,
		SYNOPSYS_UNCONNECTED__2,
		SYNOPSYS_UNCONNECTED__3,
		SYNOPSYS_UNCONNECTED__4,
		SYNOPSYS_UNCONNECTED__5,
		SYNOPSYS_UNCONNECTED__6,
		SYNOPSYS_UNCONNECTED__7,
		N111,
		N110,
		N109,
		N108,
		N107,
		N106,
		N105,
		N104 }));
endmodule

module CLK_GATE (
	CLK_EN, 
	test_mode, 
	CLK, 
	GATED_CLK);
   input CLK_EN;
   input test_mode;
   input CLK;
   output GATED_CLK;

   // Internal wires
   wire _0_net_;

   TLATNCAX4M U0_TLATNCAX4M (.ECK(GATED_CLK), 
	.E(_0_net_), 
	.CK(CLK));
   OR2X2M U1 (.Y(_0_net_), 
	.B(test_mode), 
	.A(CLK_EN));
endmodule

module reg_file_test_1 (
	WrData, 
	Address, 
	WrEn, 
	RdEn, 
	CLK, 
	RST, 
	RdData, 
	RdData_valid, 
	REG0, 
	REG1, 
	REG2, 
	REG3, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN1_reset_1, 
	FE_OFN7_SE, 
	ref_clock__L4_N2);
   input [7:0] WrData;
   input [2:0] Address;
   input WrEn;
   input RdEn;
   input CLK;
   input RST;
   output [7:0] RdData;
   output RdData_valid;
   output [7:0] REG0;
   output [7:0] REG1;
   output [7:0] REG2;
   output [7:0] REG3;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN1_reset_1;
   input FE_OFN7_SE;
   input ref_clock__L4_N2;

   // Internal wires
   wire FE_OFN6_SE;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n124;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n179;
   wire n180;
   wire n181;
   wire n182;
   wire n183;
   wire n184;
   wire n185;
   wire n186;
   wire n187;
   wire n188;
   wire n189;
   wire n190;
   wire n191;
   wire n192;
   wire n193;
   wire n194;
   wire n195;
   wire n196;
   wire n197;
   wire n198;
   wire n199;
   wire n200;
   wire n201;
   wire n202;
   wire n203;
   wire n204;
   wire n205;
   wire n206;
   wire n207;
   wire n208;
   wire n209;
   wire n210;
   wire n211;
   wire n212;
   wire n213;
   wire n214;
   wire n215;
   wire n216;
   wire n217;
   wire n218;
   wire n219;
   wire n220;
   wire n221;
   wire n222;
   wire n223;
   wire n224;
   wire n225;
   wire n226;
   wire n227;
   wire n228;
   wire n229;
   wire n230;
   wire n231;
   wire n232;
   wire n233;
   wire n234;
   wire n235;
   wire n236;
   wire n237;
   wire n238;
   wire n239;
   wire n240;
   wire n241;
   wire n242;
   wire n243;
   wire n244;
   wire n245;
   wire n246;
   wire n247;
   wire n248;
   wire n249;
   wire n250;
   wire n251;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n252;
   wire n253;
   wire n254;
   wire n255;
   wire n256;
   wire n257;
   wire n258;
   wire n259;
   wire n260;
   wire n261;
   wire n262;
   wire n263;
   wire n264;
   wire n265;
   wire n267;
   wire n268;
   wire n269;
   wire n270;
   wire n271;
   wire n272;
   wire n273;
   wire n274;
   wire n275;
   wire n276;
   wire n277;
   wire n278;
   wire n279;
   wire n280;
   wire n281;
   wire n282;
   wire n283;
   wire n284;
   wire n285;
   wire n286;
   wire n287;
   wire n288;
   wire n289;
   wire n290;
   wire n291;
   wire n292;
   wire n293;
   wire n294;
   wire n295;
   wire n296;
   wire n297;

   BUFX4M FE_OFC6_SE (.Y(FE_OFN6_SE), 
	.A(test_se));
   SDFFRQX2M \RdData_reg[7]  (.SI(RdData[6]), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN1_reset_1), 
	.Q(RdData[7]), 
	.D(n193), 
	.CK(ref_clock__L4_N2));
   SDFFRQX2M \RdData_reg[6]  (.SI(RdData[5]), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN1_reset_1), 
	.Q(RdData[6]), 
	.D(n191), 
	.CK(ref_clock__L4_N2));
   SDFFRQX2M \RdData_reg[5]  (.SI(RdData[4]), 
	.SE(FE_OFN7_SE), 
	.RN(RST), 
	.Q(RdData[5]), 
	.D(n189), 
	.CK(ref_clock__L4_N2));
   SDFFRQX2M \RdData_reg[4]  (.SI(RdData[3]), 
	.SE(FE_OFN7_SE), 
	.RN(RST), 
	.Q(RdData[4]), 
	.D(n187), 
	.CK(ref_clock__L4_N2));
   SDFFRQX2M \RdData_reg[3]  (.SI(RdData[2]), 
	.SE(FE_OFN7_SE), 
	.RN(RST), 
	.Q(RdData[3]), 
	.D(n185), 
	.CK(ref_clock__L4_N2));
   SDFFRQX2M \RdData_reg[2]  (.SI(RdData[1]), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN1_reset_1), 
	.Q(RdData[2]), 
	.D(n183), 
	.CK(CLK));
   SDFFRQX2M \RdData_reg[1]  (.SI(RdData[0]), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN1_reset_1), 
	.Q(RdData[1]), 
	.D(n181), 
	.CK(ref_clock__L4_N2));
   SDFFRQX2M \RdData_reg[0]  (.SI(test_si), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN1_reset_1), 
	.Q(RdData[0]), 
	.D(n179), 
	.CK(CLK));
   SDFFRQX2M \Regfile_reg[3][0]  (.SI(REG2[7]), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN1_reset_1), 
	.Q(REG3[0]), 
	.D(n211), 
	.CK(ref_clock__L4_N2));
   SDFFSQX2M \Regfile_reg[2][0]  (.SN(FE_OFN1_reset_1), 
	.SI(REG1[7]), 
	.SE(FE_OFN6_SE), 
	.Q(REG2[0]), 
	.D(n203), 
	.CK(ref_clock__L4_N2));
   SDFFRQX2M \Regfile_reg[1][6]  (.SI(REG1[5]), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN1_reset_1), 
	.Q(REG1[6]), 
	.D(n201), 
	.CK(ref_clock__L4_N2));
   SDFFRQX2M \Regfile_reg[0][7]  (.SI(REG0[6]), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN1_reset_1), 
	.Q(REG0[7]), 
	.D(n194), 
	.CK(ref_clock__L4_N2));
   SDFFRQX2M \Regfile_reg[0][6]  (.SI(REG0[5]), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN1_reset_1), 
	.Q(REG0[6]), 
	.D(n192), 
	.CK(ref_clock__L4_N2));
   SDFFRQX2M \Regfile_reg[0][5]  (.SI(REG0[4]), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN1_reset_1), 
	.Q(REG0[5]), 
	.D(n190), 
	.CK(ref_clock__L4_N2));
   SDFFRQX2M \Regfile_reg[0][4]  (.SI(REG0[3]), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN1_reset_1), 
	.Q(REG0[4]), 
	.D(n188), 
	.CK(ref_clock__L4_N2));
   SDFFRQX2M \Regfile_reg[0][3]  (.SI(REG0[2]), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN1_reset_1), 
	.Q(REG0[3]), 
	.D(n186), 
	.CK(ref_clock__L4_N2));
   SDFFRQX2M \Regfile_reg[0][2]  (.SI(REG0[1]), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN1_reset_1), 
	.Q(REG0[2]), 
	.D(n184), 
	.CK(ref_clock__L4_N2));
   SDFFRQX2M \Regfile_reg[0][1]  (.SI(REG0[0]), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN1_reset_1), 
	.Q(REG0[1]), 
	.D(n182), 
	.CK(ref_clock__L4_N2));
   SDFFRQX2M \Regfile_reg[0][0]  (.SI(RdData_valid), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN1_reset_1), 
	.Q(REG0[0]), 
	.D(n180), 
	.CK(CLK));
   SDFFRQX2M \Regfile_reg[2][1]  (.SI(REG2[0]), 
	.SE(test_se), 
	.RN(FE_OFN1_reset_1), 
	.Q(REG2[1]), 
	.D(n204), 
	.CK(CLK));
   SDFFRX1M \Regfile_reg[7][7]  (.SI(n267), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN1_reset_1), 
	.QN(n74), 
	.Q(test_so), 
	.D(n250), 
	.CK(ref_clock__L4_N2));
   SDFFRX1M \Regfile_reg[7][6]  (.SI(n268), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN1_reset_1), 
	.QN(n75), 
	.Q(n267), 
	.D(n249), 
	.CK(ref_clock__L4_N2));
   SDFFRX1M \Regfile_reg[7][5]  (.SI(n269), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN1_reset_1), 
	.QN(n76), 
	.Q(n268), 
	.D(n248), 
	.CK(ref_clock__L4_N2));
   SDFFRX1M \Regfile_reg[7][4]  (.SI(n270), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN1_reset_1), 
	.QN(n77), 
	.Q(n269), 
	.D(n247), 
	.CK(ref_clock__L4_N2));
   SDFFRX1M \Regfile_reg[7][3]  (.SI(n271), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN1_reset_1), 
	.QN(n78), 
	.Q(n270), 
	.D(n246), 
	.CK(ref_clock__L4_N2));
   SDFFRX1M \Regfile_reg[7][2]  (.SI(n272), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN1_reset_1), 
	.QN(n79), 
	.Q(n271), 
	.D(n245), 
	.CK(ref_clock__L4_N2));
   SDFFRX1M \Regfile_reg[7][1]  (.SI(n273), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN1_reset_1), 
	.QN(n80), 
	.Q(n272), 
	.D(n244), 
	.CK(ref_clock__L4_N2));
   SDFFRX1M \Regfile_reg[7][0]  (.SI(n274), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN1_reset_1), 
	.QN(n81), 
	.Q(n273), 
	.D(n243), 
	.CK(ref_clock__L4_N2));
   SDFFRX1M \Regfile_reg[6][7]  (.SI(n275), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN1_reset_1), 
	.QN(n82), 
	.Q(n274), 
	.D(n242), 
	.CK(ref_clock__L4_N2));
   SDFFRX1M \Regfile_reg[6][6]  (.SI(n276), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN1_reset_1), 
	.QN(n83), 
	.Q(n275), 
	.D(n241), 
	.CK(ref_clock__L4_N2));
   SDFFRX1M \Regfile_reg[6][5]  (.SI(n277), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN1_reset_1), 
	.QN(n84), 
	.Q(n276), 
	.D(n240), 
	.CK(ref_clock__L4_N2));
   SDFFRX1M \Regfile_reg[6][4]  (.SI(n278), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN1_reset_1), 
	.QN(n85), 
	.Q(n277), 
	.D(n239), 
	.CK(ref_clock__L4_N2));
   SDFFRX1M \Regfile_reg[6][3]  (.SI(n279), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN1_reset_1), 
	.QN(n86), 
	.Q(n278), 
	.D(n238), 
	.CK(ref_clock__L4_N2));
   SDFFRX1M \Regfile_reg[6][2]  (.SI(n280), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN1_reset_1), 
	.QN(n87), 
	.Q(n279), 
	.D(n237), 
	.CK(ref_clock__L4_N2));
   SDFFRX1M \Regfile_reg[6][1]  (.SI(n281), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN1_reset_1), 
	.QN(n88), 
	.Q(n280), 
	.D(n236), 
	.CK(ref_clock__L4_N2));
   SDFFRX1M \Regfile_reg[6][0]  (.SI(n282), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN1_reset_1), 
	.QN(n89), 
	.Q(n281), 
	.D(n235), 
	.CK(ref_clock__L4_N2));
   SDFFRX1M \Regfile_reg[5][7]  (.SI(n283), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN1_reset_1), 
	.QN(n90), 
	.Q(n282), 
	.D(n234), 
	.CK(ref_clock__L4_N2));
   SDFFRX1M \Regfile_reg[5][6]  (.SI(n284), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN1_reset_1), 
	.QN(n91), 
	.Q(n283), 
	.D(n233), 
	.CK(ref_clock__L4_N2));
   SDFFRX1M \Regfile_reg[5][5]  (.SI(n285), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN1_reset_1), 
	.QN(n92), 
	.Q(n284), 
	.D(n232), 
	.CK(ref_clock__L4_N2));
   SDFFRX1M \Regfile_reg[5][4]  (.SI(n286), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN1_reset_1), 
	.QN(n93), 
	.Q(n285), 
	.D(n231), 
	.CK(ref_clock__L4_N2));
   SDFFRX1M \Regfile_reg[5][3]  (.SI(n287), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN1_reset_1), 
	.QN(n94), 
	.Q(n286), 
	.D(n230), 
	.CK(ref_clock__L4_N2));
   SDFFRX1M \Regfile_reg[5][2]  (.SI(n288), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN1_reset_1), 
	.QN(n95), 
	.Q(n287), 
	.D(n229), 
	.CK(ref_clock__L4_N2));
   SDFFRX1M \Regfile_reg[5][1]  (.SI(n289), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN1_reset_1), 
	.QN(n96), 
	.Q(n288), 
	.D(n228), 
	.CK(ref_clock__L4_N2));
   SDFFRX1M \Regfile_reg[5][0]  (.SI(n290), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN1_reset_1), 
	.QN(n97), 
	.Q(n289), 
	.D(n227), 
	.CK(ref_clock__L4_N2));
   SDFFRX1M \Regfile_reg[4][6]  (.SI(n292), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN1_reset_1), 
	.QN(n99), 
	.Q(n291), 
	.D(n225), 
	.CK(ref_clock__L4_N2));
   SDFFRX1M \Regfile_reg[4][5]  (.SI(n293), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN1_reset_1), 
	.QN(n100), 
	.Q(n292), 
	.D(n224), 
	.CK(ref_clock__L4_N2));
   SDFFRX1M \Regfile_reg[4][4]  (.SI(n294), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN1_reset_1), 
	.QN(n101), 
	.Q(n293), 
	.D(n223), 
	.CK(ref_clock__L4_N2));
   SDFFRX1M \Regfile_reg[4][3]  (.SI(n295), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN1_reset_1), 
	.QN(n102), 
	.Q(n294), 
	.D(n222), 
	.CK(ref_clock__L4_N2));
   SDFFRX1M \Regfile_reg[4][2]  (.SI(n296), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN1_reset_1), 
	.QN(n103), 
	.Q(n295), 
	.D(n221), 
	.CK(ref_clock__L4_N2));
   SDFFRX1M \Regfile_reg[4][1]  (.SI(n297), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN1_reset_1), 
	.QN(n104), 
	.Q(n296), 
	.D(n220), 
	.CK(ref_clock__L4_N2));
   SDFFRX1M \Regfile_reg[4][0]  (.SI(REG3[7]), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN1_reset_1), 
	.QN(n105), 
	.Q(n297), 
	.D(n219), 
	.CK(ref_clock__L4_N2));
   SDFFRQX2M \Regfile_reg[1][1]  (.SI(REG1[0]), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN1_reset_1), 
	.Q(REG1[1]), 
	.D(n196), 
	.CK(ref_clock__L4_N2));
   SDFFRQX2M \Regfile_reg[1][5]  (.SI(REG1[4]), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN1_reset_1), 
	.Q(REG1[5]), 
	.D(n200), 
	.CK(ref_clock__L4_N2));
   SDFFRQX2M \Regfile_reg[1][4]  (.SI(REG1[3]), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN1_reset_1), 
	.Q(REG1[4]), 
	.D(n199), 
	.CK(ref_clock__L4_N2));
   SDFFRQX2M \Regfile_reg[1][7]  (.SI(REG1[6]), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN1_reset_1), 
	.Q(REG1[7]), 
	.D(n202), 
	.CK(ref_clock__L4_N2));
   SDFFRQX2M \Regfile_reg[1][3]  (.SI(REG1[2]), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN1_reset_1), 
	.Q(REG1[3]), 
	.D(n198), 
	.CK(ref_clock__L4_N2));
   SDFFRQX2M \Regfile_reg[1][2]  (.SI(REG1[1]), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN1_reset_1), 
	.Q(REG1[2]), 
	.D(n197), 
	.CK(ref_clock__L4_N2));
   SDFFRQX2M \Regfile_reg[1][0]  (.SI(REG0[7]), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN1_reset_1), 
	.Q(REG1[0]), 
	.D(n195), 
	.CK(ref_clock__L4_N2));
   SDFFRQX2M \Regfile_reg[3][6]  (.SI(REG3[5]), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN1_reset_1), 
	.Q(REG3[6]), 
	.D(n217), 
	.CK(ref_clock__L4_N2));
   SDFFRQX2M \Regfile_reg[3][7]  (.SI(REG3[6]), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN1_reset_1), 
	.Q(REG3[7]), 
	.D(n218), 
	.CK(ref_clock__L4_N2));
   SDFFSQX2M \Regfile_reg[3][5]  (.SN(FE_OFN1_reset_1), 
	.SI(REG3[4]), 
	.SE(FE_OFN6_SE), 
	.Q(REG3[5]), 
	.D(n216), 
	.CK(CLK));
   SDFFRQX2M RdData_valid_reg (.SI(RdData[7]), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN1_reset_1), 
	.Q(RdData_valid), 
	.D(n251), 
	.CK(CLK));
   SDFFRQX2M \Regfile_reg[3][4]  (.SI(REG3[3]), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN1_reset_1), 
	.Q(REG3[4]), 
	.D(n215), 
	.CK(CLK));
   SDFFRQX2M \Regfile_reg[3][2]  (.SI(REG3[1]), 
	.SE(test_se), 
	.RN(FE_OFN1_reset_1), 
	.Q(REG3[2]), 
	.D(n213), 
	.CK(CLK));
   SDFFRQX2M \Regfile_reg[3][3]  (.SI(REG3[2]), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN1_reset_1), 
	.Q(REG3[3]), 
	.D(n214), 
	.CK(ref_clock__L4_N2));
   SDFFRQX2M \Regfile_reg[3][1]  (.SI(REG3[0]), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN1_reset_1), 
	.Q(REG3[1]), 
	.D(n212), 
	.CK(CLK));
   SDFFRQX2M \Regfile_reg[2][2]  (.SI(REG2[1]), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN1_reset_1), 
	.Q(REG2[2]), 
	.D(n205), 
	.CK(CLK));
   SDFFRQX2M \Regfile_reg[2][4]  (.SI(REG2[3]), 
	.SE(test_se), 
	.RN(FE_OFN1_reset_1), 
	.Q(REG2[4]), 
	.D(n207), 
	.CK(CLK));
   SDFFRQX2M \Regfile_reg[2][6]  (.SI(REG2[5]), 
	.SE(test_se), 
	.RN(FE_OFN1_reset_1), 
	.Q(REG2[6]), 
	.D(n209), 
	.CK(CLK));
   SDFFRQX2M \Regfile_reg[2][3]  (.SI(REG2[2]), 
	.SE(test_se), 
	.RN(FE_OFN1_reset_1), 
	.Q(REG2[3]), 
	.D(n206), 
	.CK(CLK));
   SDFFRQX2M \Regfile_reg[2][5]  (.SI(REG2[4]), 
	.SE(test_se), 
	.RN(FE_OFN1_reset_1), 
	.Q(REG2[5]), 
	.D(n208), 
	.CK(CLK));
   SDFFRX1M \Regfile_reg[4][7]  (.SI(n291), 
	.SE(FE_OFN6_SE), 
	.RN(FE_OFN1_reset_1), 
	.QN(n98), 
	.Q(n290), 
	.D(n226), 
	.CK(ref_clock__L4_N2));
   SDFFSQX1M \Regfile_reg[2][7]  (.SN(FE_OFN1_reset_1), 
	.SI(REG2[6]), 
	.SE(test_se), 
	.Q(REG2[7]), 
	.D(n210), 
	.CK(CLK));
   NOR2X2M U78 (.Y(n170), 
	.B(Address[0]), 
	.A(n265));
   NOR2X2M U79 (.Y(n172), 
	.B(n263), 
	.A(n265));
   INVX2M U80 (.Y(n259), 
	.A(n132));
   INVX2M U81 (.Y(n257), 
	.A(n175));
   INVX2M U82 (.Y(n258), 
	.A(n176));
   INVX2M U83 (.Y(n254), 
	.A(n177));
   INVX2M U84 (.Y(n255), 
	.A(n178));
   INVX2M U87 (.Y(n256), 
	.A(n131));
   NOR2X2M U88 (.Y(n129), 
	.B(Address[2]), 
	.A(n261));
   NAND2X2M U89 (.Y(n171), 
	.B(n128), 
	.A(n172));
   NAND2X2M U90 (.Y(n173), 
	.B(n129), 
	.A(n170));
   NAND2X2M U91 (.Y(n174), 
	.B(n129), 
	.A(n172));
   NAND2X2M U92 (.Y(n134), 
	.B(n128), 
	.A(n170));
   NAND2X2M U93 (.Y(n175), 
	.B(n259), 
	.A(n170));
   NAND2X2M U94 (.Y(n176), 
	.B(n259), 
	.A(n172));
   NAND2X2M U95 (.Y(n177), 
	.B(n256), 
	.A(n170));
   NAND2X2M U96 (.Y(n178), 
	.B(n256), 
	.A(n172));
   NAND2X2M U97 (.Y(n132), 
	.B(n261), 
	.A(Address[2]));
   INVX2M U100 (.Y(n263), 
	.A(Address[0]));
   NOR2X2M U101 (.Y(n128), 
	.B(Address[2]), 
	.A(Address[1]));
   NAND2X2M U103 (.Y(n131), 
	.B(Address[1]), 
	.A(Address[2]));
   INVX2M U104 (.Y(n261), 
	.A(Address[1]));
   INVX2M U105 (.Y(n264), 
	.A(n124));
   NAND2X2M U106 (.Y(n124), 
	.B(n265), 
	.A(RdEn));
   INVX2M U107 (.Y(n252), 
	.A(WrData[3]));
   INVX2M U108 (.Y(n121), 
	.A(WrData[6]));
   INVX2M U109 (.Y(n120), 
	.A(WrData[7]));
   INVX2M U110 (.Y(n265), 
	.A(WrEn));
   INVX2M U116 (.Y(n262), 
	.A(WrData[0]));
   INVX2M U117 (.Y(n122), 
	.A(WrData[5]));
   INVX2M U118 (.Y(n260), 
	.A(WrData[1]));
   INVX2M U119 (.Y(n253), 
	.A(WrData[2]));
   INVX2M U120 (.Y(n123), 
	.A(WrData[4]));
   OAI22X1M U123 (.Y(n130), 
	.B1(n105), 
	.B0(n132), 
	.A1(n89), 
	.A0(n131));
   OAI22X1M U124 (.Y(n133), 
	.B1(n97), 
	.B0(n132), 
	.A1(n81), 
	.A0(n131));
   OAI22X1M U125 (.Y(n138), 
	.B1(n104), 
	.B0(n132), 
	.A1(n88), 
	.A0(n131));
   OAI22X1M U126 (.Y(n139), 
	.B1(n96), 
	.B0(n132), 
	.A1(n80), 
	.A0(n131));
   OAI22X1M U127 (.Y(n143), 
	.B1(n103), 
	.B0(n132), 
	.A1(n87), 
	.A0(n131));
   OAI22X1M U128 (.Y(n144), 
	.B1(n95), 
	.B0(n132), 
	.A1(n79), 
	.A0(n131));
   OAI22X1M U129 (.Y(n148), 
	.B1(n102), 
	.B0(n132), 
	.A1(n86), 
	.A0(n131));
   OAI22X1M U130 (.Y(n149), 
	.B1(n94), 
	.B0(n132), 
	.A1(n78), 
	.A0(n131));
   OAI22X1M U131 (.Y(n153), 
	.B1(n101), 
	.B0(n132), 
	.A1(n85), 
	.A0(n131));
   OAI22X1M U132 (.Y(n154), 
	.B1(n93), 
	.B0(n132), 
	.A1(n77), 
	.A0(n131));
   OAI22X1M U133 (.Y(n158), 
	.B1(n100), 
	.B0(n132), 
	.A1(n84), 
	.A0(n131));
   OAI22X1M U134 (.Y(n159), 
	.B1(n92), 
	.B0(n132), 
	.A1(n76), 
	.A0(n131));
   OAI22X1M U135 (.Y(n163), 
	.B1(n99), 
	.B0(n132), 
	.A1(n83), 
	.A0(n131));
   OAI22X1M U136 (.Y(n164), 
	.B1(n91), 
	.B0(n132), 
	.A1(n75), 
	.A0(n131));
   OAI22X1M U137 (.Y(n168), 
	.B1(n98), 
	.B0(n132), 
	.A1(n82), 
	.A0(n131));
   OAI22X1M U138 (.Y(n169), 
	.B1(n90), 
	.B0(n132), 
	.A1(n74), 
	.A0(n131));
   OAI22X1M U139 (.Y(n219), 
	.B1(n105), 
	.B0(n257), 
	.A1(n175), 
	.A0(n262));
   OAI22X1M U140 (.Y(n220), 
	.B1(n104), 
	.B0(n257), 
	.A1(n175), 
	.A0(n260));
   OAI22X1M U141 (.Y(n221), 
	.B1(n103), 
	.B0(n257), 
	.A1(n175), 
	.A0(n253));
   OAI22X1M U142 (.Y(n222), 
	.B1(n102), 
	.B0(n257), 
	.A1(n175), 
	.A0(n252));
   OAI22X1M U143 (.Y(n223), 
	.B1(n101), 
	.B0(n257), 
	.A1(n175), 
	.A0(n123));
   OAI22X1M U144 (.Y(n224), 
	.B1(n100), 
	.B0(n257), 
	.A1(n175), 
	.A0(n122));
   OAI22X1M U145 (.Y(n225), 
	.B1(n99), 
	.B0(n257), 
	.A1(n175), 
	.A0(n121));
   OAI22X1M U146 (.Y(n226), 
	.B1(n98), 
	.B0(n257), 
	.A1(n175), 
	.A0(n120));
   OAI22X1M U147 (.Y(n227), 
	.B1(n97), 
	.B0(n258), 
	.A1(n176), 
	.A0(n262));
   OAI22X1M U148 (.Y(n228), 
	.B1(n96), 
	.B0(n258), 
	.A1(n176), 
	.A0(n260));
   OAI22X1M U149 (.Y(n229), 
	.B1(n95), 
	.B0(n258), 
	.A1(n176), 
	.A0(n253));
   OAI22X1M U150 (.Y(n230), 
	.B1(n94), 
	.B0(n258), 
	.A1(n176), 
	.A0(n252));
   OAI22X1M U151 (.Y(n231), 
	.B1(n93), 
	.B0(n258), 
	.A1(n176), 
	.A0(n123));
   OAI22X1M U152 (.Y(n232), 
	.B1(n92), 
	.B0(n258), 
	.A1(n176), 
	.A0(n122));
   OAI22X1M U153 (.Y(n233), 
	.B1(n91), 
	.B0(n258), 
	.A1(n176), 
	.A0(n121));
   OAI22X1M U154 (.Y(n234), 
	.B1(n90), 
	.B0(n258), 
	.A1(n176), 
	.A0(n120));
   OAI22X1M U155 (.Y(n235), 
	.B1(n89), 
	.B0(n254), 
	.A1(n177), 
	.A0(n262));
   OAI22X1M U156 (.Y(n236), 
	.B1(n88), 
	.B0(n254), 
	.A1(n177), 
	.A0(n260));
   OAI22X1M U157 (.Y(n237), 
	.B1(n87), 
	.B0(n254), 
	.A1(n177), 
	.A0(n253));
   OAI22X1M U158 (.Y(n238), 
	.B1(n86), 
	.B0(n254), 
	.A1(n177), 
	.A0(n252));
   OAI22X1M U159 (.Y(n239), 
	.B1(n85), 
	.B0(n254), 
	.A1(n177), 
	.A0(n123));
   OAI22X1M U160 (.Y(n240), 
	.B1(n84), 
	.B0(n254), 
	.A1(n177), 
	.A0(n122));
   OAI22X1M U161 (.Y(n241), 
	.B1(n83), 
	.B0(n254), 
	.A1(n177), 
	.A0(n121));
   OAI22X1M U162 (.Y(n242), 
	.B1(n82), 
	.B0(n254), 
	.A1(n177), 
	.A0(n120));
   OAI22X1M U163 (.Y(n243), 
	.B1(n81), 
	.B0(n255), 
	.A1(n178), 
	.A0(n262));
   OAI22X1M U164 (.Y(n244), 
	.B1(n80), 
	.B0(n255), 
	.A1(n178), 
	.A0(n260));
   OAI22X1M U165 (.Y(n245), 
	.B1(n79), 
	.B0(n255), 
	.A1(n178), 
	.A0(n253));
   OAI22X1M U166 (.Y(n246), 
	.B1(n78), 
	.B0(n255), 
	.A1(n178), 
	.A0(n252));
   OAI22X1M U167 (.Y(n247), 
	.B1(n77), 
	.B0(n255), 
	.A1(n178), 
	.A0(n123));
   OAI22X1M U168 (.Y(n248), 
	.B1(n76), 
	.B0(n255), 
	.A1(n178), 
	.A0(n122));
   OAI22X1M U169 (.Y(n249), 
	.B1(n75), 
	.B0(n255), 
	.A1(n178), 
	.A0(n121));
   OAI22X1M U170 (.Y(n250), 
	.B1(n74), 
	.B0(n255), 
	.A1(n178), 
	.A0(n120));
   OAI2BB2X1M U171 (.Y(n180), 
	.B1(n262), 
	.B0(n134), 
	.A1N(REG0[0]), 
	.A0N(n134));
   OAI2BB2X1M U172 (.Y(n182), 
	.B1(n260), 
	.B0(n134), 
	.A1N(REG0[1]), 
	.A0N(n134));
   OAI2BB2X1M U173 (.Y(n184), 
	.B1(n253), 
	.B0(n134), 
	.A1N(REG0[2]), 
	.A0N(n134));
   OAI2BB2X1M U174 (.Y(n186), 
	.B1(n252), 
	.B0(n134), 
	.A1N(REG0[3]), 
	.A0N(n134));
   OAI2BB2X1M U175 (.Y(n188), 
	.B1(n123), 
	.B0(n134), 
	.A1N(REG0[4]), 
	.A0N(n134));
   OAI2BB2X1M U176 (.Y(n190), 
	.B1(n122), 
	.B0(n134), 
	.A1N(REG0[5]), 
	.A0N(n134));
   OAI2BB2X1M U177 (.Y(n192), 
	.B1(n121), 
	.B0(n134), 
	.A1N(REG0[6]), 
	.A0N(n134));
   OAI2BB2X1M U178 (.Y(n194), 
	.B1(n120), 
	.B0(n134), 
	.A1N(REG0[7]), 
	.A0N(n134));
   OAI2BB2X1M U179 (.Y(n204), 
	.B1(n173), 
	.B0(n260), 
	.A1N(REG2[1]), 
	.A0N(n173));
   OAI2BB2X1M U180 (.Y(n205), 
	.B1(n173), 
	.B0(n253), 
	.A1N(REG2[2]), 
	.A0N(n173));
   OAI2BB2X1M U181 (.Y(n206), 
	.B1(n173), 
	.B0(n252), 
	.A1N(REG2[3]), 
	.A0N(n173));
   OAI2BB2X1M U182 (.Y(n207), 
	.B1(n173), 
	.B0(n123), 
	.A1N(REG2[4]), 
	.A0N(n173));
   OAI2BB2X1M U183 (.Y(n208), 
	.B1(n173), 
	.B0(n122), 
	.A1N(REG2[5]), 
	.A0N(n173));
   OAI2BB2X1M U184 (.Y(n209), 
	.B1(n173), 
	.B0(n121), 
	.A1N(REG2[6]), 
	.A0N(n173));
   OAI2BB2X1M U185 (.Y(n211), 
	.B1(n174), 
	.B0(n262), 
	.A1N(REG3[0]), 
	.A0N(n174));
   OAI2BB2X1M U186 (.Y(n212), 
	.B1(n174), 
	.B0(n260), 
	.A1N(REG3[1]), 
	.A0N(n174));
   OAI2BB2X1M U187 (.Y(n213), 
	.B1(n174), 
	.B0(n253), 
	.A1N(REG3[2]), 
	.A0N(n174));
   OAI2BB2X1M U188 (.Y(n214), 
	.B1(n174), 
	.B0(n252), 
	.A1N(REG3[3]), 
	.A0N(n174));
   OAI2BB2X1M U189 (.Y(n215), 
	.B1(n174), 
	.B0(n123), 
	.A1N(REG3[4]), 
	.A0N(n174));
   OAI2BB2X1M U190 (.Y(n217), 
	.B1(n174), 
	.B0(n121), 
	.A1N(REG3[6]), 
	.A0N(n174));
   OAI2BB2X1M U191 (.Y(n218), 
	.B1(n174), 
	.B0(n120), 
	.A1N(REG3[7]), 
	.A0N(n174));
   OAI2BB2X1M U192 (.Y(n195), 
	.B1(n171), 
	.B0(n262), 
	.A1N(REG1[0]), 
	.A0N(n171));
   OAI2BB2X1M U193 (.Y(n196), 
	.B1(n171), 
	.B0(n260), 
	.A1N(REG1[1]), 
	.A0N(n171));
   OAI2BB2X1M U194 (.Y(n197), 
	.B1(n171), 
	.B0(n253), 
	.A1N(REG1[2]), 
	.A0N(n171));
   OAI2BB2X1M U195 (.Y(n198), 
	.B1(n171), 
	.B0(n252), 
	.A1N(REG1[3]), 
	.A0N(n171));
   OAI2BB2X1M U196 (.Y(n199), 
	.B1(n171), 
	.B0(n123), 
	.A1N(REG1[4]), 
	.A0N(n171));
   OAI2BB2X1M U197 (.Y(n200), 
	.B1(n171), 
	.B0(n122), 
	.A1N(REG1[5]), 
	.A0N(n171));
   OAI2BB2X1M U198 (.Y(n201), 
	.B1(n171), 
	.B0(n121), 
	.A1N(REG1[6]), 
	.A0N(n171));
   OAI2BB2X1M U199 (.Y(n202), 
	.B1(n171), 
	.B0(n120), 
	.A1N(REG1[7]), 
	.A0N(n171));
   OAI2BB2X1M U200 (.Y(n203), 
	.B1(n173), 
	.B0(n262), 
	.A1N(REG2[0]), 
	.A0N(n173));
   OAI2BB2X1M U201 (.Y(n210), 
	.B1(n173), 
	.B0(n120), 
	.A1N(REG2[7]), 
	.A0N(n173));
   OAI2BB2X1M U202 (.Y(n216), 
	.B1(n174), 
	.B0(n122), 
	.A1N(REG3[5]), 
	.A0N(n174));
   AO22X1M U203 (.Y(n179), 
	.B1(n125), 
	.B0(n264), 
	.A1(n124), 
	.A0(RdData[0]));
   OAI22X1M U204 (.Y(n125), 
	.B1(n127), 
	.B0(Address[0]), 
	.A1(n263), 
	.A0(n126));
   AOI221XLM U205 (.Y(n126), 
	.C0(n133), 
	.B1(n129), 
	.B0(REG3[0]), 
	.A1(n128), 
	.A0(REG1[0]));
   AOI221XLM U206 (.Y(n127), 
	.C0(n130), 
	.B1(n129), 
	.B0(REG2[0]), 
	.A1(n128), 
	.A0(REG0[0]));
   AO22X1M U207 (.Y(n181), 
	.B1(n135), 
	.B0(n264), 
	.A1(n124), 
	.A0(RdData[1]));
   OAI22X1M U208 (.Y(n135), 
	.B1(n137), 
	.B0(Address[0]), 
	.A1(n263), 
	.A0(n136));
   AOI221XLM U209 (.Y(n136), 
	.C0(n139), 
	.B1(n129), 
	.B0(REG3[1]), 
	.A1(n128), 
	.A0(REG1[1]));
   AOI221XLM U210 (.Y(n137), 
	.C0(n138), 
	.B1(n129), 
	.B0(REG2[1]), 
	.A1(n128), 
	.A0(REG0[1]));
   AO22X1M U211 (.Y(n183), 
	.B1(n140), 
	.B0(n264), 
	.A1(n124), 
	.A0(RdData[2]));
   OAI22X1M U212 (.Y(n140), 
	.B1(n142), 
	.B0(Address[0]), 
	.A1(n263), 
	.A0(n141));
   AOI221XLM U213 (.Y(n141), 
	.C0(n144), 
	.B1(n129), 
	.B0(REG3[2]), 
	.A1(n128), 
	.A0(REG1[2]));
   AOI221XLM U214 (.Y(n142), 
	.C0(n143), 
	.B1(n129), 
	.B0(REG2[2]), 
	.A1(n128), 
	.A0(REG0[2]));
   AO22X1M U215 (.Y(n185), 
	.B1(n145), 
	.B0(n264), 
	.A1(n124), 
	.A0(RdData[3]));
   OAI22X1M U216 (.Y(n145), 
	.B1(n147), 
	.B0(Address[0]), 
	.A1(n263), 
	.A0(n146));
   AOI221XLM U217 (.Y(n146), 
	.C0(n149), 
	.B1(n129), 
	.B0(REG3[3]), 
	.A1(n128), 
	.A0(REG1[3]));
   AOI221XLM U218 (.Y(n147), 
	.C0(n148), 
	.B1(n129), 
	.B0(REG2[3]), 
	.A1(n128), 
	.A0(REG0[3]));
   AO22X1M U219 (.Y(n187), 
	.B1(n150), 
	.B0(n264), 
	.A1(n124), 
	.A0(RdData[4]));
   OAI22X1M U220 (.Y(n150), 
	.B1(n152), 
	.B0(Address[0]), 
	.A1(n263), 
	.A0(n151));
   AOI221XLM U221 (.Y(n151), 
	.C0(n154), 
	.B1(n129), 
	.B0(REG3[4]), 
	.A1(n128), 
	.A0(REG1[4]));
   AOI221XLM U222 (.Y(n152), 
	.C0(n153), 
	.B1(n129), 
	.B0(REG2[4]), 
	.A1(n128), 
	.A0(REG0[4]));
   AO22X1M U223 (.Y(n189), 
	.B1(n155), 
	.B0(n264), 
	.A1(n124), 
	.A0(RdData[5]));
   OAI22X1M U224 (.Y(n155), 
	.B1(n157), 
	.B0(Address[0]), 
	.A1(n263), 
	.A0(n156));
   AOI221XLM U225 (.Y(n156), 
	.C0(n159), 
	.B1(n129), 
	.B0(REG3[5]), 
	.A1(n128), 
	.A0(REG1[5]));
   AOI221XLM U226 (.Y(n157), 
	.C0(n158), 
	.B1(n129), 
	.B0(REG2[5]), 
	.A1(n128), 
	.A0(REG0[5]));
   AO22X1M U227 (.Y(n191), 
	.B1(n160), 
	.B0(n264), 
	.A1(n124), 
	.A0(RdData[6]));
   OAI22X1M U228 (.Y(n160), 
	.B1(n162), 
	.B0(Address[0]), 
	.A1(n263), 
	.A0(n161));
   AOI221XLM U229 (.Y(n161), 
	.C0(n164), 
	.B1(n129), 
	.B0(REG3[6]), 
	.A1(n128), 
	.A0(REG1[6]));
   AOI221XLM U230 (.Y(n162), 
	.C0(n163), 
	.B1(n129), 
	.B0(REG2[6]), 
	.A1(n128), 
	.A0(REG0[6]));
   AO22X1M U231 (.Y(n193), 
	.B1(n165), 
	.B0(n264), 
	.A1(n124), 
	.A0(RdData[7]));
   OAI22X1M U232 (.Y(n165), 
	.B1(n167), 
	.B0(Address[0]), 
	.A1(n263), 
	.A0(n166));
   AOI221XLM U233 (.Y(n166), 
	.C0(n169), 
	.B1(n129), 
	.B0(REG3[7]), 
	.A1(n128), 
	.A0(REG1[7]));
   AOI221XLM U234 (.Y(n167), 
	.C0(n168), 
	.B1(n129), 
	.B0(REG2[7]), 
	.A1(n128), 
	.A0(REG0[7]));
   AO21XLM U235 (.Y(n251), 
	.B0(n264), 
	.A1(n265), 
	.A0(RdData_valid));
endmodule

module reset_sync_test_0 (
	clk, 
	reset, 
	sync_reset, 
	test_si, 
	test_so, 
	test_se);
   input clk;
   input reset;
   output sync_reset;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire [1:0] stages;

   assign test_so = stages[1] ;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX2M \stages_reg[1]  (.SI(stages[0]), 
	.SE(test_se), 
	.RN(reset), 
	.Q(stages[1]), 
	.D(stages[0]), 
	.CK(clk));
   SDFFRQX2M \stages_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(reset), 
	.Q(stages[0]), 
	.D(HTIE_LTIEHI_NET), 
	.CK(clk));
   AND2X2M U5 (.Y(sync_reset), 
	.B(reset), 
	.A(stages[1]));
endmodule

module data_sync_test_1 (
	clk, 
	reset, 
	bus_enable, 
	unsync_bus, 
	sync_bus, 
	enable_bus, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN1_reset_1, 
	FE_OFN7_SE, 
	ref_clock__L4_N1);
   input clk;
   input reset;
   input bus_enable;
   input [7:0] unsync_bus;
   output [7:0] sync_bus;
   output enable_bus;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN1_reset_1;
   input FE_OFN7_SE;
   input ref_clock__L4_N1;

   // Internal wires
   wire FE_PHN3_test_si2;
   wire FE_PHN2_test_si2;
   wire sel;
   wire reg_enable_bus;
   wire n11;
   wire n13;
   wire n15;
   wire n17;
   wire n19;
   wire n21;
   wire n23;
   wire n25;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n29;
   wire [1:0] reg_stage;
   wire [7:0] reg_sync_bus;

   assign test_so1 = reg_stage[1] ;
   assign test_so2 = reg_sync_bus[7] ;

   DLY4X1M FE_PHC3_test_si2 (.Y(FE_PHN3_test_si2), 
	.A(FE_PHN2_test_si2));
   DLY4X1M FE_PHC2_test_si2 (.Y(FE_PHN2_test_si2), 
	.A(test_si2));
   SDFFRQX2M reg_enable_bus_reg (.SI(test_si1), 
	.SE(test_se), 
	.RN(reset), 
	.Q(reg_enable_bus), 
	.D(sel), 
	.CK(clk));
   SDFFRQX2M \reg_stage_reg[1]  (.SI(reg_stage[0]), 
	.SE(test_se), 
	.RN(reset), 
	.Q(reg_stage[1]), 
	.D(reg_stage[0]), 
	.CK(clk));
   SDFFRQX2M \reg_sync_bus_reg[7]  (.SI(reg_sync_bus[6]), 
	.SE(FE_OFN7_SE), 
	.RN(reset), 
	.Q(reg_sync_bus[7]), 
	.D(n25), 
	.CK(ref_clock__L4_N1));
   SDFFRQX2M \reg_sync_bus_reg[4]  (.SI(reg_sync_bus[3]), 
	.SE(test_se), 
	.RN(reset), 
	.Q(reg_sync_bus[4]), 
	.D(n19), 
	.CK(ref_clock__L4_N1));
   SDFFRQX2M \reg_sync_bus_reg[3]  (.SI(reg_sync_bus[2]), 
	.SE(test_se), 
	.RN(reset), 
	.Q(reg_sync_bus[3]), 
	.D(n17), 
	.CK(ref_clock__L4_N1));
   SDFFRQX2M \reg_stage_reg[0]  (.SI(reg_enable_bus), 
	.SE(test_se), 
	.RN(reset), 
	.Q(reg_stage[0]), 
	.D(bus_enable), 
	.CK(clk));
   SDFFRQX2M \reg_sync_bus_reg[6]  (.SI(reg_sync_bus[5]), 
	.SE(test_se), 
	.RN(reset), 
	.Q(reg_sync_bus[6]), 
	.D(n23), 
	.CK(ref_clock__L4_N1));
   SDFFRQX2M \reg_sync_bus_reg[5]  (.SI(reg_sync_bus[4]), 
	.SE(test_se), 
	.RN(reset), 
	.Q(reg_sync_bus[5]), 
	.D(n21), 
	.CK(clk));
   SDFFRQX2M \reg_sync_bus_reg[2]  (.SI(reg_sync_bus[1]), 
	.SE(test_se), 
	.RN(FE_OFN1_reset_1), 
	.Q(reg_sync_bus[2]), 
	.D(n15), 
	.CK(ref_clock__L4_N1));
   SDFFRQX2M \reg_sync_bus_reg[1]  (.SI(reg_sync_bus[0]), 
	.SE(test_se), 
	.RN(FE_OFN1_reset_1), 
	.Q(reg_sync_bus[1]), 
	.D(n13), 
	.CK(ref_clock__L4_N1));
   SDFFRQX2M \reg_sync_bus_reg[0]  (.SI(FE_PHN3_test_si2), 
	.SE(test_se), 
	.RN(FE_OFN1_reset_1), 
	.Q(reg_sync_bus[0]), 
	.D(n11), 
	.CK(ref_clock__L4_N1));
   NOR2X2M U3 (.Y(sync_bus[2]), 
	.B(n8), 
	.A(n2));
   NOR2X2M U5 (.Y(sync_bus[6]), 
	.B(n4), 
	.A(n2));
   NOR2X2M U6 (.Y(sync_bus[0]), 
	.B(n29), 
	.A(n2));
   NOR2X2M U7 (.Y(sync_bus[1]), 
	.B(n9), 
	.A(n2));
   NOR2X2M U8 (.Y(sync_bus[5]), 
	.B(n5), 
	.A(n2));
   NOR2X2M U9 (.Y(sync_bus[7]), 
	.B(n2), 
	.A(n3));
   NOR2X2M U10 (.Y(sync_bus[3]), 
	.B(n7), 
	.A(n2));
   NOR2X2M U11 (.Y(sync_bus[4]), 
	.B(n6), 
	.A(n2));
   INVX2M U12 (.Y(n2), 
	.A(reset));
   INVX2M U13 (.Y(n9), 
	.A(reg_sync_bus[1]));
   INVX2M U14 (.Y(n29), 
	.A(reg_sync_bus[0]));
   INVX2M U15 (.Y(n8), 
	.A(reg_sync_bus[2]));
   INVX2M U16 (.Y(n5), 
	.A(reg_sync_bus[5]));
   INVX2M U17 (.Y(n4), 
	.A(reg_sync_bus[6]));
   OAI2BB2X1M U18 (.Y(n11), 
	.B1(n29), 
	.B0(sel), 
	.A1N(sel), 
	.A0N(unsync_bus[0]));
   OAI2BB2X1M U19 (.Y(n13), 
	.B1(n9), 
	.B0(sel), 
	.A1N(sel), 
	.A0N(unsync_bus[1]));
   OAI2BB2X1M U20 (.Y(n15), 
	.B1(n8), 
	.B0(sel), 
	.A1N(sel), 
	.A0N(unsync_bus[2]));
   OAI2BB2X1M U21 (.Y(n17), 
	.B1(n7), 
	.B0(sel), 
	.A1N(sel), 
	.A0N(unsync_bus[3]));
   OAI2BB2X1M U22 (.Y(n19), 
	.B1(n6), 
	.B0(sel), 
	.A1N(sel), 
	.A0N(unsync_bus[4]));
   OAI2BB2X1M U23 (.Y(n21), 
	.B1(n5), 
	.B0(sel), 
	.A1N(sel), 
	.A0N(unsync_bus[5]));
   OAI2BB2X1M U24 (.Y(n23), 
	.B1(n4), 
	.B0(sel), 
	.A1N(sel), 
	.A0N(unsync_bus[6]));
   OAI2BB2X1M U25 (.Y(n25), 
	.B1(n3), 
	.B0(sel), 
	.A1N(sel), 
	.A0N(unsync_bus[7]));
   NOR2BX2M U26 (.Y(sel), 
	.B(reg_stage[0]), 
	.AN(reg_stage[1]));
   INVX2M U27 (.Y(n3), 
	.A(reg_sync_bus[7]));
   INVX2M U28 (.Y(n6), 
	.A(reg_sync_bus[4]));
   INVX2M U29 (.Y(n7), 
	.A(reg_sync_bus[3]));
   NOR2BX2M U41 (.Y(enable_bus), 
	.B(n2), 
	.AN(reg_enable_bus));
endmodule

module fifo_wptr_test_1 (
	w_clk, 
	wrst_n, 
	winc, 
	wq2_rptr, 
	wptr, 
	w_addr, 
	w_full, 
	wire_w_full, 
	test_si, 
	test_se, 
	FE_OFN3_SE, 
	FE_OFN7_SE, 
	ref_clock__L4_N1);
   input w_clk;
   input wrst_n;
   input winc;
   input [3:0] wq2_rptr;
   output [3:0] wptr;
   output [2:0] w_addr;
   output w_full;
   output wire_w_full;
   input test_si;
   input test_se;
   input FE_OFN3_SE;
   input FE_OFN7_SE;
   input ref_clock__L4_N1;

   // Internal wires
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n13;
   wire n14;
   wire n15;
   wire n41;
   wire [3:0] c_counter;

   SDFFRQX2M \c_counter_reg[3]  (.SI(c_counter[2]), 
	.SE(FE_OFN3_SE), 
	.RN(wrst_n), 
	.Q(c_counter[3]), 
	.D(n36), 
	.CK(w_clk));
   SDFFRQX2M \wptr_reg[0]  (.SI(w_full), 
	.SE(FE_OFN7_SE), 
	.RN(wrst_n), 
	.Q(wptr[0]), 
	.D(n39), 
	.CK(ref_clock__L4_N1));
   SDFFRQX2M \wptr_reg[1]  (.SI(wptr[0]), 
	.SE(test_se), 
	.RN(wrst_n), 
	.Q(wptr[1]), 
	.D(n35), 
	.CK(w_clk));
   SDFFRQX2M \wptr_reg[3]  (.SI(wptr[2]), 
	.SE(FE_OFN3_SE), 
	.RN(wrst_n), 
	.Q(wptr[3]), 
	.D(n33), 
	.CK(w_clk));
   SDFFRQX2M \wptr_reg[2]  (.SI(wptr[1]), 
	.SE(test_se), 
	.RN(wrst_n), 
	.Q(wptr[2]), 
	.D(n34), 
	.CK(w_clk));
   SDFFRQX2M \c_counter_reg[2]  (.SI(c_counter[1]), 
	.SE(FE_OFN7_SE), 
	.RN(wrst_n), 
	.Q(c_counter[2]), 
	.D(n37), 
	.CK(w_clk));
   SDFFRQX2M \w_addr_reg[2]  (.SI(w_addr[1]), 
	.SE(test_se), 
	.RN(wrst_n), 
	.Q(w_addr[2]), 
	.D(n32), 
	.CK(w_clk));
   SDFFRQX2M \c_counter_reg[1]  (.SI(c_counter[0]), 
	.SE(FE_OFN7_SE), 
	.RN(wrst_n), 
	.Q(c_counter[1]), 
	.D(n38), 
	.CK(ref_clock__L4_N1));
   SDFFRQX2M \c_counter_reg[0]  (.SI(test_si), 
	.SE(FE_OFN7_SE), 
	.RN(wrst_n), 
	.Q(c_counter[0]), 
	.D(n40), 
	.CK(ref_clock__L4_N1));
   SDFFRQX2M \w_addr_reg[1]  (.SI(w_addr[0]), 
	.SE(test_se), 
	.RN(wrst_n), 
	.Q(w_addr[1]), 
	.D(n31), 
	.CK(w_clk));
   SDFFRQX2M \w_addr_reg[0]  (.SI(c_counter[3]), 
	.SE(test_se), 
	.RN(wrst_n), 
	.Q(w_addr[0]), 
	.D(n30), 
	.CK(w_clk));
   SDFFRQX2M w_full_reg (.SI(w_addr[2]), 
	.SE(test_se), 
	.RN(wrst_n), 
	.Q(w_full), 
	.D(n14), 
	.CK(ref_clock__L4_N1));
   NAND2X2M U15 (.Y(n13), 
	.B(n25), 
	.A(winc));
   INVX2M U17 (.Y(n41), 
	.A(n21));
   INVX2M U18 (.Y(n14), 
	.A(n25));
   XNOR2X2M U19 (.Y(n40), 
	.B(n13), 
	.A(c_counter[0]));
   OAI2BB2X1M U20 (.Y(n39), 
	.B1(n24), 
	.B0(n13), 
	.A1N(wptr[0]), 
	.A0N(n13));
   XNOR2X2M U21 (.Y(n24), 
	.B(n17), 
	.A(c_counter[0]));
   OAI2BB2X1M U22 (.Y(n30), 
	.B1(n13), 
	.B0(c_counter[0]), 
	.A1N(n13), 
	.A0N(w_addr[0]));
   OAI2BB2X1M U23 (.Y(n32), 
	.B1(n13), 
	.B0(n41), 
	.A1N(n13), 
	.A0N(w_addr[2]));
   OAI2BB2X1M U24 (.Y(n36), 
	.B1(n13), 
	.B0(n18), 
	.A1N(c_counter[3]), 
	.A0N(n13));
   OAI2BB2X1M U25 (.Y(n34), 
	.B1(n13), 
	.B0(n19), 
	.A1N(wptr[2]), 
	.A0N(n13));
   XNOR2X2M U26 (.Y(n19), 
	.B(n41), 
	.A(n18));
   OAI2BB2X1M U27 (.Y(n38), 
	.B1(n13), 
	.B0(n17), 
	.A1N(c_counter[1]), 
	.A0N(n13));
   OAI2BB2X1M U28 (.Y(n31), 
	.B1(n13), 
	.B0(n17), 
	.A1N(n13), 
	.A0N(w_addr[1]));
   OAI2BB2X1M U29 (.Y(n35), 
	.B1(n13), 
	.B0(n20), 
	.A1N(wptr[1]), 
	.A0N(n13));
   XNOR2X2M U30 (.Y(n20), 
	.B(n15), 
	.A(n21));
   INVX2M U31 (.Y(n15), 
	.A(n17));
   OAI2BB2X1M U32 (.Y(n33), 
	.B1(n13), 
	.B0(n18), 
	.A1N(wptr[3]), 
	.A0N(n13));
   OAI2BB2X1M U33 (.Y(n37), 
	.B1(n13), 
	.B0(n41), 
	.A1N(c_counter[2]), 
	.A0N(n13));
   NOR2BX2M U34 (.Y(wire_w_full), 
	.B(w_full), 
	.AN(winc));
   XNOR2X2M U35 (.Y(n17), 
	.B(c_counter[0]), 
	.A(c_counter[1]));
   XNOR2X2M U36 (.Y(n18), 
	.B(n22), 
	.A(c_counter[3]));
   NOR2BX2M U37 (.Y(n22), 
	.B(n23), 
	.AN(c_counter[2]));
   XNOR2X2M U38 (.Y(n21), 
	.B(c_counter[2]), 
	.A(n23));
   NAND4X2M U39 (.Y(n25), 
	.D(n29), 
	.C(n28), 
	.B(n27), 
	.A(n26));
   XNOR2X2M U40 (.Y(n26), 
	.B(wq2_rptr[1]), 
	.A(wptr[1]));
   XNOR2X2M U41 (.Y(n27), 
	.B(wq2_rptr[0]), 
	.A(wptr[0]));
   CLKXOR2X2M U42 (.Y(n28), 
	.B(wptr[2]), 
	.A(wq2_rptr[2]));
   NAND2X2M U43 (.Y(n23), 
	.B(c_counter[1]), 
	.A(c_counter[0]));
   CLKXOR2X2M U44 (.Y(n29), 
	.B(wptr[3]), 
	.A(wq2_rptr[3]));
endmodule

module fifo_memory_test_1 (
	w_clk, 
	w_clk_en, 
	reset, 
	w_addr, 
	r_addr, 
	w_data, 
	r_data, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN0_reset_1, 
	FE_OFN5_SE, 
	FE_OFN7_SE, 
	ref_clock__L4_N1);
   input w_clk;
   input w_clk_en;
   input reset;
   input [2:0] w_addr;
   input [2:0] r_addr;
   input [7:0] w_data;
   output [7:0] r_data;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN0_reset_1;
   input FE_OFN5_SE;
   input FE_OFN7_SE;
   input ref_clock__L4_N1;

   // Internal wires
   wire N10;
   wire N11;
   wire N12;
   wire \memory[7][7] ;
   wire \memory[7][6] ;
   wire \memory[7][5] ;
   wire \memory[7][4] ;
   wire \memory[7][3] ;
   wire \memory[7][2] ;
   wire \memory[7][1] ;
   wire \memory[7][0] ;
   wire \memory[6][7] ;
   wire \memory[6][6] ;
   wire \memory[6][5] ;
   wire \memory[6][4] ;
   wire \memory[6][3] ;
   wire \memory[6][2] ;
   wire \memory[6][1] ;
   wire \memory[6][0] ;
   wire \memory[5][7] ;
   wire \memory[5][6] ;
   wire \memory[5][5] ;
   wire \memory[5][4] ;
   wire \memory[5][3] ;
   wire \memory[5][2] ;
   wire \memory[5][1] ;
   wire \memory[5][0] ;
   wire \memory[4][7] ;
   wire \memory[4][6] ;
   wire \memory[4][5] ;
   wire \memory[4][4] ;
   wire \memory[4][3] ;
   wire \memory[4][2] ;
   wire \memory[4][1] ;
   wire \memory[4][0] ;
   wire \memory[3][7] ;
   wire \memory[3][6] ;
   wire \memory[3][5] ;
   wire \memory[3][4] ;
   wire \memory[3][3] ;
   wire \memory[3][2] ;
   wire \memory[3][1] ;
   wire \memory[3][0] ;
   wire \memory[2][7] ;
   wire \memory[2][6] ;
   wire \memory[2][5] ;
   wire \memory[2][4] ;
   wire \memory[2][3] ;
   wire \memory[2][2] ;
   wire \memory[2][1] ;
   wire \memory[2][0] ;
   wire \memory[1][7] ;
   wire \memory[1][6] ;
   wire \memory[1][5] ;
   wire \memory[1][4] ;
   wire \memory[1][3] ;
   wire \memory[1][2] ;
   wire \memory[1][1] ;
   wire \memory[1][0] ;
   wire \memory[0][7] ;
   wire \memory[0][6] ;
   wire \memory[0][5] ;
   wire \memory[0][4] ;
   wire \memory[0][3] ;
   wire \memory[0][2] ;
   wire \memory[0][1] ;
   wire \memory[0][0] ;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n149;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;

   assign N10 = r_addr[0] ;
   assign N11 = r_addr[1] ;
   assign N12 = r_addr[2] ;
   assign test_so = \memory[7][7]  ;

   SDFFRQX2M \memory_reg[5][7]  (.SI(\memory[5][6] ), 
	.SE(test_se), 
	.RN(reset), 
	.Q(\memory[5][7] ), 
	.D(n132), 
	.CK(w_clk));
   SDFFRQX2M \memory_reg[5][6]  (.SI(\memory[5][5] ), 
	.SE(test_se), 
	.RN(reset), 
	.Q(\memory[5][6] ), 
	.D(n131), 
	.CK(w_clk));
   SDFFRQX2M \memory_reg[5][5]  (.SI(\memory[5][4] ), 
	.SE(test_se), 
	.RN(reset), 
	.Q(\memory[5][5] ), 
	.D(n130), 
	.CK(w_clk));
   SDFFRQX2M \memory_reg[5][4]  (.SI(\memory[5][3] ), 
	.SE(FE_OFN5_SE), 
	.RN(reset), 
	.Q(\memory[5][4] ), 
	.D(n129), 
	.CK(w_clk));
   SDFFRQX2M \memory_reg[5][3]  (.SI(\memory[5][2] ), 
	.SE(FE_OFN5_SE), 
	.RN(reset), 
	.Q(\memory[5][3] ), 
	.D(n128), 
	.CK(w_clk));
   SDFFRQX2M \memory_reg[5][2]  (.SI(\memory[5][1] ), 
	.SE(FE_OFN5_SE), 
	.RN(reset), 
	.Q(\memory[5][2] ), 
	.D(n127), 
	.CK(w_clk));
   SDFFRQX2M \memory_reg[5][1]  (.SI(\memory[5][0] ), 
	.SE(test_se), 
	.RN(FE_OFN0_reset_1), 
	.Q(\memory[5][1] ), 
	.D(n126), 
	.CK(w_clk));
   SDFFRQX2M \memory_reg[5][0]  (.SI(\memory[4][7] ), 
	.SE(test_se), 
	.RN(reset), 
	.Q(\memory[5][0] ), 
	.D(n125), 
	.CK(w_clk));
   SDFFRQX2M \memory_reg[1][7]  (.SI(\memory[1][6] ), 
	.SE(FE_OFN5_SE), 
	.RN(FE_OFN0_reset_1), 
	.Q(\memory[1][7] ), 
	.D(n100), 
	.CK(ref_clock__L4_N1));
   SDFFRQX2M \memory_reg[1][6]  (.SI(\memory[1][5] ), 
	.SE(FE_OFN5_SE), 
	.RN(FE_OFN0_reset_1), 
	.Q(\memory[1][6] ), 
	.D(n99), 
	.CK(ref_clock__L4_N1));
   SDFFRQX2M \memory_reg[1][5]  (.SI(\memory[1][4] ), 
	.SE(FE_OFN5_SE), 
	.RN(FE_OFN0_reset_1), 
	.Q(\memory[1][5] ), 
	.D(n98), 
	.CK(ref_clock__L4_N1));
   SDFFRQX2M \memory_reg[1][4]  (.SI(\memory[1][3] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN0_reset_1), 
	.Q(\memory[1][4] ), 
	.D(n97), 
	.CK(ref_clock__L4_N1));
   SDFFRQX2M \memory_reg[1][3]  (.SI(\memory[1][2] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN0_reset_1), 
	.Q(\memory[1][3] ), 
	.D(n96), 
	.CK(ref_clock__L4_N1));
   SDFFRQX2M \memory_reg[1][2]  (.SI(\memory[1][1] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN0_reset_1), 
	.Q(\memory[1][2] ), 
	.D(n95), 
	.CK(ref_clock__L4_N1));
   SDFFRQX2M \memory_reg[1][1]  (.SI(\memory[1][0] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN0_reset_1), 
	.Q(\memory[1][1] ), 
	.D(n94), 
	.CK(ref_clock__L4_N1));
   SDFFRQX2M \memory_reg[1][0]  (.SI(\memory[0][7] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN0_reset_1), 
	.Q(\memory[1][0] ), 
	.D(n93), 
	.CK(ref_clock__L4_N1));
   SDFFRQX2M \memory_reg[7][7]  (.SI(\memory[7][6] ), 
	.SE(test_se), 
	.RN(reset), 
	.Q(\memory[7][7] ), 
	.D(n148), 
	.CK(w_clk));
   SDFFRQX2M \memory_reg[7][6]  (.SI(\memory[7][5] ), 
	.SE(test_se), 
	.RN(reset), 
	.Q(\memory[7][6] ), 
	.D(n147), 
	.CK(w_clk));
   SDFFRQX2M \memory_reg[7][5]  (.SI(\memory[7][4] ), 
	.SE(test_se), 
	.RN(reset), 
	.Q(\memory[7][5] ), 
	.D(n146), 
	.CK(w_clk));
   SDFFRQX2M \memory_reg[7][4]  (.SI(\memory[7][3] ), 
	.SE(test_se), 
	.RN(reset), 
	.Q(\memory[7][4] ), 
	.D(n145), 
	.CK(w_clk));
   SDFFRQX2M \memory_reg[7][3]  (.SI(\memory[7][2] ), 
	.SE(test_se), 
	.RN(reset), 
	.Q(\memory[7][3] ), 
	.D(n144), 
	.CK(w_clk));
   SDFFRQX2M \memory_reg[7][2]  (.SI(\memory[7][1] ), 
	.SE(FE_OFN5_SE), 
	.RN(reset), 
	.Q(\memory[7][2] ), 
	.D(n143), 
	.CK(w_clk));
   SDFFRQX2M \memory_reg[7][1]  (.SI(\memory[7][0] ), 
	.SE(test_se), 
	.RN(FE_OFN0_reset_1), 
	.Q(\memory[7][1] ), 
	.D(n142), 
	.CK(w_clk));
   SDFFRQX2M \memory_reg[7][0]  (.SI(\memory[6][7] ), 
	.SE(test_se), 
	.RN(reset), 
	.Q(\memory[7][0] ), 
	.D(n141), 
	.CK(w_clk));
   SDFFRQX2M \memory_reg[3][7]  (.SI(\memory[3][6] ), 
	.SE(FE_OFN5_SE), 
	.RN(FE_OFN0_reset_1), 
	.Q(\memory[3][7] ), 
	.D(n116), 
	.CK(w_clk));
   SDFFRQX2M \memory_reg[3][6]  (.SI(\memory[3][5] ), 
	.SE(FE_OFN5_SE), 
	.RN(reset), 
	.Q(\memory[3][6] ), 
	.D(n115), 
	.CK(w_clk));
   SDFFRQX2M \memory_reg[3][5]  (.SI(\memory[3][4] ), 
	.SE(FE_OFN5_SE), 
	.RN(reset), 
	.Q(\memory[3][5] ), 
	.D(n114), 
	.CK(w_clk));
   SDFFRQX2M \memory_reg[3][4]  (.SI(\memory[3][3] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN0_reset_1), 
	.Q(\memory[3][4] ), 
	.D(n113), 
	.CK(ref_clock__L4_N1));
   SDFFRQX2M \memory_reg[3][3]  (.SI(\memory[3][2] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN0_reset_1), 
	.Q(\memory[3][3] ), 
	.D(n112), 
	.CK(ref_clock__L4_N1));
   SDFFRQX2M \memory_reg[3][2]  (.SI(\memory[3][1] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN0_reset_1), 
	.Q(\memory[3][2] ), 
	.D(n111), 
	.CK(ref_clock__L4_N1));
   SDFFRQX2M \memory_reg[3][1]  (.SI(\memory[3][0] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN0_reset_1), 
	.Q(\memory[3][1] ), 
	.D(n110), 
	.CK(ref_clock__L4_N1));
   SDFFRQX2M \memory_reg[3][0]  (.SI(\memory[2][7] ), 
	.SE(test_se), 
	.RN(FE_OFN0_reset_1), 
	.Q(\memory[3][0] ), 
	.D(n109), 
	.CK(ref_clock__L4_N1));
   SDFFRQX2M \memory_reg[6][7]  (.SI(\memory[6][6] ), 
	.SE(test_se), 
	.RN(reset), 
	.Q(\memory[6][7] ), 
	.D(n140), 
	.CK(w_clk));
   SDFFRQX2M \memory_reg[6][6]  (.SI(\memory[6][5] ), 
	.SE(test_se), 
	.RN(reset), 
	.Q(\memory[6][6] ), 
	.D(n139), 
	.CK(w_clk));
   SDFFRQX2M \memory_reg[6][5]  (.SI(\memory[6][4] ), 
	.SE(test_se), 
	.RN(reset), 
	.Q(\memory[6][5] ), 
	.D(n138), 
	.CK(w_clk));
   SDFFRQX2M \memory_reg[6][4]  (.SI(\memory[6][3] ), 
	.SE(test_se), 
	.RN(reset), 
	.Q(\memory[6][4] ), 
	.D(n137), 
	.CK(w_clk));
   SDFFRQX2M \memory_reg[6][3]  (.SI(\memory[6][2] ), 
	.SE(FE_OFN5_SE), 
	.RN(reset), 
	.Q(\memory[6][3] ), 
	.D(n136), 
	.CK(w_clk));
   SDFFRQX2M \memory_reg[6][2]  (.SI(\memory[6][1] ), 
	.SE(test_se), 
	.RN(reset), 
	.Q(\memory[6][2] ), 
	.D(n135), 
	.CK(w_clk));
   SDFFRQX2M \memory_reg[6][1]  (.SI(\memory[6][0] ), 
	.SE(test_se), 
	.RN(reset), 
	.Q(\memory[6][1] ), 
	.D(n134), 
	.CK(w_clk));
   SDFFRQX2M \memory_reg[6][0]  (.SI(\memory[5][7] ), 
	.SE(test_se), 
	.RN(reset), 
	.Q(\memory[6][0] ), 
	.D(n133), 
	.CK(w_clk));
   SDFFRQX2M \memory_reg[2][7]  (.SI(\memory[2][6] ), 
	.SE(FE_OFN5_SE), 
	.RN(FE_OFN0_reset_1), 
	.Q(\memory[2][7] ), 
	.D(n108), 
	.CK(ref_clock__L4_N1));
   SDFFRQX2M \memory_reg[2][6]  (.SI(\memory[2][5] ), 
	.SE(FE_OFN5_SE), 
	.RN(FE_OFN0_reset_1), 
	.Q(\memory[2][6] ), 
	.D(n107), 
	.CK(ref_clock__L4_N1));
   SDFFRQX2M \memory_reg[2][5]  (.SI(\memory[2][4] ), 
	.SE(FE_OFN5_SE), 
	.RN(FE_OFN0_reset_1), 
	.Q(\memory[2][5] ), 
	.D(n106), 
	.CK(w_clk));
   SDFFRQX2M \memory_reg[2][4]  (.SI(\memory[2][3] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN0_reset_1), 
	.Q(\memory[2][4] ), 
	.D(n105), 
	.CK(ref_clock__L4_N1));
   SDFFRQX2M \memory_reg[2][3]  (.SI(\memory[2][2] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN0_reset_1), 
	.Q(\memory[2][3] ), 
	.D(n104), 
	.CK(ref_clock__L4_N1));
   SDFFRQX2M \memory_reg[2][2]  (.SI(\memory[2][1] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN0_reset_1), 
	.Q(\memory[2][2] ), 
	.D(n103), 
	.CK(ref_clock__L4_N1));
   SDFFRQX2M \memory_reg[2][1]  (.SI(\memory[2][0] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN0_reset_1), 
	.Q(\memory[2][1] ), 
	.D(n102), 
	.CK(ref_clock__L4_N1));
   SDFFRQX2M \memory_reg[2][0]  (.SI(\memory[1][7] ), 
	.SE(FE_OFN5_SE), 
	.RN(FE_OFN0_reset_1), 
	.Q(\memory[2][0] ), 
	.D(n101), 
	.CK(ref_clock__L4_N1));
   SDFFRQX2M \memory_reg[4][7]  (.SI(\memory[4][6] ), 
	.SE(test_se), 
	.RN(reset), 
	.Q(\memory[4][7] ), 
	.D(n124), 
	.CK(w_clk));
   SDFFRQX2M \memory_reg[4][6]  (.SI(\memory[4][5] ), 
	.SE(test_se), 
	.RN(reset), 
	.Q(\memory[4][6] ), 
	.D(n123), 
	.CK(w_clk));
   SDFFRQX2M \memory_reg[4][5]  (.SI(\memory[4][4] ), 
	.SE(test_se), 
	.RN(reset), 
	.Q(\memory[4][5] ), 
	.D(n122), 
	.CK(w_clk));
   SDFFRQX2M \memory_reg[4][4]  (.SI(\memory[4][3] ), 
	.SE(test_se), 
	.RN(reset), 
	.Q(\memory[4][4] ), 
	.D(n121), 
	.CK(w_clk));
   SDFFRQX2M \memory_reg[4][3]  (.SI(\memory[4][2] ), 
	.SE(FE_OFN5_SE), 
	.RN(reset), 
	.Q(\memory[4][3] ), 
	.D(n120), 
	.CK(w_clk));
   SDFFRQX2M \memory_reg[4][2]  (.SI(\memory[4][1] ), 
	.SE(FE_OFN5_SE), 
	.RN(FE_OFN0_reset_1), 
	.Q(\memory[4][2] ), 
	.D(n119), 
	.CK(w_clk));
   SDFFRQX2M \memory_reg[4][1]  (.SI(\memory[4][0] ), 
	.SE(test_se), 
	.RN(FE_OFN0_reset_1), 
	.Q(\memory[4][1] ), 
	.D(n118), 
	.CK(w_clk));
   SDFFRQX2M \memory_reg[4][0]  (.SI(\memory[3][7] ), 
	.SE(test_se), 
	.RN(FE_OFN0_reset_1), 
	.Q(\memory[4][0] ), 
	.D(n117), 
	.CK(w_clk));
   SDFFRQX2M \memory_reg[0][7]  (.SI(\memory[0][6] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN0_reset_1), 
	.Q(\memory[0][7] ), 
	.D(n92), 
	.CK(ref_clock__L4_N1));
   SDFFRQX2M \memory_reg[0][6]  (.SI(\memory[0][5] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN0_reset_1), 
	.Q(\memory[0][6] ), 
	.D(n91), 
	.CK(ref_clock__L4_N1));
   SDFFRQX2M \memory_reg[0][5]  (.SI(\memory[0][4] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN0_reset_1), 
	.Q(\memory[0][5] ), 
	.D(n90), 
	.CK(ref_clock__L4_N1));
   SDFFRQX2M \memory_reg[0][4]  (.SI(\memory[0][3] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN0_reset_1), 
	.Q(\memory[0][4] ), 
	.D(n89), 
	.CK(ref_clock__L4_N1));
   SDFFRQX2M \memory_reg[0][3]  (.SI(\memory[0][2] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN0_reset_1), 
	.Q(\memory[0][3] ), 
	.D(n88), 
	.CK(ref_clock__L4_N1));
   SDFFRQX2M \memory_reg[0][2]  (.SI(\memory[0][1] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN0_reset_1), 
	.Q(\memory[0][2] ), 
	.D(n87), 
	.CK(ref_clock__L4_N1));
   SDFFRQX2M \memory_reg[0][1]  (.SI(\memory[0][0] ), 
	.SE(FE_OFN7_SE), 
	.RN(FE_OFN0_reset_1), 
	.Q(\memory[0][1] ), 
	.D(n86), 
	.CK(ref_clock__L4_N1));
   SDFFRQX2M \memory_reg[0][0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(FE_OFN0_reset_1), 
	.Q(\memory[0][0] ), 
	.D(n85), 
	.CK(ref_clock__L4_N1));
   NOR2BX2M U66 (.Y(n76), 
	.B(w_addr[2]), 
	.AN(w_clk_en));
   NAND3X2M U75 (.Y(n80), 
	.C(n81), 
	.B(n172), 
	.A(n173));
   NAND3X2M U76 (.Y(n75), 
	.C(n76), 
	.B(n172), 
	.A(n173));
   NAND3X2M U77 (.Y(n82), 
	.C(n81), 
	.B(n172), 
	.A(w_addr[0]));
   NAND3X2M U78 (.Y(n83), 
	.C(n81), 
	.B(n173), 
	.A(w_addr[1]));
   NAND3X2M U79 (.Y(n84), 
	.C(n81), 
	.B(w_addr[0]), 
	.A(w_addr[1]));
   NAND3X2M U80 (.Y(n77), 
	.C(w_addr[0]), 
	.B(n172), 
	.A(n76));
   NAND3X2M U81 (.Y(n78), 
	.C(w_addr[1]), 
	.B(n173), 
	.A(n76));
   NAND3X2M U82 (.Y(n79), 
	.C(w_addr[1]), 
	.B(n76), 
	.A(w_addr[0]));
   OAI2BB2X1M U83 (.Y(n85), 
	.B1(n164), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\memory[0][0] ));
   OAI2BB2X1M U84 (.Y(n86), 
	.B1(n165), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\memory[0][1] ));
   OAI2BB2X1M U85 (.Y(n87), 
	.B1(n166), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\memory[0][2] ));
   OAI2BB2X1M U86 (.Y(n88), 
	.B1(n167), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\memory[0][3] ));
   OAI2BB2X1M U87 (.Y(n89), 
	.B1(n168), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\memory[0][4] ));
   OAI2BB2X1M U88 (.Y(n90), 
	.B1(n169), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\memory[0][5] ));
   OAI2BB2X1M U89 (.Y(n91), 
	.B1(n170), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\memory[0][6] ));
   OAI2BB2X1M U90 (.Y(n92), 
	.B1(n171), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\memory[0][7] ));
   OAI2BB2X1M U91 (.Y(n109), 
	.B1(n79), 
	.B0(n164), 
	.A1N(n79), 
	.A0N(\memory[3][0] ));
   OAI2BB2X1M U92 (.Y(n110), 
	.B1(n79), 
	.B0(n165), 
	.A1N(n79), 
	.A0N(\memory[3][1] ));
   OAI2BB2X1M U93 (.Y(n111), 
	.B1(n79), 
	.B0(n166), 
	.A1N(n79), 
	.A0N(\memory[3][2] ));
   OAI2BB2X1M U94 (.Y(n112), 
	.B1(n79), 
	.B0(n167), 
	.A1N(n79), 
	.A0N(\memory[3][3] ));
   OAI2BB2X1M U95 (.Y(n113), 
	.B1(n79), 
	.B0(n168), 
	.A1N(n79), 
	.A0N(\memory[3][4] ));
   OAI2BB2X1M U96 (.Y(n114), 
	.B1(n79), 
	.B0(n169), 
	.A1N(n79), 
	.A0N(\memory[3][5] ));
   OAI2BB2X1M U97 (.Y(n115), 
	.B1(n79), 
	.B0(n170), 
	.A1N(n79), 
	.A0N(\memory[3][6] ));
   OAI2BB2X1M U98 (.Y(n116), 
	.B1(n79), 
	.B0(n171), 
	.A1N(n79), 
	.A0N(\memory[3][7] ));
   OAI2BB2X1M U99 (.Y(n93), 
	.B1(n77), 
	.B0(n164), 
	.A1N(n77), 
	.A0N(\memory[1][0] ));
   OAI2BB2X1M U100 (.Y(n94), 
	.B1(n77), 
	.B0(n165), 
	.A1N(n77), 
	.A0N(\memory[1][1] ));
   OAI2BB2X1M U101 (.Y(n95), 
	.B1(n77), 
	.B0(n166), 
	.A1N(n77), 
	.A0N(\memory[1][2] ));
   OAI2BB2X1M U102 (.Y(n96), 
	.B1(n77), 
	.B0(n167), 
	.A1N(n77), 
	.A0N(\memory[1][3] ));
   OAI2BB2X1M U103 (.Y(n97), 
	.B1(n77), 
	.B0(n168), 
	.A1N(n77), 
	.A0N(\memory[1][4] ));
   OAI2BB2X1M U104 (.Y(n98), 
	.B1(n77), 
	.B0(n169), 
	.A1N(n77), 
	.A0N(\memory[1][5] ));
   OAI2BB2X1M U105 (.Y(n99), 
	.B1(n77), 
	.B0(n170), 
	.A1N(n77), 
	.A0N(\memory[1][6] ));
   OAI2BB2X1M U106 (.Y(n100), 
	.B1(n77), 
	.B0(n171), 
	.A1N(n77), 
	.A0N(\memory[1][7] ));
   OAI2BB2X1M U107 (.Y(n101), 
	.B1(n78), 
	.B0(n164), 
	.A1N(n78), 
	.A0N(\memory[2][0] ));
   OAI2BB2X1M U108 (.Y(n102), 
	.B1(n78), 
	.B0(n165), 
	.A1N(n78), 
	.A0N(\memory[2][1] ));
   OAI2BB2X1M U109 (.Y(n103), 
	.B1(n78), 
	.B0(n166), 
	.A1N(n78), 
	.A0N(\memory[2][2] ));
   OAI2BB2X1M U110 (.Y(n104), 
	.B1(n78), 
	.B0(n167), 
	.A1N(n78), 
	.A0N(\memory[2][3] ));
   OAI2BB2X1M U111 (.Y(n105), 
	.B1(n78), 
	.B0(n168), 
	.A1N(n78), 
	.A0N(\memory[2][4] ));
   OAI2BB2X1M U112 (.Y(n106), 
	.B1(n78), 
	.B0(n169), 
	.A1N(n78), 
	.A0N(\memory[2][5] ));
   OAI2BB2X1M U113 (.Y(n107), 
	.B1(n78), 
	.B0(n170), 
	.A1N(n78), 
	.A0N(\memory[2][6] ));
   OAI2BB2X1M U114 (.Y(n108), 
	.B1(n78), 
	.B0(n171), 
	.A1N(n78), 
	.A0N(\memory[2][7] ));
   OAI2BB2X1M U115 (.Y(n141), 
	.B1(n84), 
	.B0(n164), 
	.A1N(n84), 
	.A0N(\memory[7][0] ));
   OAI2BB2X1M U116 (.Y(n142), 
	.B1(n84), 
	.B0(n165), 
	.A1N(n84), 
	.A0N(\memory[7][1] ));
   OAI2BB2X1M U117 (.Y(n143), 
	.B1(n84), 
	.B0(n166), 
	.A1N(n84), 
	.A0N(\memory[7][2] ));
   OAI2BB2X1M U118 (.Y(n144), 
	.B1(n84), 
	.B0(n167), 
	.A1N(n84), 
	.A0N(\memory[7][3] ));
   OAI2BB2X1M U119 (.Y(n145), 
	.B1(n84), 
	.B0(n168), 
	.A1N(n84), 
	.A0N(\memory[7][4] ));
   OAI2BB2X1M U120 (.Y(n146), 
	.B1(n84), 
	.B0(n169), 
	.A1N(n84), 
	.A0N(\memory[7][5] ));
   OAI2BB2X1M U121 (.Y(n147), 
	.B1(n84), 
	.B0(n170), 
	.A1N(n84), 
	.A0N(\memory[7][6] ));
   OAI2BB2X1M U122 (.Y(n148), 
	.B1(n84), 
	.B0(n171), 
	.A1N(n84), 
	.A0N(\memory[7][7] ));
   OAI2BB2X1M U123 (.Y(n125), 
	.B1(n82), 
	.B0(n164), 
	.A1N(n82), 
	.A0N(\memory[5][0] ));
   OAI2BB2X1M U124 (.Y(n126), 
	.B1(n82), 
	.B0(n165), 
	.A1N(n82), 
	.A0N(\memory[5][1] ));
   OAI2BB2X1M U125 (.Y(n127), 
	.B1(n82), 
	.B0(n166), 
	.A1N(n82), 
	.A0N(\memory[5][2] ));
   OAI2BB2X1M U126 (.Y(n128), 
	.B1(n82), 
	.B0(n167), 
	.A1N(n82), 
	.A0N(\memory[5][3] ));
   OAI2BB2X1M U127 (.Y(n129), 
	.B1(n82), 
	.B0(n168), 
	.A1N(n82), 
	.A0N(\memory[5][4] ));
   OAI2BB2X1M U128 (.Y(n130), 
	.B1(n82), 
	.B0(n169), 
	.A1N(n82), 
	.A0N(\memory[5][5] ));
   OAI2BB2X1M U129 (.Y(n131), 
	.B1(n82), 
	.B0(n170), 
	.A1N(n82), 
	.A0N(\memory[5][6] ));
   OAI2BB2X1M U130 (.Y(n132), 
	.B1(n82), 
	.B0(n171), 
	.A1N(n82), 
	.A0N(\memory[5][7] ));
   OAI2BB2X1M U131 (.Y(n133), 
	.B1(n83), 
	.B0(n164), 
	.A1N(n83), 
	.A0N(\memory[6][0] ));
   OAI2BB2X1M U132 (.Y(n134), 
	.B1(n83), 
	.B0(n165), 
	.A1N(n83), 
	.A0N(\memory[6][1] ));
   OAI2BB2X1M U133 (.Y(n135), 
	.B1(n83), 
	.B0(n166), 
	.A1N(n83), 
	.A0N(\memory[6][2] ));
   OAI2BB2X1M U134 (.Y(n136), 
	.B1(n83), 
	.B0(n167), 
	.A1N(n83), 
	.A0N(\memory[6][3] ));
   OAI2BB2X1M U135 (.Y(n137), 
	.B1(n83), 
	.B0(n168), 
	.A1N(n83), 
	.A0N(\memory[6][4] ));
   OAI2BB2X1M U136 (.Y(n138), 
	.B1(n83), 
	.B0(n169), 
	.A1N(n83), 
	.A0N(\memory[6][5] ));
   OAI2BB2X1M U137 (.Y(n139), 
	.B1(n83), 
	.B0(n170), 
	.A1N(n83), 
	.A0N(\memory[6][6] ));
   OAI2BB2X1M U138 (.Y(n140), 
	.B1(n83), 
	.B0(n171), 
	.A1N(n83), 
	.A0N(\memory[6][7] ));
   OAI2BB2X1M U139 (.Y(n117), 
	.B1(n80), 
	.B0(n164), 
	.A1N(n80), 
	.A0N(\memory[4][0] ));
   OAI2BB2X1M U140 (.Y(n118), 
	.B1(n80), 
	.B0(n165), 
	.A1N(n80), 
	.A0N(\memory[4][1] ));
   OAI2BB2X1M U141 (.Y(n119), 
	.B1(n80), 
	.B0(n166), 
	.A1N(n80), 
	.A0N(\memory[4][2] ));
   OAI2BB2X1M U142 (.Y(n120), 
	.B1(n80), 
	.B0(n167), 
	.A1N(n80), 
	.A0N(\memory[4][3] ));
   OAI2BB2X1M U143 (.Y(n121), 
	.B1(n80), 
	.B0(n168), 
	.A1N(n80), 
	.A0N(\memory[4][4] ));
   OAI2BB2X1M U144 (.Y(n122), 
	.B1(n80), 
	.B0(n169), 
	.A1N(n80), 
	.A0N(\memory[4][5] ));
   OAI2BB2X1M U145 (.Y(n123), 
	.B1(n80), 
	.B0(n170), 
	.A1N(n80), 
	.A0N(\memory[4][6] ));
   OAI2BB2X1M U146 (.Y(n124), 
	.B1(n80), 
	.B0(n171), 
	.A1N(n80), 
	.A0N(\memory[4][7] ));
   BUFX4M U147 (.Y(n155), 
	.A(N10));
   INVX2M U148 (.Y(n164), 
	.A(w_data[0]));
   INVX2M U149 (.Y(n165), 
	.A(w_data[1]));
   INVX2M U150 (.Y(n166), 
	.A(w_data[2]));
   INVX2M U151 (.Y(n167), 
	.A(w_data[3]));
   INVX2M U152 (.Y(n168), 
	.A(w_data[4]));
   INVX2M U153 (.Y(n169), 
	.A(w_data[5]));
   INVX2M U154 (.Y(n170), 
	.A(w_data[6]));
   INVX2M U155 (.Y(n171), 
	.A(w_data[7]));
   AND2X2M U156 (.Y(n81), 
	.B(w_clk_en), 
	.A(w_addr[2]));
   MX2X2M U157 (.Y(r_data[6]), 
	.S0(N12), 
	.B(n151), 
	.A(n152));
   MX4X1M U158 (.Y(n152), 
	.S1(N11), 
	.S0(n155), 
	.D(\memory[3][6] ), 
	.C(\memory[2][6] ), 
	.B(\memory[1][6] ), 
	.A(\memory[0][6] ));
   MX4X1M U159 (.Y(n151), 
	.S1(N11), 
	.S0(n155), 
	.D(\memory[7][6] ), 
	.C(\memory[6][6] ), 
	.B(\memory[5][6] ), 
	.A(\memory[4][6] ));
   MX2X2M U160 (.Y(r_data[2]), 
	.S0(N12), 
	.B(n69), 
	.A(n70));
   MX4X1M U161 (.Y(n70), 
	.S1(N11), 
	.S0(n155), 
	.D(\memory[3][2] ), 
	.C(\memory[2][2] ), 
	.B(\memory[1][2] ), 
	.A(\memory[0][2] ));
   MX4X1M U162 (.Y(n69), 
	.S1(N11), 
	.S0(n155), 
	.D(\memory[7][2] ), 
	.C(\memory[6][2] ), 
	.B(\memory[5][2] ), 
	.A(\memory[4][2] ));
   MX2X2M U163 (.Y(r_data[7]), 
	.S0(N12), 
	.B(n153), 
	.A(n154));
   MX4X1M U164 (.Y(n154), 
	.S1(N11), 
	.S0(n155), 
	.D(\memory[3][7] ), 
	.C(\memory[2][7] ), 
	.B(\memory[1][7] ), 
	.A(\memory[0][7] ));
   MX4X1M U165 (.Y(n153), 
	.S1(N11), 
	.S0(n155), 
	.D(\memory[7][7] ), 
	.C(\memory[6][7] ), 
	.B(\memory[5][7] ), 
	.A(\memory[4][7] ));
   MX2X2M U166 (.Y(r_data[3]), 
	.S0(N12), 
	.B(n71), 
	.A(n72));
   MX4X1M U167 (.Y(n72), 
	.S1(N11), 
	.S0(n155), 
	.D(\memory[3][3] ), 
	.C(\memory[2][3] ), 
	.B(\memory[1][3] ), 
	.A(\memory[0][3] ));
   MX4X1M U168 (.Y(n71), 
	.S1(N11), 
	.S0(n155), 
	.D(\memory[7][3] ), 
	.C(\memory[6][3] ), 
	.B(\memory[5][3] ), 
	.A(\memory[4][3] ));
   MX2X2M U169 (.Y(r_data[4]), 
	.S0(N12), 
	.B(n73), 
	.A(n74));
   MX4X1M U170 (.Y(n74), 
	.S1(N11), 
	.S0(n155), 
	.D(\memory[3][4] ), 
	.C(\memory[2][4] ), 
	.B(\memory[1][4] ), 
	.A(\memory[0][4] ));
   MX4X1M U171 (.Y(n73), 
	.S1(N11), 
	.S0(n155), 
	.D(\memory[7][4] ), 
	.C(\memory[6][4] ), 
	.B(\memory[5][4] ), 
	.A(\memory[4][4] ));
   MX2X2M U172 (.Y(r_data[0]), 
	.S0(N12), 
	.B(n65), 
	.A(n66));
   MX4X1M U173 (.Y(n66), 
	.S1(N11), 
	.S0(n155), 
	.D(\memory[3][0] ), 
	.C(\memory[2][0] ), 
	.B(\memory[1][0] ), 
	.A(\memory[0][0] ));
   MX4X1M U174 (.Y(n65), 
	.S1(N11), 
	.S0(n155), 
	.D(\memory[7][0] ), 
	.C(\memory[6][0] ), 
	.B(\memory[5][0] ), 
	.A(\memory[4][0] ));
   MX2X2M U175 (.Y(r_data[5]), 
	.S0(N12), 
	.B(n149), 
	.A(n150));
   MX4X1M U176 (.Y(n150), 
	.S1(N11), 
	.S0(n155), 
	.D(\memory[3][5] ), 
	.C(\memory[2][5] ), 
	.B(\memory[1][5] ), 
	.A(\memory[0][5] ));
   MX4X1M U177 (.Y(n149), 
	.S1(N11), 
	.S0(n155), 
	.D(\memory[7][5] ), 
	.C(\memory[6][5] ), 
	.B(\memory[5][5] ), 
	.A(\memory[4][5] ));
   MX2X2M U178 (.Y(r_data[1]), 
	.S0(N12), 
	.B(n67), 
	.A(n68));
   MX4X1M U179 (.Y(n68), 
	.S1(N11), 
	.S0(n155), 
	.D(\memory[3][1] ), 
	.C(\memory[2][1] ), 
	.B(\memory[1][1] ), 
	.A(\memory[0][1] ));
   MX4X1M U180 (.Y(n67), 
	.S1(N11), 
	.S0(n155), 
	.D(\memory[7][1] ), 
	.C(\memory[6][1] ), 
	.B(\memory[5][1] ), 
	.A(\memory[4][1] ));
   INVX2M U181 (.Y(n173), 
	.A(w_addr[0]));
   INVX2M U182 (.Y(n172), 
	.A(w_addr[1]));
endmodule

module fifo_rptr_test_1 (
	r_clk, 
	r_rstn, 
	r_inc, 
	sync_wr_ptr, 
	rd_addr, 
	empty, 
	gray_rd_ptr, 
	test_si2, 
	test_si1, 
	test_so1, 
	test_se);
   input r_clk;
   input r_rstn;
   input r_inc;
   input [3:0] sync_wr_ptr;
   output [2:0] rd_addr;
   output empty;
   output [3:0] gray_rd_ptr;
   input test_si2;
   input test_si1;
   output test_so1;
   input test_se;

   // Internal wires
   wire FE_PHN1_test_si3;
   wire FE_PHN0_test_si3;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire [3:0] comb_gray_rd_ptr;

   assign test_so1 = comb_gray_rd_ptr[3] ;

   DLY4X1M FE_PHC1_test_si3 (.Y(FE_PHN1_test_si3), 
	.A(FE_PHN0_test_si3));
   DLY4X1M FE_PHC0_test_si3 (.Y(FE_PHN0_test_si3), 
	.A(test_si2));
   SDFFRQX2M \rd_ptr_reg[3]  (.SI(rd_addr[2]), 
	.SE(test_se), 
	.RN(r_rstn), 
	.Q(comb_gray_rd_ptr[3]), 
	.D(n20), 
	.CK(r_clk));
   SDFFRQX2M \rd_ptr_reg[2]  (.SI(FE_PHN1_test_si3), 
	.SE(test_se), 
	.RN(r_rstn), 
	.Q(rd_addr[2]), 
	.D(n21), 
	.CK(r_clk));
   SDFFRQX2M \gray_rd_ptr_reg[3]  (.SI(gray_rd_ptr[2]), 
	.SE(test_se), 
	.RN(r_rstn), 
	.Q(gray_rd_ptr[3]), 
	.D(comb_gray_rd_ptr[3]), 
	.CK(r_clk));
   SDFFRQX2M \gray_rd_ptr_reg[2]  (.SI(gray_rd_ptr[1]), 
	.SE(test_se), 
	.RN(r_rstn), 
	.Q(gray_rd_ptr[2]), 
	.D(comb_gray_rd_ptr[2]), 
	.CK(r_clk));
   SDFFRQX2M \gray_rd_ptr_reg[1]  (.SI(gray_rd_ptr[0]), 
	.SE(test_se), 
	.RN(r_rstn), 
	.Q(gray_rd_ptr[1]), 
	.D(comb_gray_rd_ptr[1]), 
	.CK(r_clk));
   SDFFRQX2M \gray_rd_ptr_reg[0]  (.SI(test_si1), 
	.SE(test_se), 
	.RN(r_rstn), 
	.Q(gray_rd_ptr[0]), 
	.D(comb_gray_rd_ptr[0]), 
	.CK(r_clk));
   SDFFRQX4M \rd_ptr_reg[1]  (.SI(n10), 
	.SE(test_se), 
	.RN(r_rstn), 
	.Q(rd_addr[1]), 
	.D(n22), 
	.CK(r_clk));
   SDFFRX1M \rd_ptr_reg[0]  (.SI(gray_rd_ptr[3]), 
	.SE(test_se), 
	.RN(r_rstn), 
	.QN(n10), 
	.Q(rd_addr[0]), 
	.D(n23), 
	.CK(r_clk));
   XNOR2X2M U13 (.Y(n17), 
	.B(sync_wr_ptr[0]), 
	.A(comb_gray_rd_ptr[0]));
   XNOR2X2M U14 (.Y(comb_gray_rd_ptr[0]), 
	.B(rd_addr[1]), 
	.A(n10));
   NOR2X2M U15 (.Y(n13), 
	.B(n10), 
	.A(n14));
   XNOR2X2M U16 (.Y(n21), 
	.B(n12), 
	.A(rd_addr[2]));
   XNOR2X2M U17 (.Y(n20), 
	.B(n11), 
	.A(comb_gray_rd_ptr[3]));
   NAND2BX2M U18 (.Y(n11), 
	.B(rd_addr[2]), 
	.AN(n12));
   NAND4X2M U19 (.Y(empty), 
	.D(n19), 
	.C(n18), 
	.B(n17), 
	.A(n16));
   XNOR2X2M U20 (.Y(n18), 
	.B(sync_wr_ptr[3]), 
	.A(comb_gray_rd_ptr[3]));
   XNOR2X2M U21 (.Y(n19), 
	.B(sync_wr_ptr[2]), 
	.A(comb_gray_rd_ptr[2]));
   XNOR2X2M U22 (.Y(n16), 
	.B(sync_wr_ptr[1]), 
	.A(comb_gray_rd_ptr[1]));
   NAND2X2M U23 (.Y(n14), 
	.B(empty), 
	.A(r_inc));
   NAND2X2M U24 (.Y(n12), 
	.B(rd_addr[1]), 
	.A(n13));
   CLKXOR2X2M U25 (.Y(comb_gray_rd_ptr[1]), 
	.B(rd_addr[2]), 
	.A(rd_addr[1]));
   CLKXOR2X2M U26 (.Y(comb_gray_rd_ptr[2]), 
	.B(rd_addr[2]), 
	.A(comb_gray_rd_ptr[3]));
   CLKXOR2X2M U27 (.Y(n22), 
	.B(n13), 
	.A(rd_addr[1]));
   CLKXOR2X2M U28 (.Y(n23), 
	.B(n14), 
	.A(n10));
endmodule

module BIT_SYNC_test_0 (
	CLK, 
	RST, 
	ASYNC, 
	SYNC, 
	test_si, 
	test_se);
   input CLK;
   input RST;
   input [3:0] ASYNC;
   output [3:0] SYNC;
   input test_si;
   input test_se;

   // Internal wires
   wire \sync_reg[3][0] ;
   wire \sync_reg[2][0] ;
   wire \sync_reg[1][0] ;
   wire \sync_reg[0][0] ;

   SDFFRQX2M \sync_reg_reg[1][1]  (.SI(\sync_reg[1][0] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC[1]), 
	.D(\sync_reg[1][0] ), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[0][1]  (.SI(\sync_reg[0][0] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC[0]), 
	.D(\sync_reg[0][0] ), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[3][1]  (.SI(\sync_reg[3][0] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC[3]), 
	.D(\sync_reg[3][0] ), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[2][1]  (.SI(\sync_reg[2][0] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC[2]), 
	.D(\sync_reg[2][0] ), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[3][0]  (.SI(SYNC[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\sync_reg[3][0] ), 
	.D(ASYNC[3]), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[2][0]  (.SI(SYNC[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\sync_reg[2][0] ), 
	.D(ASYNC[2]), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[1][0]  (.SI(SYNC[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\sync_reg[1][0] ), 
	.D(ASYNC[1]), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[0][0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\sync_reg[0][0] ), 
	.D(ASYNC[0]), 
	.CK(CLK));
endmodule

module BIT_SYNC_test_1 (
	CLK, 
	RST, 
	ASYNC, 
	SYNC, 
	test_si, 
	test_se, 
	FE_OFN3_SE);
   input CLK;
   input RST;
   input [3:0] ASYNC;
   output [3:0] SYNC;
   input test_si;
   input test_se;
   input FE_OFN3_SE;

   // Internal wires
   wire \sync_reg[3][0] ;
   wire \sync_reg[2][0] ;
   wire \sync_reg[1][0] ;
   wire \sync_reg[0][0] ;

   SDFFRQX2M \sync_reg_reg[3][1]  (.SI(\sync_reg[3][0] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC[3]), 
	.D(\sync_reg[3][0] ), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[2][1]  (.SI(\sync_reg[2][0] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC[2]), 
	.D(\sync_reg[2][0] ), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[1][1]  (.SI(\sync_reg[1][0] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC[1]), 
	.D(\sync_reg[1][0] ), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[0][1]  (.SI(\sync_reg[0][0] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC[0]), 
	.D(\sync_reg[0][0] ), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[3][0]  (.SI(SYNC[2]), 
	.SE(FE_OFN3_SE), 
	.RN(RST), 
	.Q(\sync_reg[3][0] ), 
	.D(ASYNC[3]), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[2][0]  (.SI(SYNC[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\sync_reg[2][0] ), 
	.D(ASYNC[2]), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[1][0]  (.SI(SYNC[0]), 
	.SE(FE_OFN3_SE), 
	.RN(RST), 
	.Q(\sync_reg[1][0] ), 
	.D(ASYNC[1]), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[0][0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\sync_reg[0][0] ), 
	.D(ASYNC[0]), 
	.CK(CLK));
endmodule

module fifo_top_test_1 (
	wrst_n, 
	reset, 
	w_clk, 
	winc, 
	w_data, 
	r_clk, 
	rrest_n, 
	rinc, 
	w_full, 
	r_data, 
	r_empty, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN0_reset_1, 
	FE_OFN2_reset_2, 
	FE_OFN3_SE, 
	FE_OFN5_SE, 
	FE_OFN7_SE, 
	ref_clock__L4_N1);
   input wrst_n;
   input reset;
   input w_clk;
   input winc;
   input [7:0] w_data;
   input r_clk;
   input rrest_n;
   input rinc;
   output w_full;
   output [7:0] r_data;
   output r_empty;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN0_reset_1;
   input FE_OFN2_reset_2;
   input FE_OFN3_SE;
   input FE_OFN5_SE;
   input FE_OFN7_SE;
   input ref_clock__L4_N1;

   // Internal wires
   wire in_full;
   wire n5;
   wire n6;
   wire [3:0] in_wq2_rptr;
   wire [3:0] in_wptr;
   wire [2:0] in_w_addr;
   wire [2:0] in_r_addr;
   wire [3:0] in_rq2_wptr;
   wire [3:0] in_rptr;

   assign test_so1 = in_r_addr[1] ;
   assign test_so2 = in_rq2_wptr[3] ;

   fifo_wptr_test_1 A0 (.w_clk(w_clk), 
	.wrst_n(FE_OFN0_reset_1), 
	.winc(winc), 
	.wq2_rptr({ in_wq2_rptr[3],
		in_wq2_rptr[2],
		in_wq2_rptr[1],
		in_wq2_rptr[0] }), 
	.wptr({ in_wptr[3],
		in_wptr[2],
		in_wptr[1],
		in_wptr[0] }), 
	.w_addr({ in_w_addr[2],
		in_w_addr[1],
		in_w_addr[0] }), 
	.w_full(w_full), 
	.wire_w_full(in_full), 
	.test_si(test_si1), 
	.test_se(test_se), 
	.FE_OFN3_SE(FE_OFN3_SE), 
	.FE_OFN7_SE(FE_OFN7_SE), 
	.ref_clock__L4_N1(ref_clock__L4_N1));
   fifo_memory_test_1 A1 (.w_clk(w_clk), 
	.w_clk_en(in_full), 
	.reset(reset), 
	.w_addr({ in_w_addr[2],
		in_w_addr[1],
		in_w_addr[0] }), 
	.r_addr({ in_r_addr[2],
		in_r_addr[1],
		in_r_addr[0] }), 
	.w_data({ w_data[7],
		w_data[6],
		w_data[5],
		w_data[4],
		w_data[3],
		w_data[2],
		w_data[1],
		w_data[0] }), 
	.r_data({ r_data[7],
		r_data[6],
		r_data[5],
		r_data[4],
		r_data[3],
		r_data[2],
		r_data[1],
		r_data[0] }), 
	.test_si(in_wptr[3]), 
	.test_so(n6), 
	.test_se(test_se), 
	.FE_OFN0_reset_1(FE_OFN0_reset_1), 
	.FE_OFN5_SE(FE_OFN5_SE), 
	.FE_OFN7_SE(FE_OFN7_SE), 
	.ref_clock__L4_N1(ref_clock__L4_N1));
   fifo_rptr_test_1 A2 (.r_clk(r_clk), 
	.r_rstn(FE_OFN2_reset_2), 
	.r_inc(rinc), 
	.sync_wr_ptr({ in_rq2_wptr[3],
		in_rq2_wptr[2],
		in_rq2_wptr[1],
		in_rq2_wptr[0] }), 
	.rd_addr({ in_r_addr[2],
		in_r_addr[1],
		in_r_addr[0] }), 
	.empty(r_empty), 
	.gray_rd_ptr({ in_rptr[3],
		in_rptr[2],
		in_rptr[1],
		in_rptr[0] }), 
	.test_si2(test_si2), 
	.test_si1(n6), 
	.test_so1(n5), 
	.test_se(test_se));
   BIT_SYNC_test_0 A3 (.CLK(w_clk), 
	.RST(wrst_n), 
	.ASYNC({ in_rptr[3],
		in_rptr[2],
		in_rptr[1],
		in_rptr[0] }), 
	.SYNC({ in_wq2_rptr[3],
		in_wq2_rptr[2],
		in_wq2_rptr[1],
		in_wq2_rptr[0] }), 
	.test_si(n5), 
	.test_se(test_se));
   BIT_SYNC_test_1 A4 (.CLK(r_clk), 
	.RST(rrest_n), 
	.ASYNC({ in_wptr[3],
		in_wptr[2],
		in_wptr[1],
		in_wptr[0] }), 
	.SYNC({ in_rq2_wptr[3],
		in_rq2_wptr[2],
		in_rq2_wptr[1],
		in_rq2_wptr[0] }), 
	.test_si(in_wq2_rptr[3]), 
	.test_se(test_se), 
	.FE_OFN3_SE(FE_OFN3_SE));
endmodule

module reset_sync_test_1 (
	clk, 
	reset, 
	sync_reset, 
	test_si, 
	test_so, 
	test_se);
   input clk;
   input reset;
   output sync_reset;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire [1:0] stages;

   assign test_so = stages[1] ;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX2M \stages_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(reset), 
	.Q(stages[0]), 
	.D(HTIE_LTIEHI_NET), 
	.CK(clk));
   SDFFRQX1M \stages_reg[1]  (.SI(stages[0]), 
	.SE(test_se), 
	.RN(reset), 
	.Q(stages[1]), 
	.D(stages[0]), 
	.CK(clk));
   AND2X2M U6 (.Y(sync_reset), 
	.B(reset), 
	.A(stages[1]));
endmodule

module pluse_gen_test_1 (
	clk, 
	reset, 
	busy, 
	rd_inc, 
	test_si, 
	test_so, 
	test_se);
   input clk;
   input reset;
   input busy;
   output rd_inc;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire n4;
   wire [1:0] process;

   assign test_so = process[1] ;

   SDFFRQX2M \process_reg[1]  (.SI(process[0]), 
	.SE(test_se), 
	.RN(reset), 
	.Q(process[1]), 
	.D(process[0]), 
	.CK(clk));
   SDFFRQX1M \process_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(reset), 
	.Q(process[0]), 
	.D(busy), 
	.CK(clk));
   INVX2M U6 (.Y(n4), 
	.A(reset));
   NOR3BX2M U7 (.Y(rd_inc), 
	.C(n4), 
	.B(process[0]), 
	.AN(process[1]));
endmodule

module uart_rx_fsm_DATA_WIDTH8_test_1 (
	CLK, 
	RST, 
	S_DATA, 
	Prescale, 
	parity_enable, 
	bit_count, 
	edge_count, 
	par_err, 
	stp_err, 
	strt_glitch, 
	strt_chk_en, 
	edge_bit_en, 
	deser_en, 
	par_chk_en, 
	stp_chk_en, 
	dat_samp_en, 
	data_valid, 
	test_so, 
	test_se);
   input CLK;
   input RST;
   input S_DATA;
   input [5:0] Prescale;
   input parity_enable;
   input [3:0] bit_count;
   input [5:0] edge_count;
   input par_err;
   input stp_err;
   input strt_glitch;
   output strt_chk_en;
   output edge_bit_en;
   output deser_en;
   output par_chk_en;
   output stp_chk_en;
   output dat_samp_en;
   output data_valid;
   output test_so;
   input test_se;

   // Internal wires
   wire \sub_40/carry[5] ;
   wire \sub_40/carry[4] ;
   wire \sub_40/carry[3] ;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire [5:0] check_edge;
   wire [5:0] error_check_edge;
   wire [2:0] current_state;
   wire [2:0] next_state;

   assign error_check_edge[0] = Prescale[0] ;
   assign test_so = n25 ;

   SDFFRQX2M \current_state_reg[2]  (.SI(n24), 
	.SE(test_se), 
	.RN(RST), 
	.Q(current_state[2]), 
	.D(next_state[2]), 
	.CK(CLK));
   SDFFRQX2M \current_state_reg[0]  (.SI(strt_glitch), 
	.SE(test_se), 
	.RN(RST), 
	.Q(current_state[0]), 
	.D(next_state[0]), 
	.CK(CLK));
   SDFFRQX2M \current_state_reg[1]  (.SI(current_state[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(current_state[1]), 
	.D(next_state[1]), 
	.CK(CLK));
   INVX2M U4 (.Y(check_edge[0]), 
	.A(error_check_edge[0]));
   INVX2M U5 (.Y(n5), 
	.A(Prescale[3]));
   XNOR2X2M U6 (.Y(n37), 
	.B(edge_count[1]), 
	.A(Prescale[1]));
   XNOR2X1M U9 (.Y(error_check_edge[5]), 
	.B(\sub_40/carry[5] ), 
	.A(Prescale[5]));
   OR2X1M U10 (.Y(\sub_40/carry[5] ), 
	.B(\sub_40/carry[4] ), 
	.A(Prescale[4]));
   XNOR2X1M U11 (.Y(error_check_edge[4]), 
	.B(Prescale[4]), 
	.A(\sub_40/carry[4] ));
   OR2X1M U12 (.Y(\sub_40/carry[4] ), 
	.B(\sub_40/carry[3] ), 
	.A(Prescale[3]));
   XNOR2X1M U13 (.Y(error_check_edge[3]), 
	.B(Prescale[3]), 
	.A(\sub_40/carry[3] ));
   OR2X1M U14 (.Y(\sub_40/carry[3] ), 
	.B(Prescale[1]), 
	.A(Prescale[2]));
   XNOR2X1M U15 (.Y(error_check_edge[2]), 
	.B(Prescale[2]), 
	.A(Prescale[1]));
   NAND2BX1M U16 (.Y(n1), 
	.B(check_edge[0]), 
	.AN(Prescale[1]));
   OAI2BB1X1M U17 (.Y(check_edge[1]), 
	.B0(n1), 
	.A1N(Prescale[1]), 
	.A0N(error_check_edge[0]));
   NOR2X1M U18 (.Y(n2), 
	.B(Prescale[2]), 
	.A(n1));
   AO21XLM U19 (.Y(check_edge[2]), 
	.B0(n2), 
	.A1(Prescale[2]), 
	.A0(n1));
   CLKNAND2X2M U20 (.Y(n3), 
	.B(n5), 
	.A(n2));
   OAI21X1M U21 (.Y(check_edge[3]), 
	.B0(n3), 
	.A1(n5), 
	.A0(n2));
   XNOR2X1M U22 (.Y(check_edge[4]), 
	.B(n3), 
	.A(Prescale[4]));
   NOR2X1M U23 (.Y(n4), 
	.B(n3), 
	.A(Prescale[4]));
   CLKXOR2X2M U24 (.Y(check_edge[5]), 
	.B(n4), 
	.A(Prescale[5]));
   NOR2X1M U25 (.Y(strt_chk_en), 
	.B(n6), 
	.A(current_state[1]));
   NOR2X1M U26 (.Y(par_chk_en), 
	.B(n7), 
	.A(current_state[2]));
   OAI31X1M U27 (.Y(next_state[2]), 
	.B0(n13), 
	.A2(n9), 
	.A1(parity_enable), 
	.A0(n8));
   AOI31X1M U28 (.Y(n13), 
	.B0(stp_chk_en), 
	.A2(n16), 
	.A1(n15), 
	.A0(n14));
   NOR2X1M U29 (.Y(n16), 
	.B(n18), 
	.A(n17));
   CLKINVX1M U30 (.Y(n18), 
	.A(bit_count[3]));
   CLKINVX1M U31 (.Y(n15), 
	.A(n7));
   OAI21X1M U32 (.Y(next_state[1]), 
	.B0(n7), 
	.A1(n19), 
	.A0(current_state[2]));
   AOI31X1M U33 (.Y(n19), 
	.B0(current_state[1]), 
	.A2(n20), 
	.A1(n14), 
	.A0(current_state[0]));
   NOR3X1M U34 (.Y(n20), 
	.C(bit_count[3]), 
	.B(strt_glitch), 
	.A(bit_count[0]));
   OAI221X1M U35 (.Y(next_state[0]), 
	.C0(n23), 
	.B1(n8), 
	.B0(n22), 
	.A1(n21), 
	.A0(S_DATA));
   AOI31X1M U36 (.Y(n23), 
	.B0(n27), 
	.A2(n26), 
	.A1(n25), 
	.A0(n24));
   NOR4X1M U37 (.Y(n27), 
	.D(n31), 
	.C(n30), 
	.B(n29), 
	.A(n28));
   CLKXOR2X2M U38 (.Y(n31), 
	.B(edge_count[5]), 
	.A(error_check_edge[5]));
   CLKXOR2X2M U39 (.Y(n30), 
	.B(edge_count[4]), 
	.A(error_check_edge[4]));
   NAND3BX1M U40 (.Y(n29), 
	.C(stp_chk_en), 
	.B(bit_count[3]), 
	.AN(bit_count[2]));
   NOR2X1M U41 (.Y(stp_chk_en), 
	.B(n7), 
	.A(n25));
   NAND4X1M U42 (.Y(n28), 
	.D(n35), 
	.C(n34), 
	.B(n33), 
	.A(n32));
   XNOR2X1M U43 (.Y(n35), 
	.B(error_check_edge[2]), 
	.A(edge_count[2]));
   NOR2X1M U44 (.Y(n34), 
	.B(n37), 
	.A(n36));
   CLKXOR2X2M U45 (.Y(n36), 
	.B(edge_count[0]), 
	.A(error_check_edge[0]));
   XNOR2X1M U46 (.Y(n33), 
	.B(error_check_edge[3]), 
	.A(edge_count[3]));
   MXI2X1M U47 (.Y(n32), 
	.S0(parity_enable), 
	.B(n39), 
	.A(n38));
   CLKNAND2X2M U48 (.Y(n39), 
	.B(n17), 
	.A(bit_count[1]));
   OR2X1M U49 (.Y(n38), 
	.B(n17), 
	.A(bit_count[1]));
   MXI2X1M U50 (.Y(n26), 
	.S0(current_state[0]), 
	.B(n40), 
	.A(S_DATA));
   NOR4BX1M U51 (.Y(n40), 
	.D(n41), 
	.C(bit_count[0]), 
	.B(bit_count[3]), 
	.AN(strt_glitch));
   CLKINVX1M U52 (.Y(n22), 
	.A(n9));
   NAND3X1M U53 (.Y(n9), 
	.C(bit_count[3]), 
	.B(n17), 
	.A(n14));
   CLKINVX1M U54 (.Y(n17), 
	.A(bit_count[0]));
   CLKINVX1M U55 (.Y(n14), 
	.A(n41));
   CLKNAND2X2M U56 (.Y(n41), 
	.B(n43), 
	.A(n42));
   NOR4X1M U57 (.Y(n43), 
	.D(n45), 
	.C(n44), 
	.B(bit_count[1]), 
	.A(bit_count[2]));
   CLKXOR2X2M U58 (.Y(n45), 
	.B(check_edge[0]), 
	.A(edge_count[0]));
   CLKXOR2X2M U59 (.Y(n44), 
	.B(check_edge[4]), 
	.A(edge_count[4]));
   NOR4X1M U60 (.Y(n42), 
	.D(n49), 
	.C(n48), 
	.B(n47), 
	.A(n46));
   CLKXOR2X2M U61 (.Y(n49), 
	.B(check_edge[3]), 
	.A(edge_count[3]));
   CLKXOR2X2M U62 (.Y(n48), 
	.B(check_edge[2]), 
	.A(edge_count[2]));
   CLKXOR2X2M U63 (.Y(n47), 
	.B(check_edge[5]), 
	.A(edge_count[5]));
   CLKXOR2X2M U64 (.Y(n46), 
	.B(check_edge[1]), 
	.A(edge_count[1]));
   CLKNAND2X2M U65 (.Y(edge_bit_en), 
	.B(n7), 
	.A(n6));
   CLKNAND2X2M U66 (.Y(n7), 
	.B(n50), 
	.A(current_state[1]));
   CLKINVX1M U67 (.Y(deser_en), 
	.A(n8));
   NAND3X1M U68 (.Y(n8), 
	.C(current_state[0]), 
	.B(n25), 
	.A(current_state[1]));
   CLKINVX1M U69 (.Y(n25), 
	.A(current_state[2]));
   NOR3X1M U70 (.Y(data_valid), 
	.C(par_err), 
	.B(stp_err), 
	.A(n21));
   NAND3X1M U71 (.Y(n21), 
	.C(current_state[0]), 
	.B(current_state[1]), 
	.A(current_state[2]));
   CLKNAND2X2M U72 (.Y(dat_samp_en), 
	.B(n6), 
	.A(n24));
   AO21XLM U73 (.Y(n6), 
	.B0(current_state[2]), 
	.A1(S_DATA), 
	.A0(n50));
   CLKINVX1M U74 (.Y(n50), 
	.A(current_state[0]));
   CLKINVX1M U75 (.Y(n24), 
	.A(current_state[1]));
endmodule

module edge_bit_counter_test_1 (
	CLK, 
	RST, 
	Enable, 
	Prescale, 
	bit_count, 
	edge_count, 
	test_si, 
	test_se, 
	FE_OFN5_SE);
   input CLK;
   input RST;
   input Enable;
   input [5:0] Prescale;
   output [3:0] bit_count;
   output [5:0] edge_count;
   input test_si;
   input test_se;
   input FE_OFN5_SE;

   // Internal wires
   wire N8;
   wire N9;
   wire N10;
   wire N11;
   wire N19;
   wire N20;
   wire N21;
   wire N22;
   wire N23;
   wire N24;
   wire N25;
   wire N26;
   wire N27;
   wire N28;
   wire N29;
   wire N30;
   wire N31;
   wire n14;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire \add_31/carry[5] ;
   wire \add_31/carry[4] ;
   wire \add_31/carry[3] ;
   wire \add_31/carry[2] ;
   wire n1;
   wire n2;
   wire n13;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;

   SDFFRX1M \bit_count_reg[3]  (.SI(n42), 
	.SE(FE_OFN5_SE), 
	.RN(RST), 
	.QN(n14), 
	.Q(bit_count[3]), 
	.D(n27), 
	.CK(CLK));
   SDFFRQX2M \bit_count_reg[2]  (.SI(n41), 
	.SE(FE_OFN5_SE), 
	.RN(RST), 
	.Q(bit_count[2]), 
	.D(n28), 
	.CK(CLK));
   SDFFRQX2M \bit_count_reg[1]  (.SI(n40), 
	.SE(test_se), 
	.RN(RST), 
	.Q(bit_count[1]), 
	.D(n29), 
	.CK(CLK));
   SDFFRQX2M \bit_count_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(bit_count[0]), 
	.D(n30), 
	.CK(CLK));
   SDFFRQX2M \edge_count_reg[5]  (.SI(edge_count[4]), 
	.SE(FE_OFN5_SE), 
	.RN(RST), 
	.Q(edge_count[5]), 
	.D(N24), 
	.CK(CLK));
   SDFFRQX2M \edge_count_reg[4]  (.SI(edge_count[3]), 
	.SE(FE_OFN5_SE), 
	.RN(RST), 
	.Q(edge_count[4]), 
	.D(N23), 
	.CK(CLK));
   SDFFRQX2M \edge_count_reg[0]  (.SI(n14), 
	.SE(FE_OFN5_SE), 
	.RN(RST), 
	.Q(edge_count[0]), 
	.D(N19), 
	.CK(CLK));
   SDFFRQX2M \edge_count_reg[3]  (.SI(edge_count[2]), 
	.SE(FE_OFN5_SE), 
	.RN(RST), 
	.Q(edge_count[3]), 
	.D(N22), 
	.CK(CLK));
   SDFFRQX2M \edge_count_reg[2]  (.SI(edge_count[1]), 
	.SE(FE_OFN5_SE), 
	.RN(RST), 
	.Q(edge_count[2]), 
	.D(N21), 
	.CK(CLK));
   SDFFRQX2M \edge_count_reg[1]  (.SI(edge_count[0]), 
	.SE(FE_OFN5_SE), 
	.RN(RST), 
	.Q(edge_count[1]), 
	.D(N20), 
	.CK(CLK));
   INVX2M U6 (.Y(n39), 
	.A(n23));
   INVX2M U14 (.Y(n43), 
	.A(Enable));
   NOR2X2M U15 (.Y(n23), 
	.B(N31), 
	.A(n43));
   AOI21X2M U16 (.Y(n26), 
	.B0(n23), 
	.A1(Enable), 
	.A0(n40));
   NOR2BX2M U17 (.Y(N20), 
	.B(n39), 
	.AN(N8));
   NOR2BX2M U18 (.Y(N21), 
	.B(n39), 
	.AN(N9));
   NOR2BX2M U19 (.Y(N22), 
	.B(n39), 
	.AN(N10));
   NOR2BX2M U20 (.Y(N23), 
	.B(n39), 
	.AN(N11));
   OAI32X1M U21 (.Y(n30), 
	.B1(n39), 
	.B0(n40), 
	.A2(n23), 
	.A1(bit_count[0]), 
	.A0(n43));
   OAI32X1M U22 (.Y(n28), 
	.B1(n42), 
	.B0(n25), 
	.A2(n41), 
	.A1(bit_count[2]), 
	.A0(n24));
   AOI21BX2M U23 (.Y(n25), 
	.B0N(n26), 
	.A1(n41), 
	.A0(Enable));
   OAI32X1M U24 (.Y(n27), 
	.B1(n14), 
	.B0(n21), 
	.A2(n43), 
	.A1(n20), 
	.A0(n19));
   NAND3X2M U25 (.Y(n19), 
	.C(bit_count[2]), 
	.B(n14), 
	.A(N31));
   NOR2X2M U26 (.Y(n21), 
	.B(n23), 
	.A(n22));
   AOI2BB1X2M U27 (.Y(n22), 
	.B0(n43), 
	.A1N(n42), 
	.A0N(n20));
   NAND3X2M U28 (.Y(n24), 
	.C(Enable), 
	.B(n39), 
	.A(bit_count[0]));
   OAI22X1M U29 (.Y(n29), 
	.B1(n24), 
	.B0(bit_count[1]), 
	.A1(n41), 
	.A0(n26));
   NOR2X2M U30 (.Y(N24), 
	.B(n39), 
	.A(n1));
   XNOR2X2M U31 (.Y(n1), 
	.B(edge_count[5]), 
	.A(\add_31/carry[5] ));
   NOR2X2M U32 (.Y(N19), 
	.B(n39), 
	.A(edge_count[0]));
   INVX2M U33 (.Y(n17), 
	.A(Prescale[3]));
   INVX2M U34 (.Y(N25), 
	.A(Prescale[0]));
   NAND2X2M U35 (.Y(n20), 
	.B(bit_count[0]), 
	.A(bit_count[1]));
   INVX2M U36 (.Y(n40), 
	.A(bit_count[0]));
   INVX2M U37 (.Y(n41), 
	.A(bit_count[1]));
   ADDHX1M U38 (.S(N8), 
	.CO(\add_31/carry[2] ), 
	.B(edge_count[0]), 
	.A(edge_count[1]));
   ADDHX1M U39 (.S(N9), 
	.CO(\add_31/carry[3] ), 
	.B(\add_31/carry[2] ), 
	.A(edge_count[2]));
   ADDHX1M U40 (.S(N10), 
	.CO(\add_31/carry[4] ), 
	.B(\add_31/carry[3] ), 
	.A(edge_count[3]));
   INVX2M U41 (.Y(n42), 
	.A(bit_count[2]));
   ADDHX1M U42 (.S(N11), 
	.CO(\add_31/carry[5] ), 
	.B(\add_31/carry[4] ), 
	.A(edge_count[4]));
   NAND2BX1M U43 (.Y(n2), 
	.B(N25), 
	.AN(Prescale[1]));
   OAI2BB1X1M U44 (.Y(N26), 
	.B0(n2), 
	.A1N(Prescale[1]), 
	.A0N(Prescale[0]));
   NOR2X1M U45 (.Y(n13), 
	.B(Prescale[2]), 
	.A(n2));
   AO21XLM U46 (.Y(N27), 
	.B0(n13), 
	.A1(Prescale[2]), 
	.A0(n2));
   CLKNAND2X2M U47 (.Y(n15), 
	.B(n17), 
	.A(n13));
   OAI21X1M U48 (.Y(N28), 
	.B0(n15), 
	.A1(n17), 
	.A0(n13));
   XNOR2X1M U49 (.Y(N29), 
	.B(n15), 
	.A(Prescale[4]));
   NOR2X1M U50 (.Y(n16), 
	.B(n15), 
	.A(Prescale[4]));
   CLKXOR2X2M U51 (.Y(N30), 
	.B(n16), 
	.A(Prescale[5]));
   NOR2BX1M U52 (.Y(n18), 
	.B(N25), 
	.AN(edge_count[0]));
   OAI2B2X1M U53 (.Y(n34), 
	.B1(n18), 
	.B0(edge_count[1]), 
	.A1N(N26), 
	.A0(n18));
   NOR2BX1M U54 (.Y(n31), 
	.B(edge_count[0]), 
	.AN(N25));
   OAI2B2X1M U55 (.Y(n33), 
	.B1(n31), 
	.B0(N26), 
	.A1N(edge_count[1]), 
	.A0(n31));
   XNOR2X1M U56 (.Y(n32), 
	.B(edge_count[5]), 
	.A(N30));
   NAND3X1M U57 (.Y(n38), 
	.C(n32), 
	.B(n33), 
	.A(n34));
   CLKXOR2X2M U58 (.Y(n37), 
	.B(edge_count[4]), 
	.A(N29));
   CLKXOR2X2M U59 (.Y(n36), 
	.B(edge_count[2]), 
	.A(N27));
   CLKXOR2X2M U60 (.Y(n35), 
	.B(edge_count[3]), 
	.A(N28));
   NOR4X1M U61 (.Y(N31), 
	.D(n35), 
	.C(n36), 
	.B(n37), 
	.A(n38));
endmodule

module data_sampling_test_1 (
	CLK, 
	RST, 
	S_DATA, 
	Prescale, 
	edge_count, 
	Enable, 
	sampled_bit, 
	test_si, 
	test_se, 
	FE_OFN2_reset_2, 
	FE_OFN4_SE);
   input CLK;
   input RST;
   input S_DATA;
   input [5:0] Prescale;
   input [5:0] edge_count;
   input Enable;
   output sampled_bit;
   input test_si;
   input test_se;
   input FE_OFN2_reset_2;
   input FE_OFN4_SE;

   // Internal wires
   wire N58;
   wire n23;
   wire n24;
   wire n25;
   wire \add_21/carry[4] ;
   wire \add_21/carry[3] ;
   wire \add_21/carry[2] ;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire [4:0] half_edges;
   wire [4:0] half_edges_p1;
   wire [4:0] half_edges_n1;
   wire [2:0] Samples;

   SDFFRQX2M \Samples_reg[2]  (.SI(Samples[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(Samples[2]), 
	.D(n25), 
	.CK(CLK));
   SDFFRQX2M \Samples_reg[1]  (.SI(Samples[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(Samples[1]), 
	.D(n24), 
	.CK(CLK));
   SDFFRQX2M \Samples_reg[0]  (.SI(test_si), 
	.SE(FE_OFN4_SE), 
	.RN(RST), 
	.Q(Samples[0]), 
	.D(n23), 
	.CK(CLK));
   SDFFRQX2M sampled_bit_reg (.SI(Samples[2]), 
	.SE(test_se), 
	.RN(FE_OFN2_reset_2), 
	.Q(sampled_bit), 
	.D(N58), 
	.CK(CLK));
   INVX2M U4 (.Y(n12), 
	.A(half_edges[2]));
   ADDHX1M U5 (.S(half_edges_p1[2]), 
	.CO(\add_21/carry[3] ), 
	.B(\add_21/carry[2] ), 
	.A(half_edges[2]));
   ADDHX1M U6 (.S(half_edges_p1[1]), 
	.CO(\add_21/carry[2] ), 
	.B(half_edges[0]), 
	.A(half_edges[1]));
   ADDHX1M U10 (.S(half_edges_p1[3]), 
	.CO(\add_21/carry[4] ), 
	.B(\add_21/carry[3] ), 
	.A(half_edges[3]));
   CLKXOR2X2M U11 (.Y(n27), 
	.B(half_edges[0]), 
	.A(edge_count[0]));
   INVX2M U12 (.Y(n4), 
	.A(Prescale[3]));
   XNOR2X2M U13 (.Y(n43), 
	.B(edge_count[0]), 
	.A(half_edges[0]));
   INVX2M U14 (.Y(half_edges[0]), 
	.A(Prescale[1]));
   NOR2X1M U15 (.Y(n1), 
	.B(Prescale[1]), 
	.A(Prescale[2]));
   AO21XLM U16 (.Y(half_edges[1]), 
	.B0(n1), 
	.A1(Prescale[2]), 
	.A0(Prescale[1]));
   CLKNAND2X2M U17 (.Y(n2), 
	.B(n4), 
	.A(n1));
   OAI21X1M U18 (.Y(half_edges[2]), 
	.B0(n2), 
	.A1(n4), 
	.A0(n1));
   XNOR2X1M U19 (.Y(half_edges[3]), 
	.B(n2), 
	.A(Prescale[4]));
   NOR2X1M U20 (.Y(n3), 
	.B(n2), 
	.A(Prescale[4]));
   CLKXOR2X2M U21 (.Y(half_edges[4]), 
	.B(n3), 
	.A(Prescale[5]));
   CLKXOR2X2M U22 (.Y(half_edges_p1[4]), 
	.B(half_edges[4]), 
	.A(\add_21/carry[4] ));
   NOR2X1M U23 (.Y(n5), 
	.B(half_edges[0]), 
	.A(half_edges[1]));
   AO21XLM U24 (.Y(half_edges_n1[1]), 
	.B0(n5), 
	.A1(half_edges[1]), 
	.A0(half_edges[0]));
   CLKNAND2X2M U25 (.Y(n6), 
	.B(n12), 
	.A(n5));
   OAI21X1M U26 (.Y(half_edges_n1[2]), 
	.B0(n6), 
	.A1(n12), 
	.A0(n5));
   XNOR2X1M U27 (.Y(half_edges_n1[3]), 
	.B(n6), 
	.A(half_edges[3]));
   NOR2X1M U28 (.Y(n11), 
	.B(n6), 
	.A(half_edges[3]));
   CLKXOR2X2M U29 (.Y(half_edges_n1[4]), 
	.B(n11), 
	.A(half_edges[4]));
   MXI2X1M U30 (.Y(n25), 
	.S0(n15), 
	.B(n14), 
	.A(n13));
   NOR2X1M U31 (.Y(n15), 
	.B(n17), 
	.A(n16));
   NAND4X1M U32 (.Y(n17), 
	.D(n21), 
	.C(n20), 
	.B(n19), 
	.A(n18));
   CLKXOR2X2M U33 (.Y(n21), 
	.B(half_edges_p1[1]), 
	.A(n22));
   XNOR2X1M U34 (.Y(n20), 
	.B(half_edges_p1[2]), 
	.A(edge_count[2]));
   XNOR2X1M U35 (.Y(n19), 
	.B(half_edges_p1[3]), 
	.A(edge_count[3]));
   CLKXOR2X2M U36 (.Y(n18), 
	.B(half_edges_p1[4]), 
	.A(n26));
   NAND4BX1M U37 (.Y(n16), 
	.D(n29), 
	.C(n28), 
	.B(n27), 
	.AN(edge_count[5]));
   CLKNAND2X2M U38 (.Y(n13), 
	.B(Enable), 
	.A(Samples[2]));
   MXI2X1M U39 (.Y(n24), 
	.S0(n28), 
	.B(n30), 
	.A(n14));
   NAND4X1M U40 (.Y(n28), 
	.D(n34), 
	.C(n33), 
	.B(n32), 
	.A(n31));
   NOR4BX1M U41 (.Y(n34), 
	.D(n36), 
	.C(n35), 
	.B(edge_count[5]), 
	.AN(n29));
   CLKXOR2X2M U42 (.Y(n36), 
	.B(edge_count[1]), 
	.A(half_edges[1]));
   CLKXOR2X2M U43 (.Y(n35), 
	.B(edge_count[0]), 
	.A(half_edges[0]));
   XNOR2X1M U44 (.Y(n33), 
	.B(half_edges[3]), 
	.A(edge_count[3]));
   CLKXOR2X2M U45 (.Y(n32), 
	.B(half_edges[4]), 
	.A(n26));
   CLKINVX1M U46 (.Y(n26), 
	.A(edge_count[4]));
   XNOR2X1M U47 (.Y(n31), 
	.B(half_edges[2]), 
	.A(edge_count[2]));
   CLKNAND2X2M U48 (.Y(n30), 
	.B(Enable), 
	.A(Samples[1]));
   MXI2X1M U49 (.Y(n23), 
	.S0(n29), 
	.B(n37), 
	.A(n14));
   NAND4X1M U50 (.Y(n29), 
	.D(n41), 
	.C(n40), 
	.B(n39), 
	.A(n38));
   NOR3X1M U51 (.Y(n41), 
	.C(n43), 
	.B(edge_count[5]), 
	.A(n42));
   CLKXOR2X2M U52 (.Y(n42), 
	.B(edge_count[4]), 
	.A(half_edges_n1[4]));
   XNOR2X1M U53 (.Y(n40), 
	.B(half_edges_n1[2]), 
	.A(edge_count[2]));
   XNOR2X1M U54 (.Y(n39), 
	.B(half_edges_n1[3]), 
	.A(edge_count[3]));
   CLKXOR2X2M U55 (.Y(n38), 
	.B(half_edges_n1[1]), 
	.A(n22));
   CLKINVX1M U56 (.Y(n22), 
	.A(edge_count[1]));
   CLKNAND2X2M U57 (.Y(n37), 
	.B(Enable), 
	.A(Samples[0]));
   CLKNAND2X2M U58 (.Y(n14), 
	.B(Enable), 
	.A(S_DATA));
   AOI21BX1M U59 (.Y(N58), 
	.B0N(Enable), 
	.A1(n45), 
	.A0(n44));
   OAI21X1M U60 (.Y(n45), 
	.B0(Samples[2]), 
	.A1(Samples[1]), 
	.A0(Samples[0]));
   CLKNAND2X2M U61 (.Y(n44), 
	.B(Samples[1]), 
	.A(Samples[0]));
endmodule

module deserializer_DATA_WIDTH8_test_1 (
	CLK, 
	RST, 
	sampled_bit, 
	Enable, 
	edge_count, 
	Prescale, 
	P_DATA, 
	test_so, 
	test_se, 
	FE_OFN5_SE);
   input CLK;
   input RST;
   input sampled_bit;
   input Enable;
   input [5:0] edge_count;
   input [5:0] Prescale;
   output [7:0] P_DATA;
   output test_so;
   input test_se;
   input FE_OFN5_SE;

   // Internal wires
   wire N1;
   wire N2;
   wire N3;
   wire N4;
   wire N5;
   wire N6;
   wire N7;
   wire n1;
   wire n11;
   wire n13;
   wire n15;
   wire n17;
   wire n19;
   wire n21;
   wire n23;
   wire n25;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;

   assign test_so = n32 ;

   SDFFRQX2M \P_DATA_reg[0]  (.SI(sampled_bit), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[0]), 
	.D(n11), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[5]  (.SI(n35), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[5]), 
	.D(n21), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[1]  (.SI(P_DATA[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[1]), 
	.D(n13), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[4]  (.SI(n36), 
	.SE(FE_OFN5_SE), 
	.RN(RST), 
	.Q(P_DATA[4]), 
	.D(n19), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[7]  (.SI(n33), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[7]), 
	.D(n25), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[3]  (.SI(n37), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[3]), 
	.D(n17), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[6]  (.SI(n34), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[6]), 
	.D(n23), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[2]  (.SI(n38), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[2]), 
	.D(n15), 
	.CK(CLK));
   OAI22X1M U3 (.Y(n13), 
	.B1(n37), 
	.B0(n1), 
	.A1(n38), 
	.A0(n39));
   OAI22X1M U4 (.Y(n15), 
	.B1(n36), 
	.B0(n1), 
	.A1(n37), 
	.A0(n39));
   OAI22X1M U5 (.Y(n17), 
	.B1(n35), 
	.B0(n1), 
	.A1(n36), 
	.A0(n39));
   OAI22X1M U6 (.Y(n19), 
	.B1(n34), 
	.B0(n1), 
	.A1(n35), 
	.A0(n39));
   OAI22X1M U7 (.Y(n21), 
	.B1(n33), 
	.B0(n1), 
	.A1(n34), 
	.A0(n39));
   OAI22X1M U8 (.Y(n23), 
	.B1(n32), 
	.B0(n1), 
	.A1(n33), 
	.A0(n39));
   INVX2M U9 (.Y(n39), 
	.A(n1));
   NAND2X2M U10 (.Y(n1), 
	.B(Enable), 
	.A(N7));
   OAI2BB2X1M U11 (.Y(n11), 
	.B1(n38), 
	.B0(n1), 
	.A1N(n1), 
	.A0N(P_DATA[0]));
   OAI2BB2X1M U12 (.Y(n25), 
	.B1(n32), 
	.B0(n39), 
	.A1N(n39), 
	.A0N(sampled_bit));
   INVX2M U13 (.Y(N1), 
	.A(Prescale[0]));
   INVX2M U14 (.Y(n6), 
	.A(Prescale[3]));
   INVX2M U15 (.Y(n37), 
	.A(P_DATA[2]));
   INVX2M U16 (.Y(n33), 
	.A(P_DATA[6]));
   INVX2M U17 (.Y(n32), 
	.A(P_DATA[7]));
   INVX2M U18 (.Y(n36), 
	.A(P_DATA[3]));
   INVX2M U19 (.Y(n35), 
	.A(P_DATA[4]));
   INVX2M U28 (.Y(n34), 
	.A(P_DATA[5]));
   INVX2M U29 (.Y(n38), 
	.A(P_DATA[1]));
   NAND2BX1M U30 (.Y(n2), 
	.B(N1), 
	.AN(Prescale[1]));
   OAI2BB1X1M U31 (.Y(N2), 
	.B0(n2), 
	.A1N(Prescale[1]), 
	.A0N(Prescale[0]));
   NOR2X1M U32 (.Y(n3), 
	.B(Prescale[2]), 
	.A(n2));
   AO21XLM U33 (.Y(N3), 
	.B0(n3), 
	.A1(Prescale[2]), 
	.A0(n2));
   CLKNAND2X2M U34 (.Y(n4), 
	.B(n6), 
	.A(n3));
   OAI21X1M U35 (.Y(N4), 
	.B0(n4), 
	.A1(n6), 
	.A0(n3));
   XNOR2X1M U36 (.Y(N5), 
	.B(n4), 
	.A(Prescale[4]));
   NOR2X1M U37 (.Y(n5), 
	.B(n4), 
	.A(Prescale[4]));
   CLKXOR2X2M U38 (.Y(N6), 
	.B(n5), 
	.A(Prescale[5]));
   NOR2BX1M U39 (.Y(n7), 
	.B(N1), 
	.AN(edge_count[0]));
   OAI2B2X1M U40 (.Y(n27), 
	.B1(n7), 
	.B0(edge_count[1]), 
	.A1N(N2), 
	.A0(n7));
   NOR2BX1M U41 (.Y(n8), 
	.B(edge_count[0]), 
	.AN(N1));
   OAI2B2X1M U42 (.Y(n26), 
	.B1(n8), 
	.B0(N2), 
	.A1N(edge_count[1]), 
	.A0(n8));
   XNOR2X1M U43 (.Y(n9), 
	.B(edge_count[5]), 
	.A(N6));
   NAND3X1M U44 (.Y(n31), 
	.C(n9), 
	.B(n26), 
	.A(n27));
   CLKXOR2X2M U45 (.Y(n30), 
	.B(edge_count[4]), 
	.A(N5));
   CLKXOR2X2M U46 (.Y(n29), 
	.B(edge_count[2]), 
	.A(N3));
   CLKXOR2X2M U47 (.Y(n28), 
	.B(edge_count[3]), 
	.A(N4));
   NOR4X1M U48 (.Y(N7), 
	.D(n28), 
	.C(n29), 
	.B(n30), 
	.A(n31));
endmodule

module strt_chk_test_1 (
	CLK, 
	RST, 
	sampled_bit, 
	Enable, 
	strt_glitch, 
	test_si, 
	test_se);
   input CLK;
   input RST;
   input sampled_bit;
   input Enable;
   output strt_glitch;
   input test_si;
   input test_se;

   // Internal wires
   wire n2;

   SDFFRQX2M strt_glitch_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(strt_glitch), 
	.D(n2), 
	.CK(CLK));
   AO2B2X2M U2 (.Y(n2), 
	.B1(Enable), 
	.B0(sampled_bit), 
	.A1N(Enable), 
	.A0(strt_glitch));
endmodule

module par_chk_DATA_WIDTH8_test_1 (
	CLK, 
	RST, 
	parity_type, 
	sampled_bit, 
	Enable, 
	P_DATA, 
	par_err, 
	test_si, 
	test_se);
   input CLK;
   input RST;
   input parity_type;
   input sampled_bit;
   input Enable;
   input [7:0] P_DATA;
   output par_err;
   input test_si;
   input test_se;

   // Internal wires
   wire n1;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n9;
   wire n2;

   SDFFRQX4M par_err_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(par_err), 
	.D(n9), 
	.CK(CLK));
   XNOR2X2M U2 (.Y(n5), 
	.B(parity_type), 
	.A(sampled_bit));
   XOR3XLM U3 (.Y(n4), 
	.C(n6), 
	.B(P_DATA[4]), 
	.A(P_DATA[5]));
   XNOR2X2M U4 (.Y(n6), 
	.B(P_DATA[6]), 
	.A(P_DATA[7]));
   XOR3XLM U5 (.Y(n3), 
	.C(n7), 
	.B(P_DATA[0]), 
	.A(P_DATA[1]));
   XNOR2X2M U6 (.Y(n7), 
	.B(P_DATA[2]), 
	.A(P_DATA[3]));
   OAI2BB2X1M U7 (.Y(n9), 
	.B1(n2), 
	.B0(n1), 
	.A1N(n2), 
	.A0N(par_err));
   INVX2M U8 (.Y(n2), 
	.A(Enable));
   XOR3XLM U9 (.Y(n1), 
	.C(n5), 
	.B(n4), 
	.A(n3));
endmodule

module stp_chk_test_1 (
	CLK, 
	RST, 
	sampled_bit, 
	Enable, 
	stp_err, 
	test_si, 
	test_se);
   input CLK;
   input RST;
   input sampled_bit;
   input Enable;
   output stp_err;
   input test_si;
   input test_se;

   // Internal wires
   wire n3;
   wire n1;

   SDFFRQX4M stp_err_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(stp_err), 
	.D(n3), 
	.CK(CLK));
   OAI2BB2X1M U2 (.Y(n3), 
	.B1(n1), 
	.B0(sampled_bit), 
	.A1N(n1), 
	.A0N(stp_err));
   INVX2M U3 (.Y(n1), 
	.A(Enable));
endmodule

module UART_RX_test_1 (
	CLK, 
	RST, 
	RX_IN, 
	parity_enable, 
	parity_type, 
	Prescale, 
	P_DATA, 
	data_valid, 
	parity_error, 
	framing_error, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN2_reset_2, 
	FE_OFN4_SE, 
	FE_OFN5_SE);
   input CLK;
   input RST;
   input RX_IN;
   input parity_enable;
   input parity_type;
   input [5:0] Prescale;
   output [7:0] P_DATA;
   output data_valid;
   output parity_error;
   output framing_error;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN2_reset_2;
   input FE_OFN4_SE;
   input FE_OFN5_SE;

   // Internal wires
   wire strt_glitch;
   wire strt_chk_en;
   wire edge_bit_en;
   wire deser_en;
   wire par_chk_en;
   wire stp_chk_en;
   wire dat_samp_en;
   wire sampled_bit;
   wire n4;
   wire [3:0] bit_count;
   wire [5:0] edge_count;

   uart_rx_fsm_DATA_WIDTH8_test_1 U0_uart_fsm (.CLK(CLK), 
	.RST(FE_OFN2_reset_2), 
	.S_DATA(RX_IN), 
	.Prescale({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		Prescale[0] }), 
	.parity_enable(parity_enable), 
	.bit_count({ bit_count[3],
		bit_count[2],
		bit_count[1],
		bit_count[0] }), 
	.edge_count({ edge_count[5],
		edge_count[4],
		edge_count[3],
		edge_count[2],
		edge_count[1],
		edge_count[0] }), 
	.par_err(parity_error), 
	.stp_err(framing_error), 
	.strt_glitch(strt_glitch), 
	.strt_chk_en(strt_chk_en), 
	.edge_bit_en(edge_bit_en), 
	.deser_en(deser_en), 
	.par_chk_en(par_chk_en), 
	.stp_chk_en(stp_chk_en), 
	.dat_samp_en(dat_samp_en), 
	.data_valid(data_valid), 
	.test_so(test_so), 
	.test_se(test_se));
   edge_bit_counter_test_1 U0_edge_bit_counter (.CLK(CLK), 
	.RST(FE_OFN2_reset_2), 
	.Enable(edge_bit_en), 
	.Prescale({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		Prescale[0] }), 
	.bit_count({ bit_count[3],
		bit_count[2],
		bit_count[1],
		bit_count[0] }), 
	.edge_count({ edge_count[5],
		edge_count[4],
		edge_count[3],
		edge_count[2],
		edge_count[1],
		edge_count[0] }), 
	.test_si(n4), 
	.test_se(test_se), 
	.FE_OFN5_SE(FE_OFN5_SE));
   data_sampling_test_1 U0_data_sampling (.CLK(CLK), 
	.RST(RST), 
	.S_DATA(RX_IN), 
	.Prescale({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		Prescale[0] }), 
	.edge_count({ edge_count[5],
		edge_count[4],
		edge_count[3],
		edge_count[2],
		edge_count[1],
		edge_count[0] }), 
	.Enable(dat_samp_en), 
	.sampled_bit(sampled_bit), 
	.test_si(test_si), 
	.test_se(test_se), 
	.FE_OFN2_reset_2(FE_OFN2_reset_2), 
	.FE_OFN4_SE(FE_OFN4_SE));
   deserializer_DATA_WIDTH8_test_1 U0_deserializer (.CLK(CLK), 
	.RST(FE_OFN2_reset_2), 
	.sampled_bit(sampled_bit), 
	.Enable(deser_en), 
	.edge_count({ edge_count[5],
		edge_count[4],
		edge_count[3],
		edge_count[2],
		edge_count[1],
		edge_count[0] }), 
	.Prescale({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		Prescale[0] }), 
	.P_DATA({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.test_so(n4), 
	.test_se(test_se), 
	.FE_OFN5_SE(FE_OFN5_SE));
   strt_chk_test_1 U0_strt_chk (.CLK(CLK), 
	.RST(FE_OFN2_reset_2), 
	.sampled_bit(sampled_bit), 
	.Enable(strt_chk_en), 
	.strt_glitch(strt_glitch), 
	.test_si(framing_error), 
	.test_se(test_se));
   par_chk_DATA_WIDTH8_test_1 U0_par_chk (.CLK(CLK), 
	.RST(FE_OFN2_reset_2), 
	.parity_type(parity_type), 
	.sampled_bit(sampled_bit), 
	.Enable(par_chk_en), 
	.P_DATA({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.par_err(parity_error), 
	.test_si(edge_count[5]), 
	.test_se(test_se));
   stp_chk_test_1 U0_stp_chk (.CLK(CLK), 
	.RST(FE_OFN2_reset_2), 
	.sampled_bit(sampled_bit), 
	.Enable(stp_chk_en), 
	.stp_err(framing_error), 
	.test_si(parity_error), 
	.test_se(test_se));
endmodule

module clock_divider_0_DW01_inc_0 (
	A, 
	SUM);
   input [6:0] A;
   output [6:0] SUM;

   // Internal wires
   wire [6:2] carry;

   ADDHX1M U1_1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.B(carry[5]), 
	.A(A[5]));
   ADDHX1M U1_1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.B(carry[4]), 
	.A(A[4]));
   ADDHX1M U1_1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.B(carry[3]), 
	.A(A[3]));
   ADDHX1M U1_1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.B(carry[2]), 
	.A(A[2]));
   ADDHX1M U1_1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.B(A[0]), 
	.A(A[1]));
   INVX2M U1 (.Y(SUM[0]), 
	.A(A[0]));
   CLKXOR2X2M U2 (.Y(SUM[6]), 
	.B(A[6]), 
	.A(carry[6]));
endmodule

module clock_divider_test_0 (
	i_ref_clk, 
	i_rst, 
	i_clk_en, 
	i_div_ratio, 
	o_div_clk, 
	test_si, 
	test_so, 
	test_se, 
	uart_clock__L5_N0, 
	uart_clock__L8_N0);
   input i_ref_clk;
   input i_rst;
   input i_clk_en;
   input [7:0] i_div_ratio;
   output o_div_clk;
   input test_si;
   output test_so;
   input test_se;
   input uart_clock__L5_N0;
   input uart_clock__L8_N0;

   // Internal wires
   wire FE_PHN12_div_clk__Exclude_0_NET;
   wire div_clk__Exclude_0_NET;
   wire HTIE_LTIEHI_NET;
   wire LTIE_LTIELO_NET;
   wire div_clk;
   wire odd_edge_tog;
   wire N16;
   wire N17;
   wire N18;
   wire N19;
   wire N20;
   wire N21;
   wire N22;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire [6:0] count;
   wire [6:0] edge_flip_half;

   assign test_so = odd_edge_tog ;

   DLY3X1M FE_PHC12_div_clk__Exclude_0_NET (.Y(FE_PHN12_div_clk__Exclude_0_NET), 
	.A(div_clk__Exclude_0_NET));
   BUFX2M div_clk__Exclude_0 (.Y(div_clk__Exclude_0_NET), 
	.A(div_clk));
   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   SDFFRQX2M div_clk_reg (.SI(count[6]), 
	.SE(test_se), 
	.RN(i_rst), 
	.Q(div_clk), 
	.D(n27), 
	.CK(i_ref_clk));
   SDFFSQX2M odd_edge_tog_reg (.SN(i_rst), 
	.SI(FE_PHN12_div_clk__Exclude_0_NET), 
	.SE(test_se), 
	.Q(odd_edge_tog), 
	.D(n26), 
	.CK(uart_clock__L8_N0));
   SDFFRQX2M \count_reg[6]  (.SI(count[5]), 
	.SE(test_se), 
	.RN(i_rst), 
	.Q(count[6]), 
	.D(n28), 
	.CK(uart_clock__L8_N0));
   SDFFRQX2M \count_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(i_rst), 
	.Q(count[0]), 
	.D(n34), 
	.CK(uart_clock__L8_N0));
   SDFFRQX2M \count_reg[5]  (.SI(count[4]), 
	.SE(test_se), 
	.RN(i_rst), 
	.Q(count[5]), 
	.D(n29), 
	.CK(uart_clock__L8_N0));
   SDFFRQX2M \count_reg[4]  (.SI(count[3]), 
	.SE(test_se), 
	.RN(i_rst), 
	.Q(count[4]), 
	.D(n30), 
	.CK(uart_clock__L8_N0));
   SDFFRQX2M \count_reg[3]  (.SI(count[2]), 
	.SE(test_se), 
	.RN(i_rst), 
	.Q(count[3]), 
	.D(n31), 
	.CK(uart_clock__L8_N0));
   SDFFRQX2M \count_reg[2]  (.SI(count[1]), 
	.SE(test_se), 
	.RN(i_rst), 
	.Q(count[2]), 
	.D(n32), 
	.CK(uart_clock__L8_N0));
   SDFFRQX2M \count_reg[1]  (.SI(count[0]), 
	.SE(test_se), 
	.RN(i_rst), 
	.Q(count[1]), 
	.D(n33), 
	.CK(uart_clock__L8_N0));
   INVX2M U5 (.Y(edge_flip_half[0]), 
	.A(i_div_ratio[1]));
   NAND2BX2M U6 (.Y(n16), 
	.B(HTIE_LTIEHI_NET), 
	.AN(n23));
   INVX2M U11 (.Y(n15), 
	.A(LTIE_LTIELO_NET));
   MX2X2M U15 (.Y(o_div_clk), 
	.S0(n52), 
	.B(div_clk), 
	.A(uart_clock__L5_N0));
   NAND2BX1M U16 (.Y(n1), 
	.B(edge_flip_half[0]), 
	.AN(i_div_ratio[2]));
   OAI2BB1X1M U17 (.Y(edge_flip_half[1]), 
	.B0(n1), 
	.A1N(i_div_ratio[2]), 
	.A0N(i_div_ratio[1]));
   OR2X1M U18 (.Y(n2), 
	.B(i_div_ratio[3]), 
	.A(n1));
   OAI2BB1X1M U19 (.Y(edge_flip_half[2]), 
	.B0(n2), 
	.A1N(i_div_ratio[3]), 
	.A0N(n1));
   NOR2X1M U20 (.Y(n3), 
	.B(LTIE_LTIELO_NET), 
	.A(n2));
   AO21XLM U21 (.Y(edge_flip_half[3]), 
	.B0(n3), 
	.A1(LTIE_LTIELO_NET), 
	.A0(n2));
   CLKNAND2X2M U22 (.Y(n4), 
	.B(n15), 
	.A(n3));
   OAI21X1M U23 (.Y(edge_flip_half[4]), 
	.B0(n4), 
	.A1(n15), 
	.A0(n3));
   XNOR2X1M U24 (.Y(edge_flip_half[5]), 
	.B(n4), 
	.A(LTIE_LTIELO_NET));
   NOR2X1M U25 (.Y(n5), 
	.B(n4), 
	.A(LTIE_LTIELO_NET));
   CLKXOR2X2M U26 (.Y(edge_flip_half[6]), 
	.B(n5), 
	.A(LTIE_LTIELO_NET));
   AO22X1M U27 (.Y(n34), 
	.B1(n17), 
	.B0(N16), 
	.A1(count[0]), 
	.A0(n16));
   AO22X1M U28 (.Y(n33), 
	.B1(n17), 
	.B0(N17), 
	.A1(count[1]), 
	.A0(n16));
   AO22X1M U29 (.Y(n32), 
	.B1(n17), 
	.B0(N18), 
	.A1(count[2]), 
	.A0(n16));
   AO22X1M U30 (.Y(n31), 
	.B1(n17), 
	.B0(N19), 
	.A1(count[3]), 
	.A0(n16));
   AO22X1M U31 (.Y(n30), 
	.B1(n17), 
	.B0(N20), 
	.A1(count[4]), 
	.A0(n16));
   AO22X1M U32 (.Y(n29), 
	.B1(n17), 
	.B0(N21), 
	.A1(count[5]), 
	.A0(n16));
   AO22X1M U33 (.Y(n28), 
	.B1(n17), 
	.B0(N22), 
	.A1(count[6]), 
	.A0(n16));
   AND3X1M U34 (.Y(n17), 
	.C(n52), 
	.B(n19), 
	.A(n18));
   CLKINVX1M U35 (.Y(n52), 
	.A(n16));
   CLKXOR2X2M U36 (.Y(n27), 
	.B(n20), 
	.A(div_clk__Exclude_0_NET));
   AOI21X1M U37 (.Y(n20), 
	.B0(n16), 
	.A1(n18), 
	.A0(n19));
   OR2X1M U38 (.Y(n18), 
	.B(i_div_ratio[0]), 
	.A(n21));
   XNOR2X1M U39 (.Y(n26), 
	.B(n22), 
	.A(odd_edge_tog));
   OR2X1M U40 (.Y(n22), 
	.B(n16), 
	.A(n19));
   NOR4BX1M U41 (.Y(n23), 
	.D(i_div_ratio[1]), 
	.C(i_div_ratio[3]), 
	.B(i_div_ratio[2]), 
	.AN(n24));
   NOR4X1M U42 (.Y(n24), 
	.D(LTIE_LTIELO_NET), 
	.C(LTIE_LTIELO_NET), 
	.B(LTIE_LTIELO_NET), 
	.A(LTIE_LTIELO_NET));
   CLKNAND2X2M U43 (.Y(n19), 
	.B(i_div_ratio[0]), 
	.A(n25));
   MXI2X1M U44 (.Y(n25), 
	.S0(odd_edge_tog), 
	.B(n21), 
	.A(n35));
   NAND4X1M U45 (.Y(n21), 
	.D(n39), 
	.C(n38), 
	.B(n37), 
	.A(n36));
   NOR4X1M U46 (.Y(n39), 
	.D(n43), 
	.C(n42), 
	.B(n41), 
	.A(n40));
   CLKXOR2X2M U47 (.Y(n43), 
	.B(count[2]), 
	.A(edge_flip_half[2]));
   CLKXOR2X2M U48 (.Y(n42), 
	.B(count[1]), 
	.A(edge_flip_half[1]));
   CLKXOR2X2M U49 (.Y(n41), 
	.B(count[0]), 
	.A(edge_flip_half[0]));
   CLKXOR2X2M U50 (.Y(n40), 
	.B(count[6]), 
	.A(edge_flip_half[6]));
   XNOR2X1M U51 (.Y(n38), 
	.B(edge_flip_half[4]), 
	.A(count[4]));
   XNOR2X1M U52 (.Y(n37), 
	.B(edge_flip_half[5]), 
	.A(count[5]));
   XNOR2X1M U53 (.Y(n36), 
	.B(edge_flip_half[3]), 
	.A(count[3]));
   NAND4X1M U54 (.Y(n35), 
	.D(n47), 
	.C(n46), 
	.B(n45), 
	.A(n44));
   NOR4X1M U55 (.Y(n47), 
	.D(n51), 
	.C(n50), 
	.B(n49), 
	.A(n48));
   CLKXOR2X2M U56 (.Y(n51), 
	.B(count[2]), 
	.A(i_div_ratio[3]));
   CLKXOR2X2M U57 (.Y(n50), 
	.B(count[1]), 
	.A(i_div_ratio[2]));
   CLKXOR2X2M U58 (.Y(n49), 
	.B(count[0]), 
	.A(i_div_ratio[1]));
   CLKXOR2X2M U59 (.Y(n48), 
	.B(count[6]), 
	.A(LTIE_LTIELO_NET));
   XNOR2X1M U60 (.Y(n46), 
	.B(LTIE_LTIELO_NET), 
	.A(count[4]));
   XNOR2X1M U61 (.Y(n45), 
	.B(LTIE_LTIELO_NET), 
	.A(count[5]));
   XNOR2X1M U62 (.Y(n44), 
	.B(LTIE_LTIELO_NET), 
	.A(count[3]));
   clock_divider_0_DW01_inc_0 add_49 (.A({ count[6],
		count[5],
		count[4],
		count[3],
		count[2],
		count[1],
		count[0] }), 
	.SUM({ N22,
		N21,
		N20,
		N19,
		N18,
		N17,
		N16 }));
endmodule

module pre_mux (
	prescale, 
	clk_div_in);
   input [5:0] prescale;
   output [7:0] clk_div_in;

   // Internal wires
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n1;
   wire n2;
   wire n3;
   wire n4;

   assign clk_div_in[4] = 1'b0 ;
   assign clk_div_in[5] = 1'b0 ;
   assign clk_div_in[6] = 1'b0 ;
   assign clk_div_in[7] = 1'b0 ;

   NAND4BX1M U3 (.Y(n6), 
	.D(n1), 
	.C(n2), 
	.B(prescale[3]), 
	.AN(prescale[4]));
   NAND4BX1M U4 (.Y(n7), 
	.D(n1), 
	.C(n2), 
	.B(prescale[4]), 
	.AN(prescale[3]));
   NOR3X2M U5 (.Y(clk_div_in[1]), 
	.C(prescale[0]), 
	.B(prescale[1]), 
	.A(n7));
   NOR3X2M U6 (.Y(clk_div_in[2]), 
	.C(prescale[0]), 
	.B(prescale[1]), 
	.A(n6));
   INVX2M U7 (.Y(n2), 
	.A(prescale[2]));
   INVX2M U8 (.Y(n1), 
	.A(prescale[5]));
   NOR4X1M U9 (.Y(clk_div_in[3]), 
	.D(prescale[4]), 
	.C(prescale[5]), 
	.B(prescale[3]), 
	.A(n5));
   NAND3X2M U10 (.Y(n5), 
	.C(prescale[2]), 
	.B(n3), 
	.A(n4));
   INVX2M U11 (.Y(n4), 
	.A(prescale[0]));
   INVX2M U12 (.Y(n3), 
	.A(prescale[1]));
   OAI211X2M U13 (.Y(clk_div_in[0]), 
	.C0(n3), 
	.B0(n4), 
	.A1(n9), 
	.A0(n8));
   NOR4X1M U14 (.Y(n8), 
	.D(n2), 
	.C(prescale[3]), 
	.B(prescale[4]), 
	.A(prescale[5]));
   NAND2X2M U15 (.Y(n9), 
	.B(n6), 
	.A(n7));
endmodule

module clock_divider_1_DW01_inc_0 (
	A, 
	SUM);
   input [6:0] A;
   output [6:0] SUM;

   // Internal wires
   wire [6:2] carry;

   ADDHX1M U1_1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.B(carry[5]), 
	.A(A[5]));
   ADDHX1M U1_1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.B(carry[4]), 
	.A(A[4]));
   ADDHX1M U1_1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.B(carry[3]), 
	.A(A[3]));
   ADDHX1M U1_1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.B(carry[2]), 
	.A(A[2]));
   ADDHX1M U1_1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.B(A[0]), 
	.A(A[1]));
   INVX2M U1 (.Y(SUM[0]), 
	.A(A[0]));
   CLKXOR2X2M U2 (.Y(SUM[6]), 
	.B(A[6]), 
	.A(carry[6]));
endmodule

module clock_divider_test_1 (
	i_ref_clk, 
	i_rst, 
	i_clk_en, 
	i_div_ratio, 
	o_div_clk, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN5_SE, 
	uart_clock__L5_N0, 
	uart_clock__L8_N0);
   input i_ref_clk;
   input i_rst;
   input i_clk_en;
   input [7:0] i_div_ratio;
   output o_div_clk;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN5_SE;
   input uart_clock__L5_N0;
   input uart_clock__L8_N0;

   // Internal wires
   wire FE_PHN11_div_clk__Exclude_0_NET;
   wire div_clk__Exclude_0_NET;
   wire HTIE_LTIEHI_NET;
   wire div_clk;
   wire odd_edge_tog;
   wire N16;
   wire N17;
   wire N18;
   wire N19;
   wire N20;
   wire N21;
   wire N22;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire [6:0] count;
   wire [6:0] edge_flip_half;

   assign test_so = odd_edge_tog ;

   DLY3X1M FE_PHC11_div_clk__Exclude_0_NET (.Y(FE_PHN11_div_clk__Exclude_0_NET), 
	.A(div_clk__Exclude_0_NET));
   BUFX2M div_clk__Exclude_0 (.Y(div_clk__Exclude_0_NET), 
	.A(div_clk));
   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX2M div_clk_reg (.SI(count[6]), 
	.SE(FE_OFN5_SE), 
	.RN(i_rst), 
	.Q(div_clk), 
	.D(n61), 
	.CK(i_ref_clk));
   SDFFRQX2M \count_reg[6]  (.SI(count[5]), 
	.SE(FE_OFN5_SE), 
	.RN(i_rst), 
	.Q(count[6]), 
	.D(n60), 
	.CK(uart_clock__L8_N0));
   SDFFRQX2M \count_reg[0]  (.SI(test_si), 
	.SE(FE_OFN5_SE), 
	.RN(i_rst), 
	.Q(count[0]), 
	.D(n54), 
	.CK(uart_clock__L8_N0));
   SDFFRQX2M \count_reg[5]  (.SI(count[4]), 
	.SE(FE_OFN5_SE), 
	.RN(i_rst), 
	.Q(count[5]), 
	.D(n59), 
	.CK(uart_clock__L8_N0));
   SDFFRQX2M \count_reg[4]  (.SI(count[3]), 
	.SE(FE_OFN5_SE), 
	.RN(i_rst), 
	.Q(count[4]), 
	.D(n58), 
	.CK(uart_clock__L8_N0));
   SDFFRQX2M \count_reg[3]  (.SI(count[2]), 
	.SE(FE_OFN5_SE), 
	.RN(i_rst), 
	.Q(count[3]), 
	.D(n57), 
	.CK(uart_clock__L8_N0));
   SDFFRQX2M \count_reg[2]  (.SI(count[1]), 
	.SE(FE_OFN5_SE), 
	.RN(i_rst), 
	.Q(count[2]), 
	.D(n56), 
	.CK(uart_clock__L8_N0));
   SDFFRQX2M \count_reg[1]  (.SI(count[0]), 
	.SE(FE_OFN5_SE), 
	.RN(i_rst), 
	.Q(count[1]), 
	.D(n55), 
	.CK(uart_clock__L8_N0));
   SDFFSQX1M odd_edge_tog_reg (.SN(i_rst), 
	.SI(FE_PHN11_div_clk__Exclude_0_NET), 
	.SE(test_se), 
	.Q(odd_edge_tog), 
	.D(n62), 
	.CK(uart_clock__L8_N0));
   INVX2M U6 (.Y(edge_flip_half[0]), 
	.A(i_div_ratio[1]));
   NAND2BX2M U11 (.Y(n17), 
	.B(HTIE_LTIEHI_NET), 
	.AN(n24));
   INVX2M U15 (.Y(n16), 
	.A(i_div_ratio[5]));
   MX2X2M U16 (.Y(o_div_clk), 
	.S0(n53), 
	.B(div_clk), 
	.A(uart_clock__L5_N0));
   NAND2BX1M U17 (.Y(n2), 
	.B(edge_flip_half[0]), 
	.AN(i_div_ratio[2]));
   OAI2BB1X1M U18 (.Y(edge_flip_half[1]), 
	.B0(n2), 
	.A1N(i_div_ratio[2]), 
	.A0N(i_div_ratio[1]));
   OR2X1M U19 (.Y(n3), 
	.B(i_div_ratio[3]), 
	.A(n2));
   OAI2BB1X1M U20 (.Y(edge_flip_half[2]), 
	.B0(n3), 
	.A1N(i_div_ratio[3]), 
	.A0N(n2));
   NOR2X1M U21 (.Y(n4), 
	.B(i_div_ratio[4]), 
	.A(n3));
   AO21XLM U22 (.Y(edge_flip_half[3]), 
	.B0(n4), 
	.A1(i_div_ratio[4]), 
	.A0(n3));
   CLKNAND2X2M U23 (.Y(n5), 
	.B(n16), 
	.A(n4));
   OAI21X1M U24 (.Y(edge_flip_half[4]), 
	.B0(n5), 
	.A1(n16), 
	.A0(n4));
   XNOR2X1M U25 (.Y(edge_flip_half[5]), 
	.B(n5), 
	.A(i_div_ratio[6]));
   NOR2X1M U26 (.Y(n15), 
	.B(n5), 
	.A(i_div_ratio[6]));
   CLKXOR2X2M U27 (.Y(edge_flip_half[6]), 
	.B(n15), 
	.A(i_div_ratio[7]));
   AO22X1M U28 (.Y(n54), 
	.B1(n18), 
	.B0(N16), 
	.A1(count[0]), 
	.A0(n17));
   AO22X1M U29 (.Y(n55), 
	.B1(n18), 
	.B0(N17), 
	.A1(count[1]), 
	.A0(n17));
   AO22X1M U30 (.Y(n56), 
	.B1(n18), 
	.B0(N18), 
	.A1(count[2]), 
	.A0(n17));
   AO22X1M U31 (.Y(n57), 
	.B1(n18), 
	.B0(N19), 
	.A1(count[3]), 
	.A0(n17));
   AO22X1M U32 (.Y(n58), 
	.B1(n18), 
	.B0(N20), 
	.A1(count[4]), 
	.A0(n17));
   AO22X1M U33 (.Y(n59), 
	.B1(n18), 
	.B0(N21), 
	.A1(count[5]), 
	.A0(n17));
   AO22X1M U34 (.Y(n60), 
	.B1(n18), 
	.B0(N22), 
	.A1(count[6]), 
	.A0(n17));
   AND3X1M U35 (.Y(n18), 
	.C(n53), 
	.B(n20), 
	.A(n19));
   CLKINVX1M U36 (.Y(n53), 
	.A(n17));
   CLKXOR2X2M U37 (.Y(n61), 
	.B(n21), 
	.A(div_clk__Exclude_0_NET));
   AOI21X1M U38 (.Y(n21), 
	.B0(n17), 
	.A1(n19), 
	.A0(n20));
   OR2X1M U39 (.Y(n19), 
	.B(i_div_ratio[0]), 
	.A(n22));
   XNOR2X1M U40 (.Y(n62), 
	.B(n23), 
	.A(odd_edge_tog));
   OR2X1M U41 (.Y(n23), 
	.B(n17), 
	.A(n20));
   NOR4BX1M U42 (.Y(n24), 
	.D(i_div_ratio[1]), 
	.C(i_div_ratio[3]), 
	.B(i_div_ratio[2]), 
	.AN(n25));
   NOR4X1M U43 (.Y(n25), 
	.D(i_div_ratio[4]), 
	.C(i_div_ratio[5]), 
	.B(i_div_ratio[6]), 
	.A(i_div_ratio[7]));
   CLKNAND2X2M U44 (.Y(n20), 
	.B(i_div_ratio[0]), 
	.A(n35));
   MXI2X1M U45 (.Y(n35), 
	.S0(odd_edge_tog), 
	.B(n22), 
	.A(n36));
   NAND4X1M U46 (.Y(n22), 
	.D(n40), 
	.C(n39), 
	.B(n38), 
	.A(n37));
   NOR4X1M U47 (.Y(n40), 
	.D(n44), 
	.C(n43), 
	.B(n42), 
	.A(n41));
   CLKXOR2X2M U48 (.Y(n44), 
	.B(count[2]), 
	.A(edge_flip_half[2]));
   CLKXOR2X2M U49 (.Y(n43), 
	.B(count[1]), 
	.A(edge_flip_half[1]));
   CLKXOR2X2M U50 (.Y(n42), 
	.B(count[0]), 
	.A(edge_flip_half[0]));
   CLKXOR2X2M U51 (.Y(n41), 
	.B(count[6]), 
	.A(edge_flip_half[6]));
   XNOR2X1M U52 (.Y(n39), 
	.B(edge_flip_half[4]), 
	.A(count[4]));
   XNOR2X1M U53 (.Y(n38), 
	.B(edge_flip_half[5]), 
	.A(count[5]));
   XNOR2X1M U54 (.Y(n37), 
	.B(edge_flip_half[3]), 
	.A(count[3]));
   NAND4X1M U55 (.Y(n36), 
	.D(n48), 
	.C(n47), 
	.B(n46), 
	.A(n45));
   NOR4X1M U56 (.Y(n48), 
	.D(n52), 
	.C(n51), 
	.B(n50), 
	.A(n49));
   CLKXOR2X2M U57 (.Y(n52), 
	.B(count[2]), 
	.A(i_div_ratio[3]));
   CLKXOR2X2M U58 (.Y(n51), 
	.B(count[1]), 
	.A(i_div_ratio[2]));
   CLKXOR2X2M U59 (.Y(n50), 
	.B(count[0]), 
	.A(i_div_ratio[1]));
   CLKXOR2X2M U60 (.Y(n49), 
	.B(count[6]), 
	.A(i_div_ratio[7]));
   XNOR2X1M U61 (.Y(n47), 
	.B(i_div_ratio[5]), 
	.A(count[4]));
   XNOR2X1M U62 (.Y(n46), 
	.B(i_div_ratio[6]), 
	.A(count[5]));
   XNOR2X1M U63 (.Y(n45), 
	.B(i_div_ratio[4]), 
	.A(count[3]));
   clock_divider_1_DW01_inc_0 add_49 (.A({ count[6],
		count[5],
		count[4],
		count[3],
		count[2],
		count[1],
		count[0] }), 
	.SUM({ N22,
		N21,
		N20,
		N19,
		N18,
		N17,
		N16 }));
endmodule

module fsm_uart_test_1 (
	clk, 
	reset, 
	data_valid, 
	par_en, 
	ser_done, 
	ser_en, 
	busy, 
	mux_sel, 
	test_si, 
	test_se, 
	FE_OFN2_reset_2, 
	FE_OFN4_SE);
   input clk;
   input reset;
   input data_valid;
   input par_en;
   input ser_done;
   output ser_en;
   output busy;
   output [1:0] mux_sel;
   input test_si;
   input test_se;
   input FE_OFN2_reset_2;
   input FE_OFN4_SE;

   // Internal wires
   wire \next_state[0] ;
   wire N60;
   wire N61;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire [2:0] current_state;

   SDFFRQX2M \mux_sel_reg[1]  (.SI(mux_sel[0]), 
	.SE(test_se), 
	.RN(FE_OFN2_reset_2), 
	.Q(mux_sel[1]), 
	.D(n9), 
	.CK(clk));
   SDFFRQX2M ser_en_reg (.SI(mux_sel[1]), 
	.SE(test_se), 
	.RN(FE_OFN2_reset_2), 
	.Q(ser_en), 
	.D(n8), 
	.CK(clk));
   SDFFSQX2M \mux_sel_reg[0]  (.SN(FE_OFN2_reset_2), 
	.SI(n12), 
	.SE(test_se), 
	.Q(mux_sel[0]), 
	.D(N61), 
	.CK(clk));
   SDFFRQX2M \current_state_reg[2]  (.SI(current_state[1]), 
	.SE(FE_OFN4_SE), 
	.RN(reset), 
	.Q(current_state[2]), 
	.D(n10), 
	.CK(clk));
   SDFFRQX2M \current_state_reg[0]  (.SI(busy), 
	.SE(FE_OFN4_SE), 
	.RN(reset), 
	.Q(current_state[0]), 
	.D(\next_state[0] ), 
	.CK(clk));
   SDFFRQX2M \current_state_reg[1]  (.SI(current_state[0]), 
	.SE(test_se), 
	.RN(reset), 
	.Q(current_state[1]), 
	.D(n9), 
	.CK(clk));
   SDFFRQX2M busy_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(reset), 
	.Q(busy), 
	.D(N60), 
	.CK(clk));
   INVX2M U10 (.Y(n8), 
	.A(N61));
   NAND3X2M U11 (.Y(N60), 
	.C(n15), 
	.B(n13), 
	.A(n16));
   CLKXOR2X2M U12 (.Y(N61), 
	.B(n15), 
	.A(n9));
   INVX2M U13 (.Y(n9), 
	.A(n16));
   INVX2M U14 (.Y(n10), 
	.A(n13));
   AOI31X2M U15 (.Y(n14), 
	.B0(n17), 
	.A2(current_state[1]), 
	.A1(ser_done), 
	.A0(par_en));
   NOR2BX2M U16 (.Y(n17), 
	.B(current_state[1]), 
	.AN(data_valid));
   NOR3X2M U17 (.Y(\next_state[0] ), 
	.C(current_state[0]), 
	.B(current_state[2]), 
	.A(n14));
   OR3X2M U18 (.Y(n15), 
	.C(current_state[2]), 
	.B(current_state[0]), 
	.A(n14));
   OAI2B1X2M U19 (.Y(n18), 
	.B0(n11), 
	.A1N(ser_done), 
	.A0(par_en));
   NAND2X2M U20 (.Y(n16), 
	.B(n12), 
	.A(n19));
   OAI2B2X1M U21 (.Y(n19), 
	.B1(n11), 
	.B0(current_state[1]), 
	.A1N(current_state[1]), 
	.A0(n18));
   NAND3X2M U22 (.Y(n13), 
	.C(current_state[1]), 
	.B(n12), 
	.A(n18));
   INVX2M U23 (.Y(n12), 
	.A(current_state[2]));
   INVX2M U24 (.Y(n11), 
	.A(current_state[0]));
endmodule

module mux4_1_test_1 (
	clk, 
	mux_sel, 
	start, 
	stop, 
	ser_data, 
	parity, 
	tx_out, 
	test_si, 
	test_se);
   input clk;
   input [1:0] mux_sel;
   input start;
   input stop;
   input ser_data;
   input parity;
   output tx_out;
   input test_si;
   input test_se;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire LTIE_LTIELO_NET;
   wire N12;
   wire n3;
   wire n4;
   wire n5;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   SDFFQX2M tx_out_reg (.SI(test_si), 
	.SE(test_se), 
	.Q(tx_out), 
	.D(N12), 
	.CK(clk));
   OAI2B2X1M U5 (.Y(N12), 
	.B1(n4), 
	.B0(mux_sel[1]), 
	.A1N(mux_sel[1]), 
	.A0(n3));
   AOI22X1M U6 (.Y(n4), 
	.B1(mux_sel[0]), 
	.B0(HTIE_LTIEHI_NET), 
	.A1(n5), 
	.A0(LTIE_LTIELO_NET));
   AOI22X1M U7 (.Y(n3), 
	.B1(mux_sel[0]), 
	.B0(parity), 
	.A1(n5), 
	.A0(ser_data));
   INVX2M U8 (.Y(n5), 
	.A(mux_sel[0]));
endmodule

module parity_calc_test_1 (
	clk, 
	reset, 
	par_type, 
	data_valid, 
	p_data, 
	par_bit, 
	test_si, 
	test_se);
   input clk;
   input reset;
   input par_type;
   input data_valid;
   input [7:0] p_data;
   output par_bit;
   input test_si;
   input test_se;

   // Internal wires
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n7;

   SDFFRQX2M par_bit_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(reset), 
	.Q(par_bit), 
	.D(n7), 
	.CK(clk));
   XNOR2X2M U2 (.Y(n5), 
	.B(p_data[6]), 
	.A(p_data[7]));
   XNOR2X2M U3 (.Y(n4), 
	.B(p_data[2]), 
	.A(p_data[3]));
   OAI2BB2X1M U4 (.Y(n7), 
	.B1(n1), 
	.B0(data_valid), 
	.A1N(data_valid), 
	.A0N(par_bit));
   XOR3XLM U5 (.Y(n1), 
	.C(n3), 
	.B(n2), 
	.A(par_type));
   XOR3XLM U6 (.Y(n3), 
	.C(n4), 
	.B(p_data[0]), 
	.A(p_data[1]));
   XOR3XLM U7 (.Y(n2), 
	.C(n5), 
	.B(p_data[4]), 
	.A(p_data[5]));
endmodule

module serializer_test_1 (
	clk, 
	reset, 
	ser_en, 
	p_data, 
	ser_data, 
	ser_done, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN3_SE);
   input clk;
   input reset;
   input ser_en;
   input [7:0] p_data;
   output ser_data;
   output ser_done;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN3_SE;

   // Internal wires
   wire N4;
   wire N5;
   wire N6;
   wire N11;
   wire n2;
   wire n5;
   wire n7;
   wire n9;
   wire n12;
   wire n14;
   wire n16;
   wire n18;
   wire n20;
   wire n22;
   wire n24;
   wire n26;
   wire n28;
   wire n30;
   wire n32;
   wire n33;
   wire n4;
   wire n6;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire [7:0] data_set;

   assign test_so = n36 ;

   SDFFRQX2M ser_data_reg (.SI(data_set[7]), 
	.SE(test_se), 
	.RN(reset), 
	.Q(ser_data), 
	.D(n33), 
	.CK(clk));
   SDFFRQX2M \data_set_reg[5]  (.SI(data_set[4]), 
	.SE(test_se), 
	.RN(reset), 
	.Q(data_set[5]), 
	.D(n28), 
	.CK(clk));
   SDFFRQX2M \data_set_reg[1]  (.SI(data_set[0]), 
	.SE(test_se), 
	.RN(reset), 
	.Q(data_set[1]), 
	.D(n20), 
	.CK(clk));
   SDFFRQX2M \data_set_reg[7]  (.SI(data_set[6]), 
	.SE(test_se), 
	.RN(reset), 
	.Q(data_set[7]), 
	.D(n32), 
	.CK(clk));
   SDFFRQX2M \data_set_reg[3]  (.SI(data_set[2]), 
	.SE(test_se), 
	.RN(reset), 
	.Q(data_set[3]), 
	.D(n24), 
	.CK(clk));
   SDFFRQX2M \data_set_reg[6]  (.SI(data_set[5]), 
	.SE(test_se), 
	.RN(reset), 
	.Q(data_set[6]), 
	.D(n30), 
	.CK(clk));
   SDFFRQX2M \data_set_reg[2]  (.SI(data_set[1]), 
	.SE(test_se), 
	.RN(reset), 
	.Q(data_set[2]), 
	.D(n22), 
	.CK(clk));
   SDFFRQX2M \data_set_reg[4]  (.SI(data_set[3]), 
	.SE(test_se), 
	.RN(reset), 
	.Q(data_set[4]), 
	.D(n26), 
	.CK(clk));
   SDFFRQX2M \data_set_reg[0]  (.SI(n35), 
	.SE(test_se), 
	.RN(reset), 
	.Q(data_set[0]), 
	.D(n18), 
	.CK(clk));
   SDFFRQX2M \counter_reg[2]  (.SI(n34), 
	.SE(FE_OFN3_SE), 
	.RN(reset), 
	.Q(N6), 
	.D(n12), 
	.CK(clk));
   SDFFRQX2M \counter_reg[1]  (.SI(N4), 
	.SE(FE_OFN3_SE), 
	.RN(reset), 
	.Q(N5), 
	.D(n14), 
	.CK(clk));
   SDFFRQX2M \counter_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(reset), 
	.Q(N4), 
	.D(n16), 
	.CK(clk));
   XNOR2X2M U4 (.Y(n12), 
	.B(n5), 
	.A(n35));
   NOR2X2M U5 (.Y(n5), 
	.B(n34), 
	.A(n2));
   INVX2M U6 (.Y(n37), 
	.A(ser_en));
   CLKXOR2X2M U7 (.Y(n14), 
	.B(n2), 
	.A(n34));
   AO22X1M U8 (.Y(n22), 
	.B1(n37), 
	.B0(data_set[2]), 
	.A1(ser_en), 
	.A0(p_data[2]));
   AO22X1M U9 (.Y(n30), 
	.B1(n37), 
	.B0(data_set[6]), 
	.A1(ser_en), 
	.A0(p_data[6]));
   OAI31X1M U10 (.Y(n9), 
	.B0(n36), 
	.A2(n34), 
	.A1(n2), 
	.A0(n35));
   NAND2X2M U12 (.Y(n2), 
	.B(N4), 
	.A(ser_en));
   MX4X1M U14 (.Y(n4), 
	.S1(N5), 
	.S0(N4), 
	.D(data_set[7]), 
	.C(data_set[6]), 
	.B(data_set[5]), 
	.A(data_set[4]));
   AO2B2X2M U15 (.Y(n33), 
	.B1(n7), 
	.B0(N11), 
	.A1N(n7), 
	.A0(ser_data));
   AOI31X2M U16 (.Y(n7), 
	.B0(n37), 
	.A2(N5), 
	.A1(N4), 
	.A0(N6));
   MX2X2M U17 (.Y(N11), 
	.S0(N6), 
	.B(n4), 
	.A(n6));
   MX4X1M U18 (.Y(n6), 
	.S1(N5), 
	.S0(N4), 
	.D(data_set[3]), 
	.C(data_set[2]), 
	.B(data_set[1]), 
	.A(data_set[0]));
   INVX2M U19 (.Y(n34), 
	.A(N5));
   AO22X1M U20 (.Y(n18), 
	.B1(n37), 
	.B0(data_set[0]), 
	.A1(ser_en), 
	.A0(p_data[0]));
   AO22X1M U21 (.Y(n20), 
	.B1(n37), 
	.B0(data_set[1]), 
	.A1(ser_en), 
	.A0(p_data[1]));
   AO22X1M U22 (.Y(n24), 
	.B1(n37), 
	.B0(data_set[3]), 
	.A1(ser_en), 
	.A0(p_data[3]));
   AO22X1M U36 (.Y(n26), 
	.B1(n37), 
	.B0(data_set[4]), 
	.A1(ser_en), 
	.A0(p_data[4]));
   AO22X1M U37 (.Y(n28), 
	.B1(n37), 
	.B0(data_set[5]), 
	.A1(ser_en), 
	.A0(p_data[5]));
   AO22X1M U38 (.Y(n32), 
	.B1(n37), 
	.B0(data_set[7]), 
	.A1(ser_en), 
	.A0(p_data[7]));
   INVX2M U39 (.Y(n35), 
	.A(N6));
   CLKXOR2X2M U40 (.Y(n16), 
	.B(N4), 
	.A(ser_en));
   SDFFRX1M ser_done_reg (.SI(ser_data), 
	.SE(FE_OFN3_SE), 
	.RN(reset), 
	.QN(n36), 
	.Q(ser_done), 
	.D(n9), 
	.CK(clk));
endmodule

module uart_tr_test_1 (
	clk, 
	reset, 
	data_valid, 
	par_type, 
	par_en, 
	p_data, 
	tx_out, 
	busy, 
	test_si, 
	test_se, 
	FE_OFN2_reset_2, 
	FE_OFN3_SE, 
	FE_OFN4_SE);
   input clk;
   input reset;
   input data_valid;
   input par_type;
   input par_en;
   input [7:0] p_data;
   output tx_out;
   output busy;
   input test_si;
   input test_se;
   input FE_OFN2_reset_2;
   input FE_OFN3_SE;
   input FE_OFN4_SE;

   // Internal wires
   wire in_s2f;
   wire in_f2s;
   wire in_s2m;
   wire in_p2m;
   wire n1;
   wire [1:0] in_f2m;

   fsm_uart_test_1 a0 (.clk(clk), 
	.reset(reset), 
	.data_valid(data_valid), 
	.par_en(par_en), 
	.ser_done(in_s2f), 
	.ser_en(in_f2s), 
	.busy(busy), 
	.mux_sel({ in_f2m[1],
		in_f2m[0] }), 
	.test_si(test_si), 
	.test_se(FE_OFN3_SE), 
	.FE_OFN2_reset_2(FE_OFN2_reset_2), 
	.FE_OFN4_SE(FE_OFN4_SE));
   mux4_1_test_1 a1 (.clk(clk), 
	.mux_sel({ in_f2m[1],
		in_f2m[0] }), 
	.start(1'b0), 
	.stop(1'b1), 
	.ser_data(in_s2m), 
	.parity(in_p2m), 
	.tx_out(tx_out), 
	.test_si(n1), 
	.test_se(FE_OFN3_SE));
   parity_calc_test_1 a2 (.clk(clk), 
	.reset(FE_OFN2_reset_2), 
	.par_type(par_type), 
	.data_valid(data_valid), 
	.p_data({ p_data[7],
		p_data[6],
		p_data[5],
		p_data[4],
		p_data[3],
		p_data[2],
		p_data[1],
		p_data[0] }), 
	.par_bit(in_p2m), 
	.test_si(in_f2s), 
	.test_se(FE_OFN3_SE));
   serializer_test_1 a3 (.clk(clk), 
	.reset(FE_OFN2_reset_2), 
	.ser_en(in_f2s), 
	.p_data({ p_data[7],
		p_data[6],
		p_data[5],
		p_data[4],
		p_data[3],
		p_data[2],
		p_data[1],
		p_data[0] }), 
	.ser_data(in_s2m), 
	.ser_done(in_s2f), 
	.test_si(in_p2m), 
	.test_so(n1), 
	.test_se(test_se), 
	.FE_OFN3_SE(FE_OFN3_SE));
endmodule

module SYS_TOP (
	REF_CLK, 
	RST_N, 
	UART_CLK, 
	UART_RX_IN, 
	scan_clk, 
	scan_rst, 
	test_mode, 
	SE, 
	SI, 
	UART_TX_O, 
	framing_error, 
	parity_error, 
	SO, 
	test_si2, 
	test_so2, 
	test_si3);
   input REF_CLK;
   input RST_N;
   input UART_CLK;
   input UART_RX_IN;
   input scan_clk;
   input scan_rst;
   input test_mode;
   input SE;
   input SI;
   output UART_TX_O;
   output framing_error;
   output parity_error;
   output SO;
   input test_si2;
   output test_so2;
   input test_si3;

   // Internal wires
   wire UART_CLK__L2_N0;
   wire UART_CLK__L1_N0;
   wire REF_CLK__L2_N0;
   wire REF_CLK__L1_N0;
   wire scan_clk__L10_N0;
   wire scan_clk__L9_N0;
   wire scan_clk__L8_N0;
   wire scan_clk__L7_N1;
   wire scan_clk__L7_N0;
   wire scan_clk__L6_N1;
   wire scan_clk__L6_N0;
   wire scan_clk__L5_N1;
   wire scan_clk__L5_N0;
   wire scan_clk__L4_N0;
   wire scan_clk__L3_N0;
   wire scan_clk__L2_N0;
   wire scan_clk__L1_N0;
   wire ref_clock__L4_N2;
   wire ref_clock__L4_N1;
   wire ref_clock__L4_N0;
   wire ref_clock__L3_N0;
   wire ref_clock__L2_N0;
   wire ref_clock__L1_N0;
   wire alu_clk_f_clk_gate__L1_N0;
   wire uart_clock__L8_N0;
   wire uart_clock__L7_N0;
   wire uart_clock__L6_N0;
   wire uart_clock__L5_N1;
   wire uart_clock__L5_N0;
   wire uart_clock__L4_N1;
   wire uart_clock__L4_N0;
   wire uart_clock__L3_N1;
   wire uart_clock__L3_N0;
   wire uart_clock__L2_N1;
   wire uart_clock__L2_N0;
   wire uart_clock__L1_N0;
   wire o_div_clk_tx__L1_N0;
   wire rx_clock__L3_N0;
   wire rx_clock__L2_N0;
   wire rx_clock__L1_N0;
   wire tx_clock__L3_N0;
   wire tx_clock__L2_N0;
   wire tx_clock__L1_N0;
   wire FE_OFN7_SE;
   wire FE_OFN5_SE;
   wire FE_OFN4_SE;
   wire FE_OFN3_SE;
   wire FE_OFN2_reset_2;
   wire FE_OFN1_reset_1;
   wire FE_OFN0_reset_1;
   wire ref_clock;
   wire uart_clock;
   wire o_div_clk_rx;
   wire rx_clock;
   wire o_div_clk_tx;
   wire tx_clock;
   wire RST_N_for_regfile;
   wire reset_1;
   wire RST_N_fifo;
   wire reset_2;
   wire reset_3;
   wire out_valid_f_alu;
   wire rdata_valid_f_reg_file;
   wire rx_d_vld_f_rx;
   wire fifo_full_f_fifo;
   wire wr_inc_f_fifo;
   wire wr_en_f_regfile;
   wire rd_en_f_regfile;
   wire clk_en_f_clock_gate;
   wire alu_clk_f_clk_gate;
   wire bus_enable_f_rx;
   wire rinc_f_pulse_gen;
   wire r_empty_f_tx;
   wire busy_f_tx;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n12;
   wire n15;
   wire n16;
   wire n17;
   wire [7:0] alu_out_f_alu;
   wire [7:0] rddata_f_reg_file;
   wire [7:0] rx_p_data_f_rx;
   wire [7:0] wr_data_f_fifo;
   wire [3:0] alu_fun_f_alu;
   wire [2:0] address_f_reg_file;
   wire [7:0] wrdata_f_regfile;
   wire [7:0] a_f_regfile;
   wire [7:0] b_f_regfile;
   wire [7:0] c_rx;
   wire [7:0] d_div;
   wire [7:0] unsync_bus_f_rx;
   wire [7:0] fifo_full_f_fifo_f_tx;
   wire [7:0] clk_rx;
   wire SYNOPSYS_UNCONNECTED__0;
   wire SYNOPSYS_UNCONNECTED__1;
   wire SYNOPSYS_UNCONNECTED__2;
   wire SYNOPSYS_UNCONNECTED__3;

   CLKINVX8M UART_CLK__L2_I0 (.Y(UART_CLK__L2_N0), 
	.A(UART_CLK__L1_N0));
   CLKINVX40M UART_CLK__L1_I0 (.Y(UART_CLK__L1_N0), 
	.A(UART_CLK));
   CLKINVX8M REF_CLK__L2_I0 (.Y(REF_CLK__L2_N0), 
	.A(REF_CLK__L1_N0));
   CLKINVX40M REF_CLK__L1_I0 (.Y(REF_CLK__L1_N0), 
	.A(REF_CLK));
   CLKINVX32M scan_clk__L10_I0 (.Y(scan_clk__L10_N0), 
	.A(scan_clk__L9_N0));
   CLKINVX40M scan_clk__L9_I0 (.Y(scan_clk__L9_N0), 
	.A(scan_clk__L8_N0));
   CLKBUFX32M scan_clk__L8_I0 (.Y(scan_clk__L8_N0), 
	.A(scan_clk__L7_N1));
   CLKBUFX4M scan_clk__L7_I1 (.Y(scan_clk__L7_N1), 
	.A(scan_clk__L6_N1));
   CLKBUFX4M scan_clk__L7_I0 (.Y(scan_clk__L7_N0), 
	.A(scan_clk__L6_N0));
   CLKBUFX4M scan_clk__L6_I1 (.Y(scan_clk__L6_N1), 
	.A(scan_clk__L5_N1));
   CLKBUFX4M scan_clk__L6_I0 (.Y(scan_clk__L6_N0), 
	.A(scan_clk__L5_N0));
   CLKBUFX4M scan_clk__L5_I1 (.Y(scan_clk__L5_N1), 
	.A(scan_clk__L4_N0));
   CLKBUFX4M scan_clk__L5_I0 (.Y(scan_clk__L5_N0), 
	.A(scan_clk__L4_N0));
   CLKBUFX4M scan_clk__L4_I0 (.Y(scan_clk__L4_N0), 
	.A(scan_clk__L3_N0));
   CLKBUFX12M scan_clk__L3_I0 (.Y(scan_clk__L3_N0), 
	.A(scan_clk__L2_N0));
   CLKINVX16M scan_clk__L2_I0 (.Y(scan_clk__L2_N0), 
	.A(scan_clk__L1_N0));
   CLKINVX40M scan_clk__L1_I0 (.Y(scan_clk__L1_N0), 
	.A(scan_clk));
   CLKINVX40M ref_clock__L4_I2 (.Y(ref_clock__L4_N2), 
	.A(ref_clock__L3_N0));
   CLKINVX40M ref_clock__L4_I1 (.Y(ref_clock__L4_N1), 
	.A(ref_clock__L3_N0));
   CLKINVX40M ref_clock__L4_I0 (.Y(ref_clock__L4_N0), 
	.A(ref_clock__L3_N0));
   CLKINVX40M ref_clock__L3_I0 (.Y(ref_clock__L3_N0), 
	.A(ref_clock__L2_N0));
   CLKBUFX40M ref_clock__L2_I0 (.Y(ref_clock__L2_N0), 
	.A(ref_clock__L1_N0));
   BUFX16M ref_clock__L1_I0 (.Y(ref_clock__L1_N0), 
	.A(ref_clock));
   CLKBUFX8M alu_clk_f_clk_gate__L1_I0 (.Y(alu_clk_f_clk_gate__L1_N0), 
	.A(alu_clk_f_clk_gate));
   CLKINVX40M uart_clock__L8_I0 (.Y(uart_clock__L8_N0), 
	.A(uart_clock__L7_N0));
   CLKBUFX24M uart_clock__L7_I0 (.Y(uart_clock__L7_N0), 
	.A(uart_clock__L6_N0));
   CLKBUFX4M uart_clock__L6_I0 (.Y(uart_clock__L6_N0), 
	.A(uart_clock__L5_N1));
   CLKBUFX4M uart_clock__L5_I1 (.Y(uart_clock__L5_N1), 
	.A(uart_clock__L4_N1));
   CLKINVX40M uart_clock__L5_I0 (.Y(uart_clock__L5_N0), 
	.A(uart_clock__L4_N0));
   CLKBUFX4M uart_clock__L4_I1 (.Y(uart_clock__L4_N1), 
	.A(uart_clock__L3_N1));
   CLKBUFX40M uart_clock__L4_I0 (.Y(uart_clock__L4_N0), 
	.A(uart_clock__L3_N0));
   CLKBUFX4M uart_clock__L3_I1 (.Y(uart_clock__L3_N1), 
	.A(uart_clock__L2_N1));
   CLKBUFX4M uart_clock__L3_I0 (.Y(uart_clock__L3_N0), 
	.A(uart_clock__L2_N1));
   BUFX3M uart_clock__L2_I1 (.Y(uart_clock__L2_N1), 
	.A(uart_clock__L1_N0));
   CLKINVX4M uart_clock__L2_I0 (.Y(uart_clock__L2_N0), 
	.A(uart_clock__L1_N0));
   INVX2M uart_clock__L1_I0 (.Y(uart_clock__L1_N0), 
	.A(uart_clock));
   BUFX8M o_div_clk_tx__L1_I0 (.Y(o_div_clk_tx__L1_N0), 
	.A(o_div_clk_tx));
   CLKINVX32M rx_clock__L3_I0 (.Y(rx_clock__L3_N0), 
	.A(rx_clock__L2_N0));
   BUFX14M rx_clock__L2_I0 (.Y(rx_clock__L2_N0), 
	.A(rx_clock__L1_N0));
   INVX3M rx_clock__L1_I0 (.Y(rx_clock__L1_N0), 
	.A(rx_clock));
   CLKINVX40M tx_clock__L3_I0 (.Y(tx_clock__L3_N0), 
	.A(tx_clock__L2_N0));
   INVX12M tx_clock__L2_I0 (.Y(tx_clock__L2_N0), 
	.A(tx_clock__L1_N0));
   BUFX8M tx_clock__L1_I0 (.Y(tx_clock__L1_N0), 
	.A(tx_clock));
   BUFX4M FE_OFC7_SE (.Y(FE_OFN7_SE), 
	.A(FE_OFN5_SE));
   BUFX4M FE_OFC5_SE (.Y(FE_OFN5_SE), 
	.A(FE_OFN3_SE));
   BUFX2M FE_OFC4_SE (.Y(FE_OFN4_SE), 
	.A(SE));
   BUFX4M FE_OFC3_SE (.Y(FE_OFN3_SE), 
	.A(SE));
   BUFX8M FE_OFC2_reset_2 (.Y(FE_OFN2_reset_2), 
	.A(reset_2));
   BUFX10M FE_OFC1_reset_1 (.Y(FE_OFN1_reset_1), 
	.A(FE_OFN0_reset_1));
   BUFX10M FE_OFC0_reset_1 (.Y(FE_OFN0_reset_1), 
	.A(reset_1));
   mux2X1_1 b0 (.IN_0(REF_CLK__L2_N0), 
	.IN_1(scan_clk__L7_N0), 
	.SEL(test_mode), 
	.OUT(ref_clock));
   mux2X1_4 b1 (.IN_0(UART_CLK__L2_N0), 
	.IN_1(scan_clk__L2_N0), 
	.SEL(test_mode), 
	.OUT(uart_clock));
   mux2X1_3 b2 (.IN_0(o_div_clk_rx), 
	.IN_1(scan_clk__L10_N0), 
	.SEL(test_mode), 
	.OUT(rx_clock));
   mux2X1_2 b3 (.IN_0(o_div_clk_tx__L1_N0), 
	.IN_1(scan_clk__L10_N0), 
	.SEL(test_mode), 
	.OUT(tx_clock));
   mux2X1_0 b4 (.IN_0(RST_N_for_regfile), 
	.IN_1(scan_rst), 
	.SEL(test_mode), 
	.OUT(reset_1));
   mux2X1_6 b5 (.IN_0(RST_N_fifo), 
	.IN_1(scan_rst), 
	.SEL(test_mode), 
	.OUT(reset_2));
   mux2X1_5 b6 (.IN_0(RST_N), 
	.IN_1(scan_rst), 
	.SEL(test_mode), 
	.OUT(reset_3));
   sys_cnrt_test_1 A0 (.clk(ref_clock__L4_N1), 
	.reset(FE_OFN0_reset_1), 
	.alu_out({ alu_out_f_alu[7],
		alu_out_f_alu[6],
		alu_out_f_alu[5],
		alu_out_f_alu[4],
		alu_out_f_alu[3],
		alu_out_f_alu[2],
		alu_out_f_alu[1],
		alu_out_f_alu[0] }), 
	.out_valid(out_valid_f_alu), 
	.rddata({ rddata_f_reg_file[7],
		rddata_f_reg_file[6],
		rddata_f_reg_file[5],
		rddata_f_reg_file[4],
		rddata_f_reg_file[3],
		rddata_f_reg_file[2],
		rddata_f_reg_file[1],
		rddata_f_reg_file[0] }), 
	.rddata_valid(rdata_valid_f_reg_file), 
	.rx_p_data({ rx_p_data_f_rx[7],
		rx_p_data_f_rx[6],
		rx_p_data_f_rx[5],
		rx_p_data_f_rx[4],
		rx_p_data_f_rx[3],
		rx_p_data_f_rx[2],
		rx_p_data_f_rx[1],
		rx_p_data_f_rx[0] }), 
	.rx_d_vld(rx_d_vld_f_rx), 
	.fifo_full(fifo_full_f_fifo), 
	.wr_inc(wr_inc_f_fifo), 
	.wr_data({ wr_data_f_fifo[7],
		wr_data_f_fifo[6],
		wr_data_f_fifo[5],
		wr_data_f_fifo[4],
		wr_data_f_fifo[3],
		wr_data_f_fifo[2],
		wr_data_f_fifo[1],
		wr_data_f_fifo[0] }), 
	.address({ address_f_reg_file[2],
		address_f_reg_file[1],
		address_f_reg_file[0] }), 
	.wr_en(wr_en_f_regfile), 
	.rd_en(rd_en_f_regfile), 
	.wrdata({ wrdata_f_regfile[7],
		wrdata_f_regfile[6],
		wrdata_f_regfile[5],
		wrdata_f_regfile[4],
		wrdata_f_regfile[3],
		wrdata_f_regfile[2],
		wrdata_f_regfile[1],
		wrdata_f_regfile[0] }), 
	.clk_div_en(clk_en_f_clock_gate), 
	.test_si(SI), 
	.test_so(n17), 
	.test_se(FE_OFN7_SE));
   alu_test_1 A1 (.a({ a_f_regfile[7],
		a_f_regfile[6],
		a_f_regfile[5],
		a_f_regfile[4],
		a_f_regfile[3],
		a_f_regfile[2],
		a_f_regfile[1],
		a_f_regfile[0] }), 
	.b({ b_f_regfile[7],
		b_f_regfile[6],
		b_f_regfile[5],
		b_f_regfile[4],
		b_f_regfile[3],
		b_f_regfile[2],
		b_f_regfile[1],
		b_f_regfile[0] }), 
	.alu_fun({ 1'b0,
		1'b0,
		1'b0,
		1'b0 }), 
	.reset(FE_OFN0_reset_1), 
	.clk(alu_clk_f_clk_gate__L1_N0), 
	.en(1'b0), 
	.alu_out({ alu_out_f_alu[7],
		alu_out_f_alu[6],
		alu_out_f_alu[5],
		alu_out_f_alu[4],
		alu_out_f_alu[3],
		alu_out_f_alu[2],
		alu_out_f_alu[1],
		alu_out_f_alu[0] }), 
	.out_valid(out_valid_f_alu), 
	.test_si(n17), 
	.test_se(FE_OFN7_SE), 
	.FE_OFN1_reset_1(FE_OFN1_reset_1));
   CLK_GATE A2 (.CLK_EN(clk_en_f_clock_gate), 
	.test_mode(test_mode), 
	.CLK(ref_clock__L1_N0), 
	.GATED_CLK(alu_clk_f_clk_gate));
   reg_file_test_1 A3 (.WrData({ wrdata_f_regfile[7],
		wrdata_f_regfile[6],
		wrdata_f_regfile[5],
		wrdata_f_regfile[4],
		wrdata_f_regfile[3],
		wrdata_f_regfile[2],
		wrdata_f_regfile[1],
		wrdata_f_regfile[0] }), 
	.Address({ address_f_reg_file[2],
		address_f_reg_file[1],
		address_f_reg_file[0] }), 
	.WrEn(wr_en_f_regfile), 
	.RdEn(rd_en_f_regfile), 
	.CLK(ref_clock__L4_N1), 
	.RST(FE_OFN0_reset_1), 
	.RdData({ rddata_f_reg_file[7],
		rddata_f_reg_file[6],
		rddata_f_reg_file[5],
		rddata_f_reg_file[4],
		rddata_f_reg_file[3],
		rddata_f_reg_file[2],
		rddata_f_reg_file[1],
		rddata_f_reg_file[0] }), 
	.RdData_valid(rdata_valid_f_reg_file), 
	.REG0({ a_f_regfile[7],
		a_f_regfile[6],
		a_f_regfile[5],
		a_f_regfile[4],
		a_f_regfile[3],
		a_f_regfile[2],
		a_f_regfile[1],
		a_f_regfile[0] }), 
	.REG1({ b_f_regfile[7],
		b_f_regfile[6],
		b_f_regfile[5],
		b_f_regfile[4],
		b_f_regfile[3],
		b_f_regfile[2],
		b_f_regfile[1],
		b_f_regfile[0] }), 
	.REG2({ c_rx[7],
		c_rx[6],
		c_rx[5],
		c_rx[4],
		c_rx[3],
		c_rx[2],
		c_rx[1],
		c_rx[0] }), 
	.REG3({ d_div[7],
		d_div[6],
		d_div[5],
		d_div[4],
		d_div[3],
		d_div[2],
		d_div[1],
		d_div[0] }), 
	.test_si(out_valid_f_alu), 
	.test_so(n16), 
	.test_se(FE_OFN3_SE), 
	.FE_OFN1_reset_1(FE_OFN1_reset_1), 
	.FE_OFN7_SE(FE_OFN7_SE), 
	.ref_clock__L4_N2(ref_clock__L4_N2));
   reset_sync_test_0 A4 (.clk(ref_clock__L4_N0), 
	.reset(reset_3), 
	.sync_reset(RST_N_for_regfile), 
	.test_si(n16), 
	.test_so(n15), 
	.test_se(FE_OFN3_SE));
   data_sync_test_1 A5 (.clk(ref_clock__L4_N0), 
	.reset(FE_OFN0_reset_1), 
	.bus_enable(bus_enable_f_rx), 
	.unsync_bus({ unsync_bus_f_rx[7],
		unsync_bus_f_rx[6],
		unsync_bus_f_rx[5],
		unsync_bus_f_rx[4],
		unsync_bus_f_rx[3],
		unsync_bus_f_rx[2],
		unsync_bus_f_rx[1],
		unsync_bus_f_rx[0] }), 
	.sync_bus({ rx_p_data_f_rx[7],
		rx_p_data_f_rx[6],
		rx_p_data_f_rx[5],
		rx_p_data_f_rx[4],
		rx_p_data_f_rx[3],
		rx_p_data_f_rx[2],
		rx_p_data_f_rx[1],
		rx_p_data_f_rx[0] }), 
	.enable_bus(rx_d_vld_f_rx), 
	.test_si2(test_si2), 
	.test_si1(n15), 
	.test_so2(n12), 
	.test_so1(SO), 
	.test_se(FE_OFN3_SE), 
	.FE_OFN1_reset_1(FE_OFN1_reset_1), 
	.FE_OFN7_SE(FE_OFN7_SE), 
	.ref_clock__L4_N1(ref_clock__L4_N1));
   fifo_top_test_1 A6 (.wrst_n(reset_1), 
	.reset(reset_1), 
	.w_clk(ref_clock__L4_N0), 
	.winc(wr_inc_f_fifo), 
	.w_data({ wr_data_f_fifo[7],
		wr_data_f_fifo[6],
		wr_data_f_fifo[5],
		wr_data_f_fifo[4],
		wr_data_f_fifo[3],
		wr_data_f_fifo[2],
		wr_data_f_fifo[1],
		wr_data_f_fifo[0] }), 
	.r_clk(tx_clock__L3_N0), 
	.rrest_n(reset_2), 
	.rinc(rinc_f_pulse_gen), 
	.w_full(fifo_full_f_fifo), 
	.r_data({ fifo_full_f_fifo_f_tx[7],
		fifo_full_f_fifo_f_tx[6],
		fifo_full_f_fifo_f_tx[5],
		fifo_full_f_fifo_f_tx[4],
		fifo_full_f_fifo_f_tx[3],
		fifo_full_f_fifo_f_tx[2],
		fifo_full_f_fifo_f_tx[1],
		fifo_full_f_fifo_f_tx[0] }), 
	.r_empty(r_empty_f_tx), 
	.test_si2(test_si3), 
	.test_si1(n12), 
	.test_so2(n9), 
	.test_so1(test_so2), 
	.test_se(SE), 
	.FE_OFN0_reset_1(FE_OFN0_reset_1), 
	.FE_OFN2_reset_2(FE_OFN2_reset_2), 
	.FE_OFN3_SE(FE_OFN3_SE), 
	.FE_OFN5_SE(FE_OFN5_SE), 
	.FE_OFN7_SE(FE_OFN7_SE), 
	.ref_clock__L4_N1(ref_clock__L4_N1));
   reset_sync_test_1 A7 (.clk(uart_clock__L8_N0), 
	.reset(reset_3), 
	.sync_reset(RST_N_fifo), 
	.test_si(n9), 
	.test_so(n8), 
	.test_se(FE_OFN4_SE));
   pluse_gen_test_1 A8 (.clk(tx_clock__L3_N0), 
	.reset(reset_2), 
	.busy(busy_f_tx), 
	.rd_inc(rinc_f_pulse_gen), 
	.test_si(n8), 
	.test_so(n7), 
	.test_se(FE_OFN4_SE));
   UART_RX_test_1 A9 (.CLK(rx_clock__L3_N0), 
	.RST(reset_2), 
	.RX_IN(UART_RX_IN), 
	.parity_enable(c_rx[0]), 
	.parity_type(c_rx[1]), 
	.Prescale({ c_rx[7],
		c_rx[6],
		c_rx[5],
		c_rx[4],
		c_rx[3],
		c_rx[2] }), 
	.P_DATA({ unsync_bus_f_rx[7],
		unsync_bus_f_rx[6],
		unsync_bus_f_rx[5],
		unsync_bus_f_rx[4],
		unsync_bus_f_rx[3],
		unsync_bus_f_rx[2],
		unsync_bus_f_rx[1],
		unsync_bus_f_rx[0] }), 
	.data_valid(bus_enable_f_rx), 
	.parity_error(parity_error), 
	.framing_error(framing_error), 
	.test_si(n7), 
	.test_so(n6), 
	.test_se(FE_OFN3_SE), 
	.FE_OFN2_reset_2(FE_OFN2_reset_2), 
	.FE_OFN4_SE(FE_OFN4_SE), 
	.FE_OFN5_SE(FE_OFN5_SE));
   clock_divider_test_0 A10 (.i_ref_clk(uart_clock__L2_N0), 
	.i_rst(reset_2), 
	.i_clk_en(1'b1), 
	.i_div_ratio({ 1'b0,
		1'b0,
		1'b0,
		1'b0,
		clk_rx[3],
		clk_rx[2],
		clk_rx[1],
		clk_rx[0] }), 
	.o_div_clk(o_div_clk_rx), 
	.test_si(n6), 
	.test_so(n5), 
	.test_se(FE_OFN4_SE), 
	.uart_clock__L5_N0(uart_clock__L5_N0), 
	.uart_clock__L8_N0(uart_clock__L8_N0));
   pre_mux A13 (.prescale({ c_rx[7],
		c_rx[6],
		c_rx[5],
		c_rx[4],
		c_rx[3],
		c_rx[2] }), 
	.clk_div_in({ SYNOPSYS_UNCONNECTED__0,
		SYNOPSYS_UNCONNECTED__1,
		SYNOPSYS_UNCONNECTED__2,
		SYNOPSYS_UNCONNECTED__3,
		clk_rx[3],
		clk_rx[2],
		clk_rx[1],
		clk_rx[0] }));
   clock_divider_test_1 A11 (.i_ref_clk(uart_clock__L2_N0), 
	.i_rst(FE_OFN2_reset_2), 
	.i_clk_en(1'b1), 
	.i_div_ratio({ d_div[7],
		d_div[6],
		d_div[5],
		d_div[4],
		d_div[3],
		d_div[2],
		d_div[1],
		d_div[0] }), 
	.o_div_clk(o_div_clk_tx), 
	.test_si(n5), 
	.test_so(n4), 
	.test_se(FE_OFN3_SE), 
	.FE_OFN5_SE(FE_OFN5_SE), 
	.uart_clock__L5_N0(uart_clock__L5_N0), 
	.uart_clock__L8_N0(uart_clock__L8_N0));
   uart_tr_test_1 A12 (.clk(tx_clock__L3_N0), 
	.reset(reset_2), 
	.data_valid(r_empty_f_tx), 
	.par_type(c_rx[1]), 
	.par_en(c_rx[0]), 
	.p_data({ fifo_full_f_fifo_f_tx[7],
		fifo_full_f_fifo_f_tx[6],
		fifo_full_f_fifo_f_tx[5],
		fifo_full_f_fifo_f_tx[4],
		fifo_full_f_fifo_f_tx[3],
		fifo_full_f_fifo_f_tx[2],
		fifo_full_f_fifo_f_tx[1],
		fifo_full_f_fifo_f_tx[0] }), 
	.tx_out(UART_TX_O), 
	.busy(busy_f_tx), 
	.test_si(n4), 
	.test_se(SE), 
	.FE_OFN2_reset_2(FE_OFN2_reset_2), 
	.FE_OFN3_SE(FE_OFN3_SE), 
	.FE_OFN4_SE(FE_OFN4_SE));
endmodule

