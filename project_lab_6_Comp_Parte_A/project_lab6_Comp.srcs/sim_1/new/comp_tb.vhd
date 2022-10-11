----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.09.2022 09:47:05
-- Design Name: 
-- Module Name: comp_tb - Behavioral
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

entity comp_tb is
--  Port ( );
end comp_tb;

architecture Behavioral of comp_tb is
component comp_ds is
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

end component comp_ds;

signal A3: std_logic:= '0';
signal A2: std_logic:= '0';
signal A1: std_logic:= '0';
signal A0: std_logic:= '0';
signal B3: std_logic:= '0';
signal B2: std_logic:= '0';
signal B1: std_logic:= '0';
signal B0: std_logic:= '0';
signal less_in: std_logic:= '0';
signal equal_in: std_logic:= '0';
signal greater_in: std_logic:= '0';
signal less_out: std_logic:= '0';
signal equal_out: std_logic:= '0';
signal greater_out: std_logic:= '0';


begin

uut: comp_ds port map (A3=>A3,A2=>A2,A1=>A1,A0=>A0,B3=>B3,B2=>B2,B1=>B1,B0=>B0,less_in=>less_in,equal_in=>equal_in,greater_in=>greater_in,less_out=>less_out,equal_out=>equal_out,greater_out=>greater_out);
Estimulus_process: process

begin
A3<='1';
A2<='0';
A1<='0';
A0<='0';
B3<='0';
B2<='0';
B1<='0';
B0<='0';
less_in<='0';
equal_in<='1';
greater_in<='0';
wait for 20ns;

A3<='1';
A2<='1';
A1<='0';
A0<='0';
B3<='1';
B2<='0';
B1<='0';
B0<='0';
less_in<='0';
equal_in<='1';
greater_in<='0';
wait for 20ns;

A3<='1';
A2<='1';
A1<='1';
A0<='0';
B3<='1';
B2<='1';
B1<='0';
B0<='0';
less_in<='0';
equal_in<='1';
greater_in<='0';
wait for 20ns;

A3<='1';
A2<='1';
A1<='1';
A0<='1';
B3<='1';
B2<='1';
B1<='1';
B0<='0';
less_in<='0';
equal_in<='1';
greater_in<='0';
wait for 20ns;

A3<='1';
A2<='1';
A1<='1';
A0<='1';
B3<='1';
B2<='1';
B1<='1';
B0<='1';
less_in<='0';
equal_in<='1';
greater_in<='0';
wait for 20ns;

A3<='0';
A2<='0';
A1<='0';
A0<='0';
B3<='0';
B2<='0';
B1<='0';
B0<='0';
less_in<='0';
equal_in<='1';
greater_in<='0';
wait for 20ns;

A3<='0';
A2<='0';
A1<='0';
A0<='0';
B3<='0';
B2<='0';
B1<='0';
B0<='1';
less_in<='0';
equal_in<='1';
greater_in<='0';
wait for 20ns;

A3<='0';
A2<='0';
A1<='0';
A0<='0';
B3<='0';
B2<='0';
B1<='1';
B0<='0';
less_in<='0';
equal_in<='1';
greater_in<='0';
wait for 20ns;

A3<='0';
A2<='0';
A1<='0';
A0<='0';
B3<='0';
B2<='1';
B1<='0';
B0<='0';
less_in<='0';
equal_in<='1';
greater_in<='0';
wait for 20ns;

A3<='0';
A2<='0';
A1<='0';
A0<='0';
B3<='1';
B2<='0';
B1<='0';
B0<='0';
less_in<='0';
equal_in<='1';
greater_in<='0';
wait for 20ns;

end process;
end Behavioral;
