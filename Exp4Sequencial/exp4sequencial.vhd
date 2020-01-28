library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity projeto2 is
    Port ( clk : in std_logic;
           num : in STD_LOGIC_VECTOR (3 downto 0);     
           seg : out STD_LOGIC_VECTOR (6 downto 0)
           );
end projeto2;

architecture Behavioral of projeto2 is
begin
process(clk)
begin 
        case num is
            when "0000" =>
                seg <= "1111110"; --0
            when "0001" => 
                seg <= "0110000"; --1
            when "0010" => 
                seg <= "1101101"; --2    
            when "0011" => 
                seg <= "1111001"; --3      
            when "0100" =>
                seg <= "0110011"; --4
            when "0101" => 
                seg <= "1011011"; --5
            when "0110" => 
                seg <= "1011111"; --6
            when "0111" => 
                seg <= "1110000"; --7               
            when "1000" => 
                seg <= "1111111"; --8               
            when "1001" => 
                seg <= "1111011"; --9                
            when others => 
                seg <= (others => '1');    
end case;
end process;
