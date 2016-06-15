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
		flush: in std_logic;
		
		pc_to_pred : out std_logic_vector (addr_length-1 downto 0);
		pc_predicted : in std_logic_vector (addr_length-1 downto 0);
		branch_predicted : in std_logic
	);
end if_jedinica;


architecture impl of if_jedinica is

	signal pc, pc_next, pc_reg_out : std_logic_vector((addr_length-1) downto 0);
	
begin

	process (clk, reset) is
	begin 
	
		if (reset = '1') then
			pc_next<= initial_PC;
			ird<= '0';
		elsif (rising_edge(clk)) then
			if (branch_predicted = '1') then 
				pc_next <= std_logic_vector(unsigned(pc_predicted) + 1);
			
			else 
				pc_next <= std_logic_vector(unsigned(pc_next) + 1);
			
			end if;
			
			ird<='1';
			pc_reg_out <= pc;
			flush_out <=flush;
			
			if(stall='1') then
				pc_next <= pc_next;
				
				pc_reg_out<= pc_reg_out;
			end if;
	
		end if;
		
	end process;
	instr_to_decode<=instr;
	IF_addr <= pc when stall = '0' else pc_reg_out;
	pc_out <= pc_reg_out;
	pc_to_pred <= pc;
	pc <= pc_next when branch_predicted = '0' else pc_predicted;
	
end impl;
