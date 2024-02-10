library ieee;
use ieee.std_logic_1164.all;

entity mux_tb is
end mux_tb;

architecture testbench of mux_tb is
    signal a0, a1, s, en, q : std_logic;

    component mux
        Port(
            a0, a1, s, en : in std_logic;
            q : out std_logic
        );
    end component;

begin
    mux_inst : mux port map(a0 => a0, a1 => a1, s => s, en => en, q => q);

    process
    begin
        a0 <= '0';
        a1 <= '1';
        s <= '0';
        en <= '1';

        wait for 10 ns;

        s <= '1';

        wait for 10 ns;

        en <= '0';

        wait for 10 ns;

        en <= '1';

        wait for 10 ns;

        a0 <= '1';
        a1 <= '0';

        wait for 10 ns;

        s <= '0';

        wait for 10 ns;

        en <= '0';

        wait;

    end process;

end testbench;
