library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity SSD_controller is
    Port ( ssd_x : in  STD_LOGIC_VECTOR (6 downto 0);
           ssd_y : in  STD_LOGIC_VECTOR (6 downto 0);
           ssd_s : in  STD_LOGIC_VECTOR (6 downto 0);
           ssd_c : in  STD_LOGIC_VECTOR (6 downto 0);
           ssd_clk : in  STD_LOGIC;
           ssd_anode : out  STD_LOGIC_VECTOR (3 downto 0);
           ssd_seg_out : out  STD_LOGIC_VECTOR (6 downto 0));
end SSD_controller;

architecture Behavioral of SSD_controller is

signal anode_count : unsigned(1 downto 0) := (others => '0');

begin
	process(ssd_clk)
	begin
		 if ssd_clk='1' and ssd_clk'event then  
				anode_count <= anode_count+1;
				if anode_count = "00" then
					ssd_anode <= "0111";
					ssd_seg_out <=ssd_c; 
				elsif anode_count = "01" then
					ssd_anode <= "1011";
					ssd_seg_out <=ssd_s; 
				elsif anode_count = "10" then
					ssd_anode <= "1101";
					ssd_seg_out <=ssd_y;
				elsif anode_count = "11" then
					ssd_anode <= "1110";
					ssd_seg_out <=ssd_x;
				end if;
		end if;
	end process;
end Behavioral;

