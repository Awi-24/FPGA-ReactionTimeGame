-- Bibliotecas
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

-- Entidade Principal
entity reaction_game is
  port (
    clk       : in  std_logic;  -- Clock base do sistema (50 MHz)
    rst_n     : in  std_logic;  -- Reset assíncrono ativo baixo
    btn_start : in  std_logic;  -- Botão para iniciar o jogo
    btn_response : in  std_logic;  -- Botão de resposta para ambos os jogadores
    led_ind   : out std_logic;  -- LED indicador para o momento de resposta
    seg       : out std_logic_vector(6 downto 0); -- Saídas para os segmentos do display de 7 segmentos
    an        : out std_logic_vector(3 downto 0)  -- Saídas para os anodos dos displays de 7 segmentos
  );
end entity reaction_game;

-- Arquitetura Principal
architecture Behavioral of reaction_game is

  -- Constantes para o sistema
  constant CLK_FREQ_HZ      : integer := 50_000_000; -- 50 MHz
  constant MS_TICK_LIMIT    : integer := CLK_FREQ_HZ / 1000 - 1; -- 49999 para 1ms tick
  constant DEBOUNCE_MS      : integer := 15; -- 15 ms para debounce
  constant DEBOUNCE_LIMIT   : integer := DEBOUNCE_MS - 1; -- Limite do contador de debounce
  constant DISPLAY_MUX_FREQ : integer := 500; -- Frequência de multiplexação do display (Hz)
  constant MUX_TICK_LIMIT   : integer := CLK_FREQ_HZ / (DISPLAY_MUX_FREQ * 4) - 1; -- Para 4 displays
  constant SHOW_TIME_MS     : integer := 2000; -- Tempo de exibição e intervalo (2 segundos)
  constant MAX_REACTION_TIME: integer := 999; -- Tempo máximo de reação em ms
  constant MIN_RAND_DELAY_MS: integer := 5000; -- Atraso aleatório mínimo (5s)
  constant MAX_RAND_DELAY_MS: integer := 10000; -- Atraso aleatório máximo (10s)

  -- Definição de tipos para estados da FSM
  type t_fsm_state is (
    IDLE,
    GEN_DELAY,
    WAIT_DELAY,
    MEASURE,
    SHOW_TIME,
    INTERVAL,
    RESULT
  );
  signal current_state, next_state : t_fsm_state;

  -- Sinais internos para ms_tick
  signal ms_tick_s       : std_logic := '0';
  signal ms_counter      : integer range 0 to MS_TICK_LIMIT := 0;

  -- Sinais internos para debounce de botões
  signal btn_start_deb   : std_logic := '0';
  signal btn_response_deb : std_logic := '0';
  signal btn_start_sync   : std_logic_vector(1 downto 0) := (others => '0');
  signal btn_response_sync: std_logic_vector(1 downto 0) := (others => '0');
  signal btn_start_prev   : std_logic := '0';
  signal btn_response_prev: std_logic := '0';
  signal debounce_count_start : integer range 0 to DEBOUNCE_LIMIT := 0;
  signal debounce_count_response : integer range 0 to DEBOUNCE_LIMIT := 0;

  -- Sinais internos para LFSR (Gerador de Atraso Aleatório)
  constant LFSR_WIDTH : integer := 16; -- 16-bit LFSR
  signal lfsr_reg     : std_logic_vector(LFSR_WIDTH-1 downto 0) := (others => '1'); -- Semente inicial
  signal lfsr_enable  : std_logic := '0';
  signal random_delay_ms : integer range MIN_RAND_DELAY_MS to MAX_RAND_DELAY_MS := MIN_RAND_DELAY_MS;

  -- Sinais internos para controle de tempo e delays
  signal delay_counter_ms : integer range 0 to MAX_RAND_DELAY_MS := 0;
  signal timer_ms         : integer range 0 to MAX_REACTION_TIME := 0;
  signal show_counter_ms  : integer range 0 to SHOW_TIME_MS := 0;

  -- Sinais internos para resultados do jogo
  signal reaction_time_p1 : integer range 0 to MAX_REACTION_TIME := 0;
  signal reaction_time_p2 : integer range 0 to MAX_REACTION_TIME := 0;
  signal false_start_p1   : boolean := false;
  signal false_start_p2   : boolean := false;
  signal winner_player    : integer range 0 to 2 := 0; -- 0: nenhum, 1: P1, 2: P2

  -- Sinais internos para display de 7 segmentos
  signal display_digit_values : std_logic_vector(15 downto 0) := (others => '0'); -- 4 dígitos BCD (4 bits cada)
  signal display_mux_tick     : std_logic := '0';
  signal display_mux_counter  : integer range 0 to MUX_TICK_LIMIT := 0;
  signal current_digit_select : integer range 0 to 3 := 0; -- Qual dígito está ativo (0 a 3)
  signal seg_internal         : std_logic_vector(6 downto 0) := (others => '1');
  signal an_internal          : std_logic_vector(3 downto 0) := (others => '1');

  -- Sinal para LED indicador
  signal led_ind_s       : std_logic := '0';

  -- Sinal para identificar o jogador atual
  signal current_player : integer range 1 to 2 := 1;

  -- Sinais para controle de tempo de exibição
  signal show_time_active : boolean := false;

begin

  -- Atribuições de saída
  led_ind <= led_ind_s;
  seg <= seg_internal;
  an <= an_internal;

  ----------------------------------------------------------------------------
  -- Seção: Gerador de Tick de 1ms (ms_tick)
  ----------------------------------------------------------------------------
  process (clk, rst_n)
  begin
    if rst_n = '0' then
      ms_counter <= 0;
      ms_tick_s  <= '0';
    elsif rising_edge(clk) then
      if ms_counter = MS_TICK_LIMIT then
        ms_counter <= 0;
        ms_tick_s  <= '1';
      else
        ms_counter <= ms_counter + 1;
        ms_tick_s  <= '0';
      end if;
    end if;
  end process;

  ----------------------------------------------------------------------------
  -- Seção: Debounce de Botões
  ----------------------------------------------------------------------------
  -- Debounce para btn_start
  process (clk, rst_n)
  begin
    if rst_n = '0' then
      btn_start_sync <= (others => '0');
      debounce_count_start <= 0;
      btn_start_deb <= '0';
      btn_start_prev <= '0';
    elsif rising_edge(clk) then
      btn_start_sync(0) <= btn_start;
      btn_start_sync(1) <= btn_start_sync(0);

      if btn_start_sync(1) /= btn_start_prev then
        debounce_count_start <= 0;
      elsif debounce_count_start < DEBOUNCE_LIMIT then
        debounce_count_start <= debounce_count_start + 1;
      else
        btn_start_deb <= btn_start_sync(1);
      end if;
      btn_start_prev <= btn_start_sync(1);
    end if;
  end process;

  -- Debounce para btn_response
  process (clk, rst_n)
  begin
    if rst_n = '0' then
      btn_response_sync <= (others => '0');
      debounce_count_response <= 0;
      btn_response_deb <= '0';
      btn_response_prev <= '0';
    elsif rising_edge(clk) then
      btn_response_sync(0) <= btn_response;
      btn_response_sync(1) <= btn_response_sync(0);

      if btn_response_sync(1) /= btn_response_prev then
        debounce_count_response <= 0;
      elsif debounce_count_response < DEBOUNCE_LIMIT then
        debounce_count_response <= debounce_count_response + 1;
      else
        btn_response_deb <= btn_response_sync(1);
      end if;
      btn_response_prev <= btn_response_sync(1);
    end if;
  end process;

  ----------------------------------------------------------------------------
  -- Seção: Gerador Pseudo-Aleatório (LFSR)
  ----------------------------------------------------------------------------
  process (clk, rst_n)
    variable lfsr_out_bit : std_logic;
  begin
    if rst_n = '0' then
      lfsr_reg <= (others => '1');
    elsif rising_edge(clk) then
      if lfsr_enable = '1' then
        lfsr_out_bit := lfsr_reg(15) xor lfsr_reg(13) xor lfsr_reg(12) xor lfsr_reg(10);
        lfsr_reg <= lfsr_out_bit & lfsr_reg(LFSR_WIDTH-1 downto 1);
      end if;
    end if;
  end process;

  -- Mapear a saída do LFSR para o range de delay desejado (5000-10000 ms)
  random_delay_ms <= MIN_RAND_DELAY_MS + (to_integer(unsigned(lfsr_reg)) mod (MAX_RAND_DELAY_MS - MIN_RAND_DELAY_MS + 1));

  ----------------------------------------------------------------------------
  -- Seção: FSM Controller - Processo Síncrono
  ----------------------------------------------------------------------------
  process (clk, rst_n)
  begin
    if rst_n = '0' then
      current_state <= IDLE;
      delay_counter_ms <= 0;
      timer_ms <= 0;
      show_counter_ms <= 0;
      reaction_time_p1 <= 0;
      reaction_time_p2 <= 0;
      false_start_p1 <= false;
      false_start_p2 <= false;
      winner_player <= 0;
      current_player <= 1;
      led_ind_s <= '0';
      lfsr_enable <= '0';
      display_digit_values <= (others => '0');
    elsif rising_edge(clk) then
      current_state <= next_state;
      
      -- Reset de sinais temporários
      lfsr_enable <= '0';
      led_ind_s <= '0';
      
      case current_state is
        when IDLE =>
          display_digit_values <= x"0000";
          current_player <= 1;
          reaction_time_p1 <= 0;
          reaction_time_p2 <= 0;
          false_start_p1 <= false;
          false_start_p2 <= false;
          winner_player <= 0;
          
        when GEN_DELAY =>
          lfsr_enable <= '1';
          if ms_tick_s = '1' then
            delay_counter_ms <= random_delay_ms;
          end if;
          
        when WAIT_DELAY =>
          if ms_tick_s = '1' then
            if delay_counter_ms > 0 then
              delay_counter_ms <= delay_counter_ms - 1;
            end if;
          end if;
          
          -- Detecção de falso start
          if btn_response_deb = '1' then
            if current_player = 1 then
              false_start_p1 <= true;
              reaction_time_p1 <= MAX_REACTION_TIME;
            else
              false_start_p2 <= true;
              reaction_time_p2 <= MAX_REACTION_TIME;
            end if;
          end if;
          
        when MEASURE =>
          led_ind_s <= '1';
          if ms_tick_s = '1' then
            if timer_ms < MAX_REACTION_TIME then
              timer_ms <= timer_ms + 1;
            end if;
          end if;
          
          -- Detecção de resposta válida
          if btn_response_deb = '1' then
            if current_player = 1 then
              reaction_time_p1 <= timer_ms;
            else
              reaction_time_p2 <= timer_ms;
            end if;
          end if;
          
        when SHOW_TIME =>
          show_time_active <= true;
          if ms_tick_s = '1' then
            if show_counter_ms < SHOW_TIME_MS then
              show_counter_ms <= show_counter_ms + 1;
            end if;
          end if;
          
          -- Atualiza display com tempo do jogador atual
          if current_player = 1 then
            display_digit_values(15 downto 12) <= std_logic_vector(to_unsigned(1, 4));
            display_digit_values(11 downto 0) <= std_logic_vector(to_unsigned(reaction_time_p1, 12));
          else
            display_digit_values(15 downto 12) <= std_logic_vector(to_unsigned(2, 4));
            display_digit_values(11 downto 0) <= std_logic_vector(to_unsigned(reaction_time_p2, 12));
          end if;
          
        when INTERVAL =>
          show_time_active <= false;
          if ms_tick_s = '1' then
            if show_counter_ms < SHOW_TIME_MS then
              show_counter_ms <= show_counter_ms + 1;
            end if;
          end if;
          display_digit_values <= x"0000";
          
        when RESULT =>
          show_time_active <= true;
          -- Determina vencedor
          if false_start_p1 and false_start_p2 then
            winner_player <= 0; -- Empate por falso start
          elsif false_start_p1 then
            winner_player <= 2;
          elsif false_start_p2 then
            winner_player <= 1;
          elsif reaction_time_p1 <= reaction_time_p2 then
            winner_player <= 1;
          else
            winner_player <= 2;
          end if;
          
          -- Atualiza display com resultado
          if winner_player = 1 then
            display_digit_values(15 downto 12) <= std_logic_vector(to_unsigned(1, 4));
            display_digit_values(11 downto 0) <= std_logic_vector(to_unsigned(reaction_time_p1, 12));
          elsif winner_player = 2 then
            display_digit_values(15 downto 12) <= std_logic_vector(to_unsigned(2, 4));
            display_digit_values(11 downto 0) <= std_logic_vector(to_unsigned(reaction_time_p2, 12));
          else
            display_digit_values <= x"EEEE"; -- Display "EEEE" para empate
          end if;
          
      end case;
    end if;
  end process;

  ----------------------------------------------------------------------------
  -- Seção: FSM Controller - Processo Combinacional
  ----------------------------------------------------------------------------
  process (current_state, btn_start_deb, btn_response_deb, delay_counter_ms, 
           timer_ms, show_counter_ms, current_player, false_start_p1, false_start_p2)
  begin
    next_state <= current_state;
    
    case current_state is
      when IDLE =>
        if btn_start_deb = '1' then
          next_state <= GEN_DELAY;
        end if;
        
      when GEN_DELAY =>
        next_state <= WAIT_DELAY;
        
      when WAIT_DELAY =>
        if false_start_p1 or false_start_p2 then
          next_state <= SHOW_TIME;
        elsif delay_counter_ms = 0 then
          next_state <= MEASURE;
        end if;
        
      when MEASURE =>
        if btn_response_deb = '1' or timer_ms = MAX_REACTION_TIME then
          next_state <= SHOW_TIME;
        end if;
        
      when SHOW_TIME =>
        if show_counter_ms >= SHOW_TIME_MS then
          if current_player = 1 then
            next_state <= INTERVAL;
          else
            next_state <= RESULT;
          end if;
        end if;
        
      when INTERVAL =>
        if show_counter_ms >= SHOW_TIME_MS then
          next_state <= GEN_DELAY;
        end if;
        
      when RESULT =>
        if btn_start_deb = '1' then
          next_state <= IDLE;
        end if;
        
    end case;
  end process;

  ----------------------------------------------------------------------------
  -- Seção: Driver de Display de 7 Segmentos
  ----------------------------------------------------------------------------
  -- Gerador de tick para multiplexação do display
  process (clk, rst_n)
  begin
    if rst_n = '0' then
      display_mux_counter <= 0;
      display_mux_tick <= '0';
    elsif rising_edge(clk) then
      if display_mux_counter = MUX_TICK_LIMIT then
        display_mux_counter <= 0;
        display_mux_tick <= '1';
      else
        display_mux_counter <= display_mux_counter + 1;
        display_mux_tick <= '0';
      end if;
    end if;
  end process;

  -- Lógica de multiplexação e decodificação
  process (clk, rst_n)
    variable digit_to_display : std_logic_vector(3 downto 0);
  begin
    if rst_n = '0' then
      an_internal <= (others => '1');
      seg_internal <= (others => '1');
      current_digit_select <= 0;
    elsif rising_edge(clk) then
      if display_mux_tick = '1' then
        current_digit_select <= (current_digit_select + 1) mod 4;

        case current_digit_select is
          when 0 =>
            an_internal <= "0111";
            digit_to_display := display_digit_values(15 downto 12);
          when 1 =>
            an_internal <= "1011";
            digit_to_display := display_digit_values(11 downto 8);
          when 2 =>
            an_internal <= "1101";
            digit_to_display := display_digit_values(7 downto 4);
          when 3 =>
            an_internal <= "1110";
            digit_to_display := display_digit_values(3 downto 0);
          when others =>
            an_internal <= (others => '1');
            digit_to_display := (others => '0');
        end case;

        -- Decodificador de 7 segmentos (cátodo comum)
        case digit_to_display is
          when "0000" => seg_internal <= "1000000"; -- 0
          when "0001" => seg_internal <= "1111001"; -- 1
          when "0010" => seg_internal <= "0100100"; -- 2
          when "0011" => seg_internal <= "0110000"; -- 3
          when "0100" => seg_internal <= "0011001"; -- 4
          when "0101" => seg_internal <= "0010010"; -- 5
          when "0110" => seg_internal <= "0000010"; -- 6
          when "0111" => seg_internal <= "1111000"; -- 7
          when "1000" => seg_internal <= "0000000"; -- 8
          when "1001" => seg_internal <= "0010000"; -- 9
          when "1110" => seg_internal <= "0000110"; -- E (para empate)
          when others => seg_internal <= "1111111"; -- Apagado
        end case;
      end if;
    end if;
  end process;

end architecture Behavioral;