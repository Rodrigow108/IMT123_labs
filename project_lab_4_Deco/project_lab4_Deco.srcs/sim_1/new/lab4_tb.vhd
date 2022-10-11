----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.08.2022 08:25:49
-- Design Name: 
-- Module Name: lab4_tb - Behavioral
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

entity lab4_tb is
--  Port ( );
end lab4_tb;

architecture Behavioral of lab4_tb is

component lab4_ds is
    Port ( D : in STD_LOGIC;
           C : in STD_LOGIC;
           B : in STD_LOGIC;
           A : in STD_LOGIC;
           BLin : in STD_LOGIC;
           Aout : out STD_LOGIC;
           Bout : out STD_LOGIC;
           Cout : out STD_LOGIC;
           Dout : out STD_LOGIC;
           Eout : out STD_LOGIC;
           Fout : out STD_LOGIC;
           Gout : out STD_LOGIC);
end component lab4_ds;

signal D_s : STD_LOGIC;
signal C_s : STD_LOGIC;
signal B_s : STD_LOGIC;
signal A_s : STD_LOGIC;
signal BLin_s : STD_LOGIC;
signal Aout_s : STD_LOGIC;
signal Bout_s : STD_LOGIC;
signal Cout_s : STD_LOGIC;
signal Dout_s : STD_LOGIC;
signal Eout_s : STD_LOGIC;
signal Fout_s : STD_LOGIC;
signal Gout_s : STD_LOGIC;

begin

Dut: lab4_ds port map(
        D => D_s,
        C => C_s,
        B => B_s,
        A => A_s,
        BLin => BLin_s,
        Aout => Aout_s,
        Bout => Bout_s,
        Cout => Cout_s,
        Dout => Dout_s,
        Eout => Eout_s,
        Fout => Fout_s,
        Gout => Gout_s
);  
process
begin
A_s <= '0';
B_s <= '0';
C_s <= '0';
D_s <= '0';
BLin_s <= '1';
wait for 50ns;

A_s <= '1';
B_s <= '0';
C_s <= '0';
D_s <= '0';
BLin_s <= '1';
wait for 50ns;

A_s <= '0';
B_s <= '1';
C_s <= '0';
D_s <= '0';
BLin_s <= '1';
wait for 50ns;

A_s <= '1';
B_s <= '1';
C_s <= '0';
D_s <= '0';
BLin_s <= '1';
wait for 50ns;

A_s <= '0';
B_s <= '0';
C_s <= '1';
D_s <= '0';
BLin_s <= '1';
wait for 50ns;

A_s <= '1';
B_s <= '0';
C_s <= '1';
D_s <= '0';
BLin_s <= '1';
wait for 50ns;

A_s <= '0';
B_s <= '1';
C_s <= '1';
D_s <= '0';
BLin_s <= '1';
wait for 50ns;

A_s <= '1';
B_s <= '1';
C_s <= '1';
D_s <= '0';
BLin_s <= '1';
wait for 50ns;

A_s <= '0';
B_s <= '0';
C_s <= '0';
D_s <= '1';
BLin_s <= '1';
wait for 50ns;

A_s <= '1';
B_s <= '0';
C_s <= '0';
D_s <= '1';
BLin_s <= '1';
wait for 50ns;

A_s <= '0';
B_s <= '1';
C_s <= '0';
D_s <= '1';
BLin_s <= '1';
wait for 50ns;

A_s <= '1';
B_s <= '1';
C_s <= '0';
D_s <= '1';
BLin_s <= '1';
wait for 50ns;

A_s <= '0';
B_s <= '0';
C_s <= '1';
D_s <= '1';
BLin_s <= '1';
wait for 50ns;

A_s <= '1';
B_s <= '0';
C_s <= '1';
D_s <= '1';
BLin_s <= '1';
wait for 50ns;

A_s <= '0';
B_s <= '1';
C_s <= '1';
D_s <= '1';
BLin_s <= '1';
wait for 50ns;

A_s <= '1';
B_s <= '1';
C_s <= '1';
D_s <= '1';
BLin_s <= '1';
wait for 50ns;

end process;

end Behavioral;
