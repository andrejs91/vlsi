library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MEM is 
generic(
	address_length : integer := 32;
	data_length : integer := 32;
	opcode_length : integer := 6;
	reg_code_length : integer := 5
	
);
	port(
		clk : in std_logic;
		reset: in std_logic;
		
		rd:out std_logic; --citanje iz data kesa
		wr:out std_logic;  --upis u data kes
		
	-- Izlazni signali iz ALU jedinice
	data_from_alu : in std_logic_vector((data_length - 1) downto 0); -- podatak iz alu jedinice
	psw_from_alu : in std_logic_vector((data_length - 1) downto 0);
	
	st_value : in std_logic_vector((data_length - 1) downto 0); -- vrednost registra koja se upisuje u data kes kod store instr
	
	-- instrukcija
	instr : in std_logic_vector((address_length - 1) downto 0);
	data_to_wb : out std_logic_vector((data_length - 1) downto 0); -- vrednost koja se upisuje u regfile u wb fazi
	instr_out : out std_logic_vector((address_length - 1) downto 0); -- instrukcija ka wb fazi
	
		addr_bus: out std_logic_vector(31 downto 0); --adresa ka data kesu
		data_bus_out: out std_logic_vector(31 downto 0); --podatak ka data kesu
		data_bus_in: in std_logic_vector(31 downto 0) --podatak iz data kesa (load instr)
	
	
		);
end entity;

architecture rtl of MEM is

begin

	process (clk) is
	variable load_pom: std_logic_vector(31 downto 0);
	begin
	if (instr(31 downto 26)="000001")then --ako je store
	
		addr_bus<=data_from_alu; --adresa gde treba da se smesti rec iz reg Rs2 (instr(15..11))
		data_bus_out<=st_value; --saljem u mem
		wr<='1';
		else
		wr<='0';
		end if;
		
	if(instr(31 downto 26)="000000")then -- load 
	
		addr_bus<=data_from_alu; -- adresa odakle se dohvata rec i smesta u reg Rd(instr(25..21))
		load_pom :=data_bus_in;  --uzimam iz mem
		rd<='1';
		else
		rd<='0';
		end if;
	
	instr_out <= instr;
	
	end process;
	end architecture;
	