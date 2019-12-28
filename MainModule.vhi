
-- VHDL Instantiation Created from source file MainModule.vhd -- 04:00:00 04/18/2018
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT MainModule
	PORT(
		start : IN std_logic;
		clk : IN std_logic;          
		RegFileOut1 : OUT std_logic_vector(31 downto 0);
		RegFileOut2 : OUT std_logic_vector(31 downto 0);
		ALUOut : OUT std_logic_vector(31 downto 0);
		pcout : OUT std_logic_vector(31 downto 0);
		dataMemout : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_MainModule: MainModule PORT MAP(
		start => ,
		clk => ,
		RegFileOut1 => ,
		RegFileOut2 => ,
		ALUOut => ,
		pcout => ,
		dataMemout => 
	);


