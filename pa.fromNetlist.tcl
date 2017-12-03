
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name hz -dir "D:/14.7/ISE_DS/5-Example/hz/planAhead_run_1" -part xc6slx9tqg144-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/14.7/ISE_DS/5-Example/hz/hz_top.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/14.7/ISE_DS/5-Example/hz} }
add_files [list {D:/14.7/ISE_DS/5-Example/hz/hz.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {D:/14.7/ISE_DS/5-Example/hz/hz_axi4lite_0_wrapper.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {D:/14.7/ISE_DS/5-Example/hz/hz_clock_generator_0_wrapper.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {D:/14.7/ISE_DS/5-Example/hz/hz_microblaze_0_dlmb_wrapper.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {D:/14.7/ISE_DS/5-Example/hz/hz_microblaze_0_ilmb_wrapper.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {D:/14.7/ISE_DS/5-Example/hz/hz_microblaze_0_wrapper.ncf}] -fileset [get_property constrset [current_run]]
set_property target_constrs_file "hz_top.ucf" [current_fileset -constrset]
add_files [list {hz_top.ucf}] -fileset [get_property constrset [current_run]]
link_design
