library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Forward is
	
	port
	(
		-- Input ports
		rd_adr_ex	: in  std_logic_vector(4 downto 0);
		rd_adr_mem	: in  std_logic_vector(4 downto 0);
		rd_adr_wb	: in  std_logic_vector(4 downto 0);
		
		rs1_adr: in  std_logic_vector(4 downto 0); --adrese iz decode faze
		rs2_adr: in  std_logic_vector(4 downto 0);
				
		rd_ex	: in  std_logic_vector(31 downto 0);  -- podatak koji se prosledjuje iz exe
		rd_mem	: in  std_logic_vector(31 downto 0);  -- podatak koji se prosledjuje iz mem
		rd_wb	: in  std_logic_vector(31 downto 0);  -- podatak koji se prosledjuje iz wb
		
		fwd_rs1: out std_logic;
		fwd_rs2: out std_logic;
		
		fwd_rs1_value: out std_logic_vector(31 downto 0);
		fwd_rs2_value: out std_logic_vector(31 downto 0);
		
		stall_if: out std_logic := '0';
		stall_id: out std_logic := '0';
		
		valid:  in std_logic
		
		
		
	);
end Forward;



architecture rtl of Forward is

signal ind : std_logic_vector (1 downto 0) := "00";

begin

	process(rd_adr_ex,rd_adr_mem,rd_adr_wb,rs1_adr,rs2_adr)
	
	begin
		stall_id <= '0';
		stall_if <= '0';
		fwd_rs1<= '0';
		fwd_rs2<= '0';
		fwd_rs1_value <= (others => 'Z');
		fwd_rs2_value <= (others => 'Z');
	
		if(rd_adr_wb=rs1_adr and rd_adr_wb /= "ZZZZZ" and rs1_adr /= "ZZZZZ") then 
			fwd_rs1 <= '1';
			fwd_rs1_value <= rd_wb;
			ind <= "01";
		end if;
		
		if(rd_adr_wb=rs2_adr and rd_adr_wb /= "ZZZZZ"and rs2_adr /= "ZZZZZ") then 
			fwd_rs2 <= '1';
			fwd_rs2_value <= rd_wb;
		end if;
		
		if(rd_adr_mem=rs1_adr and rd_adr_mem /= "ZZZZZ"and rs1_adr /= "ZZZZZ") then 
			fwd_rs1 <= '1';
			fwd_rs1_value <= rd_mem;	
			ind <= "10";
		end if;
		
		if(rd_adr_mem=rs2_adr and rd_adr_mem /= "ZZZZZ"and rs2_adr /= "ZZZZZ") then 
			fwd_rs2 <= '1';
			fwd_rs2_value <= rd_mem;
		end if;
		
		if(rd_adr_ex=rs1_adr and rd_adr_ex /= "ZZZZZ"and rs1_adr /= "ZZZZZ") then 
			if (valid = '1') then
				fwd_rs1 <= '1';
				fwd_rs1_value <= rd_ex;
				ind <= "11";
			else
				fwd_rs1 <= '0';
				stall_if <= '1';
				stall_id <= '1';
				ind <= "11";
			end if;
		end if;
		
		if(rd_adr_ex=rs2_adr and rd_adr_ex /= "ZZZZZ"and rs2_adr /= "ZZZZZ") then 
			if (valid = '1') then
				fwd_rs2 <= '1';
				fwd_rs2_value <= rd_ex;
			else
				fwd_rs2 <= '0';
				stall_if <= '1';
				stall_id <= '1';
			end if;
		end if;
		
	end process;

end rtl;
