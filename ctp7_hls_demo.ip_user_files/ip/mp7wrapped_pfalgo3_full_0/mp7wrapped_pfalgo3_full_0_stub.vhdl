-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
-- Date        : Fri Oct  6 12:21:03 2017
-- Host        : rulinux04.dhcp.fnal.gov running 64-bit Scientific Linux release 7.2 (Nitrogen)
-- Command     : write_vhdl -force -mode synth_stub
--               /home/ntran/PF_CTP7/dev/hls_ventures/ctp7_vivado/ctp7_hls_demo/ctp7_hls_demo.runs/mp7wrapped_pfalgo3_full_0_synth_1/mp7wrapped_pfalgo3_full_0_stub.vhdl
-- Design      : mp7wrapped_pfalgo3_full_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx690tffg1927-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mp7wrapped_pfalgo3_full_0 is
  Port ( 
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    input_0_V : in STD_LOGIC_VECTOR ( 31 downto 0 );
    input_1_V : in STD_LOGIC_VECTOR ( 31 downto 0 );
    input_2_V : in STD_LOGIC_VECTOR ( 31 downto 0 );
    input_3_V : in STD_LOGIC_VECTOR ( 31 downto 0 );
    input_4_V : in STD_LOGIC_VECTOR ( 31 downto 0 );
    input_5_V : in STD_LOGIC_VECTOR ( 31 downto 0 );
    input_6_V : in STD_LOGIC_VECTOR ( 31 downto 0 );
    input_7_V : in STD_LOGIC_VECTOR ( 31 downto 0 );
    input_8_V : in STD_LOGIC_VECTOR ( 31 downto 0 );
    input_9_V : in STD_LOGIC_VECTOR ( 31 downto 0 );
    input_10_V : in STD_LOGIC_VECTOR ( 31 downto 0 );
    input_11_V : in STD_LOGIC_VECTOR ( 31 downto 0 );
    input_12_V : in STD_LOGIC_VECTOR ( 31 downto 0 );
    input_13_V : in STD_LOGIC_VECTOR ( 31 downto 0 );
    input_14_V : in STD_LOGIC_VECTOR ( 31 downto 0 );
    input_15_V : in STD_LOGIC_VECTOR ( 31 downto 0 );
    input_16_V : in STD_LOGIC_VECTOR ( 31 downto 0 );
    input_17_V : in STD_LOGIC_VECTOR ( 31 downto 0 );
    input_18_V : in STD_LOGIC_VECTOR ( 31 downto 0 );
    input_19_V : in STD_LOGIC_VECTOR ( 31 downto 0 );
    input_20_V : in STD_LOGIC_VECTOR ( 31 downto 0 );
    input_21_V : in STD_LOGIC_VECTOR ( 31 downto 0 );
    input_22_V : in STD_LOGIC_VECTOR ( 31 downto 0 );
    input_23_V : in STD_LOGIC_VECTOR ( 31 downto 0 );
    input_24_V : in STD_LOGIC_VECTOR ( 31 downto 0 );
    input_25_V : in STD_LOGIC_VECTOR ( 31 downto 0 );
    input_26_V : in STD_LOGIC_VECTOR ( 31 downto 0 );
    input_27_V : in STD_LOGIC_VECTOR ( 31 downto 0 );
    input_28_V : in STD_LOGIC_VECTOR ( 31 downto 0 );
    input_29_V : in STD_LOGIC_VECTOR ( 31 downto 0 );
    input_30_V : in STD_LOGIC_VECTOR ( 31 downto 0 );
    input_31_V : in STD_LOGIC_VECTOR ( 31 downto 0 );
    input_32_V : in STD_LOGIC_VECTOR ( 31 downto 0 );
    input_33_V : in STD_LOGIC_VECTOR ( 31 downto 0 );
    input_34_V : in STD_LOGIC_VECTOR ( 31 downto 0 );
    input_35_V : in STD_LOGIC_VECTOR ( 31 downto 0 );
    input_36_V : in STD_LOGIC_VECTOR ( 31 downto 0 );
    input_37_V : in STD_LOGIC_VECTOR ( 31 downto 0 );
    output_0_V : out STD_LOGIC_VECTOR ( 31 downto 0 );
    output_1_V : out STD_LOGIC_VECTOR ( 31 downto 0 );
    output_2_V : out STD_LOGIC_VECTOR ( 31 downto 0 );
    output_3_V : out STD_LOGIC_VECTOR ( 31 downto 0 );
    output_4_V : out STD_LOGIC_VECTOR ( 31 downto 0 );
    output_5_V : out STD_LOGIC_VECTOR ( 31 downto 0 );
    output_6_V : out STD_LOGIC_VECTOR ( 31 downto 0 );
    output_7_V : out STD_LOGIC_VECTOR ( 31 downto 0 );
    output_8_V : out STD_LOGIC_VECTOR ( 31 downto 0 );
    output_9_V : out STD_LOGIC_VECTOR ( 31 downto 0 );
    output_10_V : out STD_LOGIC_VECTOR ( 31 downto 0 );
    output_11_V : out STD_LOGIC_VECTOR ( 31 downto 0 );
    output_12_V : out STD_LOGIC_VECTOR ( 31 downto 0 );
    output_13_V : out STD_LOGIC_VECTOR ( 31 downto 0 );
    output_14_V : out STD_LOGIC_VECTOR ( 31 downto 0 );
    output_15_V : out STD_LOGIC_VECTOR ( 31 downto 0 );
    output_16_V : out STD_LOGIC_VECTOR ( 31 downto 0 );
    output_17_V : out STD_LOGIC_VECTOR ( 31 downto 0 );
    output_18_V : out STD_LOGIC_VECTOR ( 31 downto 0 );
    output_19_V : out STD_LOGIC_VECTOR ( 31 downto 0 );
    output_20_V : out STD_LOGIC_VECTOR ( 31 downto 0 );
    output_21_V : out STD_LOGIC_VECTOR ( 31 downto 0 );
    output_22_V : out STD_LOGIC_VECTOR ( 31 downto 0 );
    output_23_V : out STD_LOGIC_VECTOR ( 31 downto 0 );
    output_24_V : out STD_LOGIC_VECTOR ( 31 downto 0 );
    output_25_V : out STD_LOGIC_VECTOR ( 31 downto 0 );
    output_26_V : out STD_LOGIC_VECTOR ( 31 downto 0 );
    output_27_V : out STD_LOGIC_VECTOR ( 31 downto 0 );
    output_28_V : out STD_LOGIC_VECTOR ( 31 downto 0 );
    output_29_V : out STD_LOGIC_VECTOR ( 31 downto 0 );
    output_30_V : out STD_LOGIC_VECTOR ( 31 downto 0 );
    output_31_V : out STD_LOGIC_VECTOR ( 31 downto 0 );
    output_32_V : out STD_LOGIC_VECTOR ( 31 downto 0 );
    output_33_V : out STD_LOGIC_VECTOR ( 31 downto 0 );
    output_34_V : out STD_LOGIC_VECTOR ( 31 downto 0 );
    output_35_V : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end mp7wrapped_pfalgo3_full_0;

architecture stub of mp7wrapped_pfalgo3_full_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,input_0_V[31:0],input_1_V[31:0],input_2_V[31:0],input_3_V[31:0],input_4_V[31:0],input_5_V[31:0],input_6_V[31:0],input_7_V[31:0],input_8_V[31:0],input_9_V[31:0],input_10_V[31:0],input_11_V[31:0],input_12_V[31:0],input_13_V[31:0],input_14_V[31:0],input_15_V[31:0],input_16_V[31:0],input_17_V[31:0],input_18_V[31:0],input_19_V[31:0],input_20_V[31:0],input_21_V[31:0],input_22_V[31:0],input_23_V[31:0],input_24_V[31:0],input_25_V[31:0],input_26_V[31:0],input_27_V[31:0],input_28_V[31:0],input_29_V[31:0],input_30_V[31:0],input_31_V[31:0],input_32_V[31:0],input_33_V[31:0],input_34_V[31:0],input_35_V[31:0],input_36_V[31:0],input_37_V[31:0],output_0_V[31:0],output_1_V[31:0],output_2_V[31:0],output_3_V[31:0],output_4_V[31:0],output_5_V[31:0],output_6_V[31:0],output_7_V[31:0],output_8_V[31:0],output_9_V[31:0],output_10_V[31:0],output_11_V[31:0],output_12_V[31:0],output_13_V[31:0],output_14_V[31:0],output_15_V[31:0],output_16_V[31:0],output_17_V[31:0],output_18_V[31:0],output_19_V[31:0],output_20_V[31:0],output_21_V[31:0],output_22_V[31:0],output_23_V[31:0],output_24_V[31:0],output_25_V[31:0],output_26_V[31:0],output_27_V[31:0],output_28_V[31:0],output_29_V[31:0],output_30_V[31:0],output_31_V[31:0],output_32_V[31:0],output_33_V[31:0],output_34_V[31:0],output_35_V[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "mp7wrapped_pfalgo3_full,Vivado 2016.4";
begin
end;
