--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package pachageee is

component mux32 is
    Port ( in1 : in  STD_LOGIC_vector(31 downto 0);
           in2 : in  STD_LOGIC_vector(31 downto 0);
           sel : in  STD_LOGIC;
           outt : out  STD_LOGIC_vector(31 downto 0));
end component;

component muxx4 is
    Port ( i1 : in  STD_LOGIC_vector(4 downto 0);
           i2 : in  STD_LOGIC_vector(4 downto 0);
           sel : in  STD_LOGIC;
           o : out  STD_LOGIC_vector(4 downto 0));
end component;

component integration is
port(code:in std_logic_vector(31 downto 0);
     aluop:in std_logic_vector(1 downto 0);
	  clk:in std_logic;
	  out1:out std_logic_vector(31 downto 0);
	  out2:out std_logic_vector(31 downto 0);
	  result: out std_logic_vector(31 downto 0)
	  );
end component;

component control_unit is
    Port (
	        Op : in  STD_LOGIC_vector(5 downto 0);
           Regdst : out  STD_LOGIC;
           Alusrc : out  STD_LOGIC;
           Memtoreg : out  STD_LOGIC;
           Regwrite : out  STD_LOGIC;
           Memread : out  STD_LOGIC;
           Memwrite : out  STD_LOGIC;
           Branch : out  STD_LOGIC;
           ALUOp : out  STD_LOGIC_vector(1 downto 0);
          
			  jump:out std_logic;
			  bne:out std_logic );			 
end component;


component INSTRMEMORY is
	
Generic(words : natural :=64;
wordsize: natural :=32; 
addresssize: natural := 32);
  port(
    LoadIt: in Std_logic ;
	 DATA: out STD_LOGIC_VECTOR(wordsize-1 downto 0);

    ADDRESS: in STD_LOGIC_VECTOR(addresssize-1 downto 0);

    CLK: in STD_LOGIC
    );
end component;


component sign_extend is
    Port ( input : in  STD_LOGIC_vector(15 downto 0);
           output : out  STD_LOGIC_vector(31 downto 0));
end component;


component DATAMEMORY is
  Generic(words : natural :=64;wordsize: natural :=32; addresssize: natural := 32);
  port ( LoadIt: in STD_LOGIC;
  			INPUT     : in STD_LOGIC_VECTOR (wordsize-1 downto 0);
			OUTPUT    : out STD_LOGIC_VECTOR (wordsize-1 downto 0);
         MEM_READ : in STD_LOGIC;
			MEM_WRITE : in STD_LOGIC;
			ADDRESS   : in STD_LOGIC_VECTOR (addresssize-1 downto 0);
			CLK       : in STD_LOGIC
			);

end component;

component generic_reg IS
	GENERIC(n:NATURAL:=32);
	PORT (
	I: IN  STD_LOGIC_VECTOR (n-1 DOWNTO 0);
	CLK, LOD, INC, CLR: IN STD_LOGIC;
	O: OUT  STD_LOGIC_VECTOR (n-1 DOWNTO 0));
END component;

-- type <new_type> is
--  record
--    <type_name>        : std_logic_vector( 7 downto 0);
--    <type_name>        : std_logic;
-- end record;
--
-- Declare constants
--
-- constant <constant_name>		: time := <time_unit> ns;
-- constant <constant_name>		: integer := <value;
--
-- Declare functions and procedure
--
-- function <function_name>  (signal <signal_name> : in <type_declaration>) return <type_declaration>;
-- procedure <procedure_name> (<type_declaration> <constant_name>	: in <type_declaration>);
--

end pachageee;

package body pachageee is

---- Example 1
--  function <function_name>  (signal <signal_name> : in <type_declaration>  ) return <type_declaration> is
--    variable <variable_name>     : <type_declaration>;
--  begin
--    <variable_name> := <signal_name> xor <signal_name>;
--    return <variable_name>; 
--  end <function_name>;

---- Example 2
--  function <function_name>  (signal <signal_name> : in <type_declaration>;
--                         signal <signal_name>   : in <type_declaration>  ) return <type_declaration> is
--  begin
--    if (<signal_name> = '1') then
--      return <signal_name>;
--    else
--      return 'Z';
--    end if;
--  end <function_name>;

---- Procedure Example
--  procedure <procedure_name>  (<type_declaration> <constant_name>  : in <type_declaration>) is
--    
--  begin
--    
--  end <procedure_name>;
 
end pachageee;
