----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:04:13 04/16/2018 
-- Design Name: 
-- Module Name:    control_unit - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity control_unit is
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
end control_unit;

architecture Behavioral of control_unit is
signal Rformat:std_logic;
signal lw:std_logic;
signal sw:std_logic;
signal beq:std_logic;
signal jumpp:std_logic;
signal bnee:std_logic;
begin
Rformat<=((not Op(0))and (not Op(1))and (not Op(2))and (not Op(3))and (not Op(4))and (not Op(5)));
lw<= (Op(0) and Op(1) and (not Op(2))and (not Op(3))and (not Op(4))and Op(5));
sw<= (Op(0) and Op(1) and (not Op(2))and Op(3) and (not Op(4))and Op(5));
beq<= ((not Op(0))and (not Op(1)) and  Op(2) and (not Op(3))and (not Op(4))and (not Op(5)));
jumpp<= ((not Op(0)) and Op(1) and (not Op(2))and (not Op(3))and (not Op(4))and (not Op(5)));
bnee<= (Op(0) and (not Op(1))and Op(2) and (not Op(3))and (not Op(4))and (not Op(5)));

bne<=bnee;
Regdst <= RFormat;
Alusrc <= lw or sw;
Memtoreg <= lw;
Regwrite <= RFormat or lw;
Memread <= lw;
Memwrite <= sw;
Branch <= beq ;
ALUOp(1)<=Rformat;
ALUOp(0)<=beq or bnee;
jump <= jumpp;

end Behavioral;

