library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity button_debouncer is
    Port (
        clk        : in  STD_LOGIC;
        button_in  : in  STD_LOGIC;
        button_out : out STD_LOGIC
    );
end button_debouncer;

architecture Behavioral of button_debouncer is
    constant DEBOUNCE_DELAY : integer := 50000; -- Ajuste conforme a frequência do clock (para 50MHz, ~1ms)
    signal counter : integer range 0 to DEBOUNCE_DELAY := 0;
    signal q1, q2, q3 : STD_LOGIC := '0';
begin
    process(clk)
    begin
        if rising_edge(clk) then
            q1 <= button_in;
            q2 <= q1;
        end if;
    end process;

    button_out <= q2 and not q1; -- Detecta a borda de descida

end Behavioral;