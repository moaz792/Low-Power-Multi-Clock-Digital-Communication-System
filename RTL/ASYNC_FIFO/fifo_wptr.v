module fifo_wptr #(parameter ptr_size = 4 , addr_size = 3 )(
input wire  						          w_clk ,
input wire  						          wrst_n ,
input wire  						          winc ,
input wire  [ptr_size-1:0]  wq2_rptr ,
output reg  [ptr_size-1:0]  wptr ,
output reg  [addr_size-1:0] w_addr ,
output reg 						           w_full ,
output reg 						           wire_w_full
);

reg [ptr_size-1:0]    n_counter , c_counter  ;
reg  [addr_size-1:0]  n_w_addr ;
reg  [ptr_size-1:0]   n_wptr ;
reg                   n_w_full ;
// condition if two pointers have same postion but not same cycle condition =1
wire condition = wq2_rptr[ptr_size-3:0] == wptr[ptr_size-3:0] &wq2_rptr[ptr_size-1] != wptr[ptr_size-1] & wq2_rptr[ptr_size-2] != wptr[ptr_size-2] ;

//i make 2 always block one seq and one comb becouse if two be seq  n_counter = c_counter+1  not excute in current cycle need cycle to start work well
always@(posedge w_clk , negedge wrst_n)
	begin
		if(~wrst_n)
			begin
				c_counter <='d0 ;
				w_addr    <= 'd0 ;
				w_full    <= 'd0 ;
				wptr      <= 'd0 ;
			end
		else
		  begin
		     c_counter <= n_counter ;
			   wptr      <= n_wptr ;
			   w_addr    <= n_w_addr ;
		    	w_full    <= n_w_full ;
		  end 
	 end

always@(*)
	begin
		  n_counter = c_counter ;
			n_wptr    = wptr ;
			n_w_addr  = w_addr ;
			n_w_full  = w_full ;
			if (condition)
				begin
					n_w_full = 'd1 ;
				end
			else
				begin
					n_w_full = 'd0 ;
					if (winc)
						begin
							n_counter = c_counter +1 ;
							n_w_addr  = n_counter[2:0] ;
							n_wptr    = n_counter ^ (n_counter >> 1) ;
					end
			end
	end
always @(*)
  begin
    wire_w_full = !w_full & winc ;
  end
endmodule

