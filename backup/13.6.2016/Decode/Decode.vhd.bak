library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.instrSet.all;

entity Decode is
	generic
	(
		reg_adr_length	: integer := 5;
		addr_length: integer := 32;
		instr_length : integer := 32;
		reg_data_length	: integer  :=	32
	);


	port
	(
		clk : in std_logic;
		reset: in std_logic;
		PC_addr: in std_logic_vector((addr_length-1) downto 0);
		instr_from_if:in std_logic_vector((instr_length-1) downto 0);
		instr_out:out std_logic_vector((instr_length-1) downto 0);
		
		wr: in std_logic;
		psw_wr: in std_logic;
		wr_adr: in std_logic_vector((reg_adr_length-1) downto 0); --adresa registra za upis u regfile
		wr_data: in std_logic_vector((reg_data_length-1) downto 0);
		psw_in: in std_logic_vector((reg_data_length-1) downto 0);
		op1_data: out std_logic_vector((reg_data_length-1) downto 0);
		op2_data: out std_logic_vector((reg_data_length-1) downto 0);
		psw_out: out std_logic_vector((reg_data_length-1) downto 0)
	);
end Decode;


architecture impl of Decode is
	signal opcode : unsigned((opcode_length-1) downto 0);
	signal imm_value : std_logic_vector (15 downto 0);
	signal imm_pom : std_logic_vector (4 downto 0);
	signal op1_adr, op2_adr : std_logic_vector((reg_adr_length-1) downto 0);
	signal psw_rd : std_logic;
	
begin

	regFile: entity work.Regfile(rtl)
	port map (
		reset=>reset,
		rd=>'1',
		wr=>wr,
		psw_wr=>psw_wr,
		psw_rd=>psw_rd,
		op1_rd_adr=>op1_adr,
		op2_rd_adr=>op2_adr,
		wr_adr=>wr_adr,
		wr_data=>wr_data,
		psw_in=>psw_in,
		op1_data=>op1_data,
		op2_data=>op2_data,
		psw_out=>psw_out
	);
	
	opcode <= unsigned (instr_from_if((instr_length-1) downto (instr_length-opcode_length)));
	instr_out <= instr_from_if;
	
	process(clk, reset) is
	
	begin
	
		if (rising_edge(clk)) then
			if (opcode = "000000") then -- load
				op1_adr <= instr_from_if (20 downto 16);
				imm_value <= instr_from_if (15 downto 0);
			end if;
			if (opcode = "000001" or (opcode >= "101000" and opcode <= "101101")) then -- store, instrukcije uslovnog skoka
				op1_adr <= instr_from_if (20 downto 16);
				op2_adr <= instr_from_if (15 downto 11);
				imm_value(15 downto 11) <= instr_from_if(25 downto 21);
				imm_value(10 downto 0) <= instr_from_if( 10 downto 0);
			end if;
			if (opcode = "000100") then -- mov
				op1_adr <= instr_from_if (20 downto 16);
			end if;
			if (opcode = "000101") then -- movi
				imm_value <= instr_from_if(15 downto 0);
			end if;
			if (opcode = "001000" or opcode = "001001" or (opcode >= "010000" and opcode <= "010011")) then --add, sub, and, or, xor, not
				op1_adr <= instr_from_if (20 downto 16);
				op2_adr <= instr_from_if (15 downto 11);
			end if;
			if (opcode = "001100" or opcode = "001101") then --addi, subi
				op1_adr <= instr_from_if (20 downto 16);
				imm_value <= instr_from_if (15 downto 0);
			end if;
			if (opcode >= "011000" and opcode <= "011100") then --pomeracke instrukcije
				op1_adr <= instr_from_if (25 downto 21);
				imm_pom <= instr_from_if (15 downto 11);
			end if;
			if (opcode = "100000" or opcode = "100001") then --jmp, jsr
				op1_adr <= instr_from_if(20 downto 16);
				imm_value <= instr_from_if (15 downto 0);
			end if;
			if (opcode = "100100") then --push
				op1_adr <= instr_from_if (20 downto 16);
			end if;
			
			--rts i pop nemaju prosledjivanje vrednosti registra
		end if;
	
	end process;
	
	
	
end impl;
