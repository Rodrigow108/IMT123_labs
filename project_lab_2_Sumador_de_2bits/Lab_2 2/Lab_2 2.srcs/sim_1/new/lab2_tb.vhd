----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.08.2022 08:05:44
-- Design Name: 
-- Module Name: lab2_tb - Behavioral
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

entity lab2_tb is
-- Port ();
end lab2_tb;

architecture Behavioral of lab2_tb is

component lab_2_DS is
    Port ( A1: in std_logic;    
    B1: in std_logic;
    A2: in std_logic;
    B2: in std_logic;
    S1: out std_logic;
    S2: out std_logic;
    S3: out std_logic);
    end component lab_2_DS;

signal A1_s: std_logic;
signal B1_s: std_logic;
signal A2_s: std_logic;
signal B2_s: std_logic;
signal S1_s: std_logic;
signal S2_s: std_logic;
signal S3_s: std_logic;

begin

Dut: lab_2_DS port map(
            A1 => A1_s,
            B1 => B1_s,
            A2 => A2_s,
            B2 => B2_s,
            S1 => S1_s,
            S2 => S2_s,
            S3 => S3_s
);
process 
begin 
A1_s <= '0';
B1_s <= '0';
A2_s <= '0';
B2_s <= '0';
wait for 50 ns;

A1_s <= '0';
B1_s <= '0';
A2_s <= '0';
B2_s <= '1';
wait for 50 ns;

A1_s <= '0';
B1_s <= '0';
A2_s <= '1';
B2_s <= '0';
wait for 50 ns;

A1_s <= '0';
B1_s <= '0';
A2_s <= '1';
B2_s <= '1';
wait for 50 ns;

A1_s <= '0';
B1_s <= '1';
A2_s <= '0';
B2_s <= '0';
wait for 50 ns;

A1_s <= '0';
B1_s <= '1';
A2_s <= '0';
B2_s <= '1';
wait for 50 ns;

A1_s <= '0';
B1_s <= '1';
A2_s <= '1';
B2_s <= '0';
wait for 50 ns;

A1_s <= '0';
B1_s <= '1';
A2_s <= '1';
B2_s <= '1';
wait for 50 ns;

A1_s <= '1';
B1_s <= '0';
A2_s <= '0';
B2_s <= '0';
wait for 50 ns;

A1_s <= '1';
B1_s <= '0';
A2_s <= '0';
B2_s <= '1';
wait for 50 ns;

A1_s <= '1';
B1_s <= '0';
A2_s <= '1';
B2_s <= '0';
wait for 50 ns;

A1_s <= '1';
B1_s <= '0';
A2_s <= '1';
B2_s <= '1';
wait for 50 ns;

A1_s <= '1';
B1_s <= '1';
A2_s <= '0';
B2_s <= '0';
wait for 50 ns;

A1_s <= '1';
B1_s <= '1';
A2_s <= '0';
B2_s <= '1';
wait for 50 ns;

A1_s <= '1';
B1_s <= '1';
A2_s <= '1';
B2_s <= '0';
wait for 50 ns;

A1_s <= '1';
B1_s <= '1';
A2_s <= '1';
B2_s <= '1';
wait for 50 ns;

end process;

end Behavioral;
