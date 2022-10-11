----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.09.2022 08:42:13
-- Design Name: 
-- Module Name: lab5_sum4bits - Behavioral
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
entity lab5_sum4bits is
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
    end lab5_sum4bits;

architecture Behavioral of lab5_sum4bits is

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
signal UX: std_logic;


begin


U1 <= A0 xor B0;
S1 <= U1 xor '0';

U2 <= A0 and B0;
U3 <= U1 and '0';

U4 <= U2 or U3;

U5 <= A1 xor B1;
S2 <= U5 xor U4;

U6 <= U4 and U5;
U7 <= A1 and B1;

U8 <= U6 or U7;



U9 <= A2 xor B2;
S3 <= U9 xor U8;

U10 <= A2 and B2;
U11 <= U9 and U8;

U12 <= U10 or U11;

U13 <= A3 xor B3;
S4 <= U13 xor U12;

U14 <= U13 and U12;
U15 <= A3 and B3;

C <= U14 or U15;

end Behavioral;
