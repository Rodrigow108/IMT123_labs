----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.09.2022 09:11:11
-- Design Name: 
-- Module Name: lab5_tb - Behavioral
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

entity lab5_tb is
--  Port ( );
end lab5_tb;

architecture Behavioral of lab5_tb is

component lab5_sum4bits is
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
    end component lab5_sum4bits;

signal A0: std_logic;
signal A1: std_logic;
signal A2: std_logic;
signal A3: std_logic;
signal B0: std_logic;
signal B1: std_logic;
signal B2: std_logic;
signal B3: std_logic;
signal S1: std_logic;
signal S2: std_logic;
signal S3: std_logic;
signal S4: std_logic;
signal C: std_logic;
begin
uut: lab5_sum4bits port map (A3=>A3, A2=>A2, A1=>A1, A0=>A0,
                                B3=>B3,B2=>B2,B1=>B1,B0=>B0,
                                S1=>S1 ,S2=>S2,S3=>S3,S4=>S4,C=>C);
process
begin

A3<='0';
A2<='0';
A1<='0';
A0<='0';
B3<='0';
B2<='0';
B1<='0';
B0<='0';
wait for 20 ns;

A3<='0';
A2<='0';
A1<='0';
A0<='0';
B3<='0';
B2<='0';
B1<='0';
B0<='1';
wait for 20 ns;

A3<='0';
A2<='0';
A1<='0';
A0<='0';
B3<='0';
B2<='0';
B1<='1';
B0<='0';

wait for 20 ns;

A3<='0';
A2<='1';
A1<='0';
A0<='1';
B3<='0';
B2<='1';
B1<='0';
B0<='0';
wait for 20 ns;

A3<='0';
A2<='0';
A1<='1';
A0<='1';
B3<='1';
B2<='0';
B1<='0';
B0<='1';
wait for 20 ns;

A3<='1';
A2<='1';
A1<='1';
A0<='1';
B3<='0';
B2<='0';
B1<='0';
B0<='0';
wait for 20 ns;

A3<='1';
A2<='1';
A1<='0';
A0<='1';
B3<='1';
B2<='0';
B1<='0';
B0<='0';
wait for 20 ns;

A3<='0';
A2<='1';
A1<='1';
A0<='1';
B3<='0';
B2<='1';
B1<='0';
B0<='1';
wait for 20 ns;

A3<='1';
A2<='0';
A1<='1';
A0<='1';
B3<='0';
B2<='0';
B1<='1';
B0<='0';
wait for 20 ns;

A3<='0';
A2<='0';
A1<='1';
A0<='1';
B3<='0';
B2<='1';
B1<='0';
B0<='1';
wait for 20 ns;

A3<='0';
A2<='0';
A1<='0';
A0<='1';
B3<='1';
B2<='0';
B1<='1';
B0<='0';
wait for 20 ns;

A3<='0';
A2<='1';
A1<='1';
A0<='0';
B3<='0';
B2<='1';
B1<='1';
B0<='0';
wait for 20 ns;

A3<='1';
A2<='1';
A1<='1';
A0<='1';
B3<='1';
B2<='1';
B1<='1';
B0<='1';
wait for 20 ns;

end process;


end Behavioral;
