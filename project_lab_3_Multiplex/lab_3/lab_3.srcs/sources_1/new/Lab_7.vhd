library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Lab_7 is
    Port ( D0 : in STD_LOGIC;
           D1 : in STD_LOGIC;
           D2 : in STD_LOGIC;
           D3 : in STD_LOGIC;
           S0 : in STD_LOGIC;
           S1 : in STD_LOGIC;
           Q : out STD_LOGIC);
end Lab_7;

architecture Behavioral of Lab_7 is

component not_gate is
    Port ( A : in STD_LOGIC;
           B : out STD_LOGIC);
end component not_gate;

component and_gate2 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : out STD_LOGIC);
end component and_gate2;

component or_gate3 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           E : out STD_LOGIC);
end component or_gate3;


signal temp1: std_logic:='0';
signal temp2: std_logic:='0';
signal temp3: std_logic:='0';
signal temp4: std_logic:='0';
signal temp5: std_logic:='0';
signal temp6: std_logic:='0';



begin

 utt1: not_gate port map (A=>S0, B=>temp1);
 utt2: not_gate port map (A=>S1, B=>temp2);
 utt3: and_gate2 port map (A=>D0, B=>temp2,C=>temp1,D=>temp3);
 utt4: and_gate2 port map (A=>D1, B=>temp2,C=>S0,D=>temp4);
 utt5: and_gate2 port map (A=>D2, B=>S1, C=>temp1, D=>temp5);
 utt6: and_gate2 port map (A=>D3, B=>S1, C=>S0, D=>temp6);
 utt7: or_gate3 port map (A=>temp3, B=>temp4, C=>temp5, D=>temp6,E=>Q);
end Behavioral;
