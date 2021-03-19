----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.03.2021 15:31:26
-- Design Name: 
-- Module Name: shift_register_15b - Behavioral
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

entity shift_register_15b is
    Port ( i_clk : in STD_LOGIC;
           i_rst_n : in STD_LOGIC;
           i_seq_5MHz : in STD_LOGIC;
           o_sig_late : out STD_LOGIC_VECTOR (14 downto 0));
end shift_register_15b;

architecture Behavioral of shift_register_15b is

signal sig_late_int : std_logic_vector(14 downto 0);

begin

P_register : process(i_clk, i_rst_n)
begin
    if i_rst_n = '0' then
        sig_late_int <= (others => '0');
    elsif (rising_edge(i_clk)) then
        sig_late_int <= sig_late_int(13 downto 0) & i_seq_5MHz;
    end if;
end process;

o_sig_late <= sig_late_int;


end Behavioral;
