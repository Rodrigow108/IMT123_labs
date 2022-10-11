----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.09.2022 09:50:31
-- Design Name: 
-- Module Name: comp - Behavioral
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comp is
Port (
      A0: in std_logic;
      A1: in std_logic;
      A2: in std_logic;
      A3: in std_logic;
      B0: in std_logic;
      B1: in std_logic;
      B2: in std_logic;
      B3: in std_logic;     
      less_in: in std_logic;
      greater_in: in std_logic;
      equal_in: in std_logic;
      less_out: out std_logic;
      greater_out: out std_logic;
      equal_out: out std_logic);
end comp;

architecture Behavioral of comp is

component not_gate is
    Port ( A : in STD_LOGIC;
           B : out STD_LOGIC);
end component not_gate;

component and_gate5 is
Port(A: in STD_LOGIC;
     B: in STD_LOGIC;
     C: in STD_LOGIC;
     D: in STD_LOGIC;
     E: in STD_LOGIC;
     F: out STD_LOGIC);
end component and_gate5;

component nand_gate2 is
Port(A: in STD_LOGIC;
     B: in STD_LOGIC;
     C: out STD_LOGIC);
end component nand_gate2;

component xor_gate2 is
Port(A: in STD_LOGIC;
     B: in STD_LOGIC;
     C: out STD_LOGIC);
end component xor_gate2;

component or_gate2 is
Port(A: in STD_LOGIC;
     B: in STD_LOGIC;
     C: out STD_LOGIC);
end component or_gate2;

component or_gate3 is
Port(A: in STD_LOGIC;
     B: in STD_LOGIC;
     C: in STD_LOGIC;
     D: out STD_LOGIC);
end component or_gate3;

component or_gate4 is
Port(A: in STD_LOGIC;
     B: in STD_LOGIC;
     C: in STD_LOGIC;
     D: in STD_LOGIC;
     E: out STD_LOGIC);
end component or_gate4;

component or_gate5 is
Port(A: in STD_LOGIC;
     B: in STD_LOGIC;
     C: in STD_LOGIC;
     D: in STD_LOGIC;
     E: in STD_LOGIC;
     F: out STD_LOGIC);
end component or_gate5;

component nand_gate5 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           E : in STD_LOGIC;
           F : out STD_LOGIC);
end component nand_gate5;

component nand_gate3 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : out STD_LOGIC);
end component nand_gate3;



signal temp1: std_logic:='0';
signal temp2: std_logic:='0';
signal temp3: std_logic:='0';
signal temp4: std_logic:='0';
signal temp5: std_logic:='0';
signal temp6: std_logic:='0';
signal temp7: std_logic:='0';
signal temp8: std_logic:='0';
signal temp9: std_logic:='0';
signal temp10: std_logic:='0';
signal temp11: std_logic:='0';
signal temp12: std_logic:='0';
signal temp13: std_logic:='0';
signal temp14: std_logic:='0';
signal temp15: std_logic:='0';
signal temp16: std_logic:='0';
signal temp17: std_logic:='0';
signal temp18: std_logic:='0';
signal temp19: std_logic:='0';
signal temp20: std_logic:='0';
signal temp21: std_logic:='0';
signal temp22: std_logic:='0';
signal temp23: std_logic:='0';
signal temp24: std_logic:='0';
signal temp25: std_logic:='0';
signal temp26: std_logic:='0';
signal temp27: std_logic:='0';
signal temp28: std_logic:='0';
signal temp29: std_logic:='0';
signal temp30: std_logic:='0';
signal temp31: std_logic:='0';
signal temp32: std_logic:='0';
signal temp33: std_logic:='0';
signal temp34: std_logic:='0';
signal temp35: std_logic:='0';
signal temp36: std_logic:='0';
signal temp37: std_logic:='0';
signal temp38: std_logic:='0';
signal temp39: std_logic:='0';
signal temp40: std_logic:='0';
signal temp41: std_logic:='0';
signal temp42: std_logic:='0';
signal temp43: std_logic:='0';
signal temp44: std_logic:='0';
signal temp45: std_logic:='0';
signal temp46: std_logic:='0';
signal temp47: std_logic:='0';
signal temp48: std_logic:='0';
signal temp49: std_logic:='0';

begin

utt1: not_gate port map (A=> A0, B=>temp1);
utt2: not_gate port map (A=> A1, B=>temp2);
utt3: not_gate port map (A=> A2, B=>temp3);
utt4: not_gate port map (A=> A3, B=>temp4);
utt5: not_gate port map (A=> B0, B=>temp5);
utt6: not_gate port map (A=> B1, B=>temp6);
utt7: not_gate port map (A=> B2, B=>temp7);
utt8: not_gate port map (A=> B3, B=>temp8);
utt9: not_gate port map (A=> less_in, B=>temp9);
utt10: not_gate port map (A=> greater_in, B=>temp10);
utt11: not_gate port map (A=> equal_in, B=>temp11);
utt12: not_gate port map (A=> temp11, B=>temp12);

utt13: nand_gate2 port map (A=> temp4 ,B=>B3, C=>temp13);
utt14: nand_gate2 port map (A=> temp8 ,B=>A3, C=>temp14);
utt15: nand_gate2 port map (A=> temp3 ,B=>B2, C=>temp15);
utt16: nand_gate2 port map (A=> temp7 ,B=>A2, C=>temp16);
utt17: nand_gate2 port map (A=> temp2 ,B=>B1, C=>temp17);
utt18: nand_gate2 port map (A=> temp6 ,B=>A1, C=>temp18);
utt19: nand_gate2 port map (A=> temp1 ,B=>B0, C=>temp19);
utt20: nand_gate2 port map (A=> temp5 ,B=>A0, C=>temp20);

utt21: nand_gate2 port map (A=> temp8 ,B=>A3, C=>temp21);
utt22: nand_gate2 port map (A=> temp4 ,B=>B3, C=>temp22);
utt23: nand_gate2 port map (A=> temp7 ,B=>A2, C=>temp23);
utt24: nand_gate2 port map (A=> temp3 ,B=>B2, C=>temp24);
utt25: nand_gate2 port map (A=> temp6 ,B=>A1, C=>temp25);
utt26: nand_gate2 port map (A=> temp2 ,B=>B1, C=>temp26);
utt27: nand_gate2 port map (A=> temp5 ,B=>A0, C=>temp27);
utt28: nand_gate2 port map (A=> temp1 ,B=>B0, C=>temp28);

utt29: xor_gate2 port map (A=> temp13 ,B=>temp14, C=>temp29);
utt30: xor_gate2 port map (A=> temp15 ,B=>temp16, C=>temp30);
utt31: xor_gate2 port map (A=> temp17 ,B=>temp18, C=>temp31);
utt32: xor_gate2 port map (A=> temp19 ,B=>temp20, C=>temp32);

utt33: xor_gate2 port map (A=> temp21 ,B=>temp22, C=>temp33);
utt34: xor_gate2 port map (A=> temp23 ,B=>temp24, C=>temp34);
utt35: xor_gate2 port map (A=> temp25 ,B=>temp26, C=>temp35);
utt36: xor_gate2 port map (A=> temp27 ,B=>temp28, C=>temp36);

utt37: or_gate2 port map (A=> temp29 ,B=>temp15, C=>temp37);
utt38: or_gate3 port map (A=> temp29 ,B=>temp30, C=>temp17, D=>temp38);
utt39: or_gate4 port map (A=> temp29 ,B=>temp30, C=>temp31, D=>temp19, E=>temp39);
utt40: or_gate5 port map (A=> temp29 ,B=>temp30, C=>temp31, D=>temp32, E=>temp9, F=>temp40);

utt41: or_gate2 port map (A=> temp33 ,B=>temp23, C=>temp41);
utt42: or_gate3 port map (A=> temp33 ,B=>temp34, C=>temp25, D=>temp42);
utt43: or_gate4 port map (A=> temp33 ,B=>temp34, C=>temp35, D=>temp27, E=>temp43);
utt44: or_gate5 port map (A=> temp33 ,B=>temp34, C=>temp35, D=>temp36, E=>temp10, F=>temp44);

utt45: nand_gate5 port map (A=> temp13 ,B=>temp37, C=>temp38, D=>temp39, E=>temp40, F=>temp45);
utt46: nand_gate5 port map (A=> temp21 ,B=>temp41, C=>temp42, D=>temp43, E=>temp44, F=>temp46);
utt47: not_gate port map (A=> temp45, B=>temp47);
utt48: not_gate port map (A=> temp46, B=>temp48);
utt59: nand_gate3 port map (A=> temp47 ,B=>temp48, C=>temp12, D=>temp49);
utt50: not_gate port map (A=> temp47, B=>less_out);
utt51: not_gate port map (A=> temp48, B=>greater_out);
utt52: not_gate port map (A=> temp49, B=>equal_out);

end Behavioral;
