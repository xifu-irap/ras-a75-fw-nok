----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.02.2021 12:00:40
-- Design Name: 
-- Module Name: sequence_treatment - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sequence_treatment is
    Port ( i_clk : in STD_LOGIC;
           i_clk_en_5M : in STD_LOGIC;
           i_rst_n : in STD_LOGIC;
           i_cmd : in STD_LOGIC_VECTOR (39 downto 0);
           i_REV : in STD_LOGIC_VECTOR(3 downto 0);
           o_sig_overlap : out STD_LOGIC);
end sequence_treatment;

architecture Behavioral of sequence_treatment is

COMPONENT read_5MHz
    PORT(
         i_clk : IN  std_logic;
         i_clk_en_5M : in STD_LOGIC;
         i_rst_n : IN  std_logic;
         i_cmd : IN  std_logic_vector(39 downto 0);
         o_seq_5MHz : OUT  std_logic
        );
    END COMPONENT;

COMPONENT shift_register_15b
    PORT(
         i_clk : IN  std_logic;
         i_rst_n : IN  std_logic;
         i_seq_5MHz : IN  std_logic;
         o_sig_late : OUT  std_logic_vector(14 downto 0)
        );
    END COMPONENT;
	 
    component mux_overlap_neg is
    Port ( i_clk : in STD_LOGIC;
           i_rst_n : in STD_LOGIC;
           i_sig_late : in std_logic_vector(14 downto 0);
           i_REV : in STD_LOGIC_VECTOR (3 downto 0);
           o_sig : out STD_LOGIC);
    end component;
    
    component mux_overlap_pos is
    Port ( i_clk : in STD_LOGIC;
           i_rst_n : in STD_LOGIC;
           i_sig_late : in std_logic_vector(14 downto 0);
           i_REV : in STD_LOGIC_VECTOR (3 downto 0);
           o_sig : out STD_LOGIC);
    end component;
    
    component mux_overlap is
    Port ( i_clk : in STD_LOGIC;
           i_rst_n : in STD_LOGIC;
           i_REV : in STD_LOGIC_VECTOR(3 downto 0);
           i_overlap_neg : in STD_LOGIC;
           i_overlap_pos : in STD_LOGIC;
           o_sig_overlap : out STD_LOGIC);
    end component;


----------- Intern signals -----------------
--signal clk_en_5M : std_logic;
signal seq_5MHz : std_logic;
signal sig_late : std_logic_vector(14 downto 0);
signal sig_neg : std_logic;
signal sig_pos : std_logic;
signal overlap_neg : std_logic;
signal overlap_pos : std_logic;

alias sig_t0 : std_logic is sig_late(7);
   
begin

-- instantiation of the modules

uu0: read_5MHz PORT MAP (
          i_clk => i_clk,
          i_clk_en_5M => i_clk_en_5M,
          i_rst_n => i_rst_n,
          i_cmd => i_cmd,
          o_seq_5MHz => seq_5MHz
        );

uu1: shift_register_15b PORT MAP ( 
           i_clk => i_clk,
           i_rst_n => i_rst_n,
           i_seq_5MHz => seq_5MHz,
           o_sig_late => sig_late
           );
		  
uu2 : mux_overlap_neg PORT MAP (
           i_clk => i_clk,
           i_rst_n => i_rst_n,
           i_sig_late => sig_late,
           i_REV => i_REV,
           o_sig => sig_neg
           );

overlap_neg <= sig_t0 and sig_neg;
        
uu3 : mux_overlap_pos PORT MAP (
           i_clk => i_clk,
           i_rst_n => i_rst_n,
           i_sig_late => sig_late,
           i_REV => i_REV,
           o_sig => sig_pos
           );

overlap_pos <= sig_t0 or sig_pos;


uu4 : mux_overlap PORT MAP (
           i_clk => i_clk,
           i_rst_n => i_rst_n,
           i_REV => i_REV,
           i_overlap_neg => overlap_neg,
           i_overlap_pos => overlap_pos,
           o_sig_overlap => o_sig_overlap
           );
           
end Behavioral;
