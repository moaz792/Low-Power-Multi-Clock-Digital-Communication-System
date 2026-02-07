module pre_mux (
input wire [5:0] prescale ,
output reg [7:0]clk_div_in
);

always@(*)
	begin
		case(prescale)
			'b100000 : clk_div_in = 'd1 ;
			'b010000 : clk_div_in = 'd2 ;
			'b001000 : clk_div_in = 'd4 ;
			'b000100 : clk_div_in = 'd8 ;
			default   : clk_div_in = 'd1 ;			
		endcase
	end
endmodule
