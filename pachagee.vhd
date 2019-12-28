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

package pachagee is


component adder is
    Port ( input1 : in  STD_LOGIC_vector(31 downto 0);
           input2 : in  STD_LOGIC_vector(31 downto 0);
           output : out  STD_LOGIC_vector(31 downto 0));
end component;

component anddd is
    Port ( in1 : in  STD_LOGIC;
           in2 : in  STD_LOGIC;
           o : out  STD_LOGIC);
end component;

component orr is
    Port ( c : in  STD_LOGIC;
           d : in  STD_LOGIC;
           r : out  STD_LOGIC);
end component;

component multiplixer21 is
    Port ( input1 : in  STD_LOGIC;
           input2 : in  STD_LOGIC;
           sel : in  STD_LOGIC;
           output : out  STD_LOGIC);
end component;


component multiplixer16 is
    Port ( input1 : in  STD_LOGIC;
	        input2 : in  STD_LOGIC;
	        input3 : in  STD_LOGIC;
	        input4 : in  STD_LOGIC;
           sel : in  STD_LOGIC_vector(1 downto 0);
           output : out  STD_LOGIC);
end component;

component one_bit_adder is
    Port ( i1 : in  STD_LOGIC;
           i2 : in  STD_LOGIC;
           cin : in  STD_LOGIC;
			 
           cout : out  STD_LOGIC;
           result : out  STD_LOGIC);
end component;

component onebitalu is
    Port (  a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
			  less:in std_logic;
           op : in  STD_LOGIC_vector(3 downto 0);
           cout : out  STD_LOGIC;
           output : out  STD_LOGIC;
			  set:out std_logic);
end component;

component norr is
    Port ( A : in  STD_LOGIC_vector(31 downto 0);
           O : out  STD_LOGIC);
end component;
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

end pachagee;

package body pachagee is

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
 
end pachagee;
