
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Counter -dir "C:/Users/Andrew/Documents/ISE Projects/Counter/planAhead_run_3" -part xc3s1000ft256-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "Counter.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {ssd_decoder.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {Counter.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top Counter $srcset
add_files [list {Counter.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s1000ft256-4
