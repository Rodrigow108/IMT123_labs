library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Flipflop_tb is
--  Port ( );
end Flipflop_tb;

architecture Behavioral of Flipflop_tb is

component flipflop_B is
         Port ( D : in STD_LOGIC;
           CLOCK1 : in STD_LOGIC;
           reset0 : in STD_LOGIC;
           q0 : inout STD_LOGIC_VECTOR (1 downto 0));
end component flipflop_B;

signal D: std_logic:= '0';
signal CLOCK1: std_logic:= '0';
signal reset0: std_logic:= '0';
signal q0: std_logic_vector(1 downto 0);

begin
utt: flipflop_B port map (D=>D, CLOCK1=>CLOCK1, reset0=>reset0, q0=>q0);
Estimulus_process: process
begin
D <= '1';
CLOCK1 <= '1';
reset0 <= '0';
wait for 20 ns;

D <= '1';
CLOCK1 <= '0';
reset0 <= '0';
wait for 20 ns;

D <= '1';
CLOCK1 <= '1';
reset0 <= '0';
wait for 20 ns;

D <= '1';
CLOCK1 <= '0';
reset0 <= '0';
wait for 20 ns;

D <= '1';
CLOCK1 <= '1';
reset0 <= '0';
wait for 20 ns;

D <= '1';
CLOCK1 <= '0';
reset0 <= '0';
wait for 20 ns;

D <= '1';
CLOCK1 <= '1';
reset0 <= '0';
wait for 20 ns;

D <= '1';
CLOCK1 <= '0';
reset0 <= '0';
wait for 20 ns;

D <= '1';
CLOCK1 <= '1';
reset0 <= '0';
wait for 20 ns;

D <= '1';
CLOCK1 <= '0';
reset0 <= '0';
wait for 20 ns;

D <= '1';
CLOCK1 <= '1';
reset0 <= '0';
wait for 20 ns;

D <= '1';
CLOCK1 <= '0';
reset0 <= '0';
wait for 20 ns;

------------------------------------------------

D <= '0';
CLOCK1 <= '1';
reset0 <= '0';
wait for 20 ns;

D <= '0';
CLOCK1 <= '0';
reset0 <= '0';
wait for 20 ns;

D <= '0';
CLOCK1 <= '1';
reset0 <= '0';
wait for 20 ns;

D <= '0';
CLOCK1 <= '0';
reset0 <= '0';
wait for 20 ns;

D <= '0';
CLOCK1 <= '1';
reset0 <= '0';
wait for 20 ns;

D <= '0';
CLOCK1 <= '0';
reset0 <= '0';
wait for 20 ns;

D <= '0';
CLOCK1 <= '1';
reset0 <= '0';
wait for 20 ns;

D <= '0';
CLOCK1 <= '0';
reset0 <= '0';
wait for 20 ns;

D <= '0';
CLOCK1 <= '1';
reset0 <= '0';
wait for 20 ns;

D <= '0';
CLOCK1 <= '0';
reset0 <= '0';
wait for 20 ns;

D <= '0';
CLOCK1 <= '1';
reset0 <= '0';
wait for 20 ns;

D <= '0';
CLOCK1 <= '0';
reset0 <= '0';
wait for 20 ns;

end process;
end Behavioral;