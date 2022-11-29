----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.11.2022 10:30:00
-- Design Name: 
-- Module Name: mux4 - Behavioral
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

entity mux4 is
    Port ( b5 : in STD_LOGIC;
           b4 : in STD_LOGIC;
           b3 : in STD_LOGIC;
           b2 : in STD_LOGIC;
           b1 : in STD_LOGIC;
           b0 : in STD_LOGIC;
           sel : in STD_LOGIC;
           ps4 : out STD_LOGIC);
end mux4;

architecture Behavioral of mux4 is

begin

ps4<= ((not b5)and(not b2)and(not b1)) and ( (b4 and(not b3)and(not b0)) or ((not b4)and b3 and b0));

end Behavioral;
