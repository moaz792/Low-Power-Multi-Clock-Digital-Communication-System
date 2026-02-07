 
 module uart_tr #(parameter data_width = 8 )(
input  wire                  clk ,
input  wire                  reset ,
input  wire                  data_valid ,
input  wire                  par_type ,
input  wire                  par_en ,
input  wire [data_width-1:0] p_data ,
output wire                  tx_out ,
output wire                  busy
);

// FSM
wire in_s2f ; /// from serilaizer to fsm
wire in_f2s ;
wire [1:0] in_f2m ;
fsm_uart a0(
          .clk(clk) ,
          .reset(reset) ,
          .data_valid(data_valid) ,
          .par_en(par_en) ,
          .ser_done(in_s2f) ,///
          .ser_en(in_f2s) ,//
          .busy(busy) ,
          .mux_sel(in_f2m) 
          );

//MUX4_1
wire in_s2m ;
wire  in_p2m ;
mux4_1 a1(
       .clk(clk) ,
       .mux_sel(in_f2m) ,
       .start(1'd0) ,
       .stop(1'd1) ,
       .ser_data(in_s2m) ,
       .parity(in_p2m) ,
       .tx_out(tx_out) 
        );

//PARITY
parity_calc a2(
            .clk(clk) ,
            .reset(reset) ,
            .par_type(par_type) ,
            .data_valid(data_valid) ,
            .p_data(p_data) ,
            .par_bit(in_p2m) 
              );

//SERIALIZER
serializer a3(
           .clk(clk) ,
           .reset(reset) ,
           .ser_en(in_f2s) ,
           .p_data(p_data) ,
           .ser_data(in_s2m) ,
           .ser_done(in_s2f) 
            );
            
endmodule 
