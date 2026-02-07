module fifo_top #(parameter ptr_size = 4 , addr_size = 3 , data_width = 8 )(
input wire  wrst_n ,
input wire  reset , 
input wire  w_clk , 
input wire  winc , 
input wire  [data_width-1:0]  w_data , 
input wire  r_clk , 
input wire  rrest_n , 
input wire  rinc , 
output wire w_full ,
output wire [data_width-1:0] r_data,
output wire r_empty 
);
wire in_full ;
wire [ptr_size-1:0] in_wq2_rptr , in_wptr; 
wire [addr_size-1:0] in_w_addr ; 
	fifo_wptr A0 (
	.w_clk(w_clk) , 
	.wrst_n(wrst_n) , 
	.winc(winc) , 
	.wq2_rptr(in_wq2_rptr) , 
	.wptr(in_wptr) , 
	.w_addr(in_w_addr) , 
	.w_full(w_full) ,
	.wire_w_full(in_full)
	);

wire [addr_size-1:0] in_r_addr ; 
	fifo_memory A1(
	.w_clk(w_clk),
	.w_clk_en(in_full),
	.reset(reset),
	.w_addr(in_w_addr),
	.r_addr(in_r_addr),
	.w_data(w_data),
	.r_data(r_data)
	);

wire[ptr_size-1:0] in_rq2_wptr , in_rptr ;	
	fifo_rptr A2 (
	.rclk (r_clk) , 
	.rrest_n (rrest_n) , 
	. rinc (rinc) , 
	. rq2_wptr (in_rq2_wptr) , 
	. rptr (in_rptr) , 
	.r_addr (in_r_addr) , 
	. empty (r_empty)
	);
	
	BIT_SYNC A3 (
    .CLK(w_clk) ,
    .RST(wrst_n) ,
    .ASYNC(in_rptr) ,
    .SYNC(in_wq2_rptr)
  );

	BIT_SYNC A4 (
    .CLK(r_clk) ,
    .RST(rrest_n) ,
    .ASYNC(in_wptr) ,
    .SYNC(in_rq2_wptr)
  );
  
endmodule
