library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FullAdder_tb is
end FullAdder_tb;

architecture testbench of FullAdder_tb is
    signal A, B, Cin : std_logic;
    signal Sum, Cout : std_logic;

    component FullAdder
        Port (
            A : in STD_LOGIC;
            B : in STD_LOGIC;
            Cin : in STD_LOGIC;
            Sum : out STD_LOGIC;
            Cout : out STD_LOGIC
        );
    end component;

begin
    uut: FullAdder port map (A => A, B => B, Cin => Cin, Sum => Sum, Cout => Cout);

    process
    begin
        -- Test case 1: A=0, B=0, Cin=0
        A <= '0';
        B <= '0';
        Cin <= '0';
        wait for 10 ns;
        assert (Sum = '0' and Cout = '0') report "Test Case 1 Failed" severity error;

        -- Test case 2: A=1, B=1, Cin=0
        A <= '1';
        B <= '1';
        Cin <= '0';
        wait for 10 ns;
        assert (Sum = '0' and Cout = '1') report "Test Case 2 Failed" severity error;

        -- Test case 3: A=1, B=1, Cin=1
        A <= '1';
        B <= '1';
        Cin <= '1';
        wait for 10 ns;
        assert (Sum = '1' and Cout = '1') report "Test Case 3 Failed" severity error;

        -- Add more test cases as needed

        wait;
    end process;
end testbench;
