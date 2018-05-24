// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
// Date        : Fri Oct  6 12:21:03 2017
// Host        : rulinux04.dhcp.fnal.gov running 64-bit Scientific Linux release 7.2 (Nitrogen)
// Command     : write_verilog -force -mode synth_stub
//               /home/ntran/PF_CTP7/dev/hls_ventures/ctp7_vivado/ctp7_hls_demo/ctp7_hls_demo.runs/mp7wrapped_pfalgo3_full_0_synth_1/mp7wrapped_pfalgo3_full_0_stub.v
// Design      : mp7wrapped_pfalgo3_full_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1927-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mp7wrapped_pfalgo3_full,Vivado 2016.4" *)
module mp7wrapped_pfalgo3_full_0(ap_clk, ap_rst, ap_start, ap_done, ap_idle, 
  ap_ready, input_0_V, input_1_V, input_2_V, input_3_V, input_4_V, input_5_V, input_6_V, input_7_V, 
  input_8_V, input_9_V, input_10_V, input_11_V, input_12_V, input_13_V, input_14_V, input_15_V, 
  input_16_V, input_17_V, input_18_V, input_19_V, input_20_V, input_21_V, input_22_V, input_23_V, 
  input_24_V, input_25_V, input_26_V, input_27_V, input_28_V, input_29_V, input_30_V, input_31_V, 
  input_32_V, input_33_V, input_34_V, input_35_V, input_36_V, input_37_V, output_0_V, output_1_V, 
  output_2_V, output_3_V, output_4_V, output_5_V, output_6_V, output_7_V, output_8_V, output_9_V, 
  output_10_V, output_11_V, output_12_V, output_13_V, output_14_V, output_15_V, output_16_V, 
  output_17_V, output_18_V, output_19_V, output_20_V, output_21_V, output_22_V, output_23_V, 
  output_24_V, output_25_V, output_26_V, output_27_V, output_28_V, output_29_V, output_30_V, 
  output_31_V, output_32_V, output_33_V, output_34_V, output_35_V)
/* synthesis syn_black_box black_box_pad_pin="ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,input_0_V[31:0],input_1_V[31:0],input_2_V[31:0],input_3_V[31:0],input_4_V[31:0],input_5_V[31:0],input_6_V[31:0],input_7_V[31:0],input_8_V[31:0],input_9_V[31:0],input_10_V[31:0],input_11_V[31:0],input_12_V[31:0],input_13_V[31:0],input_14_V[31:0],input_15_V[31:0],input_16_V[31:0],input_17_V[31:0],input_18_V[31:0],input_19_V[31:0],input_20_V[31:0],input_21_V[31:0],input_22_V[31:0],input_23_V[31:0],input_24_V[31:0],input_25_V[31:0],input_26_V[31:0],input_27_V[31:0],input_28_V[31:0],input_29_V[31:0],input_30_V[31:0],input_31_V[31:0],input_32_V[31:0],input_33_V[31:0],input_34_V[31:0],input_35_V[31:0],input_36_V[31:0],input_37_V[31:0],output_0_V[31:0],output_1_V[31:0],output_2_V[31:0],output_3_V[31:0],output_4_V[31:0],output_5_V[31:0],output_6_V[31:0],output_7_V[31:0],output_8_V[31:0],output_9_V[31:0],output_10_V[31:0],output_11_V[31:0],output_12_V[31:0],output_13_V[31:0],output_14_V[31:0],output_15_V[31:0],output_16_V[31:0],output_17_V[31:0],output_18_V[31:0],output_19_V[31:0],output_20_V[31:0],output_21_V[31:0],output_22_V[31:0],output_23_V[31:0],output_24_V[31:0],output_25_V[31:0],output_26_V[31:0],output_27_V[31:0],output_28_V[31:0],output_29_V[31:0],output_30_V[31:0],output_31_V[31:0],output_32_V[31:0],output_33_V[31:0],output_34_V[31:0],output_35_V[31:0]" */;
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input [31:0]input_0_V;
  input [31:0]input_1_V;
  input [31:0]input_2_V;
  input [31:0]input_3_V;
  input [31:0]input_4_V;
  input [31:0]input_5_V;
  input [31:0]input_6_V;
  input [31:0]input_7_V;
  input [31:0]input_8_V;
  input [31:0]input_9_V;
  input [31:0]input_10_V;
  input [31:0]input_11_V;
  input [31:0]input_12_V;
  input [31:0]input_13_V;
  input [31:0]input_14_V;
  input [31:0]input_15_V;
  input [31:0]input_16_V;
  input [31:0]input_17_V;
  input [31:0]input_18_V;
  input [31:0]input_19_V;
  input [31:0]input_20_V;
  input [31:0]input_21_V;
  input [31:0]input_22_V;
  input [31:0]input_23_V;
  input [31:0]input_24_V;
  input [31:0]input_25_V;
  input [31:0]input_26_V;
  input [31:0]input_27_V;
  input [31:0]input_28_V;
  input [31:0]input_29_V;
  input [31:0]input_30_V;
  input [31:0]input_31_V;
  input [31:0]input_32_V;
  input [31:0]input_33_V;
  input [31:0]input_34_V;
  input [31:0]input_35_V;
  input [31:0]input_36_V;
  input [31:0]input_37_V;
  output [31:0]output_0_V;
  output [31:0]output_1_V;
  output [31:0]output_2_V;
  output [31:0]output_3_V;
  output [31:0]output_4_V;
  output [31:0]output_5_V;
  output [31:0]output_6_V;
  output [31:0]output_7_V;
  output [31:0]output_8_V;
  output [31:0]output_9_V;
  output [31:0]output_10_V;
  output [31:0]output_11_V;
  output [31:0]output_12_V;
  output [31:0]output_13_V;
  output [31:0]output_14_V;
  output [31:0]output_15_V;
  output [31:0]output_16_V;
  output [31:0]output_17_V;
  output [31:0]output_18_V;
  output [31:0]output_19_V;
  output [31:0]output_20_V;
  output [31:0]output_21_V;
  output [31:0]output_22_V;
  output [31:0]output_23_V;
  output [31:0]output_24_V;
  output [31:0]output_25_V;
  output [31:0]output_26_V;
  output [31:0]output_27_V;
  output [31:0]output_28_V;
  output [31:0]output_29_V;
  output [31:0]output_30_V;
  output [31:0]output_31_V;
  output [31:0]output_32_V;
  output [31:0]output_33_V;
  output [31:0]output_34_V;
  output [31:0]output_35_V;
endmodule
