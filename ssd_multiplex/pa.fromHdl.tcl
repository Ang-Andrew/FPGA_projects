
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name ssd_multiplex -dir "C:/Users/Andrew/Documents/ISE Projects/ssd_multiplex/planAhead_run_3" -part xc3s1000ft256-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "ssd_output.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {ssd_output.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top ssd_output $srcset
add_files [list {ssd_output.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s1000ft256-4
