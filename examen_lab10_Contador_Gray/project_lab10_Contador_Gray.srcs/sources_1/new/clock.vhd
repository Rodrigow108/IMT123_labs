library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity clock is
  generic(size:integer:=26);
    Port ( clk :in std_logic;
           clka:out std_logic);
end clock;

architecture Behavioral of clock is
signal cout_temp:std_logic_vector(size-1 downto 0);
signal data:std_logic_vector(size-1 downto 0);
signal enable,load,rst:std_logic;
begin
enable<='1';
load<='0';
data<=(others=>'0');
rst<='1';
process(clk,rst)
begin
    if rst<='0' then 
    cout_temp<=(others=>'0');
    elsif rising_edge(clk) then
        if load='1' then 
            cout_temp<=data;
            elsif enable='1' then 
                cout_temp<=cout_temp+1;
                end if;
                end if;
end process;
clka<=cout_temp(25);
end Behavioral;
