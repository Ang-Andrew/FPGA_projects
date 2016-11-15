
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name ALU -dir "C:/Users/Andrew/Documents/ISE Projects/ALU/planAhead_run_1" -part xc3s1000ft256-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "Adder4Bit.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {ssd_decoder.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ssd_controller.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {FullAdder.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {Adder4Bit.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top Adder4Bit $srcset
add_files [list {Adder4Bit.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s1000ft256-4
