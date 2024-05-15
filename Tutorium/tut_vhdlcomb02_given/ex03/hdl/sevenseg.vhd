library IEEE; 
use IEEE.STD_LOGIC_1164.all;

entity sevenseg is
  port(
    bin: in  STD_LOGIC_VECTOR(3 downto 0);
    segments: out STD_LOGIC_VECTOR(6 downto 0)
  );
end;

architecture arch of sevenseg is
begin
--##INSERT YOUR CODE HERE 
  decoder: process(bin)
  begin
      case bin is
          when "0000" => segments <= "1111110";
          when "0001" => segments <= "0110000";
          when "0010" => segments <= "1101101";
          when "0011" => segments <= "1111001";
          when "0100" => segments <= "0110011";
          when "0101" => segments <= "1011011";
          when "0110" => segments <= "1011111";
          when "0111" => segments <= "1110000";
          when "1000" => segments <= "1111111";
          when "1001" => segments <= "1110011";
          when "1010" => segments <= "1110111";	
          when "1101" => segments <= "0111101";	
          when "1110" => segments <= "1001111";	
          when "1111" => segments <= "1000111";	
          when others => segments <= "0000000";
      end case;
  end process decoder;
--##INSERT YOUR CODE HERE END
end;
