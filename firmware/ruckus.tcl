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
loadConstraints -dir "$::DIR_PATH/constraints/"
loadIpCore      -dir "$::DIR_PATH/ip_repo/"

# Load V7 block design
if { $::env(VIVADO_VERSION) <= 2016.4 } {
         loadBlockDesign -path "$::DIR_PATH/bd/2016.4/v7_bd.bd"
} elseif { $::env(VIVADO_VERSION) <= 2017.2 } {
         loadBlockDesign -path "$::DIR_PATH/bd/2017.2/v7_bd.bd"      
} else {
         loadBlockDesign -path "$::DIR_PATH/bd/2017.3/v7_bd.bd"
}
