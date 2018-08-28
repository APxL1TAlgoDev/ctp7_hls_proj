
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

use work.ctp7_utils_pkg.all;


library UNISIM;
use UNISIM.VCOMPONENTS.all;

entity ctp7_top is
  generic (
    C_DATE_CODE      : std_logic_vector (31 downto 0) := x"00000000";
    C_GITHASH_CODE   : std_logic_vector (31 downto 0) := x"00000000";
    C_GIT_REPO_DIRTY : std_logic                      := '0'
    );
  Port (
  
      clk_200_diff_in_clk_p : in std_logic;
      clk_200_diff_in_clk_n : in std_logic;
    
      LEDs : out std_logic_vector (1 downto 0);
    
      LED_GREEN_o : out std_logic;
      LED_RED_o   : out std_logic;
      LED_BLUE_o  : out std_logic;
    
      axi_c2c_v7_to_zynq_data        : out std_logic_vector (16 downto 0);
      axi_c2c_v7_to_zynq_clk         : out std_logic;
      axi_c2c_zynq_to_v7_clk         : in  std_logic;
      axi_c2c_zynq_to_v7_data        : in  std_logic_vector (16 downto 0);
      axi_c2c_v7_to_zynq_link_status : out std_logic;
      axi_c2c_zynq_to_v7_reset       : in  std_logic
   );
end ctp7_top;

architecture ctp7_top_arch of ctp7_top is

  component v7_bd is
  port (

    clk_200_diff_in_clk_n : in STD_LOGIC;
    clk_200_diff_in_clk_p : in STD_LOGIC;
    
    axi_c2c_zynq_to_v7_clk : in STD_LOGIC;
    axi_c2c_zynq_to_v7_data : in STD_LOGIC_VECTOR ( 16 downto 0 );
    axi_c2c_v7_to_zynq_link_status : out STD_LOGIC;
    axi_c2c_v7_to_zynq_clk : out STD_LOGIC;
    axi_c2c_v7_to_zynq_data : out STD_LOGIC_VECTOR ( 16 downto 0 );
    axi_c2c_zynq_to_v7_reset : in STD_LOGIC;

    BRAM_CTRL_REG_FILE_addr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    BRAM_CTRL_REG_FILE_clk : out STD_LOGIC;
    BRAM_CTRL_REG_FILE_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_CTRL_REG_FILE_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_CTRL_REG_FILE_en : out STD_LOGIC;
    BRAM_CTRL_REG_FILE_rst : out STD_LOGIC;
    BRAM_CTRL_REG_FILE_we : out STD_LOGIC_VECTOR ( 3 downto 0 );

    BRAM_CTRL_INPUT_RAM_0_addr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    BRAM_CTRL_INPUT_RAM_0_clk : out STD_LOGIC;
    BRAM_CTRL_INPUT_RAM_0_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_CTRL_INPUT_RAM_0_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_CTRL_INPUT_RAM_0_en : out STD_LOGIC;
    BRAM_CTRL_INPUT_RAM_0_rst : out STD_LOGIC;
    BRAM_CTRL_INPUT_RAM_0_we : out STD_LOGIC_VECTOR ( 3 downto 0 );

    BRAM_CTRL_INPUT_RAM_1_addr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    BRAM_CTRL_INPUT_RAM_1_clk : out STD_LOGIC;
    BRAM_CTRL_INPUT_RAM_1_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_CTRL_INPUT_RAM_1_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_CTRL_INPUT_RAM_1_en : out STD_LOGIC;
    BRAM_CTRL_INPUT_RAM_1_rst : out STD_LOGIC;
    BRAM_CTRL_INPUT_RAM_1_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    
    BRAM_CTRL_INPUT_RAM_2_addr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    BRAM_CTRL_INPUT_RAM_2_clk : out STD_LOGIC;
    BRAM_CTRL_INPUT_RAM_2_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_CTRL_INPUT_RAM_2_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_CTRL_INPUT_RAM_2_en : out STD_LOGIC;
    BRAM_CTRL_INPUT_RAM_2_rst : out STD_LOGIC;
    BRAM_CTRL_INPUT_RAM_2_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    
    BRAM_CTRL_OUTPUT_RAM_0_addr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    BRAM_CTRL_OUTPUT_RAM_0_clk : out STD_LOGIC;
    BRAM_CTRL_OUTPUT_RAM_0_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_CTRL_OUTPUT_RAM_0_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_CTRL_OUTPUT_RAM_0_en : out STD_LOGIC;
    BRAM_CTRL_OUTPUT_RAM_0_rst : out STD_LOGIC;
    BRAM_CTRL_OUTPUT_RAM_0_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    
    BRAM_CTRL_OUTPUT_RAM_1_addr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    BRAM_CTRL_OUTPUT_RAM_1_clk : out STD_LOGIC;
    BRAM_CTRL_OUTPUT_RAM_1_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_CTRL_OUTPUT_RAM_1_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_CTRL_OUTPUT_RAM_1_en : out STD_LOGIC;
    BRAM_CTRL_OUTPUT_RAM_1_rst : out STD_LOGIC;
    BRAM_CTRL_OUTPUT_RAM_1_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    
    clk_50mhz : out STD_LOGIC;
    clk_240mhz : out STD_LOGIC    
    
  );
  end component v7_bd;
  
COMPONENT ila_hls
       
       PORT (
           clk : IN STD_LOGIC;
       
       
       
           probe0 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
           probe1 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
           probe2 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
           probe3 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
           probe4 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
           probe5 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
           probe6 : IN STD_LOGIC_VECTOR(191 DOWNTO 0);
           probe7 : IN STD_LOGIC_VECTOR(191 DOWNTO 0)
       );
       END COMPONENT  ;
  

  signal s_clk_50  : std_logic;
  signal s_clk_240        : std_logic;

  signal BRAM_CTRL_REG_FILE_en   : std_logic;
  signal BRAM_CTRL_REG_FILE_dout : std_logic_vector (31 downto 0);
  signal BRAM_CTRL_REG_FILE_din  : std_logic_vector (31 downto 0);
  signal BRAM_CTRL_REG_FILE_we   : std_logic_vector (3 downto 0);
  signal BRAM_CTRL_REG_FILE_addr : std_logic_vector (16 downto 0);
  signal BRAM_CTRL_REG_FILE_clk  : std_logic;
  signal BRAM_CTRL_REG_FILE_rst  : std_logic;

  signal BRAM_CTRL_INPUT_RAM_0_addr : std_logic_vector (16 downto 0);
  signal BRAM_CTRL_INPUT_RAM_0_clk  : std_logic;
  signal BRAM_CTRL_INPUT_RAM_0_din  : std_logic_vector (31 downto 0);
  signal BRAM_CTRL_INPUT_RAM_0_dout : std_logic_vector (31 downto 0);
  signal BRAM_CTRL_INPUT_RAM_0_en   : std_logic;
  signal BRAM_CTRL_INPUT_RAM_0_rst  : std_logic;
  signal BRAM_CTRL_INPUT_RAM_0_we   : std_logic_vector (3 downto 0);

  signal BRAM_CTRL_INPUT_RAM_1_addr : std_logic_vector (16 downto 0);
  signal BRAM_CTRL_INPUT_RAM_1_clk  : std_logic;
  signal BRAM_CTRL_INPUT_RAM_1_din  : std_logic_vector (31 downto 0);
  signal BRAM_CTRL_INPUT_RAM_1_dout : std_logic_vector (31 downto 0);
  signal BRAM_CTRL_INPUT_RAM_1_en   : std_logic;
  signal BRAM_CTRL_INPUT_RAM_1_rst  : std_logic;
  signal BRAM_CTRL_INPUT_RAM_1_we   : std_logic_vector (3 downto 0);
  
  signal BRAM_CTRL_INPUT_RAM_2_addr : std_logic_vector (16 downto 0);
  signal BRAM_CTRL_INPUT_RAM_2_clk  : std_logic;
  signal BRAM_CTRL_INPUT_RAM_2_din  : std_logic_vector (31 downto 0);
  signal BRAM_CTRL_INPUT_RAM_2_dout : std_logic_vector (31 downto 0);
  signal BRAM_CTRL_INPUT_RAM_2_en   : std_logic;
  signal BRAM_CTRL_INPUT_RAM_2_rst  : std_logic;
  signal BRAM_CTRL_INPUT_RAM_2_we   : std_logic_vector (3 downto 0);

  signal BRAM_CTRL_OUTPUT_RAM_0_addr : std_logic_vector (16 downto 0); 
  signal BRAM_CTRL_OUTPUT_RAM_0_clk  : std_logic;
  signal BRAM_CTRL_OUTPUT_RAM_0_din  : std_logic_vector (31 downto 0);
  signal BRAM_CTRL_OUTPUT_RAM_0_dout : std_logic_vector (31 downto 0);
  signal BRAM_CTRL_OUTPUT_RAM_0_en   : std_logic;
  signal BRAM_CTRL_OUTPUT_RAM_0_rst  : std_logic;
  signal BRAM_CTRL_OUTPUT_RAM_0_we   : std_logic_vector (3 downto 0);

  signal BRAM_CTRL_OUTPUT_RAM_1_addr : std_logic_vector (16 downto 0);
  signal BRAM_CTRL_OUTPUT_RAM_1_clk  : std_logic;
  signal BRAM_CTRL_OUTPUT_RAM_1_din  : std_logic_vector (31 downto 0);
  signal BRAM_CTRL_OUTPUT_RAM_1_dout : std_logic_vector (31 downto 0);
  signal BRAM_CTRL_OUTPUT_RAM_1_en   : std_logic;
  signal BRAM_CTRL_OUTPUT_RAM_1_rst  : std_logic;
  signal BRAM_CTRL_OUTPUT_RAM_1_we   : std_logic_vector (3 downto 0);

  signal s_LED_FP : std_logic_vector(31 downto 0);
  
  signal s_pattern_start_request: std_logic;
  signal s_algo_latency :  std_logic_vector ( 15 downto 0 );
  
  signal s_pattern_start, s_pattern_start_s1, s_pattern_start_s2:  std_logic;
  
  signal s_INPUT_RAM_start:  std_logic;
  signal s_OUTPUT_RAM_start:  std_logic;
  
  signal s_INPUT_link_arr :  t_slv_arr_192(66 downto 0) := (others => (others => '0'));
  signal s_OUTPUT_link_arr:   t_slv_arr_192(47 downto 0) := (others => (others => '0'));
  signal s_cfg_reg : t_slv_arr_32(31 downto 0);

-----------------------------------------------------------------------------
-- Begin User_Code
-----------------------------------------------------------------------------
 COMPONENT mp7wrapped_pfalgo3_full_0
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
  END COMPONENT;  

-- HLS Algo Control/Handshake Interface
      signal ap_clk :  STD_LOGIC;
      signal ap_rst :  STD_LOGIC;
      signal ap_start :  STD_LOGIC;
      signal ap_done :  STD_LOGIC;
      signal ap_idle :  STD_LOGIC;
      signal ap_ready :  STD_LOGIC;
      
      signal wire_input_0_V : STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_input_1_V : STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_input_2_V : STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_input_3_V : STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_input_4_V : STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_input_5_V : STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_input_6_V : STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_input_7_V : STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_input_8_V : STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_input_9_V : STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_input_10_V : STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_input_11_V : STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_input_12_V : STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_input_13_V : STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_input_14_V : STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_input_15_V : STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_input_16_V : STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_input_17_V : STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_input_18_V : STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_input_19_V : STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_input_20_V : STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_input_21_V : STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_input_22_V : STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_input_23_V : STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_input_24_V : STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_input_25_V : STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_input_26_V : STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_input_27_V : STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_input_28_V : STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_input_29_V : STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_input_30_V : STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_input_31_V : STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_input_32_V : STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_input_33_V : STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_input_34_V : STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_input_35_V : STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_input_36_V : STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_input_37_V : STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_output_0_V : STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_output_1_V : STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_output_2_V : STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_output_3_V : STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_output_4_V : STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_output_5_V : STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_output_6_V : STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_output_7_V : STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_output_8_V : STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_output_9_V : STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_output_10_V :  STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_output_11_V :  STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_output_12_V :  STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_output_13_V :  STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_output_14_V :  STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_output_15_V :  STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_output_16_V :  STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_output_17_V :  STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_output_18_V :  STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_output_19_V :  STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_output_20_V :  STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_output_21_V :  STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_output_22_V :  STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_output_23_V :  STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_output_24_V :  STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_output_25_V :  STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_output_26_V :  STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_output_27_V :  STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_output_28_V :  STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_output_29_V :  STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_output_30_V :  STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_output_31_V :  STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_output_32_V :  STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_output_33_V :  STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_output_34_V :  STD_LOGIC_VECTOR(31 DOWNTO 0);
      signal wire_output_35_V :  STD_LOGIC_VECTOR(31 DOWNTO 0);

-----------------------------------------------------------------------------
-- End User_Code
-----------------------------------------------------------------------------
           
begin

    LED_GREEN_o <= s_LED_FP(0);
    LED_RED_o   <= s_LED_FP(1);
    LED_BLUE_o  <= s_LED_FP(2);

  i_v7_bd : v7_bd
    port map (
    
        axi_c2c_v7_to_zynq_clk               => axi_c2c_v7_to_zynq_clk,
        axi_c2c_v7_to_zynq_data(16 downto 0) => axi_c2c_v7_to_zynq_data(16 downto 0),
        axi_c2c_v7_to_zynq_link_status       => axi_c2c_v7_to_zynq_link_status,
        axi_c2c_zynq_to_v7_clk               => axi_c2c_zynq_to_v7_clk,
        axi_c2c_zynq_to_v7_data(16 downto 0) => axi_c2c_zynq_to_v7_data(16 downto 0),
        axi_c2c_zynq_to_v7_reset             => axi_c2c_zynq_to_v7_reset,
    
        clk_200_diff_in_clk_n => clk_200_diff_in_clk_n,
        clk_200_diff_in_clk_p => clk_200_diff_in_clk_p,
        
        BRAM_CTRL_REG_FILE_addr => BRAM_CTRL_REG_FILE_addr,
        BRAM_CTRL_REG_FILE_clk  => BRAM_CTRL_REG_FILE_clk,
        BRAM_CTRL_REG_FILE_din  => BRAM_CTRL_REG_FILE_din,
        BRAM_CTRL_REG_FILE_dout => BRAM_CTRL_REG_FILE_dout,
        BRAM_CTRL_REG_FILE_en   => BRAM_CTRL_REG_FILE_en,
        BRAM_CTRL_REG_FILE_rst  => BRAM_CTRL_REG_FILE_rst,
        BRAM_CTRL_REG_FILE_we   => BRAM_CTRL_REG_FILE_we,

        BRAM_CTRL_INPUT_RAM_0_addr => BRAM_CTRL_INPUT_RAM_0_addr,
        BRAM_CTRL_INPUT_RAM_0_clk  => BRAM_CTRL_INPUT_RAM_0_clk,
        BRAM_CTRL_INPUT_RAM_0_din  => BRAM_CTRL_INPUT_RAM_0_din,
        BRAM_CTRL_INPUT_RAM_0_dout => BRAM_CTRL_INPUT_RAM_0_dout,
        BRAM_CTRL_INPUT_RAM_0_en   => BRAM_CTRL_INPUT_RAM_0_en,
        BRAM_CTRL_INPUT_RAM_0_rst  => BRAM_CTRL_INPUT_RAM_0_rst,
        BRAM_CTRL_INPUT_RAM_0_we   => BRAM_CTRL_INPUT_RAM_0_we,

        BRAM_CTRL_INPUT_RAM_1_addr => BRAM_CTRL_INPUT_RAM_1_addr,
        BRAM_CTRL_INPUT_RAM_1_clk  => BRAM_CTRL_INPUT_RAM_1_clk,
        BRAM_CTRL_INPUT_RAM_1_din  => BRAM_CTRL_INPUT_RAM_1_din,
        BRAM_CTRL_INPUT_RAM_1_dout => BRAM_CTRL_INPUT_RAM_1_dout,
        BRAM_CTRL_INPUT_RAM_1_en   => BRAM_CTRL_INPUT_RAM_1_en,
        BRAM_CTRL_INPUT_RAM_1_rst  => BRAM_CTRL_INPUT_RAM_1_rst,
        BRAM_CTRL_INPUT_RAM_1_we   => BRAM_CTRL_INPUT_RAM_1_we,
        
        BRAM_CTRL_INPUT_RAM_2_addr => BRAM_CTRL_INPUT_RAM_2_addr,
        BRAM_CTRL_INPUT_RAM_2_clk  => BRAM_CTRL_INPUT_RAM_2_clk,
        BRAM_CTRL_INPUT_RAM_2_din  => BRAM_CTRL_INPUT_RAM_2_din,
        BRAM_CTRL_INPUT_RAM_2_dout => BRAM_CTRL_INPUT_RAM_2_dout,
        BRAM_CTRL_INPUT_RAM_2_en   => BRAM_CTRL_INPUT_RAM_2_en,
        BRAM_CTRL_INPUT_RAM_2_rst  => BRAM_CTRL_INPUT_RAM_2_rst,
        BRAM_CTRL_INPUT_RAM_2_we   => BRAM_CTRL_INPUT_RAM_2_we,
        
        BRAM_CTRL_OUTPUT_RAM_0_addr => BRAM_CTRL_OUTPUT_RAM_0_addr,
        BRAM_CTRL_OUTPUT_RAM_0_clk  => BRAM_CTRL_OUTPUT_RAM_0_clk,
        BRAM_CTRL_OUTPUT_RAM_0_din  => BRAM_CTRL_OUTPUT_RAM_0_din,
        BRAM_CTRL_OUTPUT_RAM_0_dout => BRAM_CTRL_OUTPUT_RAM_0_dout,
        BRAM_CTRL_OUTPUT_RAM_0_en   => BRAM_CTRL_OUTPUT_RAM_0_en,
        BRAM_CTRL_OUTPUT_RAM_0_rst  => BRAM_CTRL_OUTPUT_RAM_0_rst,
        BRAM_CTRL_OUTPUT_RAM_0_we   => BRAM_CTRL_OUTPUT_RAM_0_we,
 
        BRAM_CTRL_OUTPUT_RAM_1_addr => BRAM_CTRL_OUTPUT_RAM_1_addr,
        BRAM_CTRL_OUTPUT_RAM_1_clk  => BRAM_CTRL_OUTPUT_RAM_1_clk,
        BRAM_CTRL_OUTPUT_RAM_1_din  => BRAM_CTRL_OUTPUT_RAM_1_din,
        BRAM_CTRL_OUTPUT_RAM_1_dout => BRAM_CTRL_OUTPUT_RAM_1_dout,
        BRAM_CTRL_OUTPUT_RAM_1_en   => BRAM_CTRL_OUTPUT_RAM_1_en,
        BRAM_CTRL_OUTPUT_RAM_1_rst  => BRAM_CTRL_OUTPUT_RAM_1_rst,
        BRAM_CTRL_OUTPUT_RAM_1_we   => BRAM_CTRL_OUTPUT_RAM_1_we,        
        
        clk_50mhz  => s_clk_50,
        clk_240mhz => s_clk_240
      );
      
  i_register_file : entity work.register_file
        generic map(
          C_DATE_CODE      => C_DATE_CODE,
          C_GITHASH_CODE   => C_GITHASH_CODE,
          C_GIT_REPO_DIRTY => C_GIT_REPO_DIRTY
          )
        port map (
    
          LED_FP_o => s_led_FP,
   
          BRAM_CTRL_REG_FILE_addr => BRAM_CTRL_REG_FILE_addr,
          BRAM_CTRL_REG_FILE_clk  => BRAM_CTRL_REG_FILE_clk,
          BRAM_CTRL_REG_FILE_din  => BRAM_CTRL_REG_FILE_din,
          BRAM_CTRL_REG_FILE_dout => BRAM_CTRL_REG_FILE_dout,
          BRAM_CTRL_REG_FILE_en   => BRAM_CTRL_REG_FILE_en,
          BRAM_CTRL_REG_FILE_rst  => BRAM_CTRL_REG_FILE_rst,
          BRAM_CTRL_REG_FILE_we   => BRAM_CTRL_REG_FILE_we,
          
          pattern_start_o => s_pattern_start,
          cfg_reg_o  => s_cfg_reg

          );   
          
s_pattern_start_s1 <= s_pattern_start when rising_edge(s_clk_240);
s_pattern_start_s2 <= s_pattern_start_s1 when rising_edge(s_clk_240);

          
i_pattern_io_engine : entity work.pattern_io_engine 
    Port map( 
    
        clk_240_i => s_clk_240,
        
        pattern_restart_i  => s_pattern_start_s2,
        
        algo_rst_o  => ap_rst,
        algo_start_o  => ap_start,
        algo_done_i  => ap_done,
        
        INPUT_link_arr_o  => s_INPUT_link_arr,
        OUTPUT_link_arr_i => s_OUTPUT_link_arr,
        
        BRAM_CTRL_INPUT_RAM_0_addr => BRAM_CTRL_INPUT_RAM_0_addr,
        BRAM_CTRL_INPUT_RAM_0_clk  => BRAM_CTRL_INPUT_RAM_0_clk,
        BRAM_CTRL_INPUT_RAM_0_din  => BRAM_CTRL_INPUT_RAM_0_din,
        BRAM_CTRL_INPUT_RAM_0_dout => BRAM_CTRL_INPUT_RAM_0_dout,
        BRAM_CTRL_INPUT_RAM_0_en   => BRAM_CTRL_INPUT_RAM_0_en,
        BRAM_CTRL_INPUT_RAM_0_rst  => BRAM_CTRL_INPUT_RAM_0_rst,
        BRAM_CTRL_INPUT_RAM_0_we   => BRAM_CTRL_INPUT_RAM_0_we,

        BRAM_CTRL_INPUT_RAM_1_addr => BRAM_CTRL_INPUT_RAM_1_addr,
        BRAM_CTRL_INPUT_RAM_1_clk  => BRAM_CTRL_INPUT_RAM_1_clk,
        BRAM_CTRL_INPUT_RAM_1_din  => BRAM_CTRL_INPUT_RAM_1_din,
        BRAM_CTRL_INPUT_RAM_1_dout => BRAM_CTRL_INPUT_RAM_1_dout,
        BRAM_CTRL_INPUT_RAM_1_en   => BRAM_CTRL_INPUT_RAM_1_en,
        BRAM_CTRL_INPUT_RAM_1_rst  => BRAM_CTRL_INPUT_RAM_1_rst,
        BRAM_CTRL_INPUT_RAM_1_we   => BRAM_CTRL_INPUT_RAM_1_we,
        
        BRAM_CTRL_INPUT_RAM_2_addr => BRAM_CTRL_INPUT_RAM_2_addr,
        BRAM_CTRL_INPUT_RAM_2_clk  => BRAM_CTRL_INPUT_RAM_2_clk,
        BRAM_CTRL_INPUT_RAM_2_din  => BRAM_CTRL_INPUT_RAM_2_din,
        BRAM_CTRL_INPUT_RAM_2_dout => BRAM_CTRL_INPUT_RAM_2_dout,
        BRAM_CTRL_INPUT_RAM_2_en   => BRAM_CTRL_INPUT_RAM_2_en,
        BRAM_CTRL_INPUT_RAM_2_rst  => BRAM_CTRL_INPUT_RAM_2_rst,
        BRAM_CTRL_INPUT_RAM_2_we   => BRAM_CTRL_INPUT_RAM_2_we,
        
        BRAM_CTRL_OUTPUT_RAM_0_addr => BRAM_CTRL_OUTPUT_RAM_0_addr,
        BRAM_CTRL_OUTPUT_RAM_0_clk  => BRAM_CTRL_OUTPUT_RAM_0_clk,
        BRAM_CTRL_OUTPUT_RAM_0_din  => BRAM_CTRL_OUTPUT_RAM_0_din,
        BRAM_CTRL_OUTPUT_RAM_0_dout => BRAM_CTRL_OUTPUT_RAM_0_dout,
        BRAM_CTRL_OUTPUT_RAM_0_en   => BRAM_CTRL_OUTPUT_RAM_0_en,
        BRAM_CTRL_OUTPUT_RAM_0_rst  => BRAM_CTRL_OUTPUT_RAM_0_rst,
        BRAM_CTRL_OUTPUT_RAM_0_we   => BRAM_CTRL_OUTPUT_RAM_0_we,
 
        BRAM_CTRL_OUTPUT_RAM_1_addr => BRAM_CTRL_OUTPUT_RAM_1_addr,
        BRAM_CTRL_OUTPUT_RAM_1_clk  => BRAM_CTRL_OUTPUT_RAM_1_clk,
        BRAM_CTRL_OUTPUT_RAM_1_din  => BRAM_CTRL_OUTPUT_RAM_1_din,
        BRAM_CTRL_OUTPUT_RAM_1_dout => BRAM_CTRL_OUTPUT_RAM_1_dout,
        BRAM_CTRL_OUTPUT_RAM_1_en   => BRAM_CTRL_OUTPUT_RAM_1_en,
        BRAM_CTRL_OUTPUT_RAM_1_rst  => BRAM_CTRL_OUTPUT_RAM_1_rst,
        BRAM_CTRL_OUTPUT_RAM_1_we   => BRAM_CTRL_OUTPUT_RAM_1_we
     );          
     
     ap_clk <= s_clk_240; 
     
     i_ila_hls : ila_hls
     PORT MAP (
         clk => s_clk_240,     
         probe0(0) => ap_rst, 
         probe1(0) => ap_rst, 
         probe2(0) => ap_start, 
         probe3(0) => ap_done, 
         probe4(0) => ap_idle, 
         probe5(0) => ap_ready, 
         probe6 => s_INPUT_link_arr(0),
         probe7 => s_OUTPUT_link_arr(0)
     );
     
-----------------------------------------------------------------------------
-- Begin User_Code
-----------------------------------------------------------------------------
     
   i_mp7wrapped_pfalgo3_full_0 : mp7wrapped_pfalgo3_full_0
       PORT MAP (
         ap_clk     => ap_clk,
         ap_rst     => ap_rst,
         ap_start   => ap_start,
         ap_done    => ap_done,
         ap_idle    => ap_idle,
         ap_ready   => ap_ready,
        input_0_V   => wire_input_0_V,
        input_1_V   => wire_input_1_V,
        input_2_V   => wire_input_2_V,
        input_3_V   => wire_input_3_V,
        input_4_V   => wire_input_4_V,
        input_5_V   => wire_input_5_V,
        input_6_V   => wire_input_6_V,
        input_7_V   => wire_input_7_V,
        input_8_V   => wire_input_8_V,
        input_9_V   => wire_input_9_V,
        input_10_V  => wire_input_10_V,
        input_11_V  => wire_input_11_V,
        input_12_V  => wire_input_12_V,
        input_13_V  => wire_input_13_V,
        input_14_V  => wire_input_14_V,
        input_15_V  => wire_input_15_V,
        input_16_V  => wire_input_16_V,
        input_17_V  => wire_input_17_V,
        input_18_V  => wire_input_18_V,
        input_19_V  => wire_input_19_V,
        input_20_V  => wire_input_20_V,
        input_21_V  => wire_input_21_V,
        input_22_V  => wire_input_22_V,
        input_23_V  => wire_input_23_V,
        input_24_V  => wire_input_24_V,
        input_25_V  => wire_input_25_V,
        input_26_V  => wire_input_26_V,
        input_27_V  => wire_input_27_V,
        input_28_V  => wire_input_28_V,
        input_29_V  => wire_input_29_V,
        input_30_V  => wire_input_30_V,
        input_31_V  => wire_input_31_V,
        input_32_V  => wire_input_32_V,
        input_33_V  => wire_input_33_V,
        input_34_V  => wire_input_34_V,
        input_35_V  => wire_input_35_V,
        input_36_V  => wire_input_36_V,
        input_37_V  => wire_input_37_V,
        output_0_V  => wire_output_0_V,
        output_1_V  => wire_output_1_V,
        output_2_V  => wire_output_2_V,
        output_3_V  => wire_output_3_V,
        output_4_V  => wire_output_4_V,
        output_5_V  => wire_output_5_V,
        output_6_V  => wire_output_6_V,
        output_7_V  => wire_output_7_V,
        output_8_V  => wire_output_8_V,
        output_9_V  => wire_output_9_V,
        output_10_V => wire_output_10_V,
        output_11_V => wire_output_11_V,
        output_12_V => wire_output_12_V,
        output_13_V => wire_output_13_V,
        output_14_V => wire_output_14_V,
        output_15_V => wire_output_15_V,
        output_16_V => wire_output_16_V,
        output_17_V => wire_output_17_V,
        output_18_V => wire_output_18_V,
        output_19_V => wire_output_19_V,
        output_20_V => wire_output_20_V,
        output_21_V => wire_output_21_V,
        output_22_V => wire_output_22_V,
        output_23_V => wire_output_23_V,
        output_24_V => wire_output_24_V,
        output_25_V => wire_output_25_V,
        output_26_V => wire_output_26_V,
        output_27_V => wire_output_27_V,
        output_28_V => wire_output_28_V,
        output_29_V => wire_output_29_V,
        output_30_V => wire_output_30_V,
        output_31_V => wire_output_31_V,
        output_32_V => wire_output_32_V,
        output_33_V => wire_output_33_V,
        output_34_V => wire_output_34_V,
        output_35_V => wire_output_35_V
       );

-----------------------------------------------------------------------------

-- Input Links
      wire_input_0_V <= s_INPUT_link_arr( 0 )( 31 downto 0 );
      wire_input_1_V <= s_INPUT_link_arr( 1 )( 31 downto 0 );
      wire_input_2_V <= s_INPUT_link_arr( 2 )( 31 downto 0 );
      wire_input_3_V <= s_INPUT_link_arr( 3 )( 31 downto 0 );
      wire_input_4_V <= s_INPUT_link_arr( 4 )( 31 downto 0 );
      wire_input_5_V <= s_INPUT_link_arr( 5 )( 31 downto 0 );
      wire_input_6_V <= s_INPUT_link_arr( 6 )( 31 downto 0 );
      wire_input_7_V <= s_INPUT_link_arr( 7 )( 31 downto 0 );
      wire_input_8_V <= s_INPUT_link_arr( 8 )( 31 downto 0 );
      wire_input_9_V <= s_INPUT_link_arr( 9 )( 31 downto 0 );
      wire_input_10_V <= s_INPUT_link_arr( 10 )( 31 downto 0 );
      wire_input_11_V <= s_INPUT_link_arr( 11 )( 31 downto 0 );
      wire_input_12_V <= s_INPUT_link_arr( 12 )( 31 downto 0 );
      wire_input_13_V <= s_INPUT_link_arr( 13 )( 31 downto 0 );
      wire_input_14_V <= s_INPUT_link_arr( 14 )( 31 downto 0 );
      wire_input_15_V <= s_INPUT_link_arr( 15 )( 31 downto 0 );
      wire_input_16_V <= s_INPUT_link_arr( 16 )( 31 downto 0 );
      wire_input_17_V <= s_INPUT_link_arr( 17 )( 31 downto 0 );
      wire_input_18_V <= s_INPUT_link_arr( 18 )( 31 downto 0 );
      wire_input_19_V <= s_INPUT_link_arr( 19 )( 31 downto 0 );
      wire_input_20_V <= s_INPUT_link_arr( 20 )( 31 downto 0 );
      wire_input_21_V <= s_INPUT_link_arr( 21 )( 31 downto 0 );
      wire_input_22_V <= s_INPUT_link_arr( 22 )( 31 downto 0 );
      wire_input_23_V <= s_INPUT_link_arr( 23 )( 31 downto 0 );
      wire_input_24_V <= s_INPUT_link_arr( 24 )( 31 downto 0 );
      wire_input_25_V <= s_INPUT_link_arr( 25 )( 31 downto 0 );
      wire_input_26_V <= s_INPUT_link_arr( 26 )( 31 downto 0 );
      wire_input_27_V <= s_INPUT_link_arr( 27 )( 31 downto 0 );
      wire_input_28_V <= s_INPUT_link_arr( 28 )( 31 downto 0 );
      wire_input_29_V <= s_INPUT_link_arr( 29 )( 31 downto 0 );
      wire_input_30_V <= s_INPUT_link_arr( 30 )( 31 downto 0 );
      wire_input_31_V <= s_INPUT_link_arr( 31 )( 31 downto 0 );
      wire_input_32_V <= s_INPUT_link_arr( 32 )( 31 downto 0 );
      wire_input_33_V <= s_INPUT_link_arr( 33 )( 31 downto 0 );
      wire_input_34_V <= s_INPUT_link_arr( 34 )( 31 downto 0 );
      wire_input_35_V <= s_INPUT_link_arr( 35 )( 31 downto 0 );
      wire_input_36_V <= s_INPUT_link_arr( 36 )( 31 downto 0 );
      wire_input_37_V <= s_INPUT_link_arr( 37 )( 31 downto 0 );

-----------------------------------------------------------------------------
 
-- Output Links   

     s_OUTPUT_link_arr( 0 )(31 DOWNTO 0)   <= wire_output_0_V;
     s_OUTPUT_link_arr( 1 )(31 DOWNTO 0)   <= wire_output_1_V;
     s_OUTPUT_link_arr( 2 )(31 DOWNTO 0)   <= wire_output_2_V;
     s_OUTPUT_link_arr( 3 )(31 DOWNTO 0)   <= wire_output_3_V;
     s_OUTPUT_link_arr( 4 )(31 DOWNTO 0)   <= wire_output_4_V;
     s_OUTPUT_link_arr( 5 )(31 DOWNTO 0)   <= wire_output_5_V;
     s_OUTPUT_link_arr( 6 )(31 DOWNTO 0)   <= wire_output_6_V;
     s_OUTPUT_link_arr( 7 )(31 DOWNTO 0)   <= wire_output_7_V;
     s_OUTPUT_link_arr( 8 )(31 DOWNTO 0)   <= wire_output_8_V;
     s_OUTPUT_link_arr( 9 )(31 DOWNTO 0)   <= wire_output_9_V;
     s_OUTPUT_link_arr( 10 )(31 DOWNTO 0)  <= wire_output_10_V;
     s_OUTPUT_link_arr( 11 )(31 DOWNTO 0)  <= wire_output_11_V;
     s_OUTPUT_link_arr( 12 )(31 DOWNTO 0)  <= wire_output_12_V;
     s_OUTPUT_link_arr( 13 )(31 DOWNTO 0)  <= wire_output_13_V;
     s_OUTPUT_link_arr( 14 )(31 DOWNTO 0)  <= wire_output_14_V;
     s_OUTPUT_link_arr( 15 )(31 DOWNTO 0)  <= wire_output_15_V;
     s_OUTPUT_link_arr( 16 )(31 DOWNTO 0)  <= wire_output_16_V;
     s_OUTPUT_link_arr( 17 )(31 DOWNTO 0)  <= wire_output_17_V;
     s_OUTPUT_link_arr( 18 )(31 DOWNTO 0)  <= wire_output_18_V;
     s_OUTPUT_link_arr( 19 )(31 DOWNTO 0)  <= wire_output_19_V;
     s_OUTPUT_link_arr( 20 )(31 DOWNTO 0)  <= wire_output_20_V;
     s_OUTPUT_link_arr( 21 )(31 DOWNTO 0)  <= wire_output_21_V;
     s_OUTPUT_link_arr( 22 )(31 DOWNTO 0)  <= wire_output_22_V;
     s_OUTPUT_link_arr( 23 )(31 DOWNTO 0)  <= wire_output_23_V;
     s_OUTPUT_link_arr( 24 )(31 DOWNTO 0)  <= wire_output_24_V;
     s_OUTPUT_link_arr( 25 )(31 DOWNTO 0)  <= wire_output_25_V;
     s_OUTPUT_link_arr( 26 )(31 DOWNTO 0)  <= wire_output_26_V;
     s_OUTPUT_link_arr( 27 )(31 DOWNTO 0)  <= wire_output_27_V;
     s_OUTPUT_link_arr( 28 )(31 DOWNTO 0)  <= wire_output_28_V;
     s_OUTPUT_link_arr( 29 )(31 DOWNTO 0)  <= wire_output_29_V;
     s_OUTPUT_link_arr( 30 )(31 DOWNTO 0)  <= wire_output_30_V;
     s_OUTPUT_link_arr( 31 )(31 DOWNTO 0)  <= wire_output_31_V;
     s_OUTPUT_link_arr( 32 )(31 DOWNTO 0)  <= wire_output_32_V;
     s_OUTPUT_link_arr( 33 )(31 DOWNTO 0)  <= wire_output_33_V;
     s_OUTPUT_link_arr( 34 )(31 DOWNTO 0)  <= wire_output_34_V;
     s_OUTPUT_link_arr( 35 )(31 DOWNTO 0)  <= wire_output_35_V;

-----------------------------------------------------------------------------

-----------------------------------------------------------------------------
-- End User_Code
-----------------------------------------------------------------------------

end ctp7_top_arch;
