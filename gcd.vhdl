library ieee;
use ieee.STD_LOGIC_1164.ALL;

entity GCD_FSM is
    Port (
        CLK : in  std_logic;
        RST : in  std_logic;
        START : in  std_logic;
        A : in std_logic_vector(7 downto 0);
        B : in std_logic_vector(7 downto 0);
        GCD : out std_logic_vector(7 downto 0);
        DONE : out std_logic;
    );
end GCD_FSM;

architecture Behavioral of GCD_FSM is
    type state_type is (IDLE, INIT, COMPARE, SUBTRACT);
    signal state : state_type;
    signal regA, regB : STD_LOGIC_VECTOR(7 downto 0);
begin
    process(CLK, RST)
    begin
        if RST = '1' then
            state <= IDLE;
            regA <= (others => '0');
            regB <= (others => '0');
            GCD <= (others => '0');
            DONE <= '0';
        elsif rising_edge(CLK) then
            case state is
                when IDLE =>
                    if START = '1' then
                        state <= INIT;
                        regA <= A;
                        regB <= B;
                    end if;
                when INIT =>
                    state <= COMPARE;
                when COMPARE =>
                    if regA = regB then
                        GCD <= regA;
                        state <= IDLE;
                        DONE <= '1';
                    elsif regA > regB then
                        state <= SUBTRACT;
                        regA <= regA - regB;
                    else
                        state <= SUBTRACT;
                        regB <= regB - regA;
                    end if;
                when SUBTRACT =>
                    state <= COMPARE;
            end case;
        end if;
    end process;
end Behavioral;
