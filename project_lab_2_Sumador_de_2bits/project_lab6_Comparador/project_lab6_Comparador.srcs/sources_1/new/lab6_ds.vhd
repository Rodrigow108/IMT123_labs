----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.09.2022 10:50:18
-- Design Name: 
-- Module Name: lab6_ds - Behavioral
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

entity lab6_ds is
    Port ( A0 : in STD_LOGIC;
           A1 : in STD_LOGIC;
           A2 : in STD_LOGIC;
           A3 : in STD_LOGIC;
           A4 : in STD_LOGIC;
           A5 : in STD_LOGIC;
           A6 : in STD_LOGIC;
           A7 : in STD_LOGIC;
           A8 : in STD_LOGIC;
           A9 : in STD_LOGIC;
           A10 : in STD_LOGIC;
           A11 : in STD_LOGIC;
           B0 : in STD_LOGIC;
           B1 : in STD_LOGIC;
           B2 : in STD_LOGIC;
           B3 : in STD_LOGIC;
           B4 : in STD_LOGIC;
           B5 : in STD_LOGIC;
           B6 : in STD_LOGIC;
           B7 : in STD_LOGIC;
           B8 : in STD_LOGIC;
           B9 : in STD_LOGIC;
           B10 : in STD_LOGIC;
           B11 : in STD_LOGIC;
           less : out STD_LOGIC;
           equal : out STD_LOGIC;
           grater : out STD_LOGIC);
end lab6_ds;

architecture Behavioral of lab6_ds is

component comp is
Port (
      A0: in std_logic;
      A1: in std_logic;
      A2: in std_logic;
      A3: in std_logic;
      B0: in std_logic;
      B1: in std_logic;
      B2: in std_logic;
      B3: in std_logic;     
      less_in: in std_logic;
      greater_in: in std_logic;
      equal_in: in std_logic;
      less_out: out std_logic;
      greater_out: out std_logic;
      equal_out: out std_logic);
end component comp;

signal temp1: std_logic:='0';
signal temp2: std_logic:='0';
signal temp3: std_logic:='0';
signal temp4: std_logic:='0';
signal temp5: std_logic:='0';
signal temp6: std_logic:='0';

begin

utt: comp port map (less_in=>'0',greater_in=>'0',equal_in=>'1',A0=>A0,A1=>A1,A2=>A2,A3=>A3,
                    B0=>B0, B1=>B1, B2=>B2, B3=>B3, less_out=>temp1, equal_out=>temp2,greater_out=>temp3);
utt1: comp port map (less_in=>temp1,greater_in=>temp3,equal_in=>temp2,A0=>A4,A1=>A5,A2=>A6,A3=>A7,
                    B0=>B4, B1=>B5, B2=>B6, B3=>B7, less_out=>temp4, equal_out=>temp5,greater_out=>temp6);
utt2: comp port map (less_in=>temp4,greater_in=>temp6,equal_in=>temp5,A0=>A8,A1=>A9,A2=>A10,A3=>A11,
                    B0=>B8, B1=>B9, B2=>B10, B3=>B11, less_out=>less, equal_out=>equal,greater_out=>grater);
end Behavioral;
