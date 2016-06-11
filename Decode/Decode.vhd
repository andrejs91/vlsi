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
		PC_addr: in std_logic_vector((addr_length-1) downto 0); --Vrednost PC dobijena iz if faze
		instr_from_if:in std_logic_vector((instr_length-1) downto 0);
		instr_out:out std_logic_vector((instr_length-1) downto 0);
		
		stall: in std_logic;
		flush_out: out std_logic;
		flush_if: in std_logic;
		flush: in std_logic;
		
		wr: in std_logic;
		psw_wr: in std_logic;
		wr_adr: in std_logic_vector((reg_adr_length-1) downto 0); --adresa registra za upis u regfile
		wr_data: in std_logic_vector((reg_data_length-1) downto 0);
		psw_in: in std_logic_vector((reg_data_length-1) downto 0);
		rs1_data: out std_logic_vector((reg_data_length-1) downto 0);
		rs2_data: out std_logic_vector((reg_data_length-1) downto 0);
		psw_out: out std_logic_vector((reg_data_length-1) downto 0);
		
		
		forward_rs1: in std_logic;
		forward_rs2: in std_logic;
		fwd_rs1_value: in std_logic_vector(31 downto 0);
		fwd_rs2_value: in std_logic_vector(31 downto 0);
		
		opcode_out : out std_logic_vector((opcode_length-1) downto 0);
		rd_adr: out std_logic_vector(4 downto 0);
		imm_value : out std_logic_vector (15 downto 0);
		rs1_adr : out std_logic_vector((reg_adr_length-1) downto 0);
		rs2_adr : out std_logic_vector((reg_adr_length-1) downto 0)
	);
end Decode;


architecture impl of Decode is
	signal op1_adr, op2_adr : std_logic_vector((reg_adr_length-1) downto 0);
	
	signal psw_rd : std_logic;
	signal op1_data, op2_data : std_logic_vector(31 downto 0);
	
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
	
	
	
	process(clk, reset) is
		variable opcode : std_logic_vector (5 downto 0);
	begin
		if (reset = '1') then
			op1_adr <= (others=> 'Z');
			op2_adr <= (others=> 'Z');
			rd_adr <= (others=> 'Z');
			rs1_adr <= (others=> 'Z');
			rs2_adr <= (others=> 'Z');
		elsif (rising_edge(clk)) then
		
		if(stall='1' or flush='1' or flush_if='1') then
		flush_out<='1';
		else
		flush_out<='0';
		end if;
		
		opcode := instr_from_if((instr_length-1) downto (instr_length-opcode_length));
		instr_out <= instr_from_if;
		opcode_out <= opcode;
		op1_adr <= (others=> 'Z');
		op2_adr <=	(others=> 'Z');
		rd_adr <=	(others=> 'Z');
			if (opcode = "000000") then -- load
				op1_adr <= instr_from_if (20 downto 16);
				rs1_adr <= instr_from_if (20 downto 16); -- prosledjujemo adresu rs reg u fwd jedinicu
				rd_adr <= instr_from_if (25 downto 21);
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
				rd_adr <= instr_from_if (25 downto 21);
			end if;
			if (opcode = "000101") then -- movi
				imm_value <= instr_from_if(15 downto 0);
				rd_adr <= instr_from_if (25 downto 21);
			end if;
			if (opcode = "001000" or opcode = "001001" or (opcode >= "010000" and opcode <= "010011")) then --add, sub, and, or, xor, not
				op1_adr <= instr_from_if (20 downto 16);
				op2_adr <= instr_from_if (15 downto 11);
				rd_adr <= instr_from_if (25 downto 21);
			end if;
			if (opcode = "001100" or opcode = "001101") then --addi, subi
				op1_adr <= instr_from_if (20 downto 16);
				imm_value <= instr_from_if (15 downto 0);
				rd_adr <= instr_from_if (25 downto 21);
			end if;
			if (opcode >= "011000" and opcode <= "011100") then --pomeracke instrukcije
				op1_adr <= instr_from_if (25 downto 21);
				imm_value(4 downto 0) <= instr_from_if (15 downto 11);
				imm_value(15 downto 5)<= (others => '0');
				rd_adr <= instr_from_if (25 downto 21);
			end if;
			if (opcode = "100000" or opcode = "100001") then --jmp, jsr
				op1_adr <= instr_from_if(20 downto 16);
				imm_value <= instr_from_if (15 downto 0);
			end if;
			if (opcode = "100100") then --push
				op1_adr <= instr_from_if (20 downto 16);
			end if;
			
			if (opcode = "100101") then --pop
				rd_adr <= instr_from_if (25 downto 21);
			end if;
			
			--rts nema prosledjivanje vrednosti registra
		--	rs1_adr <= op1_adr;
			rs2_adr <= op2_adr;
			if (forward_rs1 = '1') then
				rs1_data <= fwd_rs1_value;
			else
				rs1_data <= op1_data;
			end if;
			if (forward_rs2 = '1') then
				rs2_data <= fwd_rs2_value;
			else
				rs2_data <= op2_data;
			end if;
		end if;
	
	end process;
	
--	rs1_data <= fwd_rs1_value when forward_rs1 = '1' else op1_data;
--	rs2_data <= f
	
end impl;

