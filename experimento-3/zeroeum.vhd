use library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity projeto2 is
    Port ( A : in bit;
           B : in bit;
           C : in bit;
           D : in bit;
           seg : out STD_LOGIC_VECTOR (6 downto 0)
           );
end projeto2;

architecture Behavioral of projeto2 is
signal K: bit;
signal L: bit;
signal S:  bit;
begin

K <= A XOR B;
L <= C XOR D;
S <= K XOR L;

seg <= "0000001" when(S='0') else "1001111";

end Behavioral;
