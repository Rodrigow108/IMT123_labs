----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.10.2022 09:05:09
-- Design Name: 
-- Module Name: lab7_ds - Behavioral
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

entity lab7_ds is
    Port ( D : in STD_LOGIC;
           Clk_in : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Q0 : out STD_LOGIC;
           Q1 : out STD_LOGIC);
end lab7_ds;

architecture Behavioral of lab7_ds is

signal U1: std_logic;
signal U2: std_logic;
signal U3: std_logic;
signal U4: std_logic;
signal U5: std_logic;
signal U6: std_logic;
signal U7: std_logic;

begin

U1<= not (U4 and U2);
U2<= not (U1 and Clk_in);

U3<= not (U2 and Clk_in and U4);
U4<= not (U3 and D);

U5<= not (U2 and U6);
U6<= not (U3 and U5);

Q0<= U5;
Q1<= U6;

end Behavioral;
