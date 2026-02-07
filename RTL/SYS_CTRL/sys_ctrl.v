//////////////////////////////////////////
module sys_cnrt #(parameter data_width = 8 , address_width = 3 , alu_width = 8) (
input wire                               clk ,
input wire                               reset , 
input wire [alu_width-1:0]       alu_out ,
input wire  							    out_valid ,
input wire [data_width-1:0]      rddata ,
input wire                                rddata_valid ,
input wire [data_width-1:0]      rx_p_data ,
input wire 					   	        rx_d_vld ,
input wire                                fifo_full ,  
output reg                                wr_inc ,
output reg [data_width-1:0]     wr_data ,
output reg [3:0]				        alu_fun ,
output reg						        en ,
output reg [address_width-1:0] address ,
output reg  						   	    wr_en ,
output reg						        rd_en ,
output reg [data_width-1:0]     wrdata ,
output reg 							    clk_div_en
);

localparam idle = 0 , wr_in_regfile = 1 , send_data_to_regfile = 2 , read_data = 3 , send_alu_fun = 4 , rec_from_alu = 5  ;

reg [3:0] current_state , next_state ;
reg condition_read  ; //???? ?? ?? valid ?????? 
reg sel_1 ;
reg sel_2 ;
reg counter ;
reg rx_d_vld_tt ;
reg wr_inc_reg ;
reg h_co ;
 reg one ;

always@(posedge clk , negedge reset)
	begin
		if(~reset)
			begin
				current_state <= idle ;
				rx_d_vld_tt <= 'd0 ;
				
			end
		else
			begin
				current_state <= next_state ;
				rx_d_vld_tt   <= rx_d_vld ;
			end
			
	end

	// ??wren and rden ??? ??? ?? ?????? 
	
always @(*)
	begin
	if(~reset)  // delete
		begin
				condition_read = 'd0 ;
				sel_1                = 'd0 ;
				sel_2                = 'd0 ;
				counter             ='d0 ;
		end
		else
			begin
				case (current_state)
				
				idle : 
					begin
							wr_inc = 'd0 ;
							sel_1                = 'd0 ;
							sel_2                = 'd0 ;
							counter            = 'd1 ;
							condition_read = 'd0 ;
							wr_data = 'd0 ;
							alu_fun = 'd0 ;
							en = 'd0 ;
							address = 'd0 ;
							wr_en = 'd0 ;
							rd_en = 'd0 ;
							wrdata = 'd0 ;
							clk_div_en = 'd0 ;
							h_co = 'd0 ;
							one = 'd0 ;
							next_state = current_state ; /// delete
						case (rx_p_data)
						
						'haa: // write in regfile 
							begin
								if (rx_d_vld_tt)
									begin
										sel_1         = 'd1 ;										
										next_state = wr_in_regfile ;
									end
								else
									begin
										next_state = idle ;
									end
							end
											
						'hbb:
							begin
								if(rx_d_vld_tt)
									next_state = read_data ;
								else
									next_state = idle ;
							end
						
						'hcc:
							begin
							sel_2 = 'd1 ;
							counter = 'd0 ;
							 next_state = wr_in_regfile ;	
							end
						
						'hdd:
							begin	
									clk_div_en = 'd1 ;
									next_state = send_alu_fun ;
							end
							default : next_state = idle ;
						
						endcase	
					end
				
				wr_in_regfile :
					begin
							wr_inc = 'd0 ;
							//counter            = 'd1 ;
							condition_read = 'd0 ;
							wr_data = 'd0 ;
							alu_fun = 'd0 ;
							en = 'd0 ;
							address = 'd0 ;
							wr_en = 'd0 ;
							rd_en = 'd0 ;
							wrdata = 'd0 ;
							clk_div_en = 'd0 ;
						//	h_co = 'd1 ;
						if(rx_d_vld_tt & h_co)
							begin
								if(sel_1)  //???? ?????? sel ????
									begin    
										address = rx_p_data[2:0] ;					
										next_state = send_data_to_regfile ;
									end
								else if(sel_2)
									begin
										address = one ;
										wrdata  = rx_p_data ;
										wr_en = 'd1 ;
										clk_div_en = 'd1 ;
										h_co = 'd1 ;
										if(one)
											begin			
												wrdata  = rx_p_data ;
												h_co = 'd1 ;
												wr_en = 'd1 ;
												clk_div_en = 'd1 ; 
												one = 'd0 ;

												next_state = send_alu_fun ;	
											end
										else
											begin
												h_co = 'd1 ;
												one = 'd1 ;
												next_state = wr_in_regfile ;	
											end
									end
							end
						else
							begin
											h_co = 'd1 ;				
								next_state = wr_in_regfile ;

							end	
					end
					
				send_data_to_regfile:
						begin
							wr_inc = 'd0 ;
							sel_1                = 'd0 ;
							sel_2                = 'd0 ;
							counter            = 'd1 ;
							condition_read = 'd0 ;
							wr_data = 'd0 ;
							alu_fun = 'd0 ;
							en = 'd0 ;
							wr_en = 'd0 ;
							rd_en = 'd0 ;
							wrdata = 'd0 ;
							clk_div_en = 'd0 ;
							h_co = 'd0 ;
							next_state = current_state ; 
							if(rx_d_vld_tt)
								begin
										wr_en = 'd1 ;
										wrdata = rx_p_data ;
										next_state = idle ;
								end
							else
									next_state = send_data_to_regfile ;
						end
				
				read_data :
					begin
							wr_inc = 'd0 ;
							counter            = 'd1 ;
							//condition_read = 'd0 ;
							wr_data = 'd0 ;
							alu_fun = 'd0 ;
							en = 'd0 ;
							address = 'd0 ;
							wr_en = 'd0 ;
							rd_en = 'd0 ;
							wrdata = 'd0 ;
							clk_div_en = 'd0 ;
							h_co = 'd0 ;
							next_state = current_state ;
							if(rx_d_vld_tt | condition_read ) // ??? ?????? ??? ?? simulation
								begin
									condition_read = 'd1 ;
									address = rx_p_data[2:0] ; 
									rd_en = 'd1 ;// ??? ???? ??????? ??? ????? ???? ??????
									if(rddata_valid)
										begin
											if(~fifo_full)
												begin
													address = rx_p_data[2:0] ;
													rd_en = 'd1 ;
													wr_data =rddata ;
													wr_inc = 'd1 ; //////////////////////////////////////////
													condition_read = 'd1 ;
													next_state = idle ;
												end
											else	
												next_state = idle ;	
										end
									else
										begin
											condition_read ='d1 ;
											address = rx_p_data[2:0] ;
											next_state = read_data ;
										end	
								end
							else
								begin
									condition_read ='d1 ;
									next_state = read_data ;
								end
					end
				
				send_alu_fun:
					begin
							if(rx_d_vld_tt & h_co)
								begin
										sel_2 ='d0 ;
										sel_1 = 'd0 ;
										wr_en = 'd0 ;	
										alu_fun      = rx_p_data[3:0] ;
										en             = 'd1 ;
										h_co = 'd0 ;
										next_state = rec_from_alu ;
								end
							else
								begin
									h_co = 'd1 ;
									next_state = send_alu_fun ;	
								end
					end
				
				rec_from_alu :
					begin
						if(out_valid)
							begin
								if(~fifo_full)
									begin
											wr_data = alu_out ;
											wr_inc = 'd1 ;
											en             = 'd0 ;
											next_state = idle ;
									end
								else
									next_state = idle ;
							end
						else
							begin
								next_state = rec_from_alu  ;
							end
					end
				
				   default :
						next_state = idle ;
				 endcase
			end
		end	
endmodule