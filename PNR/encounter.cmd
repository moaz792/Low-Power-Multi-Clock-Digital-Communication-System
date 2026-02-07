#######################################################
#                                                     #
#  Encounter Command Logging File                     #
#  Created on Fri Oct 10 10:48:36 2025                #
#                                                     #
#######################################################

#@(#)CDS: First Encounter v08.10-p004_1 (32bit) 11/04/2008 14:34 (Linux 2.6)
#@(#)CDS: NanoRoute v08.10-p008 NR081027-0018/USR58-UB (database version 2.30, 67.1.1) {superthreading v1.11}
#@(#)CDS: CeltIC v08.10-p002_1 (32bit) 10/23/2008 22:04:14 (Linux 2.6.9-67.0.10.ELsmp)
#@(#)CDS: CTE v08.10-p016_1 (32bit) Oct 26 2008 15:11:51 (Linux 2.6.9-67.0.10.ELsmp)
#@(#)CDS: CPE v08.10-p009

setUIVar rda_Input ui_topcell SYS_TOP
setUIVar rda_Input ui_netlist /home/ahesham/Projects/System_pnr/DFT/netlists/SYS_TOP.v
setUIVar rda_Input ui_timelib,min /home/ahesham/Projects/System_pnr/std_cells/libs/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.lib
setUIVar rda_Input ui_timelib,max /home/ahesham/Projects/System_pnr/std_cells/libs/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.lib
setUIVar rda_Input ui_timelib /home/ahesham/Projects/System_pnr/std_cells/libs/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.lib
setUIVar rda_Input ui_leffile {/home/ahesham/Projects/System_pnr/std_cells/lef/tsmc13fsg_7lm_tech.lef /home/ahesham/Projects/System_pnr/std_cells/lef/tsmc13_m_macros.lef /home/ahesham/Projects/System_pnr/pnr/import/SYS_TOP.lef}
setUIVar rda_Input ui_captbl_file /home/ahesham/Projects/System_pnr/std_cells/captables/tsmc13fsg.capTbl
setUIVar rda_Input ui_timingcon_file /home/ahesham/Projects/System_pnr/DFT/sdc/SYS_TOP.sdc
setUIVar rda_Input ui_pwrnet VDD
setUIVar rda_Input ui_gndnet VSS
commitConfig
create_library_set -name min_library -timing "../std_cells/libs/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.lib"
create_library_set -name max_library -timing "../std_cells/libs/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.lib"
create_library_set -name typ_library -timing "../std_cells/libs/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.lib"
create_constraint_mode -name func_mode -sdc_files {../DFT/sdc/SYS_TOP_func.sdc}
create_constraint_mode -name scan_mode -sdc_files {../DFT/sdc/SYS_TOP_scan.sdc}
create_constraint_mode -name capture_mode -sdc_files {../DFT/sdc/SYS_TOP_capture.sdc}
create_rc_corner -name RCcorner -cap_table "../std_cells/captables/tsmc13fsg.capTbl"
create_delay_corner -name min_corner -library_set min_library -rc_corner RCcorner
create_delay_corner -name max_corner -library_set max_library -rc_corner RCcorner
create_analysis_view -name setup1_analysis_view -delay_corner max_corner -constraint_mode func_mode
create_analysis_view -name hold1_analysis_view  -delay_corner min_corner -constraint_mode func_mode
create_analysis_view -name setup2_analysis_view -delay_corner max_corner -constraint_mode capture_mode
create_analysis_view -name hold2_analysis_view  -delay_corner min_corner -constraint_mode capture_mode
create_analysis_view -name setup3_analysis_view -delay_corner max_corner -constraint_mode scan_mode
create_analysis_view -name hold3_analysis_view  -delay_corner min_corner -constraint_mode scan_mode
set_analysis_view -setup {setup1_analysis_view setup2_analysis_view setup3_analysis_view } \
                  -hold { hold1_analysis_view hold2_analysis_view hold3_analysis_view}
windowSelect 41.370 -14.319 -34.654 17.739
windowSelect 34.959 -26.226 -28.700 19.572
zoomBox 20.761 -13.403 -22.747 15.450
zoomBox 6.041 -2.724 -3.899 3.359
zoomBox 0.407 -0.278 -1.492 0.851
deselectAll
floorPlan -d 240.47 160.47 6.0 6.0 6.0 6.0
addRing -spacing_bottom 0.4 -width_left 1 -width_bottom 1 -width_top 1 -spacing_top 0.4 -layer_bottom METAL5 -center 1 -stacked_via_top_layer METAL7 -width_right 1 -around core -jog_distance 0.205 -offset_bottom 0.205 -layer_top METAL5 -threshold 0.205 -offset_left 0.205 -spacing_right 0.4 -spacing_left 0.4 -offset_right 0.205 -offset_top 0.205 -layer_right METAL6 -nets {VSS VDD } -stacked_via_bottom_layer METAL1 -layer_left METAL6
verifyGeometry -noMinArea
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
zoomBox 47.038 134.757 -14.212 161.465
zoomBox 8.292 152.824 -4.404 159.954
addStripe -block_ring_top_layer_limit METAL7 -max_same_layer_jog_length 0.8 -padcore_ring_bottom_layer_limit METAL5 -set_to_set_distance 60 -stacked_via_top_layer METAL7 -padcore_ring_top_layer_limit METAL7 -spacing 0.4 -merge_stripes_value 0.205 -layer METAL6 -block_ring_bottom_layer_limit METAL5 -width 1 -nets {VSS VDD } -stacked_via_bottom_layer METAL1
windowSelect 34.386 62.262 -19.232 101.220
zoomBox 23.944 75.114 -32.285 121.904
deselectAll
selectWire 7.5500 1.8750 8.5500 157.6950 6 VDD
deleteSelectedFromFPlan
selectWire 6.1500 3.2750 7.1500 156.2950 6 VSS
deleteSelectedFromFPlan
verifyGeometry -noMinArea
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { 1 6 } -blockPinTarget { nearestRingStripe nearestTarget } -padPinPortConnect { allPort oneGeom } -checkAlignedSecondaryPin 1 -blockPin useLef -allowJogging 1 -crossoverViaBottomLayer 1 -allowLayerChange 1 -targetViaTopLayer 7 -crossoverViaTopLayer 7 -targetViaBottomLayer 1 -nets { VSS VDD }
verifyGeometry -noMinArea
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
saveFPlan /home/ahesham/Projects/System_pnr/pnr/SYS_TOP.fp
setDrawView fplan
zoomBox -16.621 68.085 -49.555 84.754
panPage -1 0
panPage 0 -1
panPage 1 0
panPage 0 1
panPage 1 0
panPage -1 0
panPage -1 0
panPage 0 1
panPage 0 -1
panPage 0 -1
panPage 0 1
panPage -1 0
panPage 1 0
panPage -1 0
panPage 1 0
zoomOut
panPage -1 0
panPage 1 0
panPage -1 0
panPage 1 0
zoomOut
setDrawView place
setDrawView fplan
getIoFlowFlag
zoomOut
zoomOut
zoomBox -339.634 258.158 384.909 -84.835
zoomBox 252.014 174.915 -305.073 -50.553
panCenter -278.500 -43.321
zoomOut
zoomOut
zoomBox -306.700 181.044 298.157 -39.853
placeDesign -inPlaceOpt -prePlaceOpt
addTieHiLo -cell TIELOM -prefix LTIE
addTieHiLo -cell TIEHIM -prefix HTIE
globalNetConnect VDD -type pgpin -pin VDD -inst *
globalNetConnect VSS -type pgpin -pin VSS -inst *
setDrawView place
setDrawView fplan
setDrawView place
setDrawView fplan
setDrawView ameba
setDrawView place
setDrawView ameba
zoomBox 260.031 76.263 161.798 -37.427
zoomBox 268.406 -9.748 130.917 77.945
zoomBox 250.890 62.581 155.615 25.270
