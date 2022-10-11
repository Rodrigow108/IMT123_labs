----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.08.2022 08:24:24
-- Design Name: 
-- Module Name: lab4_ds - Behavioral
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

entity lab4_ds is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           BLin : in STD_LOGIC;
           Aout : out STD_LOGIC;
           Bout : out STD_LOGIC;
           Cout : out STD_LOGIC;
           Dout : out STD_LOGIC;
           Eout : out STD_LOGIC;
           Fout : out STD_LOGIC;
           Gout : out STD_LOGIC);
end lab4_ds;

architecture Behavioral of lab4_ds is

signal Na: std_logic;
signal Nb: std_logic;
signal Nc: std_logic;
signal Nd: std_logic;
signal U1: std_logic;
signal U2: std_logic;
signal U3: std_logic;
signal U4: std_logic;
signal UA1: std_logic;
signal UA2: std_logic;
signal UA3: std_logic;

signal UB1: std_logic;
signal UB2: std_logic;
signal UB3: std_logic;

signal UC1: std_logic;
signal UC2: std_logic;

signal UD1: std_logic;
signal UD2: std_logic;
signal UD3: std_logic;

signal UE1: std_logic;
signal UE2: std_logic;

signal UF1: std_logic;
signal UF2: std_logic;
signal UF3: std_logic;

signal UG1: std_logic;
signal UG2: std_logic;


begin

Na <= not A;
Nb <= not B;
Nc <= not C;
Nd <= not D;

U1 <= not (Na and BLin);
U2 <= not (Nb and BLin);
U3 <= not (Nc and BLin);
U4 <= not (Nd and BLin);

UA1 <= not (U2 and U4);
UA2 <= not (Na and U3); 
UA3 <= not (U1 and Nb and Nc and Nd);

UB1 <= not (U2 and U4);
UB2 <= not (U1 and Nb and U3);
UB3 <= not (Na and U2 and U3);

UC1 <= not (U3 and U4);
UC2 <= not (Na and U2 and Nc);

UD1 <= not (U1 and Nb and Nc);
UD2 <= not (Na and Nb and U3);
UD3 <= not (U1 and U2 and U3);

UE1 <= not U1;
UE2 <= not (Nb and U3);

UF1 <= not (U1 and U2);
UF2 <= not (U2 and Nc);
UF3 <= not (U1 and Nc and Nd);

UG1 <= not (U1 and U2 and U3);
UG2 <= not (Nb and Nc and Nd);

Aout <= UA1 and UA2 and UA3;
Bout <= UB1 and UB2 and UB3;
Cout <= UC1 and UC2;
Dout <=  UD1 and UD2 and UD3;
Eout <= UE1 and UE2;
Fout <= UF1 and UF2 and UF3;
Gout <= UG1 and UG2;
  

end Behavioral;
