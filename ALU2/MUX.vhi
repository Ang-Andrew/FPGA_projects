
-- VHDL Instantiation Created from source file MUX.vhd -- 21:18:00 11/22/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT MUX
	PORT(
		adder_input : IN std_logic_vector(7 downto 0);
		multer_input : IN std_logic_vector(7 downto 0);
		select_input : IN std_logic;          
		mux_output : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_MUX: MUX PORT MAP(
		adder_input => ,
		multer_input => ,
		select_input => ,
		mux_output => 
	);


