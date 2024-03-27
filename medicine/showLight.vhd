library ieee;
use ieee.std_logic_1164.all;
entity showLight is
 port(
 lightSum10 : in std_logic_vector(3 downto 0);
 lightSum1 : in std_logic_vector(3 downto 0);
 lightEach10 : in std_logic_vector(3 downto 0);
 lightEach1 : in std_logic_vector(3 downto 0);
 OlightSum10 : out std_logic_vector(6 downto 0);
 OlightSum1 : out std_logic_vector(6 downto 0);
 OlightEach10 : out std_logic_vector(6 downto 0);
 OlightEach1 : out std_logic_vector(6 downto 0)
 );
end showLight;
architecture m1 of showLight is
Begin
OlightSum10 <= "1111110" when lightSum10="0000" else --0
"0110000" when lightSum10="0001" else --1
"1101101" when lightSum10="0010" else --2
"1111001" when lightSum10="0011" else --3
"0110011" when lightSum10="0100" else --4
"1011011" when lightSum10="0101" else --5
"1011111" when lightSum10="0110" else --6
"1110000" when lightSum10="0111" else --7
"1111111" when lightSum10="1000" else --8
"1110011" when lightSum10="1001" else --9
"0000000" ;
OlightSum1 <= "1111110" when lightSum1="0000" else --0
"0110000" when lightSum1="0001" else --1
"1101101" when lightSum1="0010" else --2
"1111001" when lightSum1="0011" else --3
"0110011" when lightSum1="0100" else --4
"1011011" when lightSum1="0101" else --5
"1011111" when lightSum1="0110" else --6
"1110000" when lightSum1="0111" else --7
"1111111" when lightSum1="1000" else --8
"1110011" when lightSum1="1001" else --9
"0000000" ;
OlightEach10 <= "1111110" when lightEach10="0000" else --0
"0110000" when lightEach10="0001" else --1
"1101101" when lightEach10="0010" else --2
"1111001" when lightEach10="0011" else --3
"0110011" when lightEach10="0100" else --4
"1011011" when lightEach10="0101" else --5
"1011111" when lightEach10="0110" else --6
"1110000" when lightEach10="0111" else --7
"1111111" when lightEach10="1000" else --8
"1110011" when lightEach10="1001" else --9
"0000000" ;
OlightEach1 <= "1111110" when lightEach1="0000" else --0
"0110000" when lightEach1="0001" else --1
"1101101" when lightEach1="0010" else --2
"1111001" when lightEach1="0011" else --3
"0110011" when lightEach1="0100" else --4
"1011011" when lightEach1="0101" else --5
"1011111" when lightEach1="0110" else --6
"1110000" when lightEach1="0111" else --7
"1111111" when lightEach1="1000" else --8
"1110011" when lightEach1="1001" else --9
"0000000" ;
End m1;