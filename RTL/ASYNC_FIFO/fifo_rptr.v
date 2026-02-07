module fifo_rptr#(parameter ptr_size = 4 , addr_size = 3 ) (
input wire                  rclk ,
input wire     					        rrest_n ,
input wire                  rinc ,
input wire [ptr_size-1:0]   rq2_wptr ,
output reg [ptr_size-1:0]   rptr ,
output reg [addr_size-1:0]  r_addr ,
output reg                  empty 
);

reg [ptr_size-1:0]   c_counter , n_counter ;
reg [ptr_size-1:0]   n_rptr ;
reg [addr_size-1:0]  n_r_addr ;
reg                  n_empty ;

// condition if two pointers have same postion (not have diff in cycle) in same cycle condition =1
wire condition = rq2_wptr== rptr ;

//i make 2 always block one seq and one comb becouse if two be seq  n_counter = c_counter+1  not excute in current cycle need cycle to start work well					
always@(posedge rclk , negedge rrest_n)
	begin
		if(~rrest_n)
			begin
				c_counter   <='d0;
				rptr        <='d0 ;
				r_addr      <= 'd0 ;
				empty       <= 'd1 ;
			end
		else
			begin
				c_counter <=n_counter;
				rptr      <=n_rptr ;
				r_addr    <= n_r_addr;
				empty     <= n_empty;
			end
	end
	
always@(*)
		begin
				n_counter = c_counter;
				n_rptr    =rptr ;
				n_r_addr  = r_addr;
				n_empty   = empty;
				if (condition)
					begin
						n_empty = 'd1 ;
					end
				else
					begin
						n_empty = 'd0 ;
				if(rinc)
					begin
						 n_counter = c_counter+1 ;
						n_r_addr   = n_counter[2:0] ;
						n_rptr     = n_counter ^ (n_counter>>1) ;
					end
				end
		end
	
endmodule

