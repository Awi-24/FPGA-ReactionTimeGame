library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity random_delay is
    Port (
        clk       : in  STD_LOGIC;
        start     : in  STD_LOGIC;
        delay_done : out STD_LOGIC
    );
end random_delay;

architecture Behavioral of random_delay is
    signal lfsr : std_logic_vector(15 downto 0) := x"ACE1";
    signal delay_counter : unsigned(26 downto 0) := (others => '0');
    signal delay_period : unsigned(26 downto 0);
    signal running : std_logic := '0';
begin

    process(clk)
    begin
        if rising_edge(clk) then
            if start = '1' and running = '0' then
                running <= '1';
                delay_period <= to_unsigned(50000000, 27) + unsigned(lfsr & "0000000000"); -- Entre 1 e ~5 segundos para 50MHz
                delay_counter <= (others => '0');
                -- Atualiza o LFSR para a próxima rodada
                lfsr <= lfsr(14 downto 0) & (lfsr(15) xor lfsr(5) xor lfsr(3) xor lfsr(2));
            elsif running = '1' then
                if delay_counter < delay_period then
                    delay_counter <= delay_counter + 1;
                    delay_done <= '0';
                else
                    delay_done <= '1';
                    running <= '0';
                end if;
            else
                delay_done <= '0';
            end if;
        end if;
    end process;

end Behavioral;