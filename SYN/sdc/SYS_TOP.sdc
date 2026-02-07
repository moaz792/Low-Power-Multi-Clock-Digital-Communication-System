###################################################################

# Created by write_sdc on Wed Oct 1 23:25:58 2025

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions -max scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -max_library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -min scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -min_library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports REF_CLK]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports RST_N]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports UART_CLK]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports UART_RX_IN]
set_load -pin_load 0.1 [get_ports UART_TX_O]
set_load -pin_load 0.1 [get_ports framing_error]
set_load -pin_load 0.1 [get_ports parity_error]
create_clock [get_ports UART_CLK]  -name uart_clk  -period 271.3  -waveform {0 135.65}
set_clock_latency 0  [get_clocks uart_clk]
set_clock_uncertainty -setup 0.2  [get_clocks uart_clk]
set_clock_uncertainty -hold 0.1  [get_clocks uart_clk]
set_clock_transition -max -rise 0.05 [get_clocks uart_clk]
set_clock_transition -min -rise 0.05 [get_clocks uart_clk]
set_clock_transition -max -fall 0.05 [get_clocks uart_clk]
set_clock_transition -min -fall 0.05 [get_clocks uart_clk]
create_clock [get_ports REF_CLK]  -name ref_clk  -period 20  -waveform {0 10}
set_clock_latency 0  [get_clocks ref_clk]
set_clock_uncertainty -setup 0.2  [get_clocks ref_clk]
set_clock_uncertainty -hold 0.1  [get_clocks ref_clk]
set_clock_transition -max -rise 0.05 [get_clocks ref_clk]
set_clock_transition -min -rise 0.05 [get_clocks ref_clk]
set_clock_transition -max -fall 0.05 [get_clocks ref_clk]
set_clock_transition -min -fall 0.05 [get_clocks ref_clk]
create_generated_clock [get_pins A10/o_div_clk]  -name tx_clk  -source [get_ports UART_CLK]  -master_clock uart_clk  -divide_by 32  -add
set_clock_uncertainty -setup 0.2  [get_clocks tx_clk]
set_clock_uncertainty -hold 0.1  [get_clocks tx_clk]
create_generated_clock [get_pins A11/o_div_clk]  -name rx_clk  -source [get_ports UART_CLK]  -master_clock uart_clk  -divide_by 1  -add
set_clock_uncertainty -setup 0.2  [get_clocks rx_clk]
set_clock_uncertainty -hold 0.1  [get_clocks rx_clk]
create_generated_clock [get_pins A2/GATED_CLK]  -name Gated_Clock  -source [get_ports REF_CLK]  -master_clock ref_clk  -divide_by 1  -add
set_clock_uncertainty -setup 0.2  [get_clocks Gated_Clock]
set_clock_uncertainty -hold 0.1  [get_clocks Gated_Clock]
set_input_delay -clock rx_clk  4  [get_ports UART_RX_IN]
set_output_delay -clock tx_clk  4  [get_ports UART_TX_O]
set_output_delay -clock tx_clk  4  [get_ports parity_error]
set_output_delay -clock tx_clk  4  [get_ports framing_error]
set_clock_groups -asynchronous -name uart_clk_1 -group [list [get_clocks uart_clk] [get_clocks tx_clk] [get_clocks rx_clk]] -group [get_clocks ref_clk]
