module pluse_gen (
input wire clk ,
input wire reset ,
input wire busy ,
output reg rd_inc 
);

reg [1:0] process ;

always@(posedge clk , negedge reset )
	begin
		if(~reset)
			begin
				process <= 'd0 ;
			end
		else
			begin
			process[0] <= busy ;
			process[1] <= process[0] ;
			end
	end

always@(*)
	begin
		if(~reset)
			rd_inc = 'd0 ;
		else
			rd_inc = process[1] & ~process[0] ;
	end
	
endmodule
