
-- VHDL Instantiation Created from source file Adder4Bit.vhd -- 18:58:27 11/14/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Adder4Bit
	PORT(
		X_4_in : IN std_logic_vector(3 downto 0);
		Y_4_in : IN std_logic_vector(3 downto 0);
		clk : IN std_logic;          
		ssd_anode_select : OUT std_logic_vector(3 downto 0);
		seg_out : OUT std_logic_vector(6 downto 0)
		);
	END COMPONENT;

	Inst_Adder4Bit: Adder4Bit PORT MAP(
		X_4_in => ,
		Y_4_in => ,
		ssd_anode_select => ,
		seg_out => ,
		clk => 
	);


