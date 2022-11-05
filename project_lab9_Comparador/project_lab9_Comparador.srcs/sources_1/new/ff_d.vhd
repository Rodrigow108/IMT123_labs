library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ff_d is
    Port ( D : in STD_LOGIC;
           CK, reset : in STD_LOGIC;
           Q : out STD_LOGIC;
           Q1 : out STD_LOGIC);
end ff_d;

architecture Behavioral of ff_d is


signal U1: std_logic;

begin

    process (CK,reset)
        begin
            if(reset='1') then
            Q<='0';
            elsif ( CK' event and CK = '1') then
            Q<=D;
        end if;
    end process;
        process (CK,reset)
        begin
            if(reset='1') then
            Q1<='0';
            elsif ( CK' event and CK = '1') then
            Q1<=not D;
        end if;
    end process;

end Behavioral;
