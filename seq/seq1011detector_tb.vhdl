library ieee;
use ieee.std_logic_1164.all;

entity seq1011_tb is
end seq1011_tb;

architecture test of seq1011_tb is
    signal x, y, clk, rst: std_logic;

    component seq1011
        Port (
            x : in std_logic;
            y : out std_logic;
            clk : in std_logic;
            rst : in std_logic
        );
    end component;

begin
    seq1011_inst: seq1011 port map(x => x, y => y, clk => clk, rst => rst);

    process
    begin
        -- Initialize signals
        x <= '0';
        clk <= '0';
        rst <= '1';

        wait for 500 ms;

        -- Release reset
        rst <= '0';

        wait for 1 us;

        -- Apply different input bitstream values
        x <= '1';
        wait for 1 us;
        clk <= '1';
        wait for 1 us;
        clk <= '0';

        wait for 500 ms;

        x <= '0';
        wait for 1 us;
        clk <= '1';
        wait for 1 us;
        clk <= '0';

        wait for 500 ms;

        x <= '1';
        wait for 1 us;
        clk <= '1';
        wait for 1 us;
        clk <= '0';

        wait for 500 ms;

        x <= '1';
        wait for 1 us;
        clk <= '1';
        wait for 1 us;
        clk <= '0';

        wait for 500 ms;

        -- Apply more input values
        x <= '0';
        wait for 1 us;
        clk <= '1';

        -- Add some delay before ending the simulation
        wait for 10 us;
        -- End the simulation
        wait;

    end process;
end test;

