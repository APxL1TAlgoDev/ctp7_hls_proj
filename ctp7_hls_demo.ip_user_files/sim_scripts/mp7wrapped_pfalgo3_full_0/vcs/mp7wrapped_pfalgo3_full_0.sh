#!/bin/bash -f
# Vivado (TM) v2016.4 (64-bit)
#
# Filename    : mp7wrapped_pfalgo3_full_0.sh
# Simulator   : Synopsys Verilog Compiler Simulator
# Description : Simulation script for compiling, elaborating and verifying the project source files.
#               The script will automatically create the design libraries sub-directories in the run
#               directory, add the library logical mappings in the simulator setup file, create default
#               'do/prj' file, execute compilation, elaboration and simulation steps.
#
# Generated by Vivado on Fri Oct 06 12:17:52 CDT 2017
# IP Build 1755317 on Mon Jan 23 20:30:07 MST 2017 
#
# usage: mp7wrapped_pfalgo3_full_0.sh [-help]
# usage: mp7wrapped_pfalgo3_full_0.sh [-lib_map_path]
# usage: mp7wrapped_pfalgo3_full_0.sh [-noclean_files]
# usage: mp7wrapped_pfalgo3_full_0.sh [-reset_run]
#
# Prerequisite:- To compile and run simulation, you must compile the Xilinx simulation libraries using the
# 'compile_simlib' TCL command. For more information about this command, run 'compile_simlib -help' in the
# Vivado Tcl Shell. Once the libraries have been compiled successfully, specify the -lib_map_path switch
# that points to these libraries and rerun export_simulation. For more information about this switch please
# type 'export_simulation -help' in the Tcl shell.
#
# You can also point to the simulation libraries by either replacing the <SPECIFY_COMPILED_LIB_PATH> in this
# script with the compiled library directory path or specify this path with the '-lib_map_path' switch when
# executing this script. Please type 'mp7wrapped_pfalgo3_full_0.sh -help' for more information.
#
# Additional references - 'Xilinx Vivado Design Suite User Guide:Logic simulation (UG900)'
#
# ********************************************************************************************************

# Directory path for design sources and include directories (if any) wrt this path
ref_dir="."

# Override directory with 'export_sim_ref_dir' env path value if set in the shell
if [[ (! -z "$export_sim_ref_dir") && ($export_sim_ref_dir != "") ]]; then
  ref_dir="$export_sim_ref_dir"
fi

# Command line options
vlogan_opts="-full64"
vhdlan_opts="-full64"
vcs_elab_opts="-full64 -debug_pp -t ps -licqueue -l elaborate.log"
vcs_sim_opts="-ucli -licqueue -l simulate.log"

# Design libraries
design_libs=(xil_defaultlib xpm)

# Simulation root library directory
sim_lib_dir="vcs"

# Script info
echo -e "mp7wrapped_pfalgo3_full_0.sh - Script generated by export_simulation (Vivado v2016.4 (64-bit)-id)\n"

# Main steps
run()
{
  check_args $# $1
  setup $1 $2
  compile
  elaborate
  simulate
}

# RUN_STEP: <compile>
compile()
{
  # Compile design files
  vlogan -work xil_defaultlib $vlogan_opts -sverilog \
    "/data/xilinx/Vivado/2016.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
    "/data/xilinx/Vivado/2016.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
  2>&1 | tee -a vlogan.log

  vhdlan -work xpm $vhdlan_opts \
    "/data/xilinx/Vivado/2016.4/data/ip/xpm/xpm_VCOMP.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../ipstatic/hdl/vhdl/mp7wrapped_pfalgobkb.vhd" \
    "$ref_dir/../../../ipstatic/hdl/vhdl/mp7wrapped_pfalgocud.vhd" \
    "$ref_dir/../../../ipstatic/hdl/vhdl/mp7wrapped_pfalgodEe.vhd" \
    "$ref_dir/../../../ipstatic/hdl/vhdl/mp7wrapped_pfalgoeOg.vhd" \
    "$ref_dir/../../../ipstatic/hdl/vhdl/mp7wrapped_pfalgofYi.vhd" \
    "$ref_dir/../../../ipstatic/hdl/vhdl/mp7wrapped_pfalgog8j.vhd" \
    "$ref_dir/../../../ipstatic/hdl/vhdl/tk2calo_drdptvalshbi.vhd" \
    "$ref_dir/../../../ipstatic/hdl/vhdl/mp7wrapped_pfalgoibs.vhd" \
    "$ref_dir/../../../ipstatic/hdl/vhdl/mp7wrapped_pfalgojbC.vhd" \
    "$ref_dir/../../../ipstatic/hdl/vhdl/mp7wrapped_pfalgokbM.vhd" \
    "$ref_dir/../../../ipstatic/hdl/vhdl/mp7wrapped_unpack_in.vhd" \
    "$ref_dir/../../../ipstatic/hdl/vhdl/dr2_int_cap_12_s.vhd" \
    "$ref_dir/../../../ipstatic/hdl/vhdl/spfph_mu2trk_drvals.vhd" \
    "$ref_dir/../../../ipstatic/hdl/vhdl/spfph_mu2trk_linkste.vhd" \
    "$ref_dir/../../../ipstatic/hdl/vhdl/spfph_mualgo.vhd" \
    "$ref_dir/../../../ipstatic/hdl/vhdl/dr2_int_cap_7_s.vhd" \
    "$ref_dir/../../../ipstatic/hdl/vhdl/tk2em_drvals_84_s.vhd" \
    "$ref_dir/../../../ipstatic/hdl/vhdl/pick_closest.vhd" \
    "$ref_dir/../../../ipstatic/hdl/vhdl/tk2em_sumtk.vhd" \
    "$ref_dir/../../../ipstatic/hdl/vhdl/tk2em_elealgo.vhd" \
    "$ref_dir/../../../ipstatic/hdl/vhdl/dr2_int_cap_10_s.vhd" \
    "$ref_dir/../../../ipstatic/hdl/vhdl/em2calo_drvals_525_s.vhd" \
    "$ref_dir/../../../ipstatic/hdl/vhdl/pick_closest_1.vhd" \
    "$ref_dir/../../../ipstatic/hdl/vhdl/dr2_dpt_int_cap.vhd" \
    "$ref_dir/../../../ipstatic/hdl/vhdl/tk2calo_drdptvals.vhd" \
    "$ref_dir/../../../ipstatic/hdl/vhdl/pick_closest_2.vhd" \
    "$ref_dir/../../../ipstatic/hdl/vhdl/tk2calo_tkalgo.vhd" \
    "$ref_dir/../../../ipstatic/hdl/vhdl/tk2calo_sumtk.vhd" \
    "$ref_dir/../../../ipstatic/hdl/vhdl/ptsort_hwopt.vhd" \
    "$ref_dir/../../../ipstatic/hdl/vhdl/pfalgo3_full.vhd" \
    "$ref_dir/../../../ipstatic/hdl/vhdl/mp7wrapped_pfalgo3_full.vhd" \
    "$ref_dir/../../../ip/mp7wrapped_pfalgo3_full_0/sim/mp7wrapped_pfalgo3_full_0.vhd" \
  2>&1 | tee -a vhdlan.log


  vlogan -work xil_defaultlib $vlogan_opts +v2k \
    glbl.v \
  2>&1 | tee -a vlogan.log

}

# RUN_STEP: <elaborate>
elaborate()
{
  vcs $vcs_elab_opts xil_defaultlib.mp7wrapped_pfalgo3_full_0 xil_defaultlib.glbl -o mp7wrapped_pfalgo3_full_0_simv
}

# RUN_STEP: <simulate>
simulate()
{
  ./mp7wrapped_pfalgo3_full_0_simv $vcs_sim_opts -do simulate.do
}

# STEP: setup
setup()
{
  case $1 in
    "-lib_map_path" )
      if [[ ($2 == "") ]]; then
        echo -e "ERROR: Simulation library directory path not specified (type \"./mp7wrapped_pfalgo3_full_0.sh -help\" for more information)\n"
        exit 1
      fi
      create_lib_mappings $2
    ;;
    "-reset_run" )
      reset_run
      echo -e "INFO: Simulation run files deleted.\n"
      exit 0
    ;;
    "-noclean_files" )
      # do not remove previous data
    ;;
    * )
      create_lib_mappings $2
  esac

  create_lib_dir

  # Add any setup/initialization commands here:-

  # <user specific commands>

}

# Define design library mappings
create_lib_mappings()
{
  file="synopsys_sim.setup"
  if [[ -e $file ]]; then
    if [[ ($1 == "") ]]; then
      return
    else
      rm -rf $file
    fi
  fi

  touch $file

  if [[ ($1 != "") ]]; then
    lib_map_path="$1"
  else
    lib_map_path="/home/ntran/PF_CTP7/dev/hls_ventures/ctp7_vivado/ctp7_hls_demo/ctp7_hls_demo.cache/compile_simlib/vcs"
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    mapping="$lib:$sim_lib_dir/$lib"
    echo $mapping >> $file
  done

  if [[ ($lib_map_path != "") ]]; then
    incl_ref="OTHERS=$lib_map_path/synopsys_sim.setup"
    echo $incl_ref >> $file
  fi
}

# Create design library directory paths
create_lib_dir()
{
  if [[ -e $sim_lib_dir ]]; then
    rm -rf $sim_lib_dir
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    lib_dir="$sim_lib_dir/$lib"
    if [[ ! -e $lib_dir ]]; then
      mkdir -p $lib_dir
    fi
  done
}

# Delete generated data from the previous run
reset_run()
{
  files_to_remove=(ucli.key mp7wrapped_pfalgo3_full_0_simv vlogan.log vhdlan.log compile.log elaborate.log simulate.log .vlogansetup.env .vlogansetup.args .vcs_lib_lock scirocco_command.log 64 AN.DB csrc mp7wrapped_pfalgo3_full_0_simv.daidir)
  for (( i=0; i<${#files_to_remove[*]}; i++ )); do
    file="${files_to_remove[i]}"
    if [[ -e $file ]]; then
      rm -rf $file
    fi
  done

  create_lib_dir
}

# Check command line arguments
check_args()
{
  if [[ ($1 == 1 ) && ($2 != "-lib_map_path" && $2 != "-noclean_files" && $2 != "-reset_run" && $2 != "-help" && $2 != "-h") ]]; then
    echo -e "ERROR: Unknown option specified '$2' (type \"./mp7wrapped_pfalgo3_full_0.sh -help\" for more information)\n"
    exit 1
  fi

  if [[ ($2 == "-help" || $2 == "-h") ]]; then
    usage
  fi
}

# Script usage
usage()
{
  msg="Usage: mp7wrapped_pfalgo3_full_0.sh [-help]\n\
Usage: mp7wrapped_pfalgo3_full_0.sh [-lib_map_path]\n\
Usage: mp7wrapped_pfalgo3_full_0.sh [-reset_run]\n\
Usage: mp7wrapped_pfalgo3_full_0.sh [-noclean_files]\n\n\
[-help] -- Print help information for this script\n\n\
[-lib_map_path <path>] -- Compiled simulation library directory path. The simulation library is compiled\n\
using the compile_simlib tcl command. Please see 'compile_simlib -help' for more information.\n\n\
[-reset_run] -- Recreate simulator setup files and library mappings for a clean run. The generated files\n\
from the previous run will be removed. If you don't want to remove the simulator generated files, use the\n\
-noclean_files switch.\n\n\
[-noclean_files] -- Reset previous run, but do not remove simulator generated files from the previous run.\n\n"
  echo -e $msg
  exit 1
}

# Launch script
run $1 $2
