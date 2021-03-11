----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.03.2021 11:12:31
-- Design Name: 
-- Module Name: div_freq - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity div_freq is
    Port ( i_clk : in STD_LOGIC;
           i_rst_n : in STD_LOGIC;
           i_freq_row : in STD_LOGIC_VECTOR;
           o_clk_en_freq : out STD_LOGIC);
end div_freq;

architecture Behavioral of div_freq is

signal cmp : unsigned (6 downto 0);

begin

P_div_freq : process(i_clk, i_rst_n)
begin
    if i_rst_n = '0' then
        cmp <= (others => '0');
        o_clk_en_freq <= '0';
    elsif (rising_edge(i_clk)) then
        if cmp = 100/unsigned(i_freq_row) - 1 then
            cmp <= (others => '0');
            o_clk_en_freq <= '1';
        else
            cmp <= cmp + 1;
            o_clk_en_freq <= '0';
        end if;
    end if;    
end process;

end Behavioral;
