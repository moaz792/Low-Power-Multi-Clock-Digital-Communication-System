module SYS_TOP#(parameter data_width = 8) (
input wire	 REF_CLK ,
input wire 	RST_N ,
input wire 	UART_CLK ,
input wire 	UART_RX_IN ,
output wire  UART_TX_O  ,
output wire framing_error ,
output wire parity_error 
);

  
wire[data_width-1:0]  alu_out_f_alu ;  
wire out_valid_f_alu ;
wire [data_width-1:0] rddata_f_reg_file ; 
wire rdata_valid_f_reg_file ; 
wire [data_width-1:0] rx_p_data_f_rx ; 
wire rx_d_vld_f_rx ; 
wire fifo_full_f_fifo ; 
wire wr_inc_f_fifo ; 
wire [data_width-1:0]  wr_data_f_fifo ;  
wire [3:0] alu_fun_f_alu ; 
wire en_f_alu ; 
wire clk_en_f_clock_gate ; 
wire [2:0] address_f_reg_file ; 
wire wr_en_f_regfile ; 
wire rd_en_f_regfile ; 
wire [data_width-1:0] wrdata_f_regfile ; 
wire RST_N_for_regfile;
	sys_cnrt A0(
		.clk (REF_CLK) ,
		.reset (RST_N_for_regfile) , 
		.alu_out (alu_out_f_alu) ,
		.out_valid (out_valid_f_alu) ,
		.rddata (rddata_f_reg_file) ,
		.rddata_valid (rdata_valid_f_reg_file) ,
		.rx_p_data (rx_p_data_f_rx) ,
		.rx_d_vld (rx_d_vld_f_rx) ,
		.fifo_full (fifo_full_f_fifo) ,  
		.wr_inc (wr_inc_f_fifo) ,
		.wr_data (wr_data_f_fifo) ,
		.alu_fun (alu_fun_f_alu) ,
		.en (en_f_alu) ,
		.address (address_f_reg_file) ,
		.wr_en (wr_en_f_regfile) ,
		.rd_en (rd_en_f_regfile) ,
		.wrdata (wrdata_f_regfile) ,
		.clk_div_en (clk_en_f_clock_gate)
	);

wire [data_width-1:0] a_f_regfile ; 
wire [data_width-1:0] b_f_regfile ; 
wire alu_clk_f_clk_gate ;
	alu A1(
		.a (a_f_regfile) ,
		.b (b_f_regfile) ,
		.alu_fun (alu_fun_f_alu) ,
		.clk (alu_clk_f_clk_gate) ,
		.en (en_f_alu) ,
		.alu_out (alu_out_f_alu) ,
		.out_valid (out_valid_f_alu)
	);
	

	CLK_GATE A2(
		.CLK_EN(clk_en_f_clock_gate),
		.CLK(REF_CLK),
		.GATED_CLK(alu_clk_f_clk_gate)
	);




wire [data_width-1:0] c_rx ; //
wire [data_width-1:0] d_div ; //	
	reg_file A3(
		.clk (REF_CLK) ,
		.reset (RST_N_for_regfile) ,
		.wr_en (wr_en_f_regfile) ,
		.rd_en (rd_en_f_regfile) ,
		.address (address_f_reg_file) ,
		.data_write(wrdata_f_regfile) ,
		.data_read (rddata_f_reg_file) ,
		.rd_valid  (rdata_valid_f_reg_file) ,
		.a (a_f_regfile) ,
		.b (b_f_regfile) ,
		.c(c_rx) ,
		.d(d_div)
	);	
	

	reset_sync A4(
		.clk (REF_CLK),
		.reset(RST_N) ,
		.sync_reset(RST_N_for_regfile)
	);


	
wire bus_enable_f_rx ;
wire [data_width-1:0] unsync_bus_f_rx ;
	data_sync A5(
		.clk (REF_CLK) ,
		.reset (RST_N_for_regfile) ,
		.bus_enable (bus_enable_f_rx) ,
		.unsync_bus (unsync_bus_f_rx) ,
		.sync_bus (rx_p_data_f_rx) ,
		.enable_bus (rx_d_vld_f_rx)
	);	
	
	

wire RST_N_fifo ; 
wire rinc_f_pulse_gen ; 
wire [data_width-1:0] fifo_full_f_fifo_f_tx ; 	
wire r_empty_f_tx ; 
wire  o_div_clk_tx;
	fifo_top A6(
		.wrst_n (RST_N_for_regfile) ,
		.reset (RST_N_for_regfile) , 
		.w_clk (REF_CLK) , 
		.winc (wr_inc_f_fifo) , 
		.w_data (wr_data_f_fifo) , 
		.r_clk (o_div_clk_tx) , //////////////////////////////////////////////////////////
		.rrest_n (RST_N_fifo) , 
		.rinc (rinc_f_pulse_gen) , 
		.w_full (fifo_full_f_fifo) ,
		.r_data (fifo_full_f_fifo_f_tx) ,
		.r_empty (r_empty_f_tx)
	);	
		
	reset_sync A7(
		.clk (REF_CLK),
		.reset(RST_N) ,
		.sync_reset(RST_N_fifo)
	);
	
wire busy_f_tx ;	
	pluse_gen A8(
	  .clk(o_div_clk_tx) ,
		.reset (RST_N) ,
		.busy (busy_f_tx) ,
		.rd_inc (rinc_f_pulse_gen) 
	);	


wire  o_div_clk_rx;	
	UART_RX A9(
		 .CLK (o_div_clk_rx) , 
		 .RST (RST_N) ,
		 .RX_IN (UART_RX_IN) ,
		 .parity_enable (c_rx[0]) ,
		 .parity_type (c_rx[1]) ,
		 .Prescale (c_rx[7:2]) , 
		 .P_DATA (unsync_bus_f_rx) , 
		 .data_valid (bus_enable_f_rx) ,
		 .parity_error (parity_error) ,
		 .framing_error (framing_error)
	);


wire [data_width-1:0] clk_rx ; 	
	clock_divider A10(
		.i_ref_clk (UART_CLK) ,
		.i_rst_n (RST_N) ,
		.i_clk_en(1'd1)  ,
		.i_div_ratio (clk_rx) ,
		.o_div_clk(o_div_clk_rx) 
	);	


pre_mux A13(
.prescale (c_rx[7:2]) ,
.clk_div_in (clk_rx)
);
	
	
	
	clock_divider A11(
		.i_ref_clk (UART_CLK) ,
		.i_rst_n (reset) ,
		.i_clk_en(1'd1)  ,
		.i_div_ratio (d_div) ,
		.o_div_clk(o_div_clk_tx) 
	);	

	
uart_tr A12(
.clk (o_div_clk_tx) ,
.reset (RST_N_fifo) ,
.data_valid (~r_empty_f_tx) ,
.par_type (c_rx[1]) ,
.par_en (c_rx[0]) ,
.p_data (fifo_full_f_fifo_f_tx) ,
.tx_out (UART_TX_O) ,
.busy (busy_f_tx)
);	
		
endmodule

