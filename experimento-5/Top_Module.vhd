library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Top_Module is
    Port ( clkm : in STD_LOGIC;
            a : in std_logic_vector(3 downto 0);
            b : in std_logic_vector(3 downto 0);  
            an : out std_logic_vector(3 downto 0);
            seg : out std_logic_vector(0 to 6));
end Top_Module;

architecture Behavioral of Top_Module is

signal s : std_logic_vector(3 downto 0);

component projeto2 is
    Port (
           num : in STD_LOGIC_VECTOR (3 downto 0);     
           sseg : out STD_LOGIC_VECTOR (0 to 6)
           );
end component;

begin

c1: projeto2 port map(num => s, sseg => seg);

process(clkm)
begin
if clkm = '1' then
    s <= a;
    an <= "1101";
else
    s <= b;
    an <= "1110";    
end if;
end process;

end Behavioral;
