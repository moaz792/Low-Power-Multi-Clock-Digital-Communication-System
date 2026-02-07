module mux4_1(
input wire       clk ,
input wire [1:0] mux_sel ,
input wire       start ,
input wire       stop ,
input wire       ser_data ,
input wire       parity ,
output reg       tx_out
);  

always @(posedge clk)
  begin
    case(mux_sel)
      'd0: tx_out <= start ;
      'd1: tx_out <= stop ;
      'd2: tx_out <= ser_data ;
      'd3: tx_out <= parity ;
    endcase
  end
endmodule  
