library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use work.instrSet.all;

entity InstrCache is
	generic
	(
		addr_length: integer := 32;
		instr_length : integer := 32;
		instr_cache_size: integer := 1000
	);


	port
	(
		clk: in std_logic;
		rd: in std_logic;
		addr: in std_logic_vector((addr_length - 1) downto 0);
		instr: out std_logic_vector((instr_length - 1) downto 0) := (others =>'Z');
		initial_PC : out std_logic_vector((addr_length - 1) downto 0)
	);
end InstrCache;


architecture ins_cache_impl of InstrCache is

	type memory_array is array (0 to (instr_cache_size - 1)) of std_logic_vector ((instr_length - 1) downto 0);
	
impure function init_PC (file_name: in string) return std_logic_vector is
	
	file instr_mem : text is in file_name;
	variable line_read: line;
	variable file_var: string (((addr_length / 4) + 1 + instr_length) downto 1);
	variable ini_PC: string ((addr_length /4) downto 1);
	variable inic_PC: std_logic_vector (31 downto 0);
	
begin
	readline(instr_mem, line_read);
	read (line_read, ini_PC);
	inic_PC := std_logic_vector(to_unsigned((hex_string_to_adr_integer(ini_PC(((addr_length / 4)) downto 1))), 32));
	
	return inic_PC;	
end function;
	
impure function init_mem (file_name: in string) return memory_array is
		
	file instr_mem : text is in file_name;
	variable memory_return: memory_array := (others => (others => '0')); 
	variable line_read: line;
	variable file_var: string (((addr_length / 4) + 1 + instr_length) downto 1);
	variable instruction: std_logic_vector((instr_length - 1) downto 0);
	variable address, cnt: integer := 0;
	
	begin
	
		readline(instr_mem, line_read);
		
		-- Citamo do kraja fajla 
		while ((cnt < instr_cache_size) and not endfile(instr_mem)) loop
		
			readline (instr_mem, line_read);
			read (line_read, file_var);
		
			-- Funkcija hex_string_to_adr_integer konvertuje adresu zavisanu kao hexadecimalni izraz, u stringu, u integersku vrednost
			address := hex_string_to_adr_integer(file_var(((addr_length / 4) + 1 + instr_length) downto(instr_length + 2)));
			
			-- Funkcija bit_string_to_instr_vector konvertuje kod instrukcije zapisan kao binarna vrednost, u stringu, u std_logic_vector
			instruction := bit_string_to_instr_vector(file_var(instr_length downto 1));
			
			-- U memoriju upisujemo dekodovanu instrukciju na zadatu adresu
			memory_return(address):= instruction;
			
			cnt := cnt + 1;
			
		end loop;
		
		return memory_return;
	
end function;



signal memory : memory_array := init_mem("C:\Users\Lela\Desktop\VHDL projekat 4.5.2016\InstructionCache\instructionCache.txt");

begin
	initial_PC <= init_PC("C:\Users\Lela\Desktop\VHDL projekat 4.5.2016\InstructionCache\instructionCache.txt");
	process (clk)
	begin
		if (rising_edge(clk)) then
			
		  instr <= (others => 'Z');
		  if (rd = '1') then
						instr <= memory(to_integer(unsigned(addr)));
			end if;
				
		end if;
					
	end process;

end ins_cache_impl;
