library ieee; 

use ieee.std_logic_1164.all;

use ieee.numeric_std.all;

entity WB is 
generic(
	address_length : integer := 32;
	data_length : integer := 32;
	reg_adr_length : integer := 5
	
);
	port(
		clk : in std_logic;
		reset: in std_logic;
		instr_in: in std_logic_vector (data_length-1 downto 0);
		
		wr : out std_logic;
		reg_data : out std_logic_vector (data_length-1 downto 0); -- vrednost koja se upisuje u registar
		reg_addr : out std_logic_vector (reg_adr_length-1 downto 0); --adresa registra (uzima se iz instrukcije)
		
		data_from_mem : in std_logic_vector((data_length - 1) downto 0); -- vrednost koja se upisuje u regfile u wb fazi
		
		rd_reg : in std_logic_vector(31 downto 0)
	);
	
end entity WB;

architecture rtl of WB is
begin
	process (data_from_mem,instr_in(25 downto 21)) is
	begin
	
	reg_data <= data_from_mem;
	reg_addr <= instr_in(25 downto 21); -- adresa registra RD za aritm i log operacije iz ALU 
	
	--ukoliko je load radi se upis sadrzaja registra Rd u regfile
	if(instr_in(31 downto 26)="000000")then --load
	reg_data <= rd_reg;
	
	end if;
	
	end process;
end architecture;