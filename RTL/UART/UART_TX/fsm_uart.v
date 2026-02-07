 module fsm_uart (
  input  wire       clk,
  input  wire       reset,
  input  wire       data_valid,
  input  wire       par_en,
  input  wire       ser_done,
  output reg        ser_en,
  output reg        busy,
  output reg [1:0]  mux_sel
);

localparam idle = 0 , start = 1 , data = 2 , parity = 3 , stop = 4 ;

  reg [2:0] current_state, next_state;

// i separate 2 always block make one (comb) for go from state to another state and one (seq) to do operetion i make this to avoid comb loop 

// comb always to transtion form state to state
always @(*) 
  begin
  case (current_state)
    idle:
     begin
      if (data_valid)
        next_state = start;
      else
        next_state = idle;
    end

    start:
     begin
      next_state = data;
     end

    data:
     begin
      if (ser_done)   // if we need parity bit
       begin
        if (par_en)
          next_state = parity;
        else
          next_state = stop;
      end
       else
        begin
        next_state = data;
      end
    end

    parity: 
    begin
      next_state = stop;
    end

    stop:
     begin
      next_state = idle;
     end

    default: next_state = idle;
  endcase
end


  // change only in posedge to ignore combinational loop 
  always @(posedge clk or negedge reset)
   begin
    if (~reset) 
    begin
      current_state <= idle;
      ser_en        <= 'd0;
      busy          <= 'd0;
      mux_sel       <= 'd1; 
    end 
    else
     begin
      current_state <= next_state;
      ser_en        <= 'd0;
      
      case (next_state)
        idle: 
        begin
          busy    <= 'd0;
          mux_sel <= 'd1;
        end

        start: 
        begin
          busy    <= 'd1; // now uart in process cand take any data untill back to idle
          ser_en  <= 'd1; // open here to ignore shift bits if i make this line in send data
          mux_sel <= 'd0;
        end

        data:
         begin
          busy    <= 'd1;
          ser_en  <= 'd1;
          mux_sel <= 'd2;
          end

        parity:
         begin
          busy    <= 'd1;
          mux_sel <= 'd3;
        end

        stop:
         begin
          busy    <= 'd1; 
          mux_sel <= 'd1;
        end

        default:
            begin
              busy    <= 'd0;
              mux_sel <= 'd1;
            end
      endcase
    end
  end
endmodule
