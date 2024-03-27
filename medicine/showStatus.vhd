library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity showStatus is
	port(errorType:in std_logic_vector(3 downto 0);
		 chooseFunc:in std_logic_vector(1 downto 0);
		 clk:in std_logic;
		 statusLight:out std_logic_vector(6 downto 0)
	);
end showStatus;
architecture m3 of showStatus is
begin
	process(clk,errorType,chooseFunc)
	begin
		if(errorType="000") then
			if(clk'event and clk='1') then
				case chooseFunc is
					when "00"=>statusLight<="1000000";
					when "01"=>statusLight<="0100000";
					when "10"=>statusLight<="0000001";
					when others=>statusLight<="0000010";
				end case;
			end if;
		end if;
	end process;
	
end m3;