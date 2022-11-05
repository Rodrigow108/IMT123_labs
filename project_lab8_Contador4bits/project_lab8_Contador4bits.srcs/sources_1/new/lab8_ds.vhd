----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.10.2022 09:20:54
-- Design Name: 
-- Module Name: lab8_ds - Behavioral
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

entity lab8_ds is
    Port ( CLOCK1 : in STD_LOGIC;
           reset1 : in STD_LOGIC;
           q0 : inout STD_LOGIC;
           q1 : inout STD_LOGIC;
           q2 : inout STD_LOGIC;
           q3 : inout STD_LOGIC);
end lab8_ds;

architecture Behavioral of lab8_ds is

component Clock is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           clka : out STD_LOGIC);
end component Clock;

component flipflop_D is
    Port ( D : in STD_LOGIC;
           CK, reset : in STD_LOGIC;
           Q : out STD_LOGIC;
           Q1 : out STD_LOGIC);
end component flipflop_D;

signal temp1: std_logic:='0';
signal temp2: std_logic:='0';
signal temp3: std_logic:='0';
signal temp4: std_logic:='0';

signal clk0: std_logic:='0';

begin

reloj_1: Clock port map (clk=>CLOCK1,reset=>reset1,clka=>clk0);

utt1: flipflop_D port map (D=>temp1,CK=>CLOCK1,reset=>reset1,Q=>q0 ,Q1=>temp1);
utt2: flipflop_D port map (D=>temp2,CK=>temp1,reset=>reset1,Q=>q1 ,Q1=>temp2);
utt3: flipflop_D port map (D=>temp3,CK=>temp2,reset=>reset1,Q=>q2 ,Q1=>temp3);
utt4: flipflop_D port map (D=>temp4,CK=>temp3,reset=>reset1,Q=>q3 ,Q1=>temp4);
end Behavioral;
