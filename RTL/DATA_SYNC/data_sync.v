module data_sync#(parameter data = 8 , stages = 3) // here 2 stages for synchronizer and 1 bit for mux selction onr for enable bus
 (
input wire				            clk ,
input wire				            reset ,
input wire				            bus_enable ,
input wire [data-1:0]     unsync_bus ,
output reg [data-1:0]     sync_bus ,
output reg             	  enable_bus
);

reg [stages-1:0] reg_stage ;
reg              reg_enable_bus ;
reg [data-1:0] reg_sync_bus ;
wire sel = reg_stage[stages-2] & !(reg_stage[stages-3]) ; //  sel of mux to select new data or old

always @(posedge clk , negedge reset)
	begin
		if(~reset)
			begin
				reg_enable_bus   <= 'd0 ;
				reg_stage    <= 'd0 ;
				reg_sync_bus <= 'd0 ;
			end
		else
			begin
				reg_stage           <= {reg_stage[stages-2:0] , bus_enable} ;
				reg_stage[stages-1] <= sel ;
				reg_enable_bus      <= sel ;
				if(sel)
					reg_sync_bus     <= unsync_bus ;
			end
	end
	
always@(*) 
	begin
	  if(~reset )
	    begin
	     sync_bus   = 'd0 ;
	     enable_bus = 'd0 ;
	    end
	  else
	    begin
		    sync_bus   = reg_sync_bus ;
		    enable_bus = reg_enable_bus ;
		    end
	end

endmodule
