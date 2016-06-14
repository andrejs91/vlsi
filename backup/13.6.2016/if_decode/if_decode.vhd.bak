library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity if_decode is
	generic
	(
		reg_adr_length	: integer := 5;
		addr_length: integer := 32;
		instr_length : integer := 32;
		reg_data_length	: integer  :=	32;
		data_length	: integer  :=	32
	);


	port
	(
		--ulazni portovi (ulaz u if fazu)
		clk : in std_logic;
		reset: in std_logic;
		
		--izlazni portovi (izlaz iz decode)
		
		
		instr_out:out std_logic_vector((instr_length-1) downto 0);
		
		-- Izlazni signali iz ALU jedinica
		data_alu_out : out std_logic_vector((data_length - 1) downto 0);
		psw_alu_out : out std_logic_vector((data_length - 1) downto 0);
		
		st_value : out std_logic_vector((data_length - 1) downto 0)
--		op1_data: out std_logic_vector((reg_data_length-1) downto 0);
--		op2_data: out std_logic_vector((reg_data_length-1) downto 0);
--		psw_out: out std_logic_vector((reg_data_length-1) downto 0)
	);
end if_decode;


architecture rtl of if_decode is

	signal instr_IF_cache : std_logic_vector(31 downto 0);
	signal IF_addr: std_logic_vector(31 downto 0);
	signal initial_PC: std_logic_vector(31 downto 0);
	signal ird : std_logic;
	signal pc_out : std_logic_vector(31 downto 0);
	signal instr_IF_decode : std_logic_vector(31 downto 0);
	signal wr : std_logic;
	signal psw_wr : std_logic;
	signal wr_adr : std_logic_vector(4 downto 0);
	signal wr_data : std_logic_vector(31 downto 0);
	signal psw_in : std_logic_vector(31 downto 0);
	
	signal op1_data : std_logic_vector(31 downto 0);
	signal op2_data : std_logic_vector(31 downto 0);
	signal psw_out_decode : std_logic_vector(31 downto 0);

	signal enable : std_logic;
	signal instr_decode_exe : std_logic_vector(31 downto 0);



begin

	if_jedinica: entity work.if_jedinica(impl)
	port map (
		clk,reset,initial_PC,IF_addr,instr_IF_cache,ird,pc_out,instr_IF_decode
	);
	
	decode_jedinica: entity work.Decode(impl)
	port map (
		clk,reset,pc_out,instr_IF_decode,instr_decode_exe,
		wr,psw_wr,wr_adr,wr_data,psw_in,op1_data,op2_data,psw_out_decode
	);
	
	instr_cache: entity work.InstrCache(ins_cache_impl)
	port map (
		clk,ird,IF_addr,instr_IF_cache,initial_PC
	);
	
	exe_jedinica: entity work.Exe(rtl)
	port map (
		clk,enable,op1_data,op2_data,st_value,instr_decode_exe,psw_out_decode,	
	data_alu_out,psw_alu_out,instr_out
	);
end rtl;

