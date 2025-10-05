-- Bibliotecas
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

-- Entidade Principal (sem alterações)
entity reaction_game is
  port (
    clk       : in  std_logic;
    rst_n     : in  std_logic;
    btn_start : in  std_logic;
    btn_response : in  std_logic;
    led_ind   : out std_logic;
    seg       : out std_logic_vector(6 downto 0);
    an        : out std_logic_vector(3 downto 0)
  );
end entity reaction_game;

-- Arquitetura Principal
architecture Behavioral of reaction_game is

  -- Constantes (sem alterações)
  constant CLK_FREQ_HZ      : integer := 50_000_000;
  constant MS_TICK_LIMIT    : integer := CLK_FREQ_HZ / 1000 - 1;
  constant DEBOUNCE_MS      : integer := 20; -- Aumentado para mais robustez
  constant DEBOUNCE_LIMIT   : integer := (CLK_FREQ_HZ / 1000) * DEBOUNCE_MS -1;
  constant DISPLAY_MUX_FREQ : integer := 500;
  constant MUX_TICK_LIMIT   : integer := CLK_FREQ_HZ / (DISPLAY_MUX_FREQ * 4) - 1;
  constant SHOW_TIME_MS     : integer := 2000;
  constant MAX_REACTION_TIME: integer := 999;
  constant MIN_RAND_DELAY_MS: integer := 5000;
  constant MAX_RAND_DELAY_MS: integer := 10000;

  -- FSM
  type t_fsm_state is (
    IDLE,
    WAIT_START, -- ADICIONADO: Estado para aguardar o início
    GEN_DELAY,
    WAIT_DELAY,
    MEASURE,
    SHOW_TIME,
    INTERVAL,
    RESULT
  );
  signal current_state, next_state : t_fsm_state;

  -- Sinais de Tick
  signal ms_tick_s       : std_logic := '0';
  signal ms_counter      : integer range 0 to MS_TICK_LIMIT := 0;

  -- Sinais de Debounce
  signal btn_start_rising_edge   : std_logic := '0';
  signal btn_response_rising_edge: std_logic := '0';

  -- Sinais do Gerador Aleatório (LFSR)
  constant LFSR_WIDTH : integer := 16;
  signal lfsr_reg     : std_logic_vector(LFSR_WIDTH-1 downto 0) := (others => '1');
  signal random_delay_ms : integer range MIN_RAND_DELAY_MS to MAX_RAND_DELAY_MS := MIN_RAND_DELAY_MS;

  -- Sinais de controle de tempo
  signal delay_counter_ms : integer range 0 to MAX_RAND_DELAY_MS := 0;
  signal timer_ms         : integer range 0 to MAX_REACTION_TIME := 0;
  signal show_counter_ms  : integer range 0 to SHOW_TIME_MS := 0;

  -- Sinais de resultado do jogo
  signal reaction_time_p1 : integer range 0 to MAX_REACTION_TIME := 0;
  signal reaction_time_p2 : integer range 0 to MAX_REACTION_TIME := 0;
  signal false_start      : boolean := false;
  signal winner_player    : integer range 0 to 2 := 0; -- 0: nenhum, 1: P1, 2: P2
  signal current_player   : integer range 1 to 2 := 1;

  -- Sinais do Display
  signal display_value_to_show : integer range 0 to MAX_REACTION_TIME := 0;
  signal display_player_id     : integer range 0 to 2 := 0; -- 0: off, 1: P1, 2: P2
  signal display_show_winner   : boolean := false;
  signal display_show_tie      : boolean := false;
  
  -- Sinais de saída
  signal led_ind_s       : std_logic := '0';
  signal seg_internal    : std_logic_vector(6 downto 0) := (others => '1');
  signal an_internal     : std_logic_vector(3 downto 0) := (others => '1');

  -- ADICIONADO: Função para converter inteiro para BCD para o display
  function to_bcd (val: integer) return std_logic_vector is
    variable bcd_val : std_logic_vector(11 downto 0);
  begin
    bcd_val(11 downto 8) := std_logic_vector(to_unsigned(val / 100, 4));
    bcd_val(7 downto 4)  := std_logic_vector(to_unsigned((val mod 100) / 10, 4));
    bcd_val(3 downto 0)  := std_logic_vector(to_unsigned(val mod 10, 4));
    return bcd_val;
  end function to_bcd;

begin

  -- Atribuições de saída
  led_ind <= led_ind_s;
  seg <= seg_internal;
  an <= an_internal;

  ----------------------------------------------------------------------------
  -- Gerador de Tick de 1ms
  ----------------------------------------------------------------------------
  process (clk, rst_n)
  begin
    if rst_n = '0' then
      ms_counter <= 0;
      ms_tick_s  <= '0';
    elsif rising_edge(clk) then
      ms_tick_s <= '0';
      if ms_counter = MS_TICK_LIMIT then
        ms_counter <= 0;
        ms_tick_s  <= '1';
      else
        ms_counter <= ms_counter + 1;
      end if;
    end if;
  end process;

  ----------------------------------------------------------------------------
  -- ADICIONADO: Debounce com Detecção de Borda de Subida
  ----------------------------------------------------------------------------
  debounce_proc: process (clk, rst_n)
    type t_debounce_state is (IDLE, WAIT_STABLE, CHECK_RELEASE);
    variable state_start, state_response : t_debounce_state := IDLE;
    variable count_start, count_response : integer range 0 to DEBOUNCE_LIMIT := 0;
  begin
    if rst_n = '0' then
      btn_start_rising_edge <= '0';
      btn_response_rising_edge <= '0';
      state_start := IDLE;
      state_response := IDLE;
      count_start := 0;
      count_response := 0;
    elsif rising_edge(clk) then
      -- Lógica para btn_start
      btn_start_rising_edge <= '0';
      case state_start is
        when IDLE =>
          if btn_start = '1' then
            state_start := WAIT_STABLE;
            count_start := 0;
          end if;
        when WAIT_STABLE =>
          if btn_start = '1' then
            if count_start = DEBOUNCE_LIMIT then
              btn_start_rising_edge <= '1';
              state_start := CHECK_RELEASE;
            else
              count_start := count_start + 1;
            end if;
          else
            state_start := IDLE;
          end if;
        when CHECK_RELEASE =>
          if btn_start = '0' then
            state_start := IDLE;
          end if;
      end case;

      -- Lógica para btn_response
      btn_response_rising_edge <= '0';
      case state_response is
        when IDLE =>
          if btn_response = '1' then
            state_response := WAIT_STABLE;
            count_response := 0;
          end if;
        when WAIT_STABLE =>
          if btn_response = '1' then
            if count_response = DEBOUNCE_LIMIT then
              btn_response_rising_edge <= '1';
              state_response := CHECK_RELEASE;
            else
              count_response := count_response + 1;
            end if;
          else
            state_response := IDLE;
          end if;
        when CHECK_RELEASE =>
          if btn_response = '0' then
            state_response := IDLE;
          end if;
      end case;
    end if;
  end process;

  ----------------------------------------------------------------------------
  -- Gerador Pseudo-Aleatório (LFSR)
  ----------------------------------------------------------------------------
  process (clk, rst_n)
    variable lfsr_feedback : std_logic;
  begin
    if rst_n = '0' then
      lfsr_reg <= (others => '1');
    elsif rising_edge(clk) then
      -- O LFSR roda continuamente para gerar valores mais "aleatórios"
      lfsr_feedback := lfsr_reg(15) xor lfsr_reg(13) xor lfsr_reg(12) xor lfsr_reg(10);
      lfsr_reg <= lfsr_reg(LFSR_WIDTH-2 downto 0) & lfsr_feedback;
    end if;
  end process;

  random_delay_ms <= MIN_RAND_DELAY_MS + (to_integer(unsigned(lfsr_reg)) mod (MAX_RAND_DELAY_MS - MIN_RAND_DELAY_MS + 1));

  ----------------------------------------------------------------------------
  -- FSM Controller - Processo Síncrono (Lógica de Estados)
  ----------------------------------------------------------------------------
  fsm_sync_proc: process (clk, rst_n)
  begin
    if rst_n = '0' then
      current_state <= IDLE;
    elsif rising_edge(clk) then
      current_state <= next_state;

      -- Atualização dos contadores baseada no tick de 1ms
      if ms_tick_s = '1' then
        -- Contador de delay para o estado WAIT_DELAY
        if current_state = WAIT_DELAY and delay_counter_ms > 0 then
          delay_counter_ms <= delay_counter_ms - 1;
        end if;
        
        -- Cronômetro para o estado MEASURE
        if current_state = MEASURE and timer_ms < MAX_REACTION_TIME then
          timer_ms <= timer_ms + 1;
        end if;

        -- Contador para os estados SHOW_TIME e INTERVAL
        if (current_state = SHOW_TIME or current_state = INTERVAL) and show_counter_ms > 0 then
          show_counter_ms <= show_counter_ms - 1;
        end if;
      end if;
    end if;
  end process;

  ----------------------------------------------------------------------------
  -- FSM Controller - Processo Combinacional (Lógica de Transição)
  ----------------------------------------------------------------------------
  fsm_comb_proc: process (current_state, btn_start_rising_edge, btn_response_rising_edge, delay_counter_ms, timer_ms, show_counter_ms, current_player, false_start)
  begin
    -- Reset de sinais por padrão
    next_state <= current_state;
    led_ind_s <= '0';
    display_player_id <= 0;
    display_value_to_show <= 0;
    display_show_winner <= false;
    display_show_tie <= false;

    case current_state is
      when IDLE =>
        display_player_id <= 0;
        display_value_to_show <= 0;
        if btn_start_rising_edge = '1' then
          next_state <= WAIT_START;
        end if;

      when WAIT_START =>
        -- Estado de transição para resetar tudo antes de começar
        next_state <= GEN_DELAY;

      when GEN_DELAY =>
        -- Estado de transição para carregar o delay e ir para a espera
        next_state <= WAIT_DELAY;

      when WAIT_DELAY =>
        if false_start then
          next_state <= SHOW_TIME;
        elsif delay_counter_ms = 0 then
          next_state <= MEASURE;
        end if;

      when MEASURE =>
        led_ind_s <= '1';
        if btn_response_rising_edge = '1' or timer_ms = MAX_REACTION_TIME then
          next_state <= SHOW_TIME;
        end if;

      when SHOW_TIME =>
        display_player_id <= current_player;
        if false_start then
            display_value_to_show <= 999; -- Indica falso start
        elsif current_player = 1 then
            display_value_to_show <= reaction_time_p1;
        else
            display_value_to_show <= reaction_time_p2;
        end if;

        if show_counter_ms = 0 then
          if current_player = 1 then
            next_state <= INTERVAL;
          else
            next_state <= RESULT;
          end if;
        end if;

      when INTERVAL =>
        display_player_id <= 0;
        if show_counter_ms = 0 then
          next_state <= GEN_DELAY;
        end if;

      when RESULT =>
        display_show_winner <= true;
        if winner_player = 0 then
            display_show_tie <= true;
        else
            display_player_id <= winner_player;
            if winner_player = 1 then
                display_value_to_show <= reaction_time_p1;
            else
                display_value_to_show <= reaction_time_p2;
            end if;
        end if;

        if btn_start_rising_edge = '1' then
          next_state <= IDLE;
        end if;
    end case;
  end process;

  ----------------------------------------------------------------------------
  -- Processo para controlar a lógica do jogo (atualização de variáveis)
  ----------------------------------------------------------------------------
  game_logic_proc: process(clk, rst_n)
  begin
      if rst_n = '0' then
          reaction_time_p1 <= 0;
          reaction_time_p2 <= 0;
          false_start <= false;
          winner_player <= 0;
          current_player <= 1;
          timer_ms <= 0;
          delay_counter_ms <= 0;
          show_counter_ms <= 0;
      elsif rising_edge(clk) then
          -- Resetar variáveis ao iniciar um novo jogo
          if next_state = WAIT_START and current_state /= WAIT_START then
              reaction_time_p1 <= 0;
              reaction_time_p2 <= 0;
              winner_player <= 0;
              current_player <= 1;
          end if;

          -- Carregar contadores e resetar flags ao entrar em novos estados
          if next_state /= current_state then
              false_start <= false; -- Resetar a flag de falso start
              
              if next_state = GEN_DELAY then
                  delay_counter_ms <= random_delay_ms;
              end if;

              if next_state = MEASURE then
                  timer_ms <= 0; -- Zera o cronômetro
              end if;

              if next_state = SHOW_TIME or next_state = INTERVAL then
                  show_counter_ms <= SHOW_TIME_MS; -- Carrega o tempo de exibição
              end if;
          end if;

          -- Lógica de captura de tempo e falso start
          if current_state = WAIT_DELAY and btn_response_rising_edge = '1' then
              false_start <= true;
          end if;

          if current_state = MEASURE and btn_response_rising_edge = '1' then
              if current_player = 1 then
                  reaction_time_p1 <= timer_ms;
              else
                  reaction_time_p2 <= timer_ms;
              end if;
          end if;
          
          -- Lógica de time-out (estourou o tempo)
          if current_state = MEASURE and timer_ms = MAX_REACTION_TIME then
              if current_player = 1 then
                  reaction_time_p1 <= MAX_REACTION_TIME;
              else
                  reaction_time_p2 <= MAX_REACTION_TIME;
              end if;
          end if;

          -- Transição para o próximo jogador
          if next_state = INTERVAL and current_state = SHOW_TIME then
              current_player <= 2;
          end if;

          -- Determinar o vencedor
          if next_state = RESULT and current_state /= RESULT then
              if reaction_time_p1 < reaction_time_p2 then
                  winner_player <= 1;
              elsif reaction_time_p2 < reaction_time_p1 then
                  winner_player <= 2;
              else
                  winner_player <= 0; -- Empate
              end if;
          end if;
      end if;
  end process;

  ----------------------------------------------------------------------------
  -- Driver de Display de 7 Segmentos
  ----------------------------------------------------------------------------
  display_driver_proc: process (clk, rst_n)
    variable digit_to_display : std_logic_vector(3 downto 0);
    variable current_digit_select : integer range 0 to 3 := 0;
    variable mux_counter : integer range 0 to MUX_TICK_LIMIT := 0;
    variable bcd_digits : std_logic_vector(11 downto 0);
  begin
    if rst_n = '0' then
      an_internal <= "1111";
      seg_internal <= "1111111";
      current_digit_select := 0;
      mux_counter := 0;
    elsif rising_edge(clk) then
      if mux_counter = MUX_TICK_LIMIT then
        mux_counter := 0;
        current_digit_select := (current_digit_select + 1) mod 4;

        -- Lógica de seleção do que exibir
        bcd_digits := to_bcd(display_value_to_show);

        case current_digit_select is
          when 0 => -- Dígito do jogador (mais à esquerda)
            an_internal <= "0111";
            if display_show_tie then
                digit_to_display := "1110"; -- 'E'
            elsif display_player_id = 1 then
                digit_to_display := "0001"; -- '1'
            elsif display_player_id = 2 then
                digit_to_display := "0010"; -- '2'
            else
                digit_to_display := "1111"; -- Apagado
            end if;
          when 1 => -- Centena
            an_internal <= "1011";
            digit_to_display := bcd_digits(11 downto 8);
          when 2 => -- Dezena
            an_internal <= "1101";
            digit_to_display := bcd_digits(7 downto 4);
          when 3 => -- Unidade
            an_internal <= "1110";
            digit_to_display := bcd_digits(3 downto 0);
          when others =>
            an_internal <= "1111";
            digit_to_display := "1111";
        end case;

        -- Decodificador BCD para 7 segmentos (cátodo comum)
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
          when "1110" => seg_internal <= "0001000"; -- E (de Error/Empate)
          when others => seg_internal <= "1111111"; -- Apagado
        end case;
        
        -- Se for para mostrar empate, acende 'E' em todos os displays
        if display_show_tie then
            seg_internal <= "0001000";
        end if;

      else
        mux_counter := mux_counter + 1;
      end if;
    end if;
  end process;

end architecture Behavioral;
