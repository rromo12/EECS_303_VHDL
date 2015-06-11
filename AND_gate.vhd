library ieee;
use ieee.std_logic_1164.all;

entity AND_gate is
  port (
        a, b : in std_logic;
        output: out std_logic
        );
  end AND_gate;


architecture arch of AND_gate is
begin
  output <= a and b;
end arch;
