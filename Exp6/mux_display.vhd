library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
entity mux_display is
    Port ( CLK100MHZ : in STD_LOGIC;
           input_1, input_2 : in std_logic_vector(3 downto 0);
           input_3, input_4 : in std_logic_vector(3 downto 0);
          -- reset : in STD_LOGIC;
           an : out STD_LOGIC_VECTOR (3 downto 0); 
           seg : out STD_LOGIC_VECTOR (6 downto 0));
end mux_display;

architecture Behavioral of mux_display is
--signal one_second_counter: STD_LOGIC_VECTOR (27 downto 0);
--signal one_second_enable: std_logic;
--signal count_number: STD_LOGIC_VECTOR (15 downto 0);
signal LED_BCD: STD_LOGIC_VECTOR (3 downto 0);
signal clk_div: STD_LOGIC_VECTOR (19 downto 0);
signal an_count: std_logic_vector(1 downto 0);

begin

process(led_bcd)
begin
    case led_bcd is
    when "0000" => seg <= "0000001"; -- "0"     
    when "0001" => seg <= "1001111"; -- "1" 
    when "0010" => seg <= "0010010"; -- "2" 
    when "0011" => seg <= "0000110"; -- "3" 
    when "0100" => seg <= "1001100"; -- "4" 
    when "0101" => seg <= "0100100"; -- "5" 
    when "0110" => seg <= "0100000"; -- "6" 
    when "0111" => seg <= "0001111"; -- "7" 
    when "1000" => seg <= "0000000"; -- "8"     
    when "1001" => seg <= "0000100"; -- "9" 
    when "1010" => seg <= "0000010"; -- a
    when "1011" => seg <= "1100000"; -- b
    when "1100" => seg <= "0110001"; -- C
    when "1101" => seg <= "1000010"; -- d
    when "1110" => seg <= "0110000"; -- E
    when "1111" => seg <= "0111000"; -- F
    when others => seg <= "1111110";
    end case;
end process;

process(CLK100MHZ)
begin 
  --  if(reset='1') then
    --    clk_div <= (others => '0');
    if(rising_edge(CLK100MHZ)) then
        clk_div <= clk_div + 1;
    end if;
end process;
 an_count <= clk_div(19 downto 18);

process(an_count)
begin
    case an_count is
    when "00" =>
        an <= "1110"; 
        LED_BCD <= input_4;
    when "01" =>
        an <= "1101"; 
        LED_BCD <= input_3;
    when "10" =>
     an <= "1011"; 
       LED_BCD <= input_2;
    when "11" =>
        an <= "0111"; 
        LED_BCD <= input_1; 
    when others => an <= "1111"; 
    end case;
end process;


end Behavioral;