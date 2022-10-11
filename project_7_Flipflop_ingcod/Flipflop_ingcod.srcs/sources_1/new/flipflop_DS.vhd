library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity flipflop_DS is
    Port ( K : in STD_LOGIC;
           J : in STD_LOGIC;
           CLOCK1 : in STD_LOGIC;
           reset0 : in STD_LOGIC;
           q0 : inout STD_LOGIC_VECTOR (1 downto 0));
end flipflop_DS;

architecture Behavioral of flipflop_DS is

component fflop is
    Port ( D : in STD_LOGIC;
           CK, reset : in STD_LOGIC;
           Q : out STD_LOGIC);
end component fflop;

component Multiplexior is
  Port ( p0 : in STD_LOGIC;
           p1 : in STD_LOGIC;
           A1 : in STD_LOGIC;
           Bout : out STD_LOGIC);
end component Multiplexior;

component Not_gate is
    Port ( A : in STD_LOGIC;
           B : out STD_LOGIC);
end component Not_gate;

component Clock is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           clka : out STD_LOGIC);
end component Clock;

signal temp1: std_logic:='0';


signal clk0: std_logic:='0';
begin
reloj_1: Clock port map (clk=>CLOCK1,reset=>reset0,clka=>clk0);

utt0: Multiplexior port map (p0=>q0(1),p1=>J,A1=>K,Bout=>temp1);
utt1: fflop port map (D=>temp1,CK=>CLOCK1,reset=>reset0,Q=>q0(0));

end Behavioral;
