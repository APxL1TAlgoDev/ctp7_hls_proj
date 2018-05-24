#
# Vivado (TM) v2016.4 (64-bit)
#

# Set the reference directory for source file relative paths (by default the value is script directory path)
set origin_dir "."

# Use origin directory path location variable, if specified in the tcl shell

variable script_file
set script_file "build_project.tcl"

# Set the directory path for the original project from where this script was exported
set orig_proj_dir "[file normalize "$origin_dir/"]"

# Create project
create_project ctp7_hls_pf ./ctp7_hls_pf -part xc7vx690tffg1927-2

# Set the directory path for the new project
set proj_dir [get_property directory [current_project]]

# Set project properties
set obj [get_projects ctp7_hls_pf]
set_property "corecontainer.enable" "1" $obj
set_property "default_lib" "xil_defaultlib" $obj
set_property "ip_cache_permissions" "read write" $obj
set_property "ip_output_repo" "ctp7_hls_pf/ctp_hls_pf.cache/ip" $obj
set_property "part" "xc7vx690tffg1927-2" $obj
set_property "sim.ip.auto_export_scripts" "1" $obj
set_property "simulator_language" "Mixed" $obj
set_property "target_language" "VHDL" $obj
set_property "xpm_libraries" "XPM_CDC XPM_MEMORY" $obj
set_property "xsim.array_display_limit" "64" $obj
set_property "xsim.trace_limit" "65536" $obj

## ------------------------------------------------------------------------------------------------------------------------------------------

# Create 'sources_1' fileset (if not found)
if {[string equal [get_filesets -quiet sources_1] ""]} {
  create_fileset -srcset sources_1
}

# Set IP repository paths
set obj [get_filesets sources_1]
set_property "ip_repo_paths" "ctp7_hls_demo.ipdefs/ip_0" $obj
update_ip_catalog -rebuild

# change this to get the right path to your vivado_hls PF project!
set pfProjDir /home/ntran/PF_CTP7/dev2/GlobalCorrelator_HLS/proj3-mp7-full-ctp7
set obj [get_filesets sources_1]
set_property "ip_repo_paths" "${pfProjDir}" $obj
update_ip_catalog -rebuild

## ------------------------------------------------------------------------------------------------------------------------------------------

# Set 'sources_1' fileset object
set obj [get_filesets sources_1]
set files [list \
 "[file normalize "ctp7_hls_demo.srcs/sources_1/new/ctp7_utils_pkg.vhd"]"\
 "[file normalize "ctp7_hls_demo.srcs/sources_1/bd/v7_bd/v7_bd.bd"]"\
 "[file normalize "ctp7_hls_demo.srcs/sources_1/new/register_file.vhd"]"\
 "[file normalize "ctp7_hls_demo.srcs/sources_1/new/pattern_io_engine.vhd"]"\
 "[file normalize "ctp7_hls_demo.srcs/sources_1/new/ctp7_top.vhd"]"\
 "[file normalize "ctp7_hls_demo.srcs/sources_1/ip/pattern_bram/pattern_bram.xci"]"\
 "[file normalize "ctp7_hls_demo.srcs/sources_1/ip/ila_0/ila_0.xci"]"\
 "[file normalize "ctp7_hls_demo.srcs/sources_1/ip/ila_hls/ila_hls.xci"]"\
 "[file normalize "ctp7_hls_demo.srcs/sources_1/ip/mp7wrapped_pfalgo3_full_0/mp7wrapped_pfalgo3_full_0.xci"]"\
]
add_files -norecurse -fileset $obj $files

set file "ctp7_hls_demo.srcs/sources_1/bd/v7_bd/v7_bd.bd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
if { ![get_property "is_locked" $file_obj] } {
  set_property "generate_synth_checkpoint" "0" $file_obj
}

## ------------------------------------------------------------------------------------------------------------------------------------------

# Create 'constrs_1' fileset (if not found)
if {[string equal [get_filesets -quiet constrs_1] ""]} {
  create_fileset -constrset constrs_1
}

# Set 'constrs_1' fileset object
set obj [get_filesets constrs_1]

# Add/Import constrs file and set constrs file properties
set file "[file normalize "ctp7_hls_demo.srcs/constrs_1/new/constraints.xdc"]"
set file_added [add_files -norecurse -fileset $obj $file]
set file "ctp7_hls_demo.srcs/constrs_1/new/constraints.xdc"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets constrs_1] [list "*$file"]]
set_property "file_type" "XDC" $file_obj

# Set 'constrs_1' fileset properties
set obj [get_filesets constrs_1]
set_property "target_constrs_file" "ctp7_hls_demo.srcs/constrs_1/new/constraints.xdc" $obj

## ------------------------------------------------------------------------------------------------------------------------------------------

# Synthesize
update_compile_order -fileset sources_1
launch_runs synth_1 -jobs 8
wait_on_run synth_1

# Implement
launch_runs impl_1 -to_step write_bitstream
wait_on_run impl_1

puts "INFO: Project created:ctp7_hls_pf"
