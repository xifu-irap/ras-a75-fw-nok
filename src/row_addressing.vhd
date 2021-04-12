----------------------------------------------------------------------------------
-- Company: IRAP
-- Engineer: Noémie Rolland
-- 
-- Create Date: 05.01.2021 14:23:44
-- Design Name: 
-- Module Name: row_addressing - Behavioral
-- Project Name: row-addressing-command
-- Target Devices: Opal Kelly XEM7310 - Artix7 XC7A75T - 1FGG 484
-- Tool Versions: 
-- Description: This modules manages the 13 sequences from the 13 commands.
-- 
-- Dependencies: 
-- 
-- Revision: v0 : reception and storage in the registers, sequence_treatment module takes the sequence in the 
-- register at the same time
-- 
-- v1 : reception and storage in the registers, sequence_treatment module takes the sequence in the 
-- register only when RUN = '1' and the storage is blocked except for RUN and Resetn commands. When RUN ='0', the
-- sequence_treatment module doesn't work
--
-- v2 : the div_freq_5MHz is replaced by the div_freq module that can produce a signal with a frequence determined
-- by a command. We can choose the activation period of the row by command
--
-- v3 : this version allows us to manage a netaiv overlap and a positiv overlap. The architecture of the sequence
-- treatment module and the modules instantiated changed
--
-- v4 : addition of the pipeout management
--
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.FAS_package.ALL;
use work.FRONTPANEL.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity row_addressing is
    Port ( 
    -------------- Opal Kelly Host Interface -----------
    	  okUH      : in    std_logic_vector(4 downto 0);
		  okHU      : out   std_logic_vector(2 downto 0);
		  okUHU     : inout std_logic_vector(31 downto 0);
		  okAA      : inout std_logic;
    
          sys_clkp : in std_logic;
		  sys_clkn : in std_logic;
		  sys_clk : in std_logic;
    ---------------------- RST -------------------------
          --i_rst : in std_logic;
    ----------------------- FAS ------------------------
           o_sig_overlap0 : out STD_LOGIC;
           o_sig_overlap1 : out STD_LOGIC;
           o_sig_overlap2 : out STD_LOGIC;
           o_sig_overlap3 : out STD_LOGIC;
           o_sig_overlap4 : out STD_LOGIC;
           o_sig_overlap5 : out STD_LOGIC;
           o_sig_overlap6 : out STD_LOGIC;
           o_sig_overlap7 : out STD_LOGIC;
           o_sig_overlap8 : out STD_LOGIC;
           o_sig_overlap9 : out STD_LOGIC;
           o_sig_overlap10 : out STD_LOGIC;
           o_sig_overlap11 : out STD_LOGIC;
           o_sig_overlap12 : out STD_LOGIC);
          -- o_sync_sig : out STD_LOGIC);
end row_addressing;

architecture Behavioral of row_addressing is

    component div_freq2
    Port ( sys_clk : in STD_LOGIC;
           i_rst : in STD_LOGIC;
           clk100M : out STD_LOGIC);
    end component;

    component div_freq is
        Port ( i_clk : in STD_LOGIC;
               i_rst_n : in STD_LOGIC;
               i_freq_row : in STD_LOGIC_VECTOR;
               o_clk_en_freq : out STD_LOGIC);
    end component;
    
    component sequence_treatment
    Port ( i_clk : in STD_LOGIC;
           i_clk_en_5M : in STD_LOGIC;
           i_rst_n : in STD_LOGIC;
           i_cmd : in STD_LOGIC_VECTOR (39 downto 0);
           i_REV : in STD_LOGIC_VECTOR (3 downto 0);
           o_sig_overlap : out STD_LOGIC);
    end component;

	component okWireOR
	generic (N : integer := 2);
	port (
		okEH   : out std_logic_vector(64 downto 0);
		okEHx  : in  std_logic_vector(N*65-1 downto 0));
	end component;
    
   COMPONENT fifo_pipein
   PORT (
    rst : IN STD_LOGIC;
    wr_clk : IN STD_LOGIC;
    rd_clk : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC;
    valid : OUT STD_LOGIC
  );
END COMPONENT;


COMPONENT fifo_pipeout
  PORT (
    rst : IN STD_LOGIC;
    wr_clk : IN STD_LOGIC;
    rd_clk : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    dout : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
    full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC
  );
END COMPONENT;

----------- OK signals ---------------------------------
signal okClk : std_logic;
signal okHE : std_logic_vector(112 downto 0);
signal okEH : std_logic_vector(64 downto 0);
signal okEHx : std_logic_vector(2*65-1 downto 0);
--------------------------------------------------------

----------- Trigger signal ----------------------------
signal ep40trig : std_logic_vector(31 downto 0);
-------------------------------------------------------

----------- Wire signal ----------------------------
signal ep00wire : std_logic_vector(31 downto 0);
-------------------------------------------------------

----------- PipeIn signals ----------------------------
signal pipein_wr : std_logic;
signal pipein_sig : std_logic_vector(31 downto 0);
----------- PipeOut signals ----------------------------
--signal pipeout_rd : std_logic; -- = fifoOut_read_en
signal pipeout_sig : std_logic_vector(31 downto 0);
alias pipeout_sig_13bit : std_logic_vector(12 downto 0) is pipeout_sig(12 downto 0);
--------------------------------------------------------

alias i_rst : std_logic is ep00wire(0);

----------- Clk signal ---------------------------------
signal clk100M : std_logic;
signal clk_en_freq : std_logic;

----------- FIFO PipeIn signals ------------------------
signal fifoIn_write_en : std_logic;
signal fifoIn_read_en : std_logic;
signal fifoIn_full : std_logic;
signal fifoIn_empty : std_logic;
signal fifoIn_dout : std_logic_vector(31 downto 0);
signal fifoIn_valid : std_logic;
----------- FIFO PipeIn signals ------------------------
signal fifoOut_write_en : std_logic ;
signal fifoOut_read_en : std_logic;
signal fifoOut_full : std_logic;
signal fifoOut_empty : std_logic;
signal fifoOut_din : std_logic_vector(12 downto 0);
--------------------------------------------------------

----------- State Machine -------------------------------
type FSM_state is (idle, addr_reception, HK, waiting, data_reception);
signal state : FSM_state;
signal addr : unsigned(9 downto 0);
--signal data : std_logic_vector(31 downto 0);
--signal cmp_row : unsigned(5 downto 0);
signal num_row : integer; 
---------------------------------------------------------

----------- Register signals ----------------------------
signal reception_param : std_logic_vector(95 downto 0);
signal reception_manual_row : std_logic_vector(39 downto 0);
signal reception_cmd : t_Array13bits(12 downto 0);


signal Cmd_param_1 : t_Device_Ctrl_1;
signal Cmd_param_2 : t_Device_Ctrl_2;
signal Cmd_param_3 : t_Device_Ctrl_3;
signal Cmd_manual_row : t_Manual_Row;
signal Cmd_row : t_Row;
---------------------------------------------------------

----------- FAS intern signals --------------------------
signal rst_n : STD_LOGIC;

signal sig_overlap0_int : std_logic;
signal sig_overlap1_int : std_logic;
signal sig_overlap2_int : std_logic;
signal sig_overlap3_int : std_logic;
signal sig_overlap4_int : std_logic;
signal sig_overlap5_int : std_logic;
signal sig_overlap6_int : std_logic;
signal sig_overlap7_int : std_logic;
signal sig_overlap8_int : std_logic;
signal sig_overlap9_int : std_logic;
signal sig_overlap10_int : std_logic;
signal sig_overlap11_int : std_logic;
signal sig_overlap12_int : std_logic;
---------------------------------------------------------

--------------- HK signal -------------------------------
signal HK_value : std_logic_vector(39 downto 0);
---------------------------------------------------------

signal test : std_logic;

begin

--=========================================================
-- Write in Registers (Storage of the parameters and the sequences) 
--=========================================================
Cmd_param_1.Resetn <= reception_param(31); 
Cmd_param_1.LMK <= reception_param(30);
Cmd_param_1.VCO <= reception_param(29);
Cmd_param_1.Ref_Clk_en <= reception_param(28);
Cmd_param_1.Ref_Clk_sel <= reception_param(27);
Cmd_param_1.FIS <= reception_param(26);
Cmd_param_1.TrigOut_PreSel <= reception_param(25);
Cmd_param_1.TrigOut_sel <= reception_param(24);
Cmd_param_1.Op_Mod <= reception_param(23);
Cmd_param_1.FIE <= reception_param(22);
Cmd_param_1.FOE <= reception_param(21);
Cmd_param_1.REV <= reception_param(19 downto 16);
Cmd_param_1.DAC_Offset <= reception_param(15 downto 0);

Cmd_param_2.NRO <= reception_param(61 downto 56);
Cmd_param_2.LPR <= reception_param(55 downto 48);
Cmd_param_2.DEL <= reception_param(45 downto 32);

Cmd_param_3.RUN <= reception_param(64);
Cmd_param_3.Freq_row <= reception_param(71 downto 65);

Cmd_manual_row.row <= reception_manual_row;

Cmd_row.Row0 <= reception_cmd(0);
Cmd_row.Row1 <= reception_cmd(1);
Cmd_row.Row2 <= reception_cmd(2);
Cmd_row.Row3 <= reception_cmd(3);
Cmd_row.Row4 <= reception_cmd(4);
Cmd_row.Row5 <= reception_cmd(5);
Cmd_row.Row6 <= reception_cmd(6);
Cmd_row.Row7 <= reception_cmd(7);
Cmd_row.Row8 <= reception_cmd(8);
Cmd_row.Row9 <= reception_cmd(9);
Cmd_row.Row10 <= reception_cmd(10);
Cmd_row.Row11 <= reception_cmd(11);
Cmd_row.Row12 <= reception_cmd(12);

--===========================================================

pipeout_sig(31 downto 13) <= (others => '0');

-------- Reception and storage of the sequences --------
P_Cmd_reception : process (clk100M, i_rst, Cmd_param_1.Resetn)
begin
    if (i_rst = '1' or Cmd_param_1.Resetn = '0') then --intitialisation of the different signal
        --Cmd_param_1.Resetn <= '1';
        addr <= (others => '0'); --10 bits
        reception_param (30 downto 0) <= (others => '0');
        reception_param (31) <= '1';
        reception_param (64 downto 32) <= (others => '0');
        reception_cmd <= (others =>(others => '0'));
        reception_manual_row <= (others => '0');
        fifoIn_read_en <= '0';
        --o_sync_sig <= '0';
        num_row <= 0;
        rst_n <= '0'; -- active low
        state <= idle;
        test <= '0';
    elsif (rising_edge(clk100M)) then
-- State Machine
    case state is
     
        when idle =>
            fifoIn_read_en <= '0'; --nothing is read from the fifo in
            rst_n <= not(i_rst) and Cmd_param_1.Resetn and Cmd_param_3.RUN;
            if (fifoIn_empty = '0') then --if the fifo is not empty
                fifoIn_read_en <= '1'; --we can read in the fifo in
                state <= addr_reception;
            else 
                state <= idle; -- if the fifo is empty we wait until it's not
            end if;
            
        when addr_reception => 
            fifoIn_read_en <= '0'; --nothing is read from the fifo in
            if (fifoIn_valid = '1') then --if the output signal of the fifo is valid
                addr <= unsigned(fifoIn_dout(9 downto 0)); -- storage of the address
                if fifoIn_dout(0) = '0' then
                    state <= HK;
                elsif fifoIn_dout(0) = '1' then
                    state <= waiting;
                else
                    state <= addr_reception;
                end if;
            else
                state <= addr_reception; -- if the output signal of the fifo is not valid we wait until it is
            end if;
            
         when HK =>
            if addr="0000000000" then 
                HK_value <= "00000000" & Cmd_param_1.Resetn & Cmd_param_1.LMK & Cmd_param_1.VCO & Cmd_param_1.Ref_Clk_en & Cmd_param_1.Ref_Clk_sel & Cmd_param_1.FIS & Cmd_param_1.TrigOut_PreSel & Cmd_param_1.TrigOut_sel & Cmd_param_1.Op_Mod & Cmd_param_1.FIE & Cmd_param_1.FOE & '0' & Cmd_param_1.REV & Cmd_param_1.DAC_Offset;
            elsif addr="0000000100" then
                HK_value <= "0000000000" & Cmd_param_2.NRO & Cmd_param_2.LPR & "00" & Cmd_param_2.DEL;
            elsif addr="0000001100" then
                HK_value <= "00000000000000000000000000000000" & Cmd_param_3.Freq_row & Cmd_param_3.RUN; 
            elsif addr="0000001000" or addr="0000001100" then
                HK_value <= Cmd_manual_row.Row;
            elsif addr="0000010000" or addr="0000010100" then
                HK_value <= Cmd_row.Row0;
            elsif addr="0000011000" or addr="0000011100" then               
                HK_value <= Cmd_row.Row1;
            elsif addr="0000100000" or addr="0000100100" then
                HK_value <= Cmd_row.Row2;
            elsif addr="0000101000" or addr="0000101100" then
               HK_value <= Cmd_row.Row3;
            elsif addr="0000110000" or addr="0000110100" then
                HK_value <= Cmd_row.Row4;
            elsif addr="0000111000" or addr="0000111100" then
                HK_value <= Cmd_row.Row5;
            elsif addr="0001000000" or addr="0001000100" then
               HK_value <= Cmd_row.Row6;
            elsif addr="0001001000" or addr="0001001100" then 
                HK_value <= Cmd_row.Row7;
            elsif addr="0001010000" or addr="0001010100" then
                HK_value <= Cmd_row.Row8;
            elsif addr="0001011000" or addr="0001011100" then
                HK_value <= Cmd_row.Row9;
            elsif addr="0001100000" or addr="0001100100" then
                HK_value <= Cmd_row.Row10;
            elsif addr="0001101000" or addr="0001101100" then 
                HK_value <= Cmd_row.Row11;
            elsif addr="0001110000" or addr="0001110100" then
                HK_value <= Cmd_row.Row12;
            else
                HK_value <= (others => '0');
            end if;
            state <= idle;
        
        when waiting =>
            if (fifoIn_empty = '0') then --if the fifo is not empty
                fifoIn_read_en <= '1'; --we read in the fifo
                num_row <= to_integer(addr)/8 - 2;
                state <= data_reception;
            else -- if the fifo is empty we wait until it's not
                fifoIn_read_en <= '0';
                state <= waiting;
            end if;
            
        when data_reception =>
            fifoIn_read_en <= '0';
            if (Cmd_param_3.RUN = '0') then
            --test <= '1';
                if (fifoIn_valid = '1') then --if the output signal of the fifo is valid
                    if (addr >= "0000000000" and addr < "0000000100" ) then --address of the DEVICE CTRL 1
                        reception_param(31 downto 0) <= fifoIn_dout;
                        state <= idle;
                        
                    elsif (addr >= "0000000100" and addr < "0000001000" ) then --address of the DEVICE CTRL 2
                        reception_param(63 downto 32) <= fifoIn_dout;
                        state <= idle;
                        
                    elsif (addr >= "0000001000" and addr < "0000001100" ) then --address of the MANUAL ROW LSB
                        reception_manual_row(12 downto 0) <= fifoIn_dout(12 downto 0);
                        state <= idle;
                        
                    elsif (addr >= "0000001100" and addr < "0000010000" ) then --address of the MANUAL ROW MSB
                        reception_manual_row(25 downto 13) <= fifoIn_dout(12 downto 0);
                        state <= idle;
                        
                    elsif (addr >= "0000010000" and addr < "0001111000") then --address of the ROW
                        if (addr(2)='0') then --address of the row LSB
                            reception_cmd(num_row)(31 downto 0) <= fifoIn_dout;
                            state <= idle;
                        else --address of the row MSB
                            reception_cmd(num_row)(39 downto 32) <= fifoIn_dout(7 downto 0); -- les bits de 31 à 8 sont des 0 inutiles
                            state <= idle;
                        end if;
                    
                    elsif (addr >= "0001111000" and addr < "0001111100") then
                    
                        reception_param(95 downto 64) <= fifoIn_dout;
                        state <= idle;
                    end if;
                else
                
                    state <= data_reception;
                end if;  
                  
            elsif (Cmd_param_3.RUN = '1') then
                
                if (addr >= "0000000000" and addr < "0000000100") then
                    
                    reception_param(31) <= fifoIn_dout(31); -- reception of Resetn
                    state <= idle;
                    
                elsif (addr >= "0001111000" and addr < "0001111100") then
                    test <= '1';
                    reception_param(64) <= '0'; -- reception of RUN
                    state <= idle;
                end if;
                
            else
                state <= data_reception; -- if the output signal of the fifo is not valid we wait until it is
            end if;
            
    end case;
    end if;
end process;


P_pipeout_process : process (clk100M, rst_n)
begin
    if rst_n = '0' then
        fifoOut_write_en <= '0';
     elsif rising_edge (clk100M) then
        if Cmd_param_3.RUN = '1' then
            fifoOut_write_en <= '1';
        else
            fifoOut_write_en <= '0';
        end if;
    end if;
end process; 

-------- Development of the output pixel signals --------

   uclk : div_freq2 Port map ( 
        sys_clk => sys_clk,
        i_rst => i_rst,
        clk100M => clk100M 
        );
        
   uclk_en : div_freq PORT MAP (
        i_clk => clk100M,
        i_rst_n => rst_n,
        i_freq_row => Cmd_param_3.Freq_row,
        o_clk_en_freq => clk_en_freq
        );

   uu0: sequence_treatment PORT MAP (
          i_clk => clk100M,
          i_clk_en_5M => clk_en_freq,
          i_rst_n => rst_n,
          i_cmd => Cmd_row.Row0,
          i_REV => Cmd_param_1.REV,
          o_sig_overlap => sig_overlap0_int
        );
o_sig_overlap0 <= sig_overlap0_int;
      
   uu1: sequence_treatment PORT MAP (
          i_clk => clk100M,
          i_clk_en_5M => clk_en_freq,
          i_rst_n => rst_n,
          i_cmd => Cmd_row.Row1,
          i_REV => Cmd_param_1.REV,
          o_sig_overlap => sig_overlap1_int
        );
o_sig_overlap1 <= sig_overlap1_int;
        
   uu2: sequence_treatment PORT MAP (
          i_clk => clk100M,
          i_clk_en_5M => clk_en_freq,
          i_rst_n => rst_n,
          i_cmd => Cmd_row.Row2,
          i_REV => Cmd_param_1.REV,
          o_sig_overlap => sig_overlap2_int
        );
o_sig_overlap2 <= sig_overlap2_int;
       
   uu3: sequence_treatment PORT MAP (
          i_clk => clk100M,
          i_clk_en_5M => clk_en_freq,
          i_rst_n => rst_n,
          i_cmd => Cmd_row.Row3,
          i_REV => Cmd_param_1.REV,
          o_sig_overlap => sig_overlap3_int
        );
o_sig_overlap3 <= sig_overlap3_int;
        
   uu4: sequence_treatment PORT MAP (
          i_clk => clk100M,
          i_clk_en_5M => clk_en_freq,
          i_rst_n => rst_n,
          i_cmd => Cmd_row.Row4,
          i_REV => Cmd_param_1.REV,
          o_sig_overlap => sig_overlap4_int
        );
o_sig_overlap4 <= sig_overlap4_int;
        
   uu5: sequence_treatment PORT MAP (
          i_clk => clk100M,
          i_clk_en_5M => clk_en_freq,
          i_rst_n => rst_n,
          i_cmd => Cmd_row.Row5,
          i_REV => Cmd_param_1.REV,
          o_sig_overlap => sig_overlap5_int
        );
o_sig_overlap5 <= sig_overlap5_int;
       
   uu6: sequence_treatment PORT MAP (
          i_clk => clk100M,
          i_clk_en_5M => clk_en_freq,
          i_rst_n => rst_n,
          i_cmd => Cmd_row.Row6,
          i_REV => Cmd_param_1.REV,
          o_sig_overlap => sig_overlap6_int
        );
o_sig_overlap6 <= sig_overlap6_int;
        
   uu7: sequence_treatment PORT MAP (
          i_clk => clk100M,
          i_clk_en_5M => clk_en_freq,
          i_rst_n => rst_n,
          i_cmd => Cmd_row.Row7,
          i_REV => Cmd_param_1.REV,
          o_sig_overlap => sig_overlap7_int
        );
o_sig_overlap7 <= sig_overlap7_int;
        
   uu8: sequence_treatment PORT MAP (
          i_clk => clk100M,
          i_clk_en_5M => clk_en_freq,
          i_rst_n => rst_n,
          i_cmd => Cmd_row.Row8,
          i_REV => Cmd_param_1.REV,
          o_sig_overlap => sig_overlap8_int
        );
o_sig_overlap8 <= sig_overlap8_int;
        
   uu9: sequence_treatment PORT MAP (
          i_clk => clk100M,
          i_clk_en_5M => clk_en_freq,
          i_rst_n => rst_n,
          i_cmd => Cmd_row.Row9,
          i_REV => Cmd_param_1.REV,
          o_sig_overlap => sig_overlap9_int
        );
o_sig_overlap9 <= sig_overlap9_int;
        
   uu10: sequence_treatment PORT MAP (
          i_clk => clk100M,
          i_clk_en_5M => clk_en_freq,
          i_rst_n => rst_n,
          i_cmd => Cmd_row.Row10,
          i_REV => Cmd_param_1.REV,
          o_sig_overlap => sig_overlap10_int
        );
o_sig_overlap10 <= sig_overlap10_int;
        
   uu11: sequence_treatment PORT MAP (
          i_clk => clk100M,
          i_clk_en_5M => clk_en_freq,
          i_rst_n => rst_n,
          i_cmd => Cmd_row.Row11,
          i_REV => Cmd_param_1.REV,
          o_sig_overlap => sig_overlap11_int
        );
o_sig_overlap11 <= sig_overlap11_int;
        
   uu12: sequence_treatment PORT MAP (
          i_clk => clk100M,
          i_clk_en_5M => clk_en_freq,
          i_rst_n => rst_n,
          i_cmd => Cmd_row.Row12,
          i_REV => Cmd_param_1.REV,
          o_sig_overlap => sig_overlap12_int
        );
o_sig_overlap12 <= sig_overlap12_int;
        
fifoOut_din <= sig_overlap12_int & sig_overlap11_int & sig_overlap10_int & sig_overlap9_int & sig_overlap8_int & sig_overlap7_int & sig_overlap6_int & sig_overlap5_int & sig_overlap4_int & sig_overlap3_int & sig_overlap2_int & sig_overlap1_int & sig_overlap0_int;         
-----------------------------------------------------  
-------------- FIFO PipeIn --------------------------
PipeIn_FIFO : fifo_pipein
port map ( rst =>  i_rst,
            wr_clk => okClk,
            rd_clk => clk100M,
            wr_en => pipein_wr,
            rd_en => fifoIn_read_en,
            din => pipein_sig,
            dout => fifoIn_dout,
            full => fifoIn_full,
            empty => fifoIn_empty,
            valid => fifoIn_valid
            );
----------------------------------------------------- 
-------------- FIFO PipeOut -------------------------       
PipeOut_FIFO : fifo_pipeout
  PORT MAP (
    rst => i_rst,
    wr_clk => clk100M,
    rd_clk => okClk,
    din => fifoOut_din,
    wr_en => fifoOut_write_en,
    rd_en => fifoOut_read_en,
    dout => pipeout_sig_13bit,
    full => fifoOut_full,
    empty => fifoOut_empty
  );
----------------------------------------------------- 
--------------- OK endpoints ------------------------
okHI : okHost port map (
	okUH=>okUH, 
	okHU=>okHU, 
	okUHU=>okUHU, 
	okAA=>okAA,
	okClk=>okClk, 
	okHE=>okHE, 
	okEH=>okEH
);

okWO : okWireOR     generic map (N=>2) port map (
    okEH=>okEH, 
    okEHx=>okEHx);

ep00 : okWireIn  port map (
        okHE=>okHE,                                    
        ep_addr=>x"00", 
        ep_dataout=>ep00wire
        );

trigIn40 : okTriggerIn port map(  -- Trigger
	okHE       => okHE,
	ep_addr    => x"40",
	ep_clk     => okClk,
	ep_trigger => ep40trig
);

ep80 : okPipeIn port map (   -- PipeIn
		okHE       => okHE,
		okEH       => okEHx(1*65-1 downto 0*65),
		ep_addr    => x"80",
		ep_write   => pipein_wr,
		ep_dataout => pipein_sig
		);
		
epA0 : okPipeOut port map (   -- PipeOut
		okHE       => okHE,
		okEH       => okEHx(2*65-1 downto 1*65),
		ep_addr    => x"A0",
		ep_read   => fifoOut_read_en,
		ep_datain => pipeout_sig
		);


-----------------------------------------------------   
end Behavioral;
