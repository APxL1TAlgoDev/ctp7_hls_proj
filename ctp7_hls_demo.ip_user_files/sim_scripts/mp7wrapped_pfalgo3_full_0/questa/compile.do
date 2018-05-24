vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xpm

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm

vlog -work xil_defaultlib -64 -sv \
"/data/xilinx/Vivado/2016.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/data/xilinx/Vivado/2016.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/data/xilinx/Vivado/2016.4/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../ipstatic/hdl/vhdl/mp7wrapped_pfalgobkb.vhd" \
"../../../ipstatic/hdl/vhdl/mp7wrapped_pfalgocud.vhd" \
"../../../ipstatic/hdl/vhdl/mp7wrapped_pfalgodEe.vhd" \
"../../../ipstatic/hdl/vhdl/mp7wrapped_pfalgoeOg.vhd" \
"../../../ipstatic/hdl/vhdl/mp7wrapped_pfalgofYi.vhd" \
"../../../ipstatic/hdl/vhdl/mp7wrapped_pfalgog8j.vhd" \
"../../../ipstatic/hdl/vhdl/tk2calo_drdptvalshbi.vhd" \
"../../../ipstatic/hdl/vhdl/mp7wrapped_pfalgoibs.vhd" \
"../../../ipstatic/hdl/vhdl/mp7wrapped_pfalgojbC.vhd" \
"../../../ipstatic/hdl/vhdl/mp7wrapped_pfalgokbM.vhd" \
"../../../ipstatic/hdl/vhdl/mp7wrapped_unpack_in.vhd" \
"../../../ipstatic/hdl/vhdl/dr2_int_cap_12_s.vhd" \
"../../../ipstatic/hdl/vhdl/spfph_mu2trk_drvals.vhd" \
"../../../ipstatic/hdl/vhdl/spfph_mu2trk_linkste.vhd" \
"../../../ipstatic/hdl/vhdl/spfph_mualgo.vhd" \
"../../../ipstatic/hdl/vhdl/dr2_int_cap_7_s.vhd" \
"../../../ipstatic/hdl/vhdl/tk2em_drvals_84_s.vhd" \
"../../../ipstatic/hdl/vhdl/pick_closest.vhd" \
"../../../ipstatic/hdl/vhdl/tk2em_sumtk.vhd" \
"../../../ipstatic/hdl/vhdl/tk2em_elealgo.vhd" \
"../../../ipstatic/hdl/vhdl/dr2_int_cap_10_s.vhd" \
"../../../ipstatic/hdl/vhdl/em2calo_drvals_525_s.vhd" \
"../../../ipstatic/hdl/vhdl/pick_closest_1.vhd" \
"../../../ipstatic/hdl/vhdl/dr2_dpt_int_cap.vhd" \
"../../../ipstatic/hdl/vhdl/tk2calo_drdptvals.vhd" \
"../../../ipstatic/hdl/vhdl/pick_closest_2.vhd" \
"../../../ipstatic/hdl/vhdl/tk2calo_tkalgo.vhd" \
"../../../ipstatic/hdl/vhdl/tk2calo_sumtk.vhd" \
"../../../ipstatic/hdl/vhdl/ptsort_hwopt.vhd" \
"../../../ipstatic/hdl/vhdl/pfalgo3_full.vhd" \
"../../../ipstatic/hdl/vhdl/mp7wrapped_pfalgo3_full.vhd" \
"../../../ip/mp7wrapped_pfalgo3_full_0/sim/mp7wrapped_pfalgo3_full_0.vhd" \

vlog -work xil_defaultlib "glbl.v"

