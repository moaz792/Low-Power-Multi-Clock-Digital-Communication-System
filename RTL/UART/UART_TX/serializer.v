module serializer#(parameter data_width = 8)(
input  wire                  clk ,
input  wire                  reset ,
input  wire                  ser_en ,
input  wire [data_width-1:0] p_data ,
output reg                   ser_data ,
output reg                   ser_done 
);

reg [3:0] counter ; 
reg [data_width-1:0] data_set ;

always@(posedge clk , negedge reset)
  begin
    if(~reset)
      begin
        data_set <= 'd0 ;
      end
    else if (ser_en)
      data_set <= p_data ;
  end
  
always@(posedge clk , negedge reset)
  begin
    if(~reset)
      begin
        ser_data <= 'd0 ;
        counter  <= 'd0 ;
        ser_done <= 'd0 ;
      end
    else if (ser_en)
      begin
        if(counter=='d7) // counter unill send all bits 
          begin
            ser_done <= 'd1 ;
            counter  <= 'd0 ; // reset counter
          end
        else
          begin
        ser_data <= data_set[counter] ; // send data bit by bit form LSB ---> MSB
        counter  <= counter + 1 ;
          end
      end
  end
endmodule
