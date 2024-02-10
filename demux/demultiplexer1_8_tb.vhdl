library ieee;
use ieee.std_logic_1164.all;

entity demultiplexer1_8_tb is
end demultiplexer1_8_tb;

architecture test of demultiplexer1_8_tb is
    signal input_test: std_logic;
    signal select_test: std_logic_vector(2 downto 0);
    signal output_test: std_logic_vector(7 downto 0);

    component demultiplexer1_8
        port (
            i: in std_logic;
            S: in std_logic_vector(2 downto 0);
            o: out std_logic_vector(7 downto 0)
        );
    end component;

begin
    demux: demultiplexer1_8 port map(i => input_test, S => select_test, o => output_test);

    process
    begin
        wait for 500 ms;
        input_test <= '0';
        select_test <= "000";

        wait for 500 ms;
        input_test <= '1';
        select_test <= "111";

        wait for 500 ms;
        wait;
    end process;
end test;