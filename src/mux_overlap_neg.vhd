----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.03.2021 15:31:26
-- Design Name: 
-- Module Name: mux_overlap_neg - Behavioral
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

entity mux_overlap_neg is
    Port ( i_clk : in STD_LOGIC;
           i_rst_n : in STD_LOGIC;
           i_sig_late : in STD_LOGIC_VECTOR (14 downto 0);
           i_REV : in STD_LOGIC_VECTOR (3 downto 0);
           o_sig : out STD_LOGIC);
end mux_overlap_neg;

architecture Behavioral of mux_overlap_neg is

begin

P_mux_neg : process(i_REV, i_sig_late)
begin

    case i_REV(2 downto 0) is
        when "000" => 
            o_sig <= i_sig_late(7);
        when "001" => 
            o_sig <= i_sig_late(6);
        when "010" => 
            o_sig <= i_sig_late(5);
        when "011" => 
            o_sig <= i_sig_late(4);  
        when "100" => 
            o_sig <= i_sig_late(3);
        when "101" => 
            o_sig <= i_sig_late(2);
        when "110" => 
            o_sig <= i_sig_late(1);
        when "111" => 
            o_sig <= i_sig_late(0); 
        when others =>
            o_sig <= '0';
    end case;
        

end process;
                

end Behavioral;
