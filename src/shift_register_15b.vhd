----------------------------------------------------------------------------------
-- Company: IRAP
-- Engineer: No�mie Rolland
-- 
-- Create Date: 18.03.2021 15:31:26
-- Design Name: 
-- Module Name: shift_register_15b - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: This module is a shift register of 15 bits. Each clock period the input signal is delayed of a clock
-- period.
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
    Port ( i_clk : in STD_LOGIC; -- clk 100 MHz
           i_rst_n : in STD_LOGIC; -- reset active LOW
           i_seq_5MHz : in STD_LOGIC; -- output of the module "read_5MHz" 
           o_sig_late : out STD_LOGIC_VECTOR (14 downto 0)); -- output of the module
end shift_register_15b;

architecture Behavioral of shift_register_15b is

----------- Intern signal -----------------
signal sig_late_int : std_logic_vector(14 downto 0);

begin

P_register : process(i_clk, i_rst_n)
begin
    if i_rst_n = '0' then
        sig_late_int <= (others => '0');
    elsif (rising_edge(i_clk)) then
        sig_late_int <= sig_late_int(13 downto 0) & i_seq_5MHz; -- left shift of each bit each clock period
    end if;
end process;

o_sig_late <= sig_late_int;


end Behavioral;
