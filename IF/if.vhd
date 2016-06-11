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
		IF_addr: out std_logic_vector((addr_length-1) downto 0);-- prosledjujemo PC instrCache-u
		instr:in std_logic_vector((instr_length-1) downto 0);--instrukcija iz kesa
		ird:out std_logic;--signal instrCache da hoce da cita
		pc_out: out std_logic_vector((addr_length-1) downto 0);--prosledjivanje pc u narednu fazu
		instr_to_decode: out std_logic_vector((instr_length-1) downto 0);--prosledjivanje instr u narednu fazu
		stall: in std_logic;
		flush_out: out std_logic;
		flush: in std_logic
	);
end if_jedinica;


architecture impl of if_jedinica is

	signal pc, pc_next : std_logic_vector((addr_length-1) downto 0);
	
begin

	process (clk, reset) is
	begin 
	
		if (reset = '1') then
			--pc<= initial_PC;
			pc_next<= initial_PC;
			ird<= '0';
		elsif (rising_edge(clk)) then
			pc<=pc_next;
			if(stall='0') then
			pc_next <= std_logic_vector(unsigned(pc_next) + 1);
			end if;
			ird<='1';
			pc_out <= pc;
			flush_out <=flush;
		end if;
	
	end process;
	instr_to_decode<=instr;
	IF_addr <= pc;
	
	
end impl;
