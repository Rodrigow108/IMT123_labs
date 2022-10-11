----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.09.2022 10:52:14
-- Design Name: 
-- Module Name: lab6_tb - Behavioral
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

entity lab6_tb is
--  Port ( );
end lab6_tb;

architecture Behavioral of lab6_tb is

component lab6_ds is
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
end component lab6_ds;

signal less: std_logic:='0';
signal equal: std_logic:='0';
signal grater: std_logic:='0';
signal A11: std_logic:='0';
signal A10: std_logic:='0';
signal A9: std_logic:='0';
signal A8: std_logic:='0';
signal A7: std_logic:='0';
signal A6: std_logic:='0';
signal A5: std_logic:='0';
signal A4: std_logic:='0';
signal A3: std_logic:='0';
signal A2: std_logic:='0';
signal A1: std_logic:='0';
signal A0: std_logic:='0';
signal B11: std_logic:='0';
signal B10: std_logic:='0';
signal B9: std_logic:='0';
signal B8: std_logic:='0';
signal B7: std_logic:='0';
signal B6: std_logic:='0';
signal B5: std_logic:='0';
signal B4: std_logic:='0';
signal B3: std_logic:='0';
signal B2: std_logic:='0';
signal B1: std_logic:='0';
signal B0: std_logic:='0';


begin

uut: lab6_ds port map (less=>less, equal=>equal, grater=>grater, A11=>A11, A10=>A10, A9=>A9, A8=>A8, A7=>A7, A6=>A6, A5=>A5, A4=>A4, A3=>A3, A2=>A2, A1=>A1, A0=>A0,
                        B11=>B11, B10=>B10, B9=>B9, B8=>B8, B7=>B7, B6=>B6, B5=>B5, B4=>B4, B3=>B3, B2=>B2, B1=>B1, B0=>B0);
Estimulus_process: process
begin

A11<='1';
A10<='0';
A9<='1';
A8<='0';
A7<='0';
A6<='0';
A5<='0';
A4<='1';
A3<='1';
A2<='0';
A1<='1';
A0<='0';

B11<='1';
B10<='0';
B9<='1';
B8<='1';
B7<='0';
B6<='0';
B5<='1';
B4<='0';
B3<='1';
B2<='1';
B1<='0';
B0<='1';
wait for 20ns;


A11<='0';
A10<='0';
A9<='0';
A8<='1';
A7<='0';
A6<='1';
A5<='0';
A4<='0';
A3<='0';
A2<='1';
A1<='0';
A0<='1';

B11<='0';
B10<='0';
B9<='0';
B8<='1';
B7<='1';
B6<='0';
B5<='0';
B4<='0';
B3<='0';
B2<='0';
B1<='1';
B0<='0';
wait for 20ns;

A11<='0';
A10<='1';
A9<='1';
A8<='0';
A7<='1';
A6<='0';
A5<='0';
A4<='1';
A3<='0';
A2<='1';
A1<='0';
A0<='0';

B11<='0';
B10<='1';
B9<='1';
B8<='0';
B7<='1';
B6<='0';
B5<='0';
B4<='1';
B3<='0';
B2<='1';
B1<='0';
B0<='0';
wait for 20ns;

A11<='1';
A10<='0';
A9<='1';
A8<='0';
A7<='1';
A6<='1';
A5<='0';
A4<='1';
A3<='0';
A2<='1';
A1<='0';
A0<='1';

B11<='0';
B10<='1';
B9<='0';
B8<='1';
B7<='0';
B6<='1';
B5<='1';
B4<='0';
B3<='1';
B2<='0';
B1<='1';
B0<='0';
wait for 20ns;

A11<='1';
A10<='0';
A9<='1';
A8<='0';
A7<='1';
A6<='0';
A5<='1';
A4<='0';
A3<='1';
A2<='0';
A1<='0';
A0<='1';

B11<='1';
B10<='0';
B9<='1';
B8<='0';
B7<='1';
B6<='0';
B5<='1';
B4<='0';
B3<='1';
B2<='0';
B1<='0';
B0<='1';
wait for 20ns;

A11<='0';
A10<='0';
A9<='0';
A8<='0';
A7<='0';
A6<='0';
A5<='1';
A4<='0';
A3<='1';
A2<='0';
A1<='0';
A0<='1';

B11<='0';
B10<='0';
B9<='0';
B8<='0';
B7<='0';
B6<='0';
B5<='1';
B4<='0';
B3<='1';
B2<='0';
B1<='1';
B0<='0';
wait for 20ns;

end process;
end Behavioral;
