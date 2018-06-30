
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name Huffman -dir "C:/Users/magnifico/Desktop/Huffman/planAhead_run_5" -part xc7vx330tffg1157-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/magnifico/Desktop/Huffman/main.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/magnifico/Desktop/Huffman} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "main.ucf" [current_fileset -constrset]
add_files [list {main.ucf}] -fileset [get_property constrset [current_run]]
link_design
