----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.10.2022 09:06:41
-- Design Name: 
-- Module Name: lab7_tb - Behavioral
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

entity lab7_tb is
--  Port ( );
end lab7_tb;

architecture Behavioral of lab7_tb is

component lab7_ds is
    Port ( D : in STD_LOGIC;
           Clk_in : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Q0 : out STD_LOGIC;
           Q1 : out STD_LOGIC);
end component lab7_ds;

signal D_s: STD_LOGIC;
signal Clk_in_s : STD_LOGIC;
signal Reset_s : STD_LOGIC;
signal Q0_s : STD_LOGIC;
signal Q1_s : STD_LOGIC;

begin

Dut: lab7_ds port map (D<=D_s);


end Behavioral;
