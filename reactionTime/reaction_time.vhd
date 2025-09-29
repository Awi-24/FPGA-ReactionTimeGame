library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity reaction_time is
    Port (
        clk             : in  STD_LOGIC;
        reset           : in  STD_LOGIC;
        start_button    : in  STD_LOGIC;
        -- MUDANÇA: Vetor de botões agora tem 2 bits (para jogador 1 e 2)
        player_buttons  : in  STD_LOGIC_VECTOR(1 downto 0);
        start_led       : out STD_LOGIC;
        anode_select    : out STD_LOGIC_VECTOR(3 downto 0);
        segment_select  : out STD_LOGIC_VECTOR(6 downto 0)
    );
end reaction_time;

architecture Behavioral of reaction_time is

    type state_type is (S_IDLE, S_RANDOM_DELAY, S_TIMING, S_WINNER, S_DISPLAY_WINNER, S_DISPLAY_TIME);
    signal current_state, next_state : state_type := S_IDLE;

    -- Sinais para os módulos
    signal debounced_start_button   : STD_LOGIC;
    -- MUDANÇA: Vetor de sinais de debounce agora tem 2 bits
    signal debounced_player_buttons : STD_LOGIC_VECTOR(1 downto 0);
    signal random_delay_done        : STD_LOGIC;
    signal timer_start_edge         : STD_LOGIC := '0';
    signal timer_stop               : STD_LOGIC;
    signal timer_reset              : STD_LOGIC;
    signal timer_running            : STD_LOGIC;
    signal reaction_time            : unsigned(15 downto 0);
    -- MUDANÇA: Sinal de vencedor agora precisa de apenas 1 bit (0 para jogador 1, 1 para jogador 2)
    signal winner                   : unsigned(0 downto 0);
    signal display_value            : unsigned(15 downto 0);

    signal hold_counter : integer range 0 to 150000000 := 0;

begin

    -- Instanciação dos módulos
    debouncer_start : entity work.button_debouncer
        port map ( clk => clk, button_in => start_button, button_out => debounced_start_button );

    -- MUDANÇA: Gerador de instâncias agora cria debouncers para 2 jogadores (índices 0 e 1)
    debouncers_player : for i in 0 to 1 generate
        debouncer_inst : entity work.button_debouncer
            port map ( clk => clk, button_in => player_buttons(i), button_out => debounced_player_buttons(i) );
    end generate;

    random_gen : entity work.random_delay
        port map ( clk => clk, start => timer_start_edge, delay_done => random_delay_done );

    timer : entity work.reaction_timer
        port map ( clk => clk, reset => timer_reset, start => timer_running, stop => timer_stop, time_ms => reaction_time );

    display_driver : entity work.seven_segment_driver
        port map ( clk => clk, value_to_display => display_value, anodes => anode_select, segments => segment_select );

    -- Lógica da Máquina de Estados Finitos (Processo Sequencial)
    process(clk, reset)
    begin
        if reset = '1' then
            current_state <= S_IDLE;
        elsif rising_edge(clk) then
            current_state <= next_state;
        end if;
    end process;

    -- Lógica Combinacional para transições e saídas
    process(current_state, debounced_start_button, random_delay_done, debounced_player_buttons, hold_counter, reaction_time, winner)
    begin
        -- Padrões para evitar latches
        next_state <= current_state;
        start_led <= '0';
        timer_start_edge <= '0';
        timer_running <= '0';
        timer_stop <= '0';
        timer_reset <= '0';
        display_value <= (others => '0');

        case current_state is
            when S_IDLE =>
                display_value <= to_unsigned(0, 16);
                timer_reset <= '1';
                if debounced_start_button = '1' then
                    next_state <= S_RANDOM_DELAY;
                end if;

            when S_RANDOM_DELAY =>
                timer_start_edge <= '1';
                if random_delay_done = '1' then
                    next_state <= S_TIMING;
                end if;

            when S_TIMING =>
                start_led <= '1';
                timer_running <= '1';
                timer_stop <= '0';
                -- MUDANÇA: Loop agora verifica apenas 2 jogadores
                for i in 0 to 1 loop
                    if debounced_player_buttons(i) = '1' then
                        timer_stop <= '1';
                        -- MUDANÇA: Converte 'i' para um unsigned de 1 bit
                        winner <= to_unsigned(i, 1);
                        next_state <= S_WINNER;
                    end if;
                end loop;

            when S_WINNER =>
                hold_counter <= 0;
                next_state <= S_DISPLAY_WINNER;

            when S_DISPLAY_WINNER =>
                -- MUDANÇA: Lógica de exibição simplificada para 2 jogadores
                case winner is
                    when "0" => display_value <= to_unsigned(1, 16); -- Jogador 1
                    when "1" => display_value <= to_unsigned(2, 16); -- Jogador 2
                    when others => display_value <= to_unsigned(99, 16); -- Erro
                end case;

                if hold_counter < 50000000 then -- ~1 segundo
                    hold_counter <= hold_counter + 1;
                else
                    hold_counter <= 0;
                    next_state <= S_DISPLAY_TIME;
                end if;

            when S_DISPLAY_TIME =>
                display_value <= reaction_time;
                if hold_counter < 150000000 then -- ~3 segundos
                    hold_counter <= hold_counter + 1;
                else
                    hold_counter <= 0;
                    next_state <= S_IDLE;
                end if;

        end case;
    end process;

end Behavioral;