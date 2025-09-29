library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity reaction_timer is
    Port (
        clk     : in  STD_LOGIC;
        reset   : in  STD_LOGIC;
        start   : in  STD_LOGIC;
        stop    : in  STD_LOGIC;
        time_ms : out unsigned(15 downto 0)
    );
end reaction_timer;

architecture Behavioral of reaction_timer is
    constant CLK_FREQ_HZ : integer := 50000000; -- Frequência do clock da FPGA
    constant MS_COUNT    : integer := CLK_FREQ_HZ / 1000;

    signal counter : integer range 0 to MS_COUNT - 1 := 0;
    signal ms_counter : unsigned(15 downto 0) := (others => '0');
    signal running : std_logic := '0';
begin

    process(clk, reset)
    begin
        if reset = '1' then
            counter <= 0;
            ms_counter <= (others => '0');
            running <= '0';
        elsif rising_edge(clk) then
            if start = '1' and running = '0' and stop = '0' then
                running <= '1';
            end if;

            if running = '1' then
                if stop = '1' then
                    running <= '0';
                else
                    if counter = MS_COUNT - 1 then
                        counter <= 0;
                        ms_counter <= ms_counter + 1;
                    else
                        counter <= counter + 1;
                    end if;
                end if;
            end if;
        end if;
    end process;

    time_ms <= ms_counter;

end Behavioral;