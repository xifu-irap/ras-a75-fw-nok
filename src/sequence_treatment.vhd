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

COMPONENT shift_register_4b
    PORT(
         i_clk : IN  std_logic;
         i_rst_n : IN  std_logic;
         i_seq_5MHz : IN  std_logic;
         o_late : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
	 
    COMPONENT multiplex
    PORT(
         i_late0 : IN  std_logic;
         i_late1 : IN  std_logic;
         i_late2 : IN  std_logic;
         i_late3 : IN  std_logic;
         i_REV : IN  std_logic_vector(3 downto 0);
         o_late_sig : OUT  std_logic
        );
    END COMPONENT;

-- intern signals
--signal clk_en_5M : std_logic;
signal seq_5MHz : std_logic;
signal o_late : std_logic_vector(3 downto 0);
signal o_late_sig : std_logic;
   
begin

-- instantiation of the modules

u1: read_5MHz PORT MAP (
          i_clk => i_clk,
          i_clk_en_5M => i_clk_en_5M,
          i_rst_n => i_rst_n,
          i_cmd => i_cmd,
          o_seq_5MHz => seq_5MHz
        );

   u2: shift_register_4b PORT MAP (
          i_clk => i_clk,
          i_rst_n => i_rst_n,
          i_seq_5MHz => seq_5MHz,
          o_late => o_late
        );
		  
   u3: multiplex PORT MAP (
          i_late0 => o_late(0),
          i_late1 => o_late(1),
          i_late2 => o_late(2),
          i_late3 => o_late(3),
          i_REV => i_REV,
          o_late_sig => o_late_sig
        );

o_sig_overlap <= o_late(0) or o_late_sig;

end Behavioral;
