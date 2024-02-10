library ieee;
use ieee.std_logic_1164.all;

entity jkflipflop_tb is
end jkflipflop_tb;

architecture test of jkflipflop_tb is
    signal clk, clr, j, k, q, nq: std_logic;
    component jkflipflop
        port (
            clk, clr, j, k : in std_logic;
            q, nq : out std_logic
        );
    end component;

begin
    jk_flip_flop_inst: jkflipflop port map(clk => clk, clr => clr, j => j, k => k, q => q, nq => nq);

    process
    begin
        -- Initialize signals
        clk <= '0';
        clr <= '0';
        j <= '0';
        k <= '0';

        wait for 500 ms;

        -- Apply clear
        clr <= '1';
        wait for 500 ms;

        -- Release clear and toggle inputs
        clr <= '0';
        j <= '1';
        k <= '0';
        wait for 500 ms;

        -- Toggle inputs to test flip-flop behavior
        j <= '0';
        k <= '1';
        wait for 500 ms;

        j <= '1';
        k <= '1';
        wait for 500 ms;

        j <= '0';
        k <= '0';

        wait;

    end process;
end test;
