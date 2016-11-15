
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name printF -dir "C:/Users/Andrew/Documents/ISE Projects/printF/planAhead_run_2" -part xc3s1000ft256-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "printF.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {printF.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top printF $srcset
add_files [list {printF.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s1000ft256-4
