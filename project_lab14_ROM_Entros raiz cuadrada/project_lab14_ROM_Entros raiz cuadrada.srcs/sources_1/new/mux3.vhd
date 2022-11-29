----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.11.2022 10:30:24
-- Design Name: 
-- Module Name: mux3 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux3 is
    Port ( b5 : in STD_LOGIC;
           b4 : in STD_LOGIC;
           b3 : in STD_LOGIC;
           b2 : in STD_LOGIC;
           b1 : in STD_LOGIC;
           b0 : in STD_LOGIC;
           sel : in STD_LOGIC;
           ps3 : out STD_LOGIC);
end mux3;

architecture Behavioral of mux3 is

begin

ps3<= ((not b5) and (not b3)and (not b1)and(not b0)) and (b4 xor b2);

end Behavioral;
