LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY if_decode_vhd_tst IS
END if_decode_vhd_tst;
ARCHITECTURE if_decode_arch OF if_decode_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
COMPONENT if_decode
	PORT (
	clk : IN STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : if_decode
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	reset => reset
	);
init : PROCESS   --proces koji generise signal takta                                            
	variable clk_next : std_logic := '1';
BEGIN
	reset <= '1';
	clk <= '0';
	wait for 5 ns;
	reset <= '0';
	wait for 5 ns;
	loop
		clk <= clk_next;
		clk_next := not clk_next;
		wait for 5 ns;
	end loop;
END PROCESS init; 
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END if_decode_arch;
