# Load RUCKUS environment and library
 source -quiet $::env(RUCKUS_DIR)/vivado_proc.tcl

 set_property ip_repo_paths $::env(IP_REPO) [current_project]
 update_ip_catalog

# # Load common and sub-module ruckus.tcl files
#loadRuckusTcl $::env(PROJ_DIR)/../../../
#loadRuckusTcl $::env(PROJ_DIR)
#
# # Load local source Code and constraints
loadSource      -dir "$::DIR_PATH/hdl/"
loadBlockDesign -dir "$::DIR_PATH/bd/"
loadConstraints -dir "$::DIR_PATH/constraints/"
loadIpCore      -dir "$::DIR_PATH/ip_repo/"
