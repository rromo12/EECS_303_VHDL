library IEEE;
use IEEE.std_logic_1164.all;


entity fourbitaddersubtracter_tb is
end entity fourbitaddersubtracter_tb;



architecture behavioral of fourbitaddersubtracter_tb is
--Entity (as component) and input ports (as signals) go here
signal a_tb: std_logic_vector(3 downto 0);
signal b_tb: std_logic_vector(3 downto 0);
signal sel_tb: std_logic:= '0';
signal sum_tb: std_logic_vector(3 downto 0);
signal cout_tb: std_logic;

begin
  DUT:entity work.fourbitaddersubtracter
    port map(a_tb,b_tb,sel_tb,sum_tb,cout_tb);
--component declaration and stimuli processes go here
   process  
    begin
      a_tb <= "0001";
      b_tb <= "0001";
      sel_tb <= '0';       
      wait for 10 ns;
      a_tb <= "0101";
      b_tb <= "0001";
      sel_tb <= '0';    
      wait for 10 ns;
      a_tb <= "0001";
      b_tb <= "0001";
      sel_tb <= '1'; 
      wait for 10 ns; 
      a_tb <= "1101";
      b_tb <= "0001";
      sel_tb <= '0';       
    wait for 10 ns;
    wait;
  end process;

end architecture behavioral;
