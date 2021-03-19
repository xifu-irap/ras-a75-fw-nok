----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.03.2021 15:31:26
-- Design Name: 
-- Module Name: mux_overlap - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: This module is a multiplexer. It manages the choice between the positiv and the negativ overlap 
-- according to the sign of REV (REV(3) = 0: positiv   1: negativ)
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

entity mux_overlap is
    Port ( i_clk : in STD_LOGIC;
           i_rst_n : in STD_LOGIC;
           i_REV : in STD_LOGIC_VECTOR (3 downto 0);
           i_overlap_neg : in STD_LOGIC;
           i_overlap_pos : in STD_LOGIC;
           o_sig_overlap : out STD_LOGIC);
end mux_overlap;

architecture Behavioral of mux_overlap is

begin

P_mux_overlap : process(i_REV,i_overlap_neg,i_overlap_pos)
begin

    case i_REV(3) is
        when '0' => -- if we want a positiv overlap
            o_sig_overlap <= i_overlap_pos;
        when '1' => -- if we want a negativ overlap
            o_sig_overlap <= i_overlap_neg;
        when others => -- if we don't specify the value of REV
            o_sig_overlap <= '0';
    end case;
end process;


end Behavioral;
