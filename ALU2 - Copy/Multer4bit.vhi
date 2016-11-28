
-- VHDL Instantiation Created from source file Multer4bit.vhd -- 19:13:09 11/22/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Multer4bit
	PORT(
		multer_x : IN std_logic_vector(3 downto 0);
		multer_y : IN std_logic_vector(3 downto 0);          
		multer_output : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_Multer4bit: Multer4bit PORT MAP(
		multer_x => ,
		multer_y => ,
		multer_output => 
	);


