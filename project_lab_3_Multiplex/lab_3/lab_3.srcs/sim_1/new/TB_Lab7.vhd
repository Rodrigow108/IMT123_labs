library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB_Lab7 is
--  Port ( );
end TB_Lab7;

architecture Behavioral of TB_Lab7 is

component Lab_7 is
Port (     D3 : in STD_LOGIC;
           D2 : in STD_LOGIC;
           D1 : in STD_LOGIC;
           D0 : in STD_LOGIC;
           S1 : in STD_LOGIC;
           S0 : in STD_LOGIC;
           Q : out STD_LOGIC);
end component Lab_7;

signal D3: std_logic:='0';
signal D2: std_logic:='0';
signal D1: std_logic:='0';
signal D0: std_logic:='0';
signal S1: std_logic:='0';
signal S0: std_logic:='0';
signal Q: std_logic:='0';

begin
uut: Lab_7 port map (D0=>D0, D1=>D1, D2=>D2, D3=>D3, S1=>S1,S0=>S0,Q=>Q);
Estimulus_process: process
begin
D3<='1';
D2<='0';
D1<='1';
D0<='0';
S1<='0';
S0<='0';
wait for 20 ns;
D3<='0';
D2<='0';
D1<='1';
D0<='0';
S1<='0';
S0<='1';
wait for 20 ns;
D3<='0';
D2<='1';
D1<='1';
D0<='0';
S1<='1';
S0<='0';
wait for 20 ns;
D3<='1';
D2<='0';
D1<='1';
D0<='1';
S1<='1';
S0<='1';
wait for 20 ns;
D3<='1';
D2<='1';
D1<='0';
D0<='1';
S1<='0';
S0<='0';
wait for 20 ns;
D3<='1';
D2<='0';
D1<='0';
D0<='1';
S1<='0';
S0<='1';
wait for 20 ns;
D3<='0';
D2<='1';
D1<='1';
D0<='1';
S1<='1';
S0<='0';
wait for 20 ns;
D3<='1';
D2<='0';
D1<='0';
D0<='0';
S1<='1';
S0<='1';
wait for 20 ns;
D3<='0';
D2<='0';
D1<='1';
D0<='1';
S1<='0';
S0<='0';
wait for 20 ns;
D3<='1';
D2<='1';
D1<='0';
D0<='0';
S1<='0';
S0<='1';
wait for 20 ns;
D3<='0';
D2<='1';
D1<='0';
D0<='1';
S1<='1';
S0<='0';
wait for 20 ns;
D3<='1';
D2<='0';
D1<='1';
D0<='1';
S1<='1';
S0<='1';
wait for 20 ns;
D3<='1';
D2<='1';
D1<='1';
D0<='0';
S1<='0';
S0<='0';
wait for 20 ns;
D3<='1';
D2<='1';
D1<='1';
D0<='1';
S1<='0';
S0<='1';
wait for 20 ns;
end process;
end Behavioral;


