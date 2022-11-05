----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.10.2022 09:06:30
-- Design Name: 
-- Module Name: lab10_ds - Behavioral
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

entity lab10_ds is
    Port ( En : in STD_LOGIC;
           reset1 : in STD_LOGIC;
           CLOCK1 : in STD_LOGIC;
           q0 : inout STD_LOGIC;
           q1 : inout STD_LOGIC;
           q2 : inout STD_LOGIC;
           z : out STD_LOGIC);
end lab10_ds;

architecture Behavioral of lab10_ds is

component clock is
generic(size:integer:=26);
    Port ( clk :in std_logic;
           clka:out std_logic);
end component clock;

component flip_flop_D is
    Port ( D : in STD_LOGIC;
           CK, reset : in STD_LOGIC;
           Q : out STD_LOGIC;
           Q1 : out STD_LOGIC);
end component flip_flop_D;

component multi_q2 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           en : in STD_LOGIC;
           Dq2 : out STD_LOGIC);
end component multi_q2;
component muti_q1 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           en : in STD_LOGIC;
           Dq1 : out STD_LOGIC);
end component muti_q1;

component multi_q0 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           en : in STD_LOGIC;
           Dq0 : out STD_LOGIC);
end component multi_q0;
component multi_Z is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           en : in STD_LOGIC;
           z : out STD_LOGIC);
end component multi_Z;

signal clk0: std_logic:='0';
signal temp_q2: std_logic:='0';
signal temp_q1: std_logic:='0';
signal temp_q0: std_logic:='0';
signal temp_z: std_logic:='0';

begin

reloj_1: clock port map (clk=>CLOCK1,clka=>clk0);

D_q2: flip_flop_D port map (D=>temp_q2,CK=>CLOCK1,reset=>reset1,Q=>q2);
D_q1: flip_flop_D port map (D=>temp_q1,CK=>CLOCK1,reset=>reset1,Q=>q1);
D_q0: flip_flop_D port map (D=>temp_q0,CK=>CLOCK1,reset=>reset1,Q=>q0);
mul_q2: multi_q2 port map (a=>q2,b=>q1,c=>q0,en=>En,Dq2=>temp_q2);
mul_q1: muti_q1 port map (a=>q2,b=>q1,c=>q0,en=>En,Dq1=>temp_q1);
mul_q0: multi_q0 port map (a=>q2,b=>q1,c=>q0,en=>En,Dq0=>temp_q0);
mul_qZ: multi_Z port map (a=>q2,b=>q1,c=>q0,en=>En,z=>z);
end Behavioral;
