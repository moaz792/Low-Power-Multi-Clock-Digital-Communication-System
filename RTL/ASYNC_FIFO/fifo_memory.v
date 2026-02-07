module fifo_memory #(parameter data_width = 8 , addr_size = 3 ) (
input wire  						   w_clk ,
input wire  						   w_clk_en ,
input wire						   reset ,
input wire  [addr_size-1:0]		   w_addr ,
input wire  [addr_size-1:0] 		   r_addr ,
input wire [data_width-1:0] w_data ,
output wire [data_width-1:0] r_data 
);

reg [data_width-1:0] memory [7:0] ;

integer i ;

	
always @(posedge w_clk , negedge reset)
	begin
		if(~reset)
			begin
				for(i=0 ;i<8;i=i+1) 
				memory[i]	 <= 'd0 ;
			end
		else if(w_clk_en)
			begin
				memory[w_addr] <= w_data ; 	
			end
	end
	assign r_data = memory[r_addr];
endmodule
