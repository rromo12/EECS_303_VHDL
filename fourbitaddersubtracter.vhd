
library ieee;
use ieee.std_logic_1164.all;

entity fourbitaddersubtracter is
port (
a, b : in std_logic_vector(3 downto 0);
sel : in std_logic;
sum : out std_logic_vector(3 downto 0);
cout: out std_logic
);
end fourbitaddersubtracter;

architecture struct of fourbitaddersubtracter is
  signal x: std_logic;
  signal y: std_logic;
  signal z: std_logic;
  signal c0: std_logic;
  signal c1: std_logic;
  signal c2: std_logic;
  signal c3: std_logic;
begin
  XOR0: entity work.XOR_gate
    port map(a=>sel,b=>b(0),output=>c0);
  
  XOR1: entity work.XOR_gate
    port map(a=>sel,b=>b(1),output=>c1);
      
  XOR2: entity work.XOR_gate
    port map(a=>sel,b=>b(2),output=>c2);  
      
  XOR3: entity work.XOR_gate
    port map(a=>sel,b=>b(3),output=>c3);    
  
  FA0: entity work.full_adder
    port map(a=>a(0), b=>(c0), cin=>sel, sum=>sum(0), cout=>x);
  FA1: entity work.full_adder
    port map(a=>a(1), b=>(c1), cin=>x, sum=>sum(1), cout=>y);
  FA2: entity work.full_adder
    port map(a=>a(2), b=>(c2), cin=>y, sum=>sum(2), cout=>z);
  FA3: entity work.full_adder
    port map(a=>a(3), b=>(c3), cin=>z, sum=>sum(3), cout=>cout);
end struct;