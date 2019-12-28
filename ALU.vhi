
-- VHDL Instantiation Created from source file ALU.vhd -- 03:59:43 04/18/2018
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ALU
	PORT(
		data1 : IN std_logic_vector(31 downto 0);
		data2 : IN std_logic_vector(31 downto 0);
		aluop : IN std_logic_vector(3 downto 0);
		cin : IN std_logic;          
		dataout : OUT std_logic_vector(31 downto 0);
		cflag : OUT std_logic;
		zflag : OUT std_logic;
		oflag : OUT std_logic
		);
	END COMPONENT;

	Inst_ALU: ALU PORT MAP(
		data1 => ,
		data2 => ,
		aluop => ,
		cin => ,
		dataout => ,
		cflag => ,
		zflag => ,
		oflag => 
	);


