library IEEE;
use IEEE.STD_LOGIC_1164.ALL;




-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity projeto2 is
    Port ( num : in STD_LOGIC_VECTOR (3 downto 0);
           seg : out STD_LOGIC_VECTOR (6 downto 0)
           );
end projeto2;

architecture Behavioral of projeto2 is
begin
with num select 
seg <= "1111110" when "0000",
"0110000" when "0001",
"1101101" when "0010",
"1111001" when "0011",
"0110011" when "0100",
"1011011" when "0101",
"1011111" when "0110",
"1110000" when "0111",
"1111111" when "1000",
"1111011" when "1001",
"1110111" when "1010",
"0011111" when "1011",
"1001110" when "1100",
"0111101" when "1101",
"1001111" when "1110",
"1000111" when "1111";



--when "1111"
--    seg <= "1000111";

end Behavioral;