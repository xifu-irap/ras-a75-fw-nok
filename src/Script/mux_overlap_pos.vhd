----------------------------------------------------------------------------------
-- Company: IRAP
-- Engineer: Noémie Rolland
-- 
-- Create Date: 18.03.2021 15:31:26
-- Design Name: 
-- Module Name: mux_overlap_pos - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: This module is a multiplexer for the positiv overlap. It selects the correct delayed signal based 
-- on the value of REV.
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

entity mux_overlap_pos is
    Port ( i_clk : in STD_LOGIC; 
           i_rst_n : in STD_LOGIC; 
           i_sig_late : in STD_LOGIC_VECTOR (14 downto 0); 
           i_REV : in STD_LOGIC_VECTOR (3 downto 0);
           o_sig : out STD_LOGIC);
end mux_overlap_pos;

architecture Behavioral of mux_overlap_pos is

begin

P_mux_pos : process(i_REV, i_sig_late)
begin

    case i_REV(2 downto 0) is
        when "000" => -- if we don't want any overlap
            o_sig <= i_sig_late(7); -- it selects the signal at t0
        when "001" => -- if we want 1 clock period negativ overlap
            o_sig <= i_sig_late(8); -- it selects the signal at t+1
        when "010" => -- if we want 2 clock periods negativ overlap
            o_sig <= i_sig_late(9); -- it selects the signal at t+2
        when "011" => -- if we want 3 clock periods negativ overlap
            o_sig <= i_sig_late(10); -- it selects the signal at t+3
        when "100" => -- if we want 4 clock periods negativ overlap
            o_sig <= i_sig_late(11); -- it selects the signal at t+4
        when "101" => -- if we want 5 clock periods negativ overlap
            o_sig <= i_sig_late(12); -- it selects the signal at t+5
        when "110" => -- if we want 6 clock periods negativ overlap
            o_sig <= i_sig_late(13); -- it selects the signal at t+6
        when "111" => -- if we want 7 clock periods negativ overlap
            o_sig <= i_sig_late(14); -- it selects the signal at t+7
        when others => -- if we don't specify a value for REV
            o_sig <= '0'; -- the signal is equal to 0
    end case;
        

end process;

end Behavioral;
