library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;

package instrSet is
	
	constant hex_adr_len: integer := 8;
	constant instr_length : integer := 32;
	constant opcode_length : integer := 6;
	
	constant N : integer := 31;
	constant Z : integer := 30;
	constant C : integer := 29;
	constant V : integer := 28;
	
	
	constant LOAD_INS : std_logic_vector((opcode_length - 1) downto 0) := "000000";
	constant STORE_INS : std_logic_vector((opcode_length - 1) downto 0) := "000001";
	
	constant MOV_INS : std_logic_vector((opcode_length - 1) downto 0) := "000100";
	constant MOVI_INS : std_logic_vector((opcode_length - 1) downto 0) := "000101";
	
	constant ADD_INS : std_logic_vector((opcode_length - 1) downto 0) := "001000";
	constant SUB_INS : std_logic_vector((opcode_length - 1) downto 0) := "001001";
	
	constant ADDI_INS : std_logic_vector((opcode_length - 1) downto 0) := "001100";
	constant SUBI_INS : std_logic_vector((opcode_length - 1) downto 0) := "001101";
	
	constant AND_INS : std_logic_vector((opcode_length - 1) downto 0) := "010000";
	constant OR_INS : std_logic_vector((opcode_length - 1) downto 0) := "010001";
	constant XOR_INS : std_logic_vector((opcode_length - 1) downto 0) := "010010";
	constant NOT_INS : std_logic_vector((opcode_length - 1) downto 0) := "010011";
	
	constant SHL_INS : std_logic_vector((opcode_length - 1) downto 0) := "011000";
	constant SHR_INS : std_logic_vector((opcode_length - 1) downto 0) := "011001";
	constant SAR_INS : std_logic_vector((opcode_length - 1) downto 0) := "011010";
	constant ROL_INS : std_logic_vector((opcode_length - 1) downto 0) := "011011";
	constant ROR_INS : std_logic_vector((opcode_length - 1) downto 0) := "011100";
	
	constant JMP_INS : std_logic_vector((opcode_length - 1) downto 0) := "100000";
	constant JSR_INS : std_logic_vector((opcode_length - 1) downto 0) := "100001";
	constant RTS_INS : std_logic_vector((opcode_length - 1) downto 0) := "100010";
	constant PUSH_INS : std_logic_vector((opcode_length - 1) downto 0) := "100100";
	constant POP_INS : std_logic_vector((opcode_length - 1) downto 0) := "100101";
	
	constant BEQ_INS : std_logic_vector((opcode_length - 1) downto 0) := "101000";
	constant BNQ_INS : std_logic_vector((opcode_length - 1) downto 0) := "101001";
	constant BGT_INS : std_logic_vector((opcode_length - 1) downto 0) := "101010";
	constant BLT_INS : std_logic_vector((opcode_length - 1) downto 0) := "101011";
	constant BGE_INS : std_logic_vector((opcode_length - 1) downto 0) := "101100";
	constant BLE_INS : std_logic_vector((opcode_length - 1) downto 0) := "101101";
	
	function char_to_integer (char: character) return integer;
	function char_to_bit (char: character) return std_logic;
	function hex_string_to_adr_integer(str: string(hex_adr_len downto 1)) return integer;
	function bit_string_to_instr_vector(str: string(instr_length downto 1)) return std_logic_vector;

end package;

package body instrSet is

function char_to_integer (char: character) return integer is
	variable return_value : integer;
	begin
		case char is
			when '0' => return_value := 0;
			when '1' => return_value := 1;
			when '2' => return_value := 2;
			when '3' => return_value := 3;
			when '4' => return_value := 4;
			when '5' => return_value := 5;
			when '6' => return_value := 6;
			when '7' => return_value := 7;
			when '8' => return_value := 8;
			when '9' => return_value := 9;
			when 'A' => return_value := 10;
			when 'B' => return_value := 11;
			when 'C' => return_value := 12;
			when 'D' => return_value := 13;
			when 'E' => return_value := 14;
			when 'F' => return_value := 15;
			when 'a' => return_value := 10;
			when 'b' => return_value := 11;
			when 'c' => return_value := 12;
			when 'd' => return_value := 13;
			when 'e' => return_value := 14;
			when 'f' => return_value := 15;
			when others => return_value := 0;
		end case;
		
		return return_value;
		
end function;
	
function char_to_bit (char: character) return std_logic is
	variable return_value: std_logic;
	begin
		if char = '1' then return_value := '1';
		else return_value := '0';
		end if;
		
		return return_value;
		
end function;
	
function hex_string_to_adr_integer(str: string(hex_adr_len downto 1)) return integer is
	variable return_value: integer := 0;
	begin
		for i in 0 to (hex_adr_len - 1) loop
			return_value := return_value + char_to_integer(str(i + 1)) * 16** (i);
		end loop;
		
		return return_value;
		
end function;	

function bit_string_to_instr_vector(str: string(instr_length downto 1)) return std_logic_vector is
	variable return_value: std_logic_vector((instr_length - 1) downto 0);
	begin
		for i in 0 to (instr_length - 1) loop
			return_value(i) := char_to_bit(str(i + 1));
		end loop;
		
		return return_value;
	
end function;

end package body;