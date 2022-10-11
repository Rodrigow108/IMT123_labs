library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or_gate3 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           E : out STD_LOGIC);
end or_gate3;

architecture Behavioral of or_gate3 is

begin

E<= A or B or C or D;
end Behavioral;
