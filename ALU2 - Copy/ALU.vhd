library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU is
    Port ( inputX : in  STD_LOGIC_VECTOR (3 downto 0);
           inputY : in  STD_LOGIC_VECTOR (3 downto 0);
--           C_ALU_in : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           SSD_anode : out  STD_LOGIC_VECTOR (3 downto 0);
           SSD_out : out  STD_LOGIC_VECTOR (6 downto 0));
end ALU;

architecture Behavioral of ALU is
	COMPONENT Adder4Bit
	PORT(
			X_4_in : in  STD_LOGIC_VECTOR (3 downto 0);
         Y_4_in : in  STD_LOGIC_VECTOR (3 downto 0);
         S_4_out : out  STD_LOGIC_VECTOR (3 downto 0);
         C_4_out : out  STD_LOGIC
		);
	END COMPONENT;
	
	COMPONENT ssd_decoder
	PORT(
		Bin : IN std_logic_vector(3 downto 0);          
		Seg_Out : OUT std_logic_vector(6 downto 0)
		);
	END COMPONENT;
	
	COMPONENT clk_gen
	PORT(
		Clk : IN std_logic;          
		Clk_mod : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT SSD_controller
	PORT(
		ssd_x : IN std_logic_vector(6 downto 0);
		ssd_y : IN std_logic_vector(6 downto 0);
		ssd_s : IN std_logic_vector(6 downto 0);
		ssd_c : IN std_logic_vector(6 downto 0);
		ssd_clk : IN std_logic;          
		ssd_anode : OUT std_logic_vector(3 downto 0);
		ssd_seg_out : OUT std_logic_vector(6 downto 0)
		);
	END COMPONENT;
	
	COMPONENT Multer4bit
	PORT(
		multer_x : IN std_logic_vector(3 downto 0);
		multer_y : IN std_logic_vector(3 downto 0);          
		multer_output : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
	
	signal S,C_4bits: STD_LOGIC_VECTOR(3 downto 0);
	signal mult_out: STD_LOGIC_VECTOR(7 downto 0);
	signal C,clk_1k : STD_LOGIC;
	signal SSD_X,SSD_Y,SSD_S,SSD_C,SSD_M1,SSD_M2 : STD_LOGIC_VECTOR(6 downto 0);
	
	
begin
	
	C_4bits <= "000"&C;

	Adder4Bit1: Adder4Bit port map(
		X_4_in => inputX,
		Y_4_in => inputY,
		S_4_out => S,
		C_4_out => C
	);
	
	Xdecoder: ssd_decoder port map(
		Bin => inputX,
		Seg_Out => SSD_X
	);
	
	Ydecoder: ssd_decoder port map(
		Bin => inputY,
		Seg_Out => SSD_Y
	);
	Sdecoder: ssd_decoder port map(
		Bin => S,
		Seg_Out => SSD_S
	);
	Cdecoder: ssd_decoder port map(
		Bin => C_4bits,
		Seg_Out => SSD_C
	);
	Mdecoder1: ssd_decoder port map(
		Bin => mult_out(3 downto 0),
		Seg_Out => SSD_M1
	);
	
	Mdecoder2: ssd_decoder port map(
		Bin => mult_out(7 downto 4),
		Seg_Out => SSD_M2
	);
	
	clk_gen1: clk_gen port map(
		Clk => clk,
		Clk_mod => clk_1k
	);
	
	ssd_controller1: SSD_controller port map(
		ssd_x => SSD_X,
		ssd_y => SSD_Y,
		ssd_s => SSD_S,
		ssd_c => SSD_C,
		ssd_clk => clk_1k,
		ssd_anode => SSD_anode,
		ssd_seg_out => SSD_out
	);
	
	multer4bit1 : Multer4bit port map(
		multer_x => inputX,
		multer_y => inputY,
		multer_output => mult_out
	);

end Behavioral;

