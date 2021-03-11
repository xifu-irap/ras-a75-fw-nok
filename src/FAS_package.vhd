----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.01.2021 16:45:06
-- Design Name: 
-- Module Name: FAS_package - Behavioral
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

package FAS_package is


constant first_row_addr : integer := 4;

signal end_storage : std_logic;

type t_Array13bits is array (natural range <>) of std_logic_vector(39 downto 0);
type t_Array8bits is array (natural range <>) of std_logic_vector(7 downto 0);

type t_Device_Ctrl_1
    is record
        Resetn : std_logic ;
        LMK : std_logic ; --LMK enable
        VCO : std_logic ; --VXCO enable
        Ref_Clk_en : std_logic ; --Reference clock enable
        Ref_Clk_sel : std_logic ; --Reference clock select
        FIS : std_logic ; --FPGA trigger-in select
        TrigOut_PreSel : std_logic ; --Trigger out pre-select
        TrigOut_sel : std_logic ; --Trigger out select
        Op_Mod : std_logic ; --Operation mode
        FIE : std_logic ; --Frame clock in enable
        FOE : std_logic ; --Frame clock out enable
        REV : std_logic_vector(3 downto 0); --Reverb
        DAC_Offset : std_logic_vector(15 downto 0); --DAC Offset
    end record;
    
 type t_Device_Ctrl_2
    is record
        NRO : std_logic_vector(5 downto 0); -- Numebr of row
        LPR : std_logic_vector(7 downto 0); --Line period
        DEL : std_logic_vector(13 downto 0); --Delay
    end record;  
    
 type t_Device_Ctrl_3
    is record
        RUN : std_logic;
        Freq_row : std_logic_vector(6 downto 0);
    end record; 
    
 type t_Manual_Row
    is record
        Row : std_logic_vector(39 downto 0);
    end record;    
  
 type t_Row
    is record
        Row0 : std_logic_vector(39 downto 0);  
        Row1 : std_logic_vector(39 downto 0); 
        Row2 : std_logic_vector(39 downto 0); 
        Row3 : std_logic_vector(39 downto 0); 
        Row4 : std_logic_vector(39 downto 0);  
        Row5 : std_logic_vector(39 downto 0); 
        Row6 : std_logic_vector(39 downto 0); 
        Row7 : std_logic_vector(39 downto 0);
        Row8 : std_logic_vector(39 downto 0);  
        Row9 : std_logic_vector(39 downto 0); 
        Row10 : std_logic_vector(39 downto 0); 
        Row11 : std_logic_vector(39 downto 0);
        Row12 : std_logic_vector(39 downto 0);
     end record;
     
-- type t_Row0_LSB
--    is record
--        Pattern : std_logic_vector(31 downto 0);
--    end record;
 
-- type t_Row0_MSB
--    is record
--        Reserved : std_logic_vector(23 downto 0);
--        Pattern : std_logic_vector(7 downto 0);
--    end record;
    
-- type t_Row1_LSB
--    is record
--        Pattern : std_logic_vector(31 downto 0);
--    end record;
 
-- type t_Row1_MSB
--    is record
--        Reserved : std_logic_vector(23 downto 0);
--        Pattern : std_logic_vector(7 downto 0);
--    end record;    
    
-- type t_Row2_LSB
--    is record
--        Pattern : std_logic_vector(31 downto 0);
--    end record;
 
-- type t_Row2_MSB
--    is record
--        Reserved : std_logic_vector(23 downto 0);
--        Pattern : std_logic_vector(7 downto 0);
--    end record;

-- type t_Row3_LSB
--    is record
--        Pattern : std_logic_vector(31 downto 0);
--    end record;
 
-- type t_Row3_MSB
--    is record
--        Reserved : std_logic_vector(23 downto 0);
--        Pattern : std_logic_vector(7 downto 0);
--    end record;
    
-- type t_Row4_LSB
--    is record
--        Pattern : std_logic_vector(31 downto 0);
--    end record;
 
-- type t_Row4_MSB
--    is record
--        Reserved : std_logic_vector(23 downto 0);
--        Pattern : std_logic_vector(7 downto 0);
--    end record;    
    
-- type t_Row5_LSB
--    is record
--        Pattern : std_logic_vector(31 downto 0);
--    end record;
 
-- type t_Row5_MSB
--    is record
--        Reserved : std_logic_vector(23 downto 0);
--        Pattern : std_logic_vector(7 downto 0);
--    end record;

-- type t_Row6_LSB
--    is record
--        Pattern : std_logic_vector(31 downto 0);
--    end record;
 
-- type t_Row6_MSB
--    is record
--        Reserved : std_logic_vector(23 downto 0);
--        Pattern : std_logic_vector(7 downto 0);
--    end record;
    
-- type t_Row7_LSB
--    is record
--        Pattern : std_logic_vector(31 downto 0);
--    end record;
 
-- type t_Row7_MSB
--    is record
--        Reserved : std_logic_vector(23 downto 0);
--        Pattern : std_logic_vector(7 downto 0);
--    end record;    
    
-- type t_Row8_LSB
--    is record
--        Pattern : std_logic_vector(31 downto 0);
--    end record;
 
-- type t_Row8_MSB
--    is record
--        Reserved : std_logic_vector(23 downto 0);
--        Pattern : std_logic_vector(7 downto 0);
--    end record;
 
-- type t_Row9_LSB
--    is record
--        Pattern : std_logic_vector(31 downto 0);
--    end record;
 
-- type t_Row9_MSB
--    is record
--        Reserved : std_logic_vector(23 downto 0);
--        Pattern : std_logic_vector(7 downto 0);
--    end record;
    
-- type t_Row10_LSB
--    is record
--        Pattern : std_logic_vector(31 downto 0);
--    end record;
 
-- type t_Row10_MSB
--    is record
--        Reserved : std_logic_vector(23 downto 0);
--        Pattern : std_logic_vector(7 downto 0);
--    end record;    
    
-- type t_Row11_LSB
--    is record
--        Pattern : std_logic_vector(31 downto 0);
--    end record;
 
-- type t_Row11_MSB
--    is record
--        Reserved : std_logic_vector(23 downto 0);
--        Pattern : std_logic_vector(7 downto 0);
--    end record;
    
-- type t_Row12_LSB
--    is record
--        Pattern : std_logic_vector(31 downto 0);
--    end record;
 
-- type t_Row12_MSB
--    is record
--        Reserved : std_logic_vector(23 downto 0);
--        Pattern : std_logic_vector(7 downto 0);
--    end record;

end FAS_package;
