--Full adder using half adders

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
        HA2: HalfAdder port map (A => S1, B => Cin, Sum => Sum, Cout => S2);
        OR1: process(S1, C1)
        begin
            Cout <= S2 OR C1;
    end process;
end Structural;
