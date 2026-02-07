set top_module SYS_TOP
define_design_lib work -path ./work
set_svf SYS_TOP.svf
lappend search_path /home/IC/Projects/std_cells
lappend search_path /home/IC/Projects/rtl

set SSLIB "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"
 
set target_library [list $SSLIB $TTLIB $FFLIB]

set link_library [list * $SSLIB $TTLIB $FFLIB] 

analyze -format verilog SYS_TOP.v
analyze -format verilog sys_ctrl.v
analyze -format verilog alu.v
analyze -format verilog CLK_GATE.v
analyze -format verilog reg_file.v
analyze -format verilog reset_sync.v
analyze -format verilog data_sync.v
analyze -format verilog fifo_top.v
analyze -format verilog fifo_wptr.v
analyze -format verilog fifo_memory.v
analyze -format verilog fifo_rptr.v
analyze -format verilog BIT_SYNC.v
analyze -format verilog pluse_gen.v
analyze -format verilog UART_RX.v
analyze -format verilog uart_rx_fsm.v
analyze -format verilog edge_bit_counter.v
analyze -format verilog data_sampling.v
analyze -format verilog deserializer.v
analyze -format verilog strt_chk.v
analyze -format verilog par_chk.v
analyze -format verilog stp_chk.v
analyze -format verilog clock_divider.v
analyze -format verilog pre_mux.v
analyze -format verilog uart_tr.v
analyze -format verilog fsm_uart.v
analyze -format verilog mux4_1.v
analyze -format verilog parity_calc.v
analyze -format verilog serializer.v
analyze -format verilog mux2X1.v
elaborate -lib WORK SYS_TOP

current_design SYS_TOP


link 


check_design >> reports/check_design.rpt


source -echo ./cons.tcl

compile 

set_svf -off


write_file -format verilog -hierarchy -output netlists/SYS_TOP.ddc
write_file -format verilog -hierarchy -output netlists/SYS_TOP.v
write_sdf  sdf/SYS_TOP.sdf
write_sdc  -nosplit sdc/SYS_TOP.sdc


report_area -hierarchy > reports/area.rpt
report_power -hierarchy > reports/power.rpt
report_timing -delay_type min -max_paths 20 > reports/hold.rpt
report_timing -delay_type max -max_paths 20 > reports/setup.rpt
report_clock -attributes > reports/clocks.rpt
report_constraint -all_violators -nosplit > reports/constraints.rpt


set flops_per_chain 100

set num_flops [sizeof_collection [all_registers -edge_triggered]]

set num_chains [expr $num_flops / $flops_per_chain + 1 ]



write_file -format verilog -hierarchy -output System_Top_netlist.v
write_file -format ddc -hierarchy -output System_Top_netlist.ddc
write_sdc  -nosplit System_Top.sdc
write_sdf           System_Top.sdf


report_area -hierarchy > area.rpt
report_power -hierarchy > power.rpt
report_timing -max_paths 100 -delay_type min > hold.rpt
report_timing -max_paths 100 -delay_type max > setup.rpt
report_clock -attributes > clocks.rpt
report_constraint -all_violators > constraints.rpt

