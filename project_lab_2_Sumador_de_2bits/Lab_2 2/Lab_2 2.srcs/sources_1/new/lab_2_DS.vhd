----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.08.2022 08:03:29
-- Design Name: 
-- Module Name: lab_2_DS - Behavioral
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

entity lab_2_DS is
    Port ( A1: in std_logic;
    A2: in std_logic;
    B1: in std_logic;
    B2: in std_logic;
    S1: out std_logic;
    S2: out std_logic;
    S3: out std_logic);
    end lab_2_DS;

architecture Behavioral of lab_2_DS is

signal U1: std_logic;
signal U2: std_logic;
signal U3: std_logic;
signal U4: std_logic;
signal U5: std_logic;
signal U6: std_logic;
signal U7: std_logic;
signal UX: std_logic;


begin


U1 <= A1 xor B1;
S1 <= U1 xor '0';

U2 <= A1 and B1;
U3 <= U1 and '0';

U4 <= U2 or U3;

U5 <= A2 xor B2;
S2 <= U5 xor U4;

U6 <= U4 and U5;
U7 <= A2 and B2;

S3 <= U6 or U7;


end Behavioral;
