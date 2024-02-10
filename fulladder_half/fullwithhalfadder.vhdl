library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FullAdder is
    Port (
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        Cin : in STD_LOGIC;
        Sum : out STD_LOGIC;
        Cout : out STD_LOGIC
    );
end FullAdder;

architecture Structural of FullAdder is
    component HalfAdder
        Port (
            A : in STD_LOGIC;
            B : in STD_LOGIC;
            Sum : out STD_LOGIC;
            Cout : out STD_LOGIC
        );
    end component;

    signal S1, S2, C1, C2 : STD_LOGIC;
begin
    HA1: HalfAdder port map (A => A, B => B, Sum => S1, Cout => C1);
    HA2: HalfAdder port map (A => S1, B => Cin, Sum => S2, Cout => C2);

    process
    begin
        wait for 10 ns;
        Cout <= S2 OR C1;
        Sum <= S2;

        wait;
    end process;
end Structural;

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
        A <= '0';
        B <= '0';
        Cin <= '0';
        wait for 20 ns;
        assert (Sum = '0' and Cout = '0') report "Test Case 1 Failed" severity error;

        A <= '1';
        B <= '1';
        Cin <= '0';
        wait for 20 ns;
        assert (Sum = '0' and Cout = '1') report "Test Case 2 Failed" severity error;

        A <= '1';
        B <= '1';
        Cin <= '1';
        wait for 20 ns;
        assert (Sum = '1' and Cout = '1') report "Test Case 3 Failed" severity error;

        wait;
    end process;
end testbench;
