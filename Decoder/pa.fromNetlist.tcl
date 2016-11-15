
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name Decoder -dir "C:/Users/Andrew/Documents/ISE Projects/Decoder/planAhead_run_2" -part xc3s200ft256-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/Andrew/Documents/ISE Projects/Decoder/Decoder.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Andrew/Documents/ISE Projects/Decoder} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "Decoder.ucf" [current_fileset -constrset]
add_files [list {Decoder.ucf}] -fileset [get_property constrset [current_run]]
link_design
