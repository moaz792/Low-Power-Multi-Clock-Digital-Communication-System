module reset_sync#(parameter num_stages= 2 ) (
input wire clk ,
input wire reset ,
output wire sync_reset
);

reg [num_stages-1:0] stages ;

always @(posedge clk , negedge reset)
  begin
    if(~reset)
      begin
			  stages     <= 'd0 ;
      end
    else
      begin
        stages <= {stages[num_stages-2:0] , 1'd1} ;
      end
  end
  
  assign sync_reset = reset?stages[num_stages-1]:'d0 ;
endmodule

