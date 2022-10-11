library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and_gate2 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : out STD_LOGIC);
end and_gate2;

architecture Behavioral of and_gate2 is

begin

D<= A and B and C;

end Behavioral;
