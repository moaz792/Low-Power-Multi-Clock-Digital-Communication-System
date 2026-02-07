module parity_calc #(parameter data_width = 8)(
input wire                   clk ,
input wire                   reset ,
input wire                   par_type ,
input wire                   data_valid ,
input wire [data_width-1:0]  p_data ,
output reg   par_bit
);

always@(posedge clk , negedge reset )
  begin
    if (~reset)
      par_bit <= 'd0;
    else if(~ data_valid)
      begin
        if(par_type)
          par_bit <= ^p_data ; // odd parity 
        else
          par_bit <= ~(^p_data) ; // even parity
      end
    end
endmodule
