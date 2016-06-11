library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity if_jedinica is
	generic
	(
		addr_length: integer := 32;
		instr_length : integer := 32
	);


	port
	(
		clk : in std_logic;
		reset: in std_logic;
		initial_PC: in std_logic_vector((addr_length-1) downto 0);
		IF_addr: out std_logic_vector((addr_length-1) downto 0);--adr sa koje citamo instrukciju
		instr:in std_logic_vector((instr_length-1) downto 0);--instrukcija iz kesa
		ird:out std_logic;--signal instrCache da hoce da cita
		pc_out: out std_logic_vector((addr_length-1) downto 0);--prosledjivanje pc u narednu fazu
		instr_to_decode: out std_logic_vector((instr_length-1) downto 0)--prosledjivanje instr u narednu fazu
	);
end if_jedinica;


architecture impl of if_jedinica is

	signal pc, pc_next : std_logic_vector((addr_length-1) downto 0);
	
begin

	process (clk, reset) is
	begin 
	
		if (reset = '1') then
			pc<= initial_PC;
			ird<= '0';
		elsif (rising_edge(clk)) then
			--pc<=pc_next;
			pc <= std_logic_vector(unsigned(pc) + 1);
			ird<='1';
		end if;
	
	end process;

	IF_addr <= pc;
	instr_to_decode<=instr;
	
end impl;
