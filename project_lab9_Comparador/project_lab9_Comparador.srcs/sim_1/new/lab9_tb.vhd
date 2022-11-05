----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.10.2022 01:13:13
-- Design Name: 
-- Module Name: lab9_tb - Behavioral
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

entity lab9_tb is
--  Port ( );
end lab9_tb;

architecture Behavioral of lab9_tb is
component lab9_ds is
    Port (En: in std_logic;
          CLOCK1 : in STD_LOGIC;
          reset1 : in STD_LOGIC;
          q0 : inout STD_LOGIC;
          q1 : inout STD_LOGIC;
          q2 : inout STD_LOGIC;
          q3 : inout STD_LOGIC;
          z : inout std_logic );
end component lab9_ds;

signal En: std_logic:='0';
signal reset1: std_logic:='0';
signal CLOCK1: std_logic:='0';

signal q3: std_logic;
signal q2: std_logic;
signal q1: std_logic;
signal q0: std_logic;
signal z: std_logic:='0'; 


begin

Dut: lab9_ds port map (En=>En,CLOCK1=>CLOCK1,reset1=>reset1,q0=>q0,q1=>q1,q2=>q2,q3=>q3,z=>z);

Estimuls_process: process

begin
En<='1';
CLOCK1<='1';
reset1<='1';
wait for 20ns;
En<='1';
CLOCK1<='0';
reset1<='1';
wait for 20ns;

En<='1';
CLOCK1<='1';
reset1<='0';
wait for 20ns;
En<='1';
CLOCK1<='0';
reset1<='0';
wait for 20ns;
En<='1';
CLOCK1<='1';
reset1<='0';
wait for 20ns;
En<='1';
CLOCK1<='0';
reset1<='0';
wait for 20ns;
En<='1';
CLOCK1<='1';
reset1<='0';
wait for 20ns;
En<='1';
CLOCK1<='0';
reset1<='0';
wait for 20ns;
En<='1';
CLOCK1<='1';
reset1<='0';
wait for 20ns;
En<='1';
CLOCK1<='0';
reset1<='0';
wait for 20ns;
En<='1';
CLOCK1<='1';
reset1<='0';
wait for 20ns;
En<='1';
CLOCK1<='0';
reset1<='0';
wait for 20ns;
En<='1';
CLOCK1<='1';
reset1<='0';
wait for 20ns;
En<='1';
CLOCK1<='0';
reset1<='0';
wait for 20ns;
En<='1';
CLOCK1<='1';
reset1<='0';
wait for 20ns;

En<='0';
CLOCK1<='1';
reset1<='0';
wait for 20ns;
En<='0';
CLOCK1<='0';
reset1<='0';
wait for 20ns;
En<='0';
CLOCK1<='1';
reset1<='0';
wait for 20ns;
En<='0';
CLOCK1<='0';
reset1<='0';
wait for 20ns;
En<='0';
CLOCK1<='1';
reset1<='0';
wait for 20ns;
En<='0';
CLOCK1<='0';
reset1<='0';
wait for 20ns;
En<='0';
CLOCK1<='1';
reset1<='0';
wait for 20ns;
En<='0';
CLOCK1<='0';
reset1<='0';
wait for 20ns;
En<='0';
CLOCK1<='1';
reset1<='0';
wait for 20ns;
En<='0';
CLOCK1<='0';
reset1<='0';
wait for 20ns;
En<='0';
CLOCK1<='1';
reset1<='0';
wait for 20ns;
En<='0';
CLOCK1<='0';
reset1<='0';
wait for 20ns;
En<='0';
CLOCK1<='1';
reset1<='0';
wait for 20ns;
En<='0';
CLOCK1<='0';
reset1<='0';
wait for 20ns;
En<='0';
CLOCK1<='1';
reset1<='0';
wait for 20ns;

En<='0';
CLOCK1<='1';
reset1<='0';
wait for 20ns;



end process;



end Behavioral;
