# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7k70tfbv676-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/david/OneDrive/Documenti/Progetto-Reti-Logiche-2022-Polimi/project_1/project_1.cache/wt [current_project]
set_property parent.project_path C:/Users/david/OneDrive/Documenti/Progetto-Reti-Logiche-2022-Polimi/project_1/project_1.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_output_repo c:/Users/david/OneDrive/Documenti/Progetto-Reti-Logiche-2022-Polimi/project_1/project_1.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib C:/Users/david/OneDrive/Documenti/Progetto-Reti-Logiche-2022-Polimi/fsm.vhd
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/david/OneDrive/Documenti/Progetto-Reti-Logiche-2022-Polimi/project_1/project_1.srcs/constrs_1/new/constr.xdc
set_property used_in_implementation false [get_files C:/Users/david/OneDrive/Documenti/Progetto-Reti-Logiche-2022-Polimi/project_1/project_1.srcs/constrs_1/new/constr.xdc]


synth_design -top project_reti_logiche -part xc7k70tfbv676-1


write_checkpoint -force -noxdef project_reti_logiche.dcp

catch { report_utilization -file project_reti_logiche_utilization_synth.rpt -pb project_reti_logiche_utilization_synth.pb }
