
library ieee;
use ieee.std_logic_1164.all;

entity XOR_gate is
  port (
        a, b : in std_logic;
        output: out std_logic
        );
  end XOR_gate;


architecture arch of XOR_gate is
begin
  output <= a xor b;
end arch;
