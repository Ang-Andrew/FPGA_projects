
-- VHDL Instantiation Created from source file SSD_controller.vhd -- 19:21:54 11/14/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT SSD_controller
	PORT(
		ssd_x : IN std_logic_vector(6 downto 0);
		ssd_y : IN std_logic_vector(6 downto 0);
		ssd_s : IN std_logic_vector(6 downto 0);
		ssd_c : IN std_logic_vector(6 downto 0);
		ssd_clk : IN std_logic;          
		ssd_anode : OUT std_logic_vector(3 downto 0);
		seg_out : OUT std_logic_vector(6 downto 0)
		);
	END COMPONENT;

	Inst_SSD_controller: SSD_controller PORT MAP(
		ssd_x => ,
		ssd_y => ,
		ssd_s => ,
		ssd_c => ,
		ssd_clk => ,
		ssd_anode => ,
		seg_out => 
	);


