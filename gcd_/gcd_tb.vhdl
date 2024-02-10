library ieee;
use ieee.std_logic_1164.all;

entity fsmgcd_tb is
end fsmgcd_tb;

architecture behavior of fsmgcd_tb is

    signal clk, reset, start: std_logic;
    signal a, b, gcd: std_logic_vector(7 downto 0);
    
    component GCD_FSM 
        port(
            CLK, RST, START: in std_logic;
            A, B: in std_logic_vector(7 downto 0);
            GCD: out std_logic_vector(7 downto 0);
            DONE: out std_logic
        );
    end component;

begin
    
    uut: GCD_FSM port map(CLK => clk, RST => reset, START => start, A => a, B => b, GCD => gcd, DONE => open);

    clock: process 
    begin
        clk <= '1';
        wait for 100 ns;
        clk <= '0';
        wait for 100 ns;
    end process;

    process
    begin
        wait for 100 ns;
        reset <= '0';
        start <= '1';
        a <= "00001010";
        b <= "00001111";

        wait for 2100 ns;
        reset <= '1';
        start <= '0';
        a <= "110110000";
        b <= "11101010";

        wait for 600 ns;
        reset <= '0';
        
        wait;
    end process;

end behavior;
