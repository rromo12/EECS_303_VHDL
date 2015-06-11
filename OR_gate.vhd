
library ieee;
use ieee.std_logic_1164.all;

entity OR_gate is
  port (
        a, b : in std_logic;
        output: out std_logic
        );
  end OR_gate;


architecture arch of OR_gate is
begin
  output <= a or b;
end arch;

