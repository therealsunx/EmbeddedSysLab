library ieee;
use ieee.std_logic_1164.all;

entity decoder3x8_tb is
end decoder3x8_tb;

architecture testbench of decoder3x8_tb is
    signal A : std_logic_vector(2 downto 0);
    signal Q : std_logic_vector(7 downto 0);

    component decoder3x8
        port (
            A : in std_logic_vector(2 downto 0);
            Q : out std_logic_vector(7 downto 0)
        );
    end component;

begin
    uut: decoder3x8 port map (A => A, Q => Q);

    process
    begin
        -- Test case 1: A = "000"
        A <= "000";
        wait for 10 ns;
        assert Q = "00000001" report "Test Case 1 Failed" severity error;

        -- Test case 2: A = "010"
        A <= "010";
        wait for 10 ns;
        assert Q = "00000100" report "Test Case 2 Failed" severity error;

        -- Test case 3: A = "111"
        A <= "111";
        wait for 10 ns;
        assert Q = "10000000" report "Test Case 3 Failed" severity error;

        -- Add more test cases as needed

        wait;
    end process;
end testbench;
