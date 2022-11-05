----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.10.2022 01:11:26
-- Design Name: 
-- Module Name: lab9_ds - Behavioral
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

entity lab9_ds is
    Port (En: in std_logic;
          CLOCK1 : in STD_LOGIC;
          reset1 : in STD_LOGIC;
          q0 : inout STD_LOGIC;
          q1 : inout STD_LOGIC;
          q2 : inout STD_LOGIC;
          q3 : inout STD_LOGIC;
          z : inout std_logic );
end lab9_ds;

architecture Behavioral of lab9_ds is
component ff_d is
    Port ( D : in STD_LOGIC;
           CK, reset : in STD_LOGIC;
           Q : out STD_LOGIC;
           Q1 : out STD_LOGIC);
end component ff_d;

component oscilador is
  generic(size:integer:=26);
    Port ( clk :in std_logic;
           clka:out std_logic);
end component oscilador;


component mul1 is
  Port (En : in STD_LOGIC;
           A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           Dq3 : out STD_LOGIC );
end component mul1;
component mul2 is
  Port (En : in STD_LOGIC;
           A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           Dq2 : out STD_LOGIC );
end component mul2;
component mul_z is
  Port (En : in STD_LOGIC;
           a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           d : in STD_LOGIC;
           z : out STD_LOGIC );
end component mul_z;
component mul3 is
 Port (En : in STD_LOGIC;
           A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           Dq1 : out STD_LOGIC );
end component mul3;
component mul4 is
 Port (En : in STD_LOGIC;
           A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           Dq0 : out STD_LOGIC );
end component mul4;
signal clka1: std_logic:='0';
signal temp1: std_logic:='0';
signal temp2: std_logic:='0';
signal temp3: std_logic:='0';
signal temp4: std_logic:='0';
signal temp: std_logic:='0';
signal U1: std_logic:='0';
signal U2: std_logic:='0';
signal U3: std_logic:='0';
signal U4: std_logic:='0';
signal U5: std_logic:='0';
signal U6: std_logic:='0';
signal U7: std_logic:='0';
signal U8: std_logic:='0';
signal U9: std_logic:='0';

begin

reloj1: oscilador port map(clk=>CLOCK1,clka=>clka1);
utt1: ff_d port map (D=>temp3,CK=>CLOCK1,reset=>reset1,Q=>q3 );
utt2: ff_d port map (D=>temp2,CK=>temp1,reset=>reset1,Q=>q2);
utt3: ff_d port map (D=>temp1,CK=>temp2,reset=>reset1,Q=>q1);
utt4: ff_d port map (D=>temp,CK=>temp3,reset=>reset1,Q=>q0);
mul_q3: mul1 port map (a=>q3,b=>q2,c=>q1,d=>q0,En=>en,Dq3=>temp3);
mul_q2: mul2 port map (a=>q3,b=>q2,c=>q1,d=>q0,En=>en,Dq2=>temp2);
mul_q1: mul3 port map (a=>q3,b=>q2,c=>q1,d=>q0,En=>en,Dq1=>temp1);
mul_q0: mul4 port map (a=>q3,b=>q2,c=>q1,d=>q0,En=>en,Dq0=>temp);
uttz: mul_z port map (En=>en,a=>q3,b=>q2,c=>q1,d=>q0,z=>z);

end Behavioral;
