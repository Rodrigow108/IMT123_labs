library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity flipflopd is
    Port ( D : in STD_LOGIC;
           CK, reset : in STD_LOGIC;
           Q : out STD_LOGIC);
end flipflopd;

architecture Behavioral of flipflopd is

begin
    process (CK,reset)
        begin
            if(reset='1') then
            Q<='0';
            elsif ( CK' event and CK = '1') then
            Q<=D;
        end if;
    end process;

end Behavioral;
