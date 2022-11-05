library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Multiplexior is
    Port ( p0 : in STD_LOGIC;
           p1 : in STD_LOGIC;
           A1 : in STD_LOGIC;
           Bout : out STD_LOGIC);
end Multiplexior;

architecture Behavioral of Multiplexior is

component Not_gate is
Port(A: in STD_LOGIC;
     B: out STD_LOGIC);
end component Not_gate;

component And_gate is
Port(A: in STD_LOGIC;
     B: in STD_LOGIC;
     C: out STD_LOGIC);
end component And_gate;

component Or_gate is
Port(A: in STD_LOGIC;
     B: in STD_LOGIC;
     C: out STD_LOGIC);
end component Or_gate;

signal temp0: std_logic:='0';
signal temp1: std_logic:='0';
signal temp2: std_logic:='0';
signal temp3: std_logic:='0';


begin

utt1: and_gate port map (A=>p1, B=>A1, C=>temp1);
utt2: and_gate port map (A=>p0, B=>temp0, C=>temp2);
utt3: not_gate port map (A=>A1, B=>temp0);
utt4: or_gate port map (A=>temp1, B=>temp2, C=>Bout);

end Behavioral;
