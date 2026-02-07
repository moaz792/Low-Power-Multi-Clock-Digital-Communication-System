module clock_divider #(parameter integer_width = 8) (
input  wire               					    i_ref_clk ,
input  wire					                   i_rst_n ,
input  wire					                   i_clk_en ,
input  wire    [integer_width-1:0] i_div_ratio ,
output reg                         o_div_clk 
);

wire clk_divider_en ; 
reg [integer_width-1:0] half_clk ;
reg [integer_width-1:0] counter ;
reg w_o_div_clk ;

always @( posedge i_ref_clk , negedge i_rst_n)
	begin
		if(~i_rst_n)
			begin
				w_o_div_clk <= 'd0 ;
				counter   <= 'd0 ;
			end
		else if ( clk_divider_en  )
			begin
				if(counter == half_clk -1)
					begin
						w_o_div_clk <= ~ o_div_clk ;
						counter   <= counter +1 ;
					end
				else if (counter == i_div_ratio-1)
					begin
						w_o_div_clk <= ~o_div_clk ;
						counter    <= 'd0 ;
					end
				else
				  begin
				     w_o_div_clk <=  o_div_clk ;
						if(counter>i_div_ratio)
							counter   <= 0 ;
						else	
							counter   <= counter +1 ;
					end
			end
			else if (~clk_divider_en)
			  counter   <= 0 ;
	end
	
always @(*) // i make it in separete always because ignore write write race and if i make it in frist always he go inside in posedge only not in negedge
  begin
    if(clk_divider_en)
      o_div_clk = w_o_div_clk ;
    else
        o_div_clk = i_ref_clk ;
  end

always@(*) // make division by shifiting to ignore use division block because it make more area and power and maybe make glitches
  begin
    if(i_div_ratio[0])
        half_clk  = (i_div_ratio >> 1 )+1;
    else
      half_clk  = i_div_ratio >> 1 ;
  end  

assign clk_divider_en  = i_clk_en & ~(i_div_ratio=='d0) & ~(i_div_ratio==1) ; 
// this condition i donot make freq division in i_div_ratio = 0 (divide by 0 math err) & divide by 1 block donot add any thing use original clk is useful

endmodule
