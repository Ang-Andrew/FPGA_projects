library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;


entity Switches_LEDs is
    Port ( switches : in  STD_LOGIC;
           LEDs     : out STD_LOGIC_VECTOR(7 downto 0);
           clk      : in STD_LOGIC
         );
end Switches_LEDs;

architecture Behavioral of Switches_LEDs is
    signal counter : STD_LOGIC_VECTOR(29 downto 0) := (others => '0');
	 signal sec_count : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
begin

clk_proc: process(clk)
  begin
     if rising_edge(clk) then
		if switches = '1' then
			counter <= counter-1;
			if counter = "10111110101111000001111111" then
				sec_count <= sec_count-1;
			end if;
		else
			counter <= counter+1;
			if counter = "10111110101111000001111111" then
				sec_count <= sec_count+1;
			end if;
      end if;
     end if;
end process;
LEDs <= std_logic_vector(sec_count);
end Behavioral;