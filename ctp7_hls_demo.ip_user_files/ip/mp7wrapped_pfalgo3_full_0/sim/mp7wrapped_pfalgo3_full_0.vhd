-- (c) Copyright 1995-2017 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: cern-cms:hls:mp7wrapped_pfalgo3_full:2.0
-- IP Revision: 1710061133

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY mp7wrapped_pfalgo3_full_0 IS
  PORT (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    input_0_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    input_1_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    input_2_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    input_3_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    input_4_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    input_5_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    input_6_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    input_7_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    input_8_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    input_9_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    input_10_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    input_11_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    input_12_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    input_13_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    input_14_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    input_15_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    input_16_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    input_17_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    input_18_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    input_19_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    input_20_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    input_21_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    input_22_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    input_23_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    input_24_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    input_25_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    input_26_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    input_27_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    input_28_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    input_29_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    input_30_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    input_31_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    input_32_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    input_33_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    input_34_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    input_35_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    input_36_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    input_37_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    output_0_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    output_1_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    output_2_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    output_3_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    output_4_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    output_5_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    output_6_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    output_7_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    output_8_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    output_9_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    output_10_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    output_11_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    output_12_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    output_13_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    output_14_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    output_15_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    output_16_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    output_17_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    output_18_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    output_19_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    output_20_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    output_21_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    output_22_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    output_23_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    output_24_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    output_25_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    output_26_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    output_27_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    output_28_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    output_29_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    output_30_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    output_31_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    output_32_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    output_33_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    output_34_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    output_35_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END mp7wrapped_pfalgo3_full_0;

ARCHITECTURE mp7wrapped_pfalgo3_full_0_arch OF mp7wrapped_pfalgo3_full_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF mp7wrapped_pfalgo3_full_0_arch: ARCHITECTURE IS "yes";
  COMPONENT mp7wrapped_pfalgo3_full IS
    PORT (
      ap_clk : IN STD_LOGIC;
      ap_rst : IN STD_LOGIC;
      ap_start : IN STD_LOGIC;
      ap_done : OUT STD_LOGIC;
      ap_idle : OUT STD_LOGIC;
      ap_ready : OUT STD_LOGIC;
      input_0_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      input_1_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      input_2_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      input_3_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      input_4_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      input_5_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      input_6_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      input_7_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      input_8_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      input_9_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      input_10_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      input_11_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      input_12_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      input_13_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      input_14_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      input_15_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      input_16_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      input_17_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      input_18_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      input_19_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      input_20_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      input_21_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      input_22_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      input_23_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      input_24_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      input_25_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      input_26_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      input_27_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      input_28_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      input_29_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      input_30_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      input_31_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      input_32_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      input_33_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      input_34_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      input_35_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      input_36_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      input_37_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      output_0_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      output_1_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      output_2_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      output_3_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      output_4_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      output_5_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      output_6_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      output_7_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      output_8_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      output_9_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      output_10_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      output_11_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      output_12_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      output_13_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      output_14_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      output_15_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      output_16_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      output_17_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      output_18_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      output_19_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      output_20_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      output_21_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      output_22_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      output_23_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      output_24_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      output_25_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      output_26_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      output_27_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      output_28_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      output_29_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      output_30_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      output_31_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      output_32_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      output_33_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      output_34_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      output_35_V : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT mp7wrapped_pfalgo3_full;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst RST";
  ATTRIBUTE X_INTERFACE_INFO OF ap_start: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  ATTRIBUTE X_INTERFACE_INFO OF ap_done: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  ATTRIBUTE X_INTERFACE_INFO OF ap_idle: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  ATTRIBUTE X_INTERFACE_INFO OF ap_ready: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  ATTRIBUTE X_INTERFACE_INFO OF input_0_V: SIGNAL IS "xilinx.com:signal:data:1.0 input_0_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF input_1_V: SIGNAL IS "xilinx.com:signal:data:1.0 input_1_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF input_2_V: SIGNAL IS "xilinx.com:signal:data:1.0 input_2_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF input_3_V: SIGNAL IS "xilinx.com:signal:data:1.0 input_3_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF input_4_V: SIGNAL IS "xilinx.com:signal:data:1.0 input_4_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF input_5_V: SIGNAL IS "xilinx.com:signal:data:1.0 input_5_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF input_6_V: SIGNAL IS "xilinx.com:signal:data:1.0 input_6_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF input_7_V: SIGNAL IS "xilinx.com:signal:data:1.0 input_7_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF input_8_V: SIGNAL IS "xilinx.com:signal:data:1.0 input_8_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF input_9_V: SIGNAL IS "xilinx.com:signal:data:1.0 input_9_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF input_10_V: SIGNAL IS "xilinx.com:signal:data:1.0 input_10_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF input_11_V: SIGNAL IS "xilinx.com:signal:data:1.0 input_11_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF input_12_V: SIGNAL IS "xilinx.com:signal:data:1.0 input_12_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF input_13_V: SIGNAL IS "xilinx.com:signal:data:1.0 input_13_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF input_14_V: SIGNAL IS "xilinx.com:signal:data:1.0 input_14_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF input_15_V: SIGNAL IS "xilinx.com:signal:data:1.0 input_15_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF input_16_V: SIGNAL IS "xilinx.com:signal:data:1.0 input_16_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF input_17_V: SIGNAL IS "xilinx.com:signal:data:1.0 input_17_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF input_18_V: SIGNAL IS "xilinx.com:signal:data:1.0 input_18_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF input_19_V: SIGNAL IS "xilinx.com:signal:data:1.0 input_19_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF input_20_V: SIGNAL IS "xilinx.com:signal:data:1.0 input_20_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF input_21_V: SIGNAL IS "xilinx.com:signal:data:1.0 input_21_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF input_22_V: SIGNAL IS "xilinx.com:signal:data:1.0 input_22_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF input_23_V: SIGNAL IS "xilinx.com:signal:data:1.0 input_23_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF input_24_V: SIGNAL IS "xilinx.com:signal:data:1.0 input_24_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF input_25_V: SIGNAL IS "xilinx.com:signal:data:1.0 input_25_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF input_26_V: SIGNAL IS "xilinx.com:signal:data:1.0 input_26_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF input_27_V: SIGNAL IS "xilinx.com:signal:data:1.0 input_27_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF input_28_V: SIGNAL IS "xilinx.com:signal:data:1.0 input_28_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF input_29_V: SIGNAL IS "xilinx.com:signal:data:1.0 input_29_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF input_30_V: SIGNAL IS "xilinx.com:signal:data:1.0 input_30_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF input_31_V: SIGNAL IS "xilinx.com:signal:data:1.0 input_31_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF input_32_V: SIGNAL IS "xilinx.com:signal:data:1.0 input_32_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF input_33_V: SIGNAL IS "xilinx.com:signal:data:1.0 input_33_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF input_34_V: SIGNAL IS "xilinx.com:signal:data:1.0 input_34_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF input_35_V: SIGNAL IS "xilinx.com:signal:data:1.0 input_35_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF input_36_V: SIGNAL IS "xilinx.com:signal:data:1.0 input_36_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF input_37_V: SIGNAL IS "xilinx.com:signal:data:1.0 input_37_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF output_0_V: SIGNAL IS "xilinx.com:signal:data:1.0 output_0_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF output_1_V: SIGNAL IS "xilinx.com:signal:data:1.0 output_1_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF output_2_V: SIGNAL IS "xilinx.com:signal:data:1.0 output_2_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF output_3_V: SIGNAL IS "xilinx.com:signal:data:1.0 output_3_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF output_4_V: SIGNAL IS "xilinx.com:signal:data:1.0 output_4_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF output_5_V: SIGNAL IS "xilinx.com:signal:data:1.0 output_5_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF output_6_V: SIGNAL IS "xilinx.com:signal:data:1.0 output_6_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF output_7_V: SIGNAL IS "xilinx.com:signal:data:1.0 output_7_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF output_8_V: SIGNAL IS "xilinx.com:signal:data:1.0 output_8_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF output_9_V: SIGNAL IS "xilinx.com:signal:data:1.0 output_9_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF output_10_V: SIGNAL IS "xilinx.com:signal:data:1.0 output_10_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF output_11_V: SIGNAL IS "xilinx.com:signal:data:1.0 output_11_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF output_12_V: SIGNAL IS "xilinx.com:signal:data:1.0 output_12_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF output_13_V: SIGNAL IS "xilinx.com:signal:data:1.0 output_13_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF output_14_V: SIGNAL IS "xilinx.com:signal:data:1.0 output_14_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF output_15_V: SIGNAL IS "xilinx.com:signal:data:1.0 output_15_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF output_16_V: SIGNAL IS "xilinx.com:signal:data:1.0 output_16_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF output_17_V: SIGNAL IS "xilinx.com:signal:data:1.0 output_17_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF output_18_V: SIGNAL IS "xilinx.com:signal:data:1.0 output_18_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF output_19_V: SIGNAL IS "xilinx.com:signal:data:1.0 output_19_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF output_20_V: SIGNAL IS "xilinx.com:signal:data:1.0 output_20_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF output_21_V: SIGNAL IS "xilinx.com:signal:data:1.0 output_21_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF output_22_V: SIGNAL IS "xilinx.com:signal:data:1.0 output_22_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF output_23_V: SIGNAL IS "xilinx.com:signal:data:1.0 output_23_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF output_24_V: SIGNAL IS "xilinx.com:signal:data:1.0 output_24_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF output_25_V: SIGNAL IS "xilinx.com:signal:data:1.0 output_25_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF output_26_V: SIGNAL IS "xilinx.com:signal:data:1.0 output_26_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF output_27_V: SIGNAL IS "xilinx.com:signal:data:1.0 output_27_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF output_28_V: SIGNAL IS "xilinx.com:signal:data:1.0 output_28_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF output_29_V: SIGNAL IS "xilinx.com:signal:data:1.0 output_29_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF output_30_V: SIGNAL IS "xilinx.com:signal:data:1.0 output_30_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF output_31_V: SIGNAL IS "xilinx.com:signal:data:1.0 output_31_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF output_32_V: SIGNAL IS "xilinx.com:signal:data:1.0 output_32_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF output_33_V: SIGNAL IS "xilinx.com:signal:data:1.0 output_33_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF output_34_V: SIGNAL IS "xilinx.com:signal:data:1.0 output_34_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF output_35_V: SIGNAL IS "xilinx.com:signal:data:1.0 output_35_V DATA";
BEGIN
  U0 : mp7wrapped_pfalgo3_full
    PORT MAP (
      ap_clk => ap_clk,
      ap_rst => ap_rst,
      ap_start => ap_start,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      input_0_V => input_0_V,
      input_1_V => input_1_V,
      input_2_V => input_2_V,
      input_3_V => input_3_V,
      input_4_V => input_4_V,
      input_5_V => input_5_V,
      input_6_V => input_6_V,
      input_7_V => input_7_V,
      input_8_V => input_8_V,
      input_9_V => input_9_V,
      input_10_V => input_10_V,
      input_11_V => input_11_V,
      input_12_V => input_12_V,
      input_13_V => input_13_V,
      input_14_V => input_14_V,
      input_15_V => input_15_V,
      input_16_V => input_16_V,
      input_17_V => input_17_V,
      input_18_V => input_18_V,
      input_19_V => input_19_V,
      input_20_V => input_20_V,
      input_21_V => input_21_V,
      input_22_V => input_22_V,
      input_23_V => input_23_V,
      input_24_V => input_24_V,
      input_25_V => input_25_V,
      input_26_V => input_26_V,
      input_27_V => input_27_V,
      input_28_V => input_28_V,
      input_29_V => input_29_V,
      input_30_V => input_30_V,
      input_31_V => input_31_V,
      input_32_V => input_32_V,
      input_33_V => input_33_V,
      input_34_V => input_34_V,
      input_35_V => input_35_V,
      input_36_V => input_36_V,
      input_37_V => input_37_V,
      output_0_V => output_0_V,
      output_1_V => output_1_V,
      output_2_V => output_2_V,
      output_3_V => output_3_V,
      output_4_V => output_4_V,
      output_5_V => output_5_V,
      output_6_V => output_6_V,
      output_7_V => output_7_V,
      output_8_V => output_8_V,
      output_9_V => output_9_V,
      output_10_V => output_10_V,
      output_11_V => output_11_V,
      output_12_V => output_12_V,
      output_13_V => output_13_V,
      output_14_V => output_14_V,
      output_15_V => output_15_V,
      output_16_V => output_16_V,
      output_17_V => output_17_V,
      output_18_V => output_18_V,
      output_19_V => output_19_V,
      output_20_V => output_20_V,
      output_21_V => output_21_V,
      output_22_V => output_22_V,
      output_23_V => output_23_V,
      output_24_V => output_24_V,
      output_25_V => output_25_V,
      output_26_V => output_26_V,
      output_27_V => output_27_V,
      output_28_V => output_28_V,
      output_29_V => output_29_V,
      output_30_V => output_30_V,
      output_31_V => output_31_V,
      output_32_V => output_32_V,
      output_33_V => output_33_V,
      output_34_V => output_34_V,
      output_35_V => output_35_V
    );
END mp7wrapped_pfalgo3_full_0_arch;
