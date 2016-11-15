
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Decoder -dir "C:/Users/Andrew/Documents/ISE Projects/Decoder/planAhead_run_2" -part xc3s1000ft256-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "Decoder.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {Decoder.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top Decoder $srcset
add_files [list {Decoder.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s1000ft256-4
