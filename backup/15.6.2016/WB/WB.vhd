library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity WB is 
generic(
	address_length : integer := 32;
	data_length : integer := 32;
	reg_adr_length : integer := 5;
	opcode_length : integer := 6
	
);
	port(
		clk : in std_logic;
		reset: in std_logic;
		instr: in std_logic_vector (data_length-1 downto 0);
		
		opcode : in std_logic_vector((opcode_length-1) downto 0);
		
		
		wr : out std_logic;
		reg_data : out std_logic_vector (data_length-1 downto 0); -- vrednost koja se upisuje u regfile u wb fazi i prosleduje u decode
		reg_addr : out std_logic_vector (reg_adr_length-1 downto 0); --adresa registra ka regfajlu
		
--		data_from_cache: in std_logic_vector((data_length - 1) downto 0);
--		data_from_mem : in std_logic_vector((data_length - 1) downto 0); -- vrednost koja se upisuje u regfile u wb fazi
		
		rd_reg : in std_logic_vector(31 downto 0); -- vrednost rd registra iz mem faze
		rd_adr: in std_logic_vector(4 downto 0);  -- adresa rs registra iz mem faze
		
		flush_mem: in std_logic;
		
		ar_log: in std_logic;
		load : in std_logic
	);
	
end entity WB;

architecture rtl of WB is
begin
	process (clk) is
	begin
	if (rising_edge(clk)) then
		wr<='0';
		reg_data <= (others => 'Z');
		reg_addr <= (others => 'Z');
		
		if(ar_log = '1' and flush_mem='0') then -- ako je instrukcija koja upisuje u regfile	
			reg_data <= rd_reg;
			reg_addr <= rd_adr; -- adresa registra RD za aritm i log operacije iz ALU 
			wr<='1';
		end if;
	
		if(load = '1' and flush_mem='0')then --ukoliko je load radi se upis sadrzaja registra Rd u regfile
			reg_data <= rd_reg;
			reg_addr <= rd_adr;
			wr<='1';
		end if;
	end if;
	end process;
end architecture;