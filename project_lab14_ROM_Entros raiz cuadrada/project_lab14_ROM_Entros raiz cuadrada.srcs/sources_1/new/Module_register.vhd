library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Module_register is
    Port ( L_R : in STD_LOGIC;
           Vin : in STD_LOGIC;
           clk_in : in STD_LOGIC;
           reset0 : in STD_LOGIC;
           q0 : inout STD_LOGIC_VECTOR (2 downto 0));
end Module_register;

architecture Behavioral of Module_register is

component flipflop is
    Port ( D : in STD_LOGIC;
           CK, reset : in STD_LOGIC;
           Q : out STD_LOGIC);
end component flipflop;

component mux is
  Port ( p0 : in STD_LOGIC;
           p1 : in STD_LOGIC;
           sel : in STD_LOGIC;
           ps : out STD_LOGIC);
end component mux;

component not_gate is
    Port ( A : in STD_LOGIC;
           B : out STD_LOGIC);
end component not_gate;

component reloj is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           clka : out STD_LOGIC);
end component reloj;

signal temp1: std_logic:='0';
signal temp2: std_logic:='0';
signal temp3: std_logic:='0';
signal temp4: std_logic:='0';
signal temp5: std_logic:='0';

signal clk0: std_logic:='0';
begin
reloj_1: reloj port map (clk=>clk_in,reset=>reset0,clka=>clk0);


utt4: mux port map (p0=>Vin,p1=>q0(1),sel=>L_R,ps=>temp3);
utt5: flipflop  port map (D=>temp3,CK=>clk_in,reset=>reset0,Q=>q0(2));

utt6: mux port map (p0=>q0(2),p1=>q0(0),sel=>L_R,ps=>temp4);
utt7: flipflop  port map (D=>temp4,CK=>clk_in,reset=>reset0,Q=>q0(1));

utt8: mux port map (p0=>q0(1),p1=>Vin,sel=>L_R,ps=>temp5);
utt9: flipflop port map (D=>temp5,CK=>clk_in,reset=>reset0,Q=>q0(0));

end Behavioral;

