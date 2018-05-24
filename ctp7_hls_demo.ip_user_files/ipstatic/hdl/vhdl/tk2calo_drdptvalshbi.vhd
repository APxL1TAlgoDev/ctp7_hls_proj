-- ==============================================================
-- File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2016.4
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ==============================================================

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity tk2calo_drdptvalshbi_rom is 
    generic(
             dwidth     : integer := 17; 
             awidth     : integer := 9; 
             mem_size    : integer := 512
    ); 
    port (
          addr0      : in std_logic_vector(awidth-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(dwidth-1 downto 0);
          addr1      : in std_logic_vector(awidth-1 downto 0); 
          ce1       : in std_logic; 
          q1         : out std_logic_vector(dwidth-1 downto 0);
          addr2      : in std_logic_vector(awidth-1 downto 0); 
          ce2       : in std_logic; 
          q2         : out std_logic_vector(dwidth-1 downto 0);
          addr3      : in std_logic_vector(awidth-1 downto 0); 
          ce3       : in std_logic; 
          q3         : out std_logic_vector(dwidth-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of tk2calo_drdptvalshbi_rom is 

signal addr0_tmp : std_logic_vector(awidth-1 downto 0); 
signal addr1_tmp : std_logic_vector(awidth-1 downto 0); 
signal addr2_tmp : std_logic_vector(awidth-1 downto 0); 
signal addr3_tmp : std_logic_vector(awidth-1 downto 0); 
type mem_array is array (0 to mem_size-1) of std_logic_vector (dwidth-1 downto 0); 
signal mem0 : mem_array := (
    0 to 1=> "11111111111111111", 2 => "01011110100000000", 
    3 => "00101010000000000", 4 => "00010111101000000", 
    5 => "00001111000111101", 6 => "00001010100000000", 
    7 => "00000111101101101", 8 => "00000101111010000", 
    9 => "00000100101010101", 10 => "00000011110001111", 
    11 => "00000011000111111", 12 => "00000010101000000", 
    13 => "00000010001111001", 14 => "00000001111011011", 
    15 => "00000001101011100", 16 => "00000001011110100", 
    17 => "00000001010011101", 18 => "00000001001010101", 
    19 => "00000001000011000", 20 => "00000000111100011", 
    21 => "00000000110110110", 22 => "00000000110001111", 
    23 => "00000000101101101", 24 => "00000000101010000", 
    25 => "00000000100110101", 26 => "00000000100011110", 
    27 => "00000000100001001", 28 => "00000000011110110", 
    29 => "00000000011100110", 30 => "00000000011010111", 
    31 => "00000000011001001", 32 => "00000000010111101", 
    33 => "00000000010110001", 34 => "00000000010100111", 
    35 => "00000000010011101", 36 => "00000000010010101", 
    37 => "00000000010001101", 38 => "00000000010000110", 
    39 => "00000000001111111", 40 => "00000000001111000", 
    41 => "00000000001110011", 42 => "00000000001101101", 
    43 => "00000000001101000", 44 => "00000000001100011", 
    45 => "00000000001011111", 46 => "00000000001011011", 
    47 => "00000000001010111", 48 => "00000000001010100", 
    49 => "00000000001010000", 50 => "00000000001001101", 
    51 => "00000000001001010", 52 => "00000000001000111", 
    53 => "00000000001000100", 54 => "00000000001000010", 
    55 => "00000000000111111", 56 => "00000000000111101", 
    57 => "00000000000111011", 58 => "00000000000111001", 
    59 => "00000000000110111", 60 => "00000000000110101", 
    61 => "00000000000110100", 62 => "00000000000110010", 
    63 => "00000000000110000", 64 => "00000000000101111", 
    65 => "00000000000101101", 66 => "00000000000101100", 
    67 => "00000000000101011", 68 => "00000000000101001", 
    69 => "00000000000101000", 70 => "00000000000100111", 
    71 => "00000000000100110", 72 => "00000000000100101", 
    73 => "00000000000100100", 74 => "00000000000100011", 
    75 => "00000000000100010", 76 => "00000000000100001", 
    77 => "00000000000100000", 78 to 79=> "00000000000011111", 
    80 => "00000000000011110", 81 => "00000000000011101", 
    82 to 83=> "00000000000011100", 84 => "00000000000011011", 
    85 to 86=> "00000000000011010", 87 => "00000000000011001", 
    88 to 89=> "00000000000011000", 90 to 91=> "00000000000010111", 
    92 to 93=> "00000000000010110", 94 to 96=> "00000000000010101", 
    97 to 98=> "00000000000010100", 99 to 100=> "00000000000010011", 
    101 to 103=> "00000000000010010", 104 to 106=> "00000000000010001", 
    107 to 109=> "00000000000010000", 110 to 113=> "00000000000001111", 
    114 to 117=> "00000000000001110", 118 to 122=> "00000000000001101", 
    123 to 126=> "00000000000001100", 127 to 132=> "00000000000001011", 
    133 to 139=> "00000000000001010", 140 to 146=> "00000000000001001", 
    147 to 155=> "00000000000001000", 156 to 166=> "00000000000000111", 
    167 to 179=> "00000000000000110", 180 to 196=> "00000000000000101", 
    197 to 219=> "00000000000000100", 220 to 253=> "00000000000000011", 
    254 to 311=> "00000000000000010", 312 to 439=> "00000000000000001", 
    440 to 511=> "00000000000000000" );
signal mem1 : mem_array := (
    0 to 1=> "11111111111111111", 2 => "01011110100000000", 
    3 => "00101010000000000", 4 => "00010111101000000", 
    5 => "00001111000111101", 6 => "00001010100000000", 
    7 => "00000111101101101", 8 => "00000101111010000", 
    9 => "00000100101010101", 10 => "00000011110001111", 
    11 => "00000011000111111", 12 => "00000010101000000", 
    13 => "00000010001111001", 14 => "00000001111011011", 
    15 => "00000001101011100", 16 => "00000001011110100", 
    17 => "00000001010011101", 18 => "00000001001010101", 
    19 => "00000001000011000", 20 => "00000000111100011", 
    21 => "00000000110110110", 22 => "00000000110001111", 
    23 => "00000000101101101", 24 => "00000000101010000", 
    25 => "00000000100110101", 26 => "00000000100011110", 
    27 => "00000000100001001", 28 => "00000000011110110", 
    29 => "00000000011100110", 30 => "00000000011010111", 
    31 => "00000000011001001", 32 => "00000000010111101", 
    33 => "00000000010110001", 34 => "00000000010100111", 
    35 => "00000000010011101", 36 => "00000000010010101", 
    37 => "00000000010001101", 38 => "00000000010000110", 
    39 => "00000000001111111", 40 => "00000000001111000", 
    41 => "00000000001110011", 42 => "00000000001101101", 
    43 => "00000000001101000", 44 => "00000000001100011", 
    45 => "00000000001011111", 46 => "00000000001011011", 
    47 => "00000000001010111", 48 => "00000000001010100", 
    49 => "00000000001010000", 50 => "00000000001001101", 
    51 => "00000000001001010", 52 => "00000000001000111", 
    53 => "00000000001000100", 54 => "00000000001000010", 
    55 => "00000000000111111", 56 => "00000000000111101", 
    57 => "00000000000111011", 58 => "00000000000111001", 
    59 => "00000000000110111", 60 => "00000000000110101", 
    61 => "00000000000110100", 62 => "00000000000110010", 
    63 => "00000000000110000", 64 => "00000000000101111", 
    65 => "00000000000101101", 66 => "00000000000101100", 
    67 => "00000000000101011", 68 => "00000000000101001", 
    69 => "00000000000101000", 70 => "00000000000100111", 
    71 => "00000000000100110", 72 => "00000000000100101", 
    73 => "00000000000100100", 74 => "00000000000100011", 
    75 => "00000000000100010", 76 => "00000000000100001", 
    77 => "00000000000100000", 78 to 79=> "00000000000011111", 
    80 => "00000000000011110", 81 => "00000000000011101", 
    82 to 83=> "00000000000011100", 84 => "00000000000011011", 
    85 to 86=> "00000000000011010", 87 => "00000000000011001", 
    88 to 89=> "00000000000011000", 90 to 91=> "00000000000010111", 
    92 to 93=> "00000000000010110", 94 to 96=> "00000000000010101", 
    97 to 98=> "00000000000010100", 99 to 100=> "00000000000010011", 
    101 to 103=> "00000000000010010", 104 to 106=> "00000000000010001", 
    107 to 109=> "00000000000010000", 110 to 113=> "00000000000001111", 
    114 to 117=> "00000000000001110", 118 to 122=> "00000000000001101", 
    123 to 126=> "00000000000001100", 127 to 132=> "00000000000001011", 
    133 to 139=> "00000000000001010", 140 to 146=> "00000000000001001", 
    147 to 155=> "00000000000001000", 156 to 166=> "00000000000000111", 
    167 to 179=> "00000000000000110", 180 to 196=> "00000000000000101", 
    197 to 219=> "00000000000000100", 220 to 253=> "00000000000000011", 
    254 to 311=> "00000000000000010", 312 to 439=> "00000000000000001", 
    440 to 511=> "00000000000000000" );

attribute syn_rom_style : string;
attribute syn_rom_style of mem0 : signal is "block_rom";
attribute syn_rom_style of mem1 : signal is "block_rom";
attribute ROM_STYLE : string;
attribute ROM_STYLE of mem0 : signal is "block";
attribute ROM_STYLE of mem1 : signal is "block";

attribute EQUIVALENT_REGISTER_REMOVAL : string;
begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

memory_access_guard_1: process (addr1) 
begin
      addr1_tmp <= addr1;
--synthesis translate_off
      if (CONV_INTEGER(addr1) > mem_size-1) then
           addr1_tmp <= (others => '0');
      else 
           addr1_tmp <= addr1;
      end if;
--synthesis translate_on
end process;

memory_access_guard_2: process (addr2) 
begin
      addr2_tmp <= addr2;
--synthesis translate_off
      if (CONV_INTEGER(addr2) > mem_size-1) then
           addr2_tmp <= (others => '0');
      else 
           addr2_tmp <= addr2;
      end if;
--synthesis translate_on
end process;

memory_access_guard_3: process (addr3) 
begin
      addr3_tmp <= addr3;
--synthesis translate_off
      if (CONV_INTEGER(addr3) > mem_size-1) then
           addr3_tmp <= (others => '0');
      else 
           addr3_tmp <= addr3;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem0(CONV_INTEGER(addr0_tmp)); 
        end if;
        if (ce1 = '1') then 
            q1 <= mem0(CONV_INTEGER(addr1_tmp)); 
        end if;
        if (ce2 = '1') then 
            q2 <= mem1(CONV_INTEGER(addr2_tmp)); 
        end if;
        if (ce3 = '1') then 
            q3 <= mem1(CONV_INTEGER(addr3_tmp)); 
        end if;
    end if;
end process;

end rtl;


Library IEEE;
use IEEE.std_logic_1164.all;

entity tk2calo_drdptvalshbi is
    generic (
        DataWidth : INTEGER := 17;
        AddressRange : INTEGER := 512;
        AddressWidth : INTEGER := 9);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address1 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce1 : IN STD_LOGIC;
        q1 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address2 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce2 : IN STD_LOGIC;
        q2 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address3 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce3 : IN STD_LOGIC;
        q3 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of tk2calo_drdptvalshbi is
    component tk2calo_drdptvalshbi_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR;
            addr1 : IN STD_LOGIC_VECTOR;
            ce1 : IN STD_LOGIC;
            q1 : OUT STD_LOGIC_VECTOR;
            addr2 : IN STD_LOGIC_VECTOR;
            ce2 : IN STD_LOGIC;
            q2 : OUT STD_LOGIC_VECTOR;
            addr3 : IN STD_LOGIC_VECTOR;
            ce3 : IN STD_LOGIC;
            q3 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    tk2calo_drdptvalshbi_rom_U :  component tk2calo_drdptvalshbi_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0,
        addr1 => address1,
        ce1 => ce1,
        q1 => q1,
        addr2 => address2,
        ce2 => ce2,
        q2 => q2,
        addr3 => address3,
        ce3 => ce3,
        q3 => q3);

end architecture;


