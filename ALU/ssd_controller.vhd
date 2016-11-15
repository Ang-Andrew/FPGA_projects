----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:15:22 11/12/2016 
-- Design Name: 
-- Module Name:    ssd_controller - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ssd_controller is
    Port ( ssd_input : in  STD_LOGIC_VECTOR (15 downto 0);
           clk : in  STD_LOGIC;
           ssd_anode : out  STD_LOGIC_VECTOR (3 downto 0);
           seg_out : out  STD_LOGIC_VECTOR (6 downto 0));
end ssd_controller;

architecture Behavioral of ssd_controller is
	
	signal count_int : unsigned(2 downto 0) := (others => '0');
	signal seg_out_inputX,seg_out_inputY,seg_out_outputS,seg_out_outputC : STD_LOGIC_VECTOR (6 downto 0);
	
	component ssd_decoder is
    Port ( Bin : in  STD_LOGIC_VECTOR (3 downto 0);
           Seg_Out : out  STD_LOGIC_VECTOR (6 downto 0));
	end component;

begin
decoder1 : 	ssd_decoder port map(Bin =>ssd_input(15 downto 12),Seg_Out => seg_out_inputX);
decoder2 :	ssd_decoder port map(Bin =>ssd_input(11 downto 8),Seg_Out => seg_out_inputY);
decoder3 :	ssd_decoder port map(Bin =>ssd_input(7 downto 4) ,Seg_Out => seg_out_outputS);
decoder4 :	ssd_decoder port map(Bin =>ssd_input(3 downto 0),Seg_Out => seg_out_outputC);

process (clk) 
	begin
		if clk='1' and clk'event then 
				count_int <= count_int + 1;
				if count_int = "00" then
					ssd_anode <= "0111";
					seg_out <= seg_out_outputC;
				elsif count_int = "01" then
					ssd_anode <= "1011";
					seg_out <= seg_out_outputS;
				elsif count_int = "10" then
					ssd_anode <= "1101";
					seg_out <= seg_out_inputY;
				elsif count_int = "11" then
					ssd_anode <= "1110";
					seg_out <= seg_out_inputX;
				end if;
		end if;
end process;
end Behavioral;

