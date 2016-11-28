
-- VHDL Instantiation Created from source file ALU.vhd -- 18:57:46 11/14/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ALU
	PORT(
		inputX : IN std_logic_vector(3 downto 0);
		outputY : IN std_logic_vector(3 downto 0);
		C_ALU_in : IN std_logic;
		clk : IN std_logic;          
		SSD_anode : OUT std_logic_vector(3 downto 0);
		SSD_out : OUT std_logic_vector(6 downto 0)
		);
	END COMPONENT;

	Inst_ALU: ALU PORT MAP(
		inputX => ,
		outputY => ,
		C_ALU_in => ,
		clk => ,
		SSD_anode => ,
		SSD_out => 
	);


