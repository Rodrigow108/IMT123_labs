----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.09.2022 08:12:36
-- Design Name: 
-- Module Name: mod_add_4BIT_tb - Behavioral
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

entity mod_add_4BIT_tb is
--  Port ( );
end mod_add_4BIT_tb;

architecture Behavioral of mod_add_4BIT_tb is

component mod_add_4BIT_ds is
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
end component mod_add_4BIT_ds;

signal A3: std_logic:='0';
signal A2: std_logic:='0';
signal A1: std_logic:='0';
signal A0: std_logic:='0';
signal B3: std_logic:='0';
signal B2: std_logic:='0';
signal B1: std_logic:='0';
signal B0: std_logic:='0';
signal P7: std_logic:='0';
signal P6: std_logic:='0';
signal P5: std_logic:='0';
signal P4: std_logic:='0';
signal P3: std_logic:='0';
signal P2: std_logic:='0';
signal P1: std_logic:='0';
signal P0: std_logic:='0';

begin
uut: mod_add_4BIT_ds port map (A3=>A3, A2=>A2, A1=>A1, A0=>A0,
                                B3=>B3,B2=>B2,B1=>B1,B0=>B0,
                                P7=>P7 ,P6=>P6,P5=>P5,P4=>P4,P3=>P3,P2=>P2,P1=>P1,P0=>P0);
Estimulus_process: process
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
