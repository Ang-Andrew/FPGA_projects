
-- VHDL Instantiation Created from source file ssd_decoder.vhd -- 18:58:47 11/14/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ssd_decoder
	PORT(
		Bin : IN std_logic_vector(3 downto 0);          
		Seg_Out : OUT std_logic_vector(6 downto 0)
		);
	END COMPONENT;

	Inst_ssd_decoder: ssd_decoder PORT MAP(
		Bin => ,
		Seg_Out => 
	);


