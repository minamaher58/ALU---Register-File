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

package pachage_mux_dec_reg_and is

component multiplixer is
 Port (input0,input1,input2,input3,input4,input5,input6,input7,input8,input9,
       input10,input11,input12,input13,input14,input15,input16,input17,input18,input19,input20,
       input21,input22,input23,input24,input25,input26,input27,input28,input29,input30,input31:in  STD_LOGIC_VECTOR (31 downto 0);
			  sel2 : in  STD_LOGIC_VECTOR (4 downto 0);
           output : out  STD_LOGIC_VECTOR (31 downto 0));
			
end component;

component andd is
    Port ( 
	        in1 : in  STD_LOGIC;
           in2 : in  STD_LOGIC;
           o : out  STD_LOGIC);
end component;

component reg is
    Port ( input : in  STD_LOGIC_VECTOR (31 downto 0);
           clk,l,inc,clr : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (31 downto 0));
end component;


component decoderr is
Port ( B : in  STD_LOGIC_VECTOR (4 downto 0);
       outp : out  STD_LOGIC_VECTOR (31 downto 0);
       e : in  STD_LOGIC);
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

end pachage_mux_dec_reg_and;

package body pachage_mux_dec_reg_and is

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
 
end pachage_mux_dec_reg_and;
