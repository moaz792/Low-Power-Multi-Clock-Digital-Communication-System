


create_clock -name uart_clk -period 271.3 -waveform "0 135.65" [get_ports UART_CLK]
set_clock_uncertainty -setup 0.2 [get_clocks uart_clk]
set_clock_uncertainty -hold 0.1  [get_clocks uart_clk]
set_clock_transition -rise 0.05  [get_clocks uart_clk]
set_clock_transition -fall 0.05  [get_clocks uart_clk]
set_clock_latency 0 [get_clocks uart_clk]
create_clock -name ref_clk -period 20 -waveform "0 10" [get_ports REF_CLK]
set_clock_uncertainty -setup 0.2 [get_clocks ref_clk]
set_clock_uncertainty -hold 0.1  [get_clocks ref_clk]
set_clock_transition -rise 0.05  [get_clocks ref_clk]
set_clock_transition -fall 0.05  [get_clocks ref_clk]
set_clock_latency 0 [get_clocks ref_clk]					   
set_dont_touch_network [get_clocks {uart_clk ref_clk}]

create_generated_clock -master_clock uart_clk  -source [get_ports UART_CLK] -name "tx_clk"      -divide_by 32 [get_port A10/o_div_clk]
set_clock_uncertainty -setup 0.2 [get_clocks tx_clk]
set_clock_uncertainty -hold 0.1  [get_clocks tx_clk]
create_generated_clock -master_clock uart_clk  -source [get_ports UART_CLK] -name "rx_clk"      -divide_by 1 [get_port A11/o_div_clk]
set_clock_uncertainty -setup 0.2 [get_clocks rx_clk]
set_clock_uncertainty -hold 0.1  [get_clocks rx_clk]

create_generated_clock -master_clock ref_clk   -source [get_ports REF_CLK]  -name "Gated_Clock" -divide_by 1 [get_port A2/GATED_CLK]
set_clock_uncertainty -setup 0.2 [get_clocks Gated_Clock]
set_clock_uncertainty -hold 0.1   [get_clocks Gated_Clock]




set_clock_groups -asynchronous -group [get_clocks "uart_clk tx_clk rx_clk"] -group [get_clocks "ref_clk"]
set_dont_touch_network [get_ports  REF_CLK]
set_dont_touch_network [get_ports  UART_CLK]

set in_delay  [expr 0.2*20]
set out_delay [expr 0.2*20]


set_input_delay $in_delay -clock rx_clk [get_ports UART_RX_IN]

set_output_delay $out_delay -clock tx_clk      [get_ports UART_TX_O]
set_output_delay $out_delay -clock tx_clk      [get_ports parity_error]
set_output_delay $out_delay -clock tx_clk      [get_ports framing_error]


set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_port UART_RX_IN]
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_port REF_CLK]
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_port UART_CLK]
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_port RST_N]



set_load 0.1 [get_ports UART_TX_O]
set_load 0.1 [get_ports parity_error]
set_load 0.1 [get_ports framing_error]



set_operating_conditions -min_library "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c"  -min "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c"  -max_library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c"  -max "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c"



