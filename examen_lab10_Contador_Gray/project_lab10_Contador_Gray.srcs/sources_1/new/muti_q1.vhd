----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.10.2022 20:55:41
-- Design Name: 
-- Module Name: muti_q1 - Behavioral
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

entity muti_q1 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           en : in STD_LOGIC;
           Dq1 : out STD_LOGIC);
end muti_q1;

architecture Behavioral of muti_q1 is

signal U1: std_logic;
signal U2: std_logic;

begin

U1<= b and ((not c) or en);
U2<= (not a) and c and (not en);
Dq1<= U1 or U2;
end Behavioral;
