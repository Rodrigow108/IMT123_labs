----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.10.2022 09:25:13
-- Design Name: 
-- Module Name: lba8_tb - Behavioral
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

entity lba8_tb is
--  Port ( );
end lba8_tb;

architecture Behavioral of lba8_tb is

component lab8_ds is
    Port ( CLOCK1 : in STD_LOGIC;
           reset1 : in STD_LOGIC;
           q0 : inout STD_LOGIC;
           q1 : inout STD_LOGIC;
           q2 : inout STD_LOGIC;
           q3 : inout STD_LOGIC);
end component lab8_ds;

signal CLOCK1 : STD_LOGIC:= '0';
signal reset1 : STD_LOGIC:= '0';
signal q0 : STD_LOGIC;
signal q1 : STD_LOGIC;
signal q2 : STD_LOGIC;
signal q3 : STD_LOGIC;

begin

utt: lab8_ds port map (CLOCK1=>CLOCK1,reset1=>reset1,q0=>q0,q1=>q1,q2=>q2,q3=>q3);
Estimulus_poroceess: process
begin

CLOCK1<='1';
reset1<='1';
wait for 20ns;
CLOCK1<='0';
reset1<='1';
wait for 20ns;

CLOCK1<='1';
reset1<='0';
wait for 20ns;
CLOCK1<='0';
reset1<='0';
wait for 20ns;
CLOCK1<='1';
reset1<='0';
wait for 20ns;
CLOCK1<='0';
reset1<='0';
wait for 20ns;
CLOCK1<='1';
reset1<='0';
wait for 20ns;
CLOCK1<='0';
reset1<='0';
wait for 20ns;
CLOCK1<='1';
reset1<='0';
wait for 20ns;
CLOCK1<='0';
reset1<='0';
wait for 20ns;

CLOCK1<='0';
reset1<='0';
wait for 20ns;
CLOCK1<='1';
reset1<='0';
wait for 20ns;

CLOCK1<='0';
reset1<='0';
wait for 20ns;
CLOCK1<='1';
reset1<='0';
wait for 20ns;

CLOCK1<='0';
reset1<='0';
wait for 20ns;
CLOCK1<='1';
reset1<='0';
wait for 20ns;

CLOCK1<='0';
reset1<='0';
wait for 20ns;
CLOCK1<='1';
reset1<='0';
wait for 20ns;

CLOCK1<='0';
reset1<='0';
wait for 20ns;
CLOCK1<='1';
reset1<='0';
wait for 20ns;

CLOCK1<='0';
reset1<='0';
wait for 20ns;
CLOCK1<='1';
reset1<='0';
wait for 20ns;

CLOCK1<='0';
reset1<='0';
wait for 20ns;
CLOCK1<='1';
reset1<='0';
wait for 20ns;

CLOCK1<='0';
reset1<='0';
wait for 20ns;
CLOCK1<='1';
reset1<='0';
wait for 20ns;

CLOCK1<='0';
reset1<='0';
wait for 20ns;
CLOCK1<='1';
reset1<='0';
wait for 20ns;

CLOCK1<='0';
reset1<='0';
wait for 20ns;
CLOCK1<='1';
reset1<='0';
wait for 20ns;

CLOCK1<='0';
reset1<='0';
wait for 20ns;
CLOCK1<='1';
reset1<='0';
wait for 20ns;

CLOCK1<='0';
reset1<='0';
wait for 20ns;
CLOCK1<='1';
reset1<='0';
wait for 20ns;

CLOCK1<='0';
reset1<='0';
wait for 20ns;
CLOCK1<='1';
reset1<='0';
wait for 20ns;

CLOCK1<='0';
reset1<='0';
wait for 20ns;
CLOCK1<='1';
reset1<='0';
wait for 20ns;

CLOCK1<='0';
reset1<='0';
wait for 20ns;
CLOCK1<='1';
reset1<='0';
wait for 20ns;


end process;
end Behavioral;
