----------------------------------------------------------------------------------
-- Company: IRAP
-- Engineer: Noémie Rolland
-- 
-- Create Date: 04.01.2021 14:44:32
-- Design Name: 
-- Module Name: read_5MHz - Behavioral
-- Project Name: RAS_simu
-- Target Devices: Opal Kelly XEM7310 - Artix7 XC7A75T - 1FGG 484
-- Tool Versions: 
-- Description: This module reads bit by bit the input command every 200 ns.
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

entity read_5MHz is
    Port ( i_clk : in STD_LOGIC;
           i_clk_en_5M : in STD_LOGIC;
           i_rst_n : in STD_LOGIC;
           i_cmd : in STD_LOGIC_VECTOR (39 downto 0);
           o_seq_5MHz : out STD_LOGIC);
end read_5MHz;

architecture Behavioral of read_5MHz is

signal cmd_int : std_logic_vector(39 downto 0);

begin

P_read_process : process(i_clk, i_rst_n)
begin
   if (i_rst_n = '0') then
   -- intitialisation of the signals during the reset
      o_seq_5MHz <= '0';
      cmd_int <= i_cmd; --the command sequence is stored in an intern signal
   elsif (rising_edge(i_clk)) then
      if (i_clk_en_5M = '1') then 
          cmd_int <= cmd_int(0) & cmd_int(39 downto 1); --rotation of the vector every 200 ns
          o_seq_5MHz <= cmd_int(0); --reading of the bit 0 (this bit change every 200 ns thanks to the previous rotation)
       end if;
   end if;
end process;

end Behavioral;
