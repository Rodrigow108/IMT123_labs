library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Flipflop_B is
    Port ( D : in STD_LOGIC;
           CLOCK1 : in STD_LOGIC;
           reset0 : in STD_LOGIC;
           q0 : inout STD_LOGIC_VECTOR (1 downto 0));
end Flipflop_B;

architecture Behavioral of Flipflop_B is

component flipflopd is
    Port ( D : in STD_LOGIC;
           CK, reset : in STD_LOGIC;
           Q : out STD_LOGIC);
end component flipflopd;

component Clock2 is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           clka : out STD_LOGIC);
end component Clock2;

signal temp1: std_logic:='0';

signal clk0: std_logic:='0';

begin
reloj_1: Clock2 port map (clk=>CLOCK1,reset=>reset0,clka=>clk0);
utt1: flipflopd port map (D=>D,CK=>CLOCK1,reset=>reset0,Q=>q0(0));

end Behavioral;
