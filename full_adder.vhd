
library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
  port (
        a, b, cin : in std_logic;
        sum, cout: out std_logic
        );
  end full_adder;


architecture dataflow of full_adder is
signal x,y,z: std_logic;
begin
  xor1: entity work.XOR_gate
      port map (a=>a,b=>b,output=>x);
  xor2: entity work.XOR_gate
      port map (a=>x,b=>cin,output=>sum);
        
  and1: entity work.AND_gate
      port map (x,cin,y);
  and2: entity work.AND_gate
      port map (b,a,z);
  or1: entity work.OR_gate
      port map (y, z, cout);
  
end dataflow;
