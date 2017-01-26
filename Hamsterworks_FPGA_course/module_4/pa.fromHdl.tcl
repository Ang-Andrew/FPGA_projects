
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name module_4 -dir "C:/Users/Andrew/Documents/ISE Projects/Hamsterworks_FPGA_course/module_4/planAhead_run_3" -part xc3s1000ft256-5
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "module_4.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {module_4.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top module_4 $srcset
add_files [list {module_4.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s1000ft256-5
