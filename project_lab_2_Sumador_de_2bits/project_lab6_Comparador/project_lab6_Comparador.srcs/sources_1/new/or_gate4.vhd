----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.09.2022 10:08:40
-- Design Name: 
-- Module Name: or_gate4 - Behavioral
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

entity or_gate4 is
Port(A: in STD_LOGIC;
     B: in STD_LOGIC;
     C: in STD_LOGIC;
     D: in STD_LOGIC;
     E: out STD_LOGIC);
end or_gate4;

architecture Behavioral of or_gate4 is

begin

E<= A or B or C or D;

end Behavioral;
