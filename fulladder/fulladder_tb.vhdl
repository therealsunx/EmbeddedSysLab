library IEEE;
use ieee.std_logic_1164.all;

entity fulladder_tb is
    end fulladder_tb;

architecture test of fulladder_tb is
    signal a, b, cin: std_logic;
    signal s, cout: std_logic;

    component full_adder
        port(
            a, b, cin: in std_logic;
            s, cout: out std_logic
        );
    end component;
begin
    uut: full_adder port map(a=> a, b=> b, cin => cin, cout=> cout);
    process
    begin
        a <= '0';
        b <= '0';
        cin <= '0';
        wait for 10 ns;

        a <= '1';
        b <= '0';
        cin <= '0';
        wait for 10 ns;

        a <= '0';
        b <= '1';
        cin <= '0';
        wait for 10 ns;

        a <= '1';
        b <= '1';
        cin <= '0';
        wait for 10 ns;

        a <= '0';
        b <= '0';
        cin <= '1';
        wait for 10 ns;

        a <= '1';
        b <= '0';
        cin <= '1';
        wait for 10 ns;

        a <= '0';
        b <= '1';
        cin <= '1';
        wait for 10 ns;

        a <= '1';
        b <= '1';
        cin <= '1';
        wait for 10 ns;

        wait;
    end process;

end test;
        
