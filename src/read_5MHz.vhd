----------------------------------------------------------------------------------
--Copyright (C) 2021-2030 No�mie ROLLAND, IRAP Toulouse.

--This file is part of the ATHENA X-IFU DRE RAS.

--ras-a75-fw is free software: you can redistribute it and/or modifyit under the terms of the GNU General Public 
--License as published bythe Free Software Foundation, either version 3 of the License, or(at your option) any 
--later version.

--This program is distributed in the hope that it will be useful,but WITHOUT ANY WARRANTY; without even the 
--implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See theGNU General Public License for 
--more details.You should have received a copy of the GNU General Public Licensealong with this program.  

--If not, see <https://www.gnu.org/licenses/>.

--noemie.rolland@irap.omp.eu
--read_5MHz.vhd

-- Company: IRAP
-- Engineer: No�mie Rolland
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
           i_NRO : in STD_LOGIC_VECTOR(5 downto 0);
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
         case(i_NRO) is
         
            when "000001" => 
                o_seq_5MHz <= cmd_int(0); --reading of the bit 0 (this bit change every 200 ns thanks to the previous rotation)
            when "000010" =>
                cmd_int(1 downto 0) <= cmd_int(0) & cmd_int(1); --rotation of the vector every 200 ns
                o_seq_5MHz <= cmd_int(0); --reading of the bit 0 (this bit change every 200 ns thanks to the previous rotation)
            when "000011" =>
                cmd_int(2 downto 0) <= cmd_int(0) & cmd_int(2 downto 1); --rotation of the vector every 200 ns
                o_seq_5MHz <= cmd_int(0); --reading of the bit 0 (this bit change every 200 ns thanks to the previous rotation)
            when "000100" =>
                cmd_int(3 downto 0) <= cmd_int(0) & cmd_int(3 downto 1); --rotation of the vector every 200 ns
                o_seq_5MHz <= cmd_int(0); --reading of the bit 0 (this bit change every 200 ns thanks to the previous rotation)
            when "000101" =>
                cmd_int(4 downto 0) <= cmd_int(0) & cmd_int(4 downto 1); --rotation of the vector every 200 ns
                o_seq_5MHz <= cmd_int(0);
            when "000110" =>
                cmd_int(5 downto 0) <= cmd_int(0) & cmd_int(5 downto 1); --rotation of the vector every 200 ns
                o_seq_5MHz <= cmd_int(0);
            when "000111" =>
                cmd_int(6 downto 0) <= cmd_int(0) & cmd_int(6 downto 1); --rotation of the vector every 200 ns
                o_seq_5MHz <= cmd_int(0);
            when "001000" =>
                cmd_int(7 downto 0) <= cmd_int(0) & cmd_int(7 downto 1); --rotation of the vector every 200 ns
                o_seq_5MHz <= cmd_int(0);
            when "001001" =>
                cmd_int(8 downto 0) <= cmd_int(0) & cmd_int(8 downto 1); --rotation of the vector every 200 ns
                o_seq_5MHz <= cmd_int(0);
            when "001010" =>
                cmd_int(9 downto 0) <= cmd_int(0) & cmd_int(9 downto 1); --rotation of the vector every 200 ns
                o_seq_5MHz <= cmd_int(0);
            when "001011" =>
                cmd_int(10 downto 0) <= cmd_int(0) & cmd_int(10 downto 1); --rotation of the vector every 200 ns
                o_seq_5MHz <= cmd_int(0);
            when "001100" =>
                cmd_int(11 downto 0) <= cmd_int(0) & cmd_int(11 downto 1); --rotation of the vector every 200 ns
                o_seq_5MHz <= cmd_int(0);
            when "001101" =>
                cmd_int(12 downto 0) <= cmd_int(0) & cmd_int(12 downto 1); --rotation of the vector every 200 ns
                o_seq_5MHz <= cmd_int(0);
            when "001110" =>
                cmd_int(13 downto 0) <= cmd_int(0) & cmd_int(13 downto 1); --rotation of the vector every 200 ns
                o_seq_5MHz <= cmd_int(0);
            when "001111" =>
                cmd_int(14 downto 0) <= cmd_int(0) & cmd_int(14 downto 1); --rotation of the vector every 200 ns
                o_seq_5MHz <= cmd_int(0);
            when "010000" =>
                cmd_int(15 downto 0) <= cmd_int(0) & cmd_int(15 downto 1); --rotation of the vector every 200 ns
                o_seq_5MHz <= cmd_int(0);
            when "010001" =>
                cmd_int(16 downto 0) <= cmd_int(0) & cmd_int(16 downto 1); --rotation of the vector every 200 ns
                o_seq_5MHz <= cmd_int(0);
            when "010010" =>
                cmd_int(17 downto 0) <= cmd_int(0) & cmd_int(17 downto 1); --rotation of the vector every 200 ns
                o_seq_5MHz <= cmd_int(0);
            when "010011" =>
                cmd_int(18 downto 0) <= cmd_int(0) & cmd_int(18 downto 1); --rotation of the vector every 200 ns
                o_seq_5MHz <= cmd_int(0);
            when "010100" =>
                cmd_int(19 downto 0) <= cmd_int(0) & cmd_int(19 downto 1); --rotation of the vector every 200 ns
                o_seq_5MHz <= cmd_int(0);
            when "010101" =>
                cmd_int(20 downto 0) <= cmd_int(0) & cmd_int(20 downto 1); --rotation of the vector every 200 ns
                o_seq_5MHz <= cmd_int(0);
            when "010110" =>
                cmd_int(21 downto 0) <= cmd_int(0) & cmd_int(21 downto 1); --rotation of the vector every 200 ns
                o_seq_5MHz <= cmd_int(0);
            when "010111" =>
                cmd_int(22 downto 0) <= cmd_int(0) & cmd_int(22 downto 1); --rotation of the vector every 200 ns
                o_seq_5MHz <= cmd_int(0);
            when "011000" =>
                cmd_int(23 downto 0) <= cmd_int(0) & cmd_int(23 downto 1); --rotation of the vector every 200 ns
                o_seq_5MHz <= cmd_int(0);
            when "011001" =>
                cmd_int(24 downto 0) <= cmd_int(0) & cmd_int(24 downto 1); --rotation of the vector every 200 ns
                o_seq_5MHz <= cmd_int(0);
            when "011010" =>
                cmd_int(25 downto 0) <= cmd_int(0) & cmd_int(25 downto 1); --rotation of the vector every 200 ns
                o_seq_5MHz <= cmd_int(0);
            when "011011" =>
                cmd_int(26 downto 0) <= cmd_int(0) & cmd_int(26 downto 1); --rotation of the vector every 200 ns
                o_seq_5MHz <= cmd_int(0);
            when "011100" =>
                cmd_int(27 downto 0) <= cmd_int(0) & cmd_int(27 downto 1); --rotation of the vector every 200 ns
                o_seq_5MHz <= cmd_int(0);
            when "011101" =>
                cmd_int(28 downto 0) <= cmd_int(0) & cmd_int(28 downto 1); --rotation of the vector every 200 ns
                o_seq_5MHz <= cmd_int(0);
            when "011110" =>
                cmd_int(29 downto 0) <= cmd_int(0) & cmd_int(29 downto 1); --rotation of the vector every 200 ns
                o_seq_5MHz <= cmd_int(0);
            when "011111" =>
                cmd_int(30 downto 0) <= cmd_int(0) & cmd_int(30 downto 1); --rotation of the vector every 200 ns
                o_seq_5MHz <= cmd_int(0);
            when "100000" =>
                cmd_int(31 downto 0) <= cmd_int(0) & cmd_int(31 downto 1); --rotation of the vector every 200 ns
                o_seq_5MHz <= cmd_int(0);
            when "100001" =>
                cmd_int(32 downto 0) <= cmd_int(0) & cmd_int(32 downto 1); --rotation of the vector every 200 ns
                o_seq_5MHz <= cmd_int(0);
            when "100010" =>
                cmd_int(33 downto 0) <= cmd_int(0) & cmd_int(33 downto 1); --rotation of the vector every 200 ns
                o_seq_5MHz <= cmd_int(0);
            when "100011" =>
                cmd_int(34 downto 0) <= cmd_int(0) & cmd_int(34 downto 1); --rotation of the vector every 200 ns
                o_seq_5MHz <= cmd_int(0);
            when "100100" =>
                cmd_int(35 downto 0) <= cmd_int(0) & cmd_int(35 downto 1); --rotation of the vector every 200 ns
                o_seq_5MHz <= cmd_int(0);
            when "100101" =>
                cmd_int(36 downto 0) <= cmd_int(0) & cmd_int(36 downto 1); --rotation of the vector every 200 ns
                o_seq_5MHz <= cmd_int(0);
            when "100110" =>
                cmd_int(37 downto 0) <= cmd_int(0) & cmd_int(37 downto 1); --rotation of the vector every 200 ns
                o_seq_5MHz <= cmd_int(0);
            when "100111" =>
                cmd_int(38 downto 0) <= cmd_int(0) & cmd_int(38 downto 1); --rotation of the vector every 200 ns
                o_seq_5MHz <= cmd_int(0);
            when others =>
                cmd_int(39 downto 0) <= cmd_int(0) & cmd_int(39 downto 1); --rotation of the vector every 200 ns
                o_seq_5MHz <= cmd_int(0);

         end case;
      end if;
   end if;
end process;

end Behavioral;
