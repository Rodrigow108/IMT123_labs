----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.09.2022 08:12:00
-- Design Name: 
-- Module Name: mod_add_4BIT_ds - Behavioral
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

entity mod_add_4BIT_ds is
    Port ( A0 : in STD_LOGIC;
           A1 : in STD_LOGIC;
           A2 : in STD_LOGIC;
           A3 : in STD_LOGIC;
           B0 : in STD_LOGIC;
           B1 : in STD_LOGIC;
           B2 : in STD_LOGIC;
           B3 : in STD_LOGIC;
           P0 : out STD_LOGIC;
           P1 : out STD_LOGIC;
           P2 : out STD_LOGIC;
           P3 : out STD_LOGIC;
           P4 : out STD_LOGIC;
           P5 : out STD_LOGIC;
           P6 : out STD_LOGIC;
           P7 : out STD_LOGIC);
end mod_add_4BIT_ds;

architecture Behavioral of mod_add_4BIT_ds is

component sum_4bits is
    Port (  
    A0: in std_logic;
    A1: in std_logic;
    A2: in std_logic;
    A3: in std_logic;
    B0: in std_logic;
    B1: in std_logic;
    B2: in std_logic;
    B3: in std_logic;
    S1: out std_logic;
    S2: out std_logic;
    S3: out std_logic;
    S4: out std_logic;
    C: out std_logic);
end component sum_4bits;

    signal U1: std_logic;
    signal U2: std_logic;
    signal U3: std_logic;
    signal U4: std_logic;
    signal U5: std_logic;
    signal U6: std_logic;
    signal U7: std_logic;
    
    signal U8: std_logic;
    signal U9: std_logic;
    signal U10: std_logic;
    signal U11: std_logic;
    signal U12: std_logic;
    signal U13: std_logic;
    signal U14: std_logic;
    signal U15: std_logic;

signal s01: std_logic:='0';
signal s02: std_logic:='0';
signal s03: std_logic:='0';
signal s0c: std_logic:='0';

signal s11: std_logic:='0';
signal s12: std_logic:='0';
signal s13: std_logic:='0';
signal s1c: std_logic:='0';




begin

P0 <= A0 and B0;
U1 <= A1 and B0;
U2 <= A2 and B0;
U3 <= A3 and B0;
U4 <= A0 and B1;
U5 <= A1 and B1;
U6 <= A2 and B1;
U7 <= A3 and B1;

U8 <= A0 and B2;
U9 <= A1 and B2;
U10 <= A2 and B2;
U11 <= A3 and B2;

U12 <= A0 and B3;
U13 <= A1 and B3;
U14 <= A2 and B3;
U15 <= A3 and B3;

utt1: sum_4bits port map (B0=>U1,B1=>U2,B2=>U3,B3=>'0',A0=>U4,A1=>U5,A2=>U6,A3=>U7,S1=>P1,S2=>s01,S3=>s02,S4=>s03,C=>s0c);
utt2: sum_4bits port map (B0=>s01,B1=>s02,B2=>s03,B3=>s0c,A0=>U8,A1=>U9,A2=>U10,A3=>U11,S1=>P2,S2=>s11,S3=>s12,S4=>s13,C=>s1c);
utt3: sum_4bits port map (B0=>s11,B1=>s12,B2=>s13,B3=>s1c,A0=>U12,A1=>U13,A2=>U14,A3=>U15,S1=>P3,S2=>P4,S3=>P5,S4=>P6,C=>P7);

end Behavioral;
