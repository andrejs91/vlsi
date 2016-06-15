library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Exe is
generic(
	address_length : integer := 32;
	data_length : integer := 32;
	opcode_length : integer := 6;
	reg_code_length : integer := 5
	
);

port(

	clk : in std_logic;
	enable: in std_logic;
	
	
	-- Vrednosti registara r1 i r2 
	op1_1 : in std_logic_vector((data_length - 1) downto 0);
	op2_1 : in std_logic_vector((data_length - 1) downto 0);
	
	st_value : out std_logic_vector((data_length - 1) downto 0);
	
	-- instrukcija
	instr : in std_logic_vector((address_length - 1) downto 0);
	
	-- Vrednost registra psw
	psw_in : in std_logic_vector((data_length - 1) downto 0);
	
	
	-- Izlazni signali iz ALU jedinica
	data_alu_out : out std_logic_vector((data_length - 1) downto 0);
	psw_alu_out : out std_logic_vector((data_length - 1) downto 0);
	instr_out:out std_logic_vector((data_length-1) downto 0)
	
	);
end entity;

architecture rtl of Exe is

constant zero_vector : std_logic_vector(data_length downto 0) := (others => '0');
	constant zero_mask : std_logic_vector((data_length - 1) downto 0) := (others => '1');
	
	begin 
	process(enable, instr(31 downto 26), op1_1, op2_1, psw_in)
		variable result : std_logic_vector(data_length downto 0);
		variable psw : std_logic_vector((data_length - 1) downto 0);
		variable imm: std_logic_vector(31 downto 0);
		
	begin
	
		if (enable = '1') then
			result := (others => 'Z');
			psw := psw_in;
		
			case instr(31 downto 26) is
			
			--LOAD
			when "000000" => 
			imm(15 downto 0):= instr(15 downto 0);
			imm(31 downto 16):= (others => imm(15));
			result := std_logic_vector(('0' & unsigned(op1_1)) + ('0' & unsigned(imm)));
			
			
			--STORE
			when "000001" => 
			imm(15 downto 11) := instr(25 downto 21);
			imm(10 downto 0):=  instr(10 downto 0);
			imm(31 downto 16):= (others => imm(15));
			result := std_logic_vector(('0' & unsigned(op1_1)) + ('0' & unsigned(imm)));
			
			--MOV
			when "000100" =>
				result := '0' & op1_1;
			
			--MOVI
			when "000101" =>
				imm(15 downto 0):= instr(15 downto 0);
				imm(31 downto 16):= (others => '0');
				result := '0' & imm;
			
			--Aritmeticke i logicke instrukcije
			
			--AND
			when "010000" => 
				-- treba da modifikuje
				result := ('0' & op1_1) AND ('0' & op2_1);	
				-- N
				psw(31) := result(data_length - 1);
				-- Z
				if ((result and '0'&zero_mask)= zero_vector) then
					psw(30) := '1';
				else
					psw(30) := '0';
				end if;
				-- C
				psw(29) := '0';
				-- V
				psw(28) := '0';
			
			--SUB
			when "001001" => 
				-- treba da modifikuje
				result := std_logic_vector(('0' & unsigned(op1_1)) - ('0' & unsigned(op2_1)));
				-- N
				psw(31) := result(data_length - 1);
				-- Z
				if ((result and '0'&zero_mask)= zero_vector) then
					psw(30) := '1';
				else
					psw(30) := '0';
				end if;
				-- C
				psw(29) := result(data_length);
				-- V
				if ((op1_1(data_length - 1) xor op2_1(data_length - 1))
					and (op1_1(data_length - 1) xor result(data_length - 1))) = '1' then
					psw(28) := '1';
				else
					psw(28) := '0';
				end if;
				
				
			--SUBI
			when "001100" => 
				imm(15 downto 0):= instr(15 downto 0);
				imm(31 downto 16):= (others => imm(15));
			
				result := std_logic_vector(('0' & unsigned(op1_1)) - ('0' & unsigned(imm)));
				-- N
				psw(31) := result(data_length - 1);
				-- Z
				if ((result and '0'&zero_mask)= zero_vector) then
					psw(30) := '1';
				else
					psw(30) := '0';
				end if;
				-- C
				psw(29) := result(data_length);
				-- V
				if ((op1_1(data_length - 1) xor imm(data_length - 1))
					and (op1_1(data_length - 1) xor result(data_length - 1))) = '1' then
					psw(28) := '1';
				else
					psw(28) := '0';
				end if;
			
			--ADDI
			when "001101" => 
				imm(15 downto 0):= instr(15 downto 0);
				imm(31 downto 16):= (others => imm(15));
				
				result := std_logic_vector(('0' & unsigned(op1_1)) + ('0' & unsigned(imm)));
				-- N
				psw(31) := result(data_length - 1);
				-- Z
				if ((result and '0'&zero_mask)= zero_vector) then
					psw(30) := '1';
				else
					psw(30) := '0';
				end if;
				-- C
				psw(29) := result(data_length);
				-- V
				if (not (op1_1(data_length - 1) xor imm(data_length - 1))
					and (op1_1(data_length - 1) xor result(data_length - 1))) = '1' then
					psw(28) := '1';
				else
					psw(28) := '0';
				end if;
			
			
			--ADD
			when "001000" => 
				-- treba da modifikuje
				result := std_logic_vector(('0' & unsigned(op1_1)) + ('0' & unsigned(op2_1)));
				-- N
				psw(31) := result(data_length - 1);
				-- Z
				if ((result and '0'&zero_mask)= zero_vector) then
					psw(30) := '1';
				else
					psw(30) := '0';
				end if;
				-- C
				psw(29) := result(data_length);
				-- V
				if (not (op1_1(data_length - 1) xor op2_1(data_length - 1))
					and (op1_1(data_length - 1) xor result(data_length - 1))) = '1' then
					psw(28) := '1';
				else
					psw(28) := '0';
				end if;
				
			--OR
			when "010001" => 
				-- treba da modifikuje
				result := std_logic_vector(('0' & unsigned(op1_1)) or ('0' & unsigned(op2_1)));
				
				if ((result and '0'&zero_mask)= zero_vector) then
					psw(30) := '1';
				else
					psw(30) := '0';
				end if;
		
			--XOR
			when "010010" => 
				-- treba da modifikuje
				result := std_logic_vector(('0' & unsigned(op1_1)) xor ('0' & unsigned(op2_1)));
				
				if ((result and '0'&zero_mask)= zero_vector) then
					psw(30) := '1';
				else
					psw(30) := '0';
				end if;
		
				
			--NOT
			when "010011" =>
				result := '0' & (not op2_1);
				
			--Pomeracke instrukcije		
			--SHL
			when "011000" =>
				result := '0' & to_stdlogicvector(to_bitvector(op1_1) sll to_integer(unsigned(op2_1)));
			--SHR
			when "011001" =>
				result := '0' & to_stdlogicvector(to_bitvector(op1_1) srl to_integer(unsigned(op2_1)));
			--SAR
			when "011010" =>
				result := '0' & to_stdlogicvector(to_bitvector(op1_1) sra to_integer(unsigned(op2_1)));
			--ROL
			when "011011" =>
				result := '0' & to_stdlogicvector(to_bitvector(op1_1) rol to_integer(unsigned(op2_1)));
				--ROR
			when "011100" =>
				result := '0' & to_stdlogicvector(to_bitvector(op1_1) ror to_integer(unsigned(op2_1)));
			
			when others =>
				null;
			end case;
		
			data_alu_out <= result((data_length - 1) downto 0);
			psw_alu_out <= psw;
			st_value <= op2_1;
			
		else
			data_alu_out <= (others => 'Z');
			psw_alu_out <= (others => 'Z');
		end if;
	
	end process;
end architecture;
