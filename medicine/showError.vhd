library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity showError is
port(clk:in std_logic;
	 errorType:in std_logic_vector(2 downto 0);
	 errorLight:out std_logic_vector(6 downto 0));
end showError;
architecture m2 of showError is
begin
	process(clk,errorType)
	begin
	if(clk'event and clk='1')then
	case errorType is
		when "000"=>errorLight<="1111110";
		when "001"=>errorLight<="0110000";
		when "010"=>errorLight<="1101101";
		when "011"=>errorLight<="1111001";
		when "100"=>errorLight<="0110011";
		when "101"=>errorLight<="1011011";
		when "110"=>errorLight<="1011111";
		when others=>errorLight<="1110000";
	end case;
	end if;
	end process;
end m2;