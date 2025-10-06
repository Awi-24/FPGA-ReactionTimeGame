-- Bibliotecas
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

-- Entidade corrigida para a pinagem da DE0-CV
entity reaction_game is
  port (
    clk          : in  std_logic;
    rst_n        : in  std_logic;
    btn_start    : in  std_logic;
    btn_response : in  std_logic;
    led_ind      : out std_logic;
    -- Saídas individuais para cada um dos 4 displays de 7 segmentos
    HEX0         : out std_logic_vector(6 downto 0);
    HEX1         : out std_logic_vector(6 downto 0);
    HEX2         : out std_logic_vector(6 downto 0);
    HEX3         : out std_logic_vector(6 downto 0)
  );
end entity reaction_game;

architecture Behavioral of reaction_game is

  -- Constantes
  constant CLK_FREQ_HZ      : integer := 50_000_000;
  constant MS_TICK_LIMIT    : integer := CLK_FREQ_HZ / 1000 - 1;
  constant DEBOUNCE_MS      : integer := 20;
  constant DEBOUNCE_LIMIT   : integer := (CLK_FREQ_HZ / 1000) * DEBOUNCE_MS - 1;
  constant SHOW_TIME_MS     : integer := 2000;
  constant MAX_REACTION_TIME: integer := 9999;  -- 9.999 segundos
  constant MIN_RAND_DELAY_MS: integer := 2000;  -- 2 segundos
  constant MAX_RAND_DELAY_MS: integer := 5000;  -- 5 segundos

  -- FSM
  type t_fsm_state is (IDLE, WAIT_START, GEN_DELAY, WAIT_DELAY, MEASURE, SHOW_TIME, INTERVAL, RESULT);
  signal current_state, next_state : t_fsm_state;

  -- Sinais de Tick e Debounce
  signal ms_tick_s              : std_logic := '0';
  signal btn_start_rising_edge  : std_logic := '0';
  signal btn_response_rising_edge: std_logic := '0';

  -- Sinais do Gerador Aleatório (LFSR)
  signal lfsr_reg        : std_logic_vector(15 downto 0) := (others => '1');
  signal random_delay_ms : integer range MIN_RAND_DELAY_MS to MAX_RAND_DELAY_MS;

  -- Sinais de controle de tempo e jogo
  signal delay_counter_ms : integer range 0 to MAX_RAND_DELAY_MS := 0;
  signal timer_ms         : integer range 0 to MAX_REACTION_TIME := 0;
  signal show_counter_ms  : integer range 0 to SHOW_TIME_MS := 0;
  signal reaction_time_p1 : integer range 0 to MAX_REACTION_TIME := 0;
  signal reaction_time_p2 : integer range 0 to MAX_REACTION_TIME := 0;
  signal false_start      : boolean := false;
  signal winner_player    : integer range 0 to 2 := 0;
  signal current_player   : integer range 1 to 2 := 1;

  -- Sinais de controle do Display
  signal display_value_to_show : integer range 0 to MAX_REACTION_TIME := 0;
  signal display_player_id     : integer range 0 to 2 := 0;
  signal display_show_tie      : boolean := false;
  signal display_show_time     : boolean := false;
  
  -- Sinal de saída para o LED
  signal led_ind_s       : std_logic := '0';

begin

  -- Atribuição de saída do LED
  led_ind <= led_ind_s;

  -- Gerador de Tick de 1ms
  ms_tick_gen_proc: process (clk, rst_n)
    variable ms_counter : integer range 0 to MS_TICK_LIMIT := 0;
  begin
    if rst_n = '0' then
      ms_counter := 0;
      ms_tick_s  <= '0';
    elsif rising_edge(clk) then
      ms_tick_s <= '0';
      if ms_counter = MS_TICK_LIMIT then
        ms_counter := 0;
        ms_tick_s  <= '1';
      else
        ms_counter := ms_counter + 1;
      end if;
    end if;
  end process;

  -- Debounce com Detecção de Borda de Subida - CORRIGIDO
  debounce_proc: process (clk, rst_n)
    type t_debounce_state is (IDLE, WAIT_STABLE, CHECK_RELEASE);
    variable state_start, state_response : t_debounce_state := IDLE;
    variable count_start, count_response : integer range 0 to DEBOUNCE_LIMIT := 0;
  begin
    if rst_n = '0' then
      btn_start_rising_edge <= '0';
      btn_response_rising_edge <= '0';
      state_start := IDLE; state_response := IDLE;
      count_start := 0; count_response := 0;
    elsif rising_edge(clk) then
      -- Lógica para btn_start (PIN_W9)
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
      
      -- Lógica para btn_response (PIN_M7) 
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

  -- Gerador Pseudo-Aleatório (LFSR)
  lfsr_proc: process (clk, rst_n)
    variable lfsr_feedback : std_logic;
  begin
    if rst_n = '0' then 
      lfsr_reg <= (others => '1');
    elsif rising_edge(clk) then
      lfsr_feedback := lfsr_reg(15) xor lfsr_reg(13) xor lfsr_reg(12) xor lfsr_reg(10);
      lfsr_reg <= lfsr_reg(14 downto 0) & lfsr_feedback;
    end if;
  end process;
  
  random_delay_ms <= MIN_RAND_DELAY_MS + (to_integer(unsigned(lfsr_reg(14 downto 0))) mod (MAX_RAND_DELAY_MS - MIN_RAND_DELAY_MS + 1));

  -- FSM Síncrono
  fsm_sync_proc: process (clk, rst_n)
  begin
    if rst_n = '0' then
      current_state <= IDLE;
    elsif rising_edge(clk) then
      current_state <= next_state;
    end if;
  end process;

  -- FSM Combinacional CORRIGIDA
  fsm_comb_proc: process (all)
  begin
    next_state <= current_state;
    led_ind_s <= '0';
    display_player_id <= 0;
    display_value_to_show <= 0;
    display_show_tie <= false;
    display_show_time <= false;

    case current_state is
      when IDLE =>
        -- Aguarda botão start - CORREÇÃO: apenas btn_start_rising_edge
        if btn_start_rising_edge = '1' then 
          next_state <= WAIT_START; 
        end if;
        
      when WAIT_START =>
        -- Vai para geração de delay
        next_state <= GEN_DELAY;
        
      when GEN_DELAY =>
        -- Gera delay aleatório e vai para espera
        next_state <= WAIT_DELAY;
        
      when WAIT_DELAY =>
        -- Aguarda tempo aleatório OU false start
        if false_start then 
          next_state <= MEASURE;
        elsif delay_counter_ms = 0 then 
          next_state <= MEASURE;
        end if;
        
      when MEASURE =>
        -- LED aceso e medindo tempo
        led_ind_s <= '1';
        display_show_time <= true;
        display_player_id <= current_player;  -- Mostra jogador atual
        display_value_to_show <= timer_ms;    -- Mostra contagem em tempo real
        
        if btn_response_rising_edge = '1' then 
          next_state <= SHOW_TIME; 
        elsif timer_ms >= MAX_REACTION_TIME then 
          next_state <= SHOW_TIME; 
        end if;
        
      when SHOW_TIME =>
        -- Mostra tempo do jogador atual
        display_player_id <= current_player;
        if false_start then 
          display_value_to_show <= 9999;  -- Valor especial para false start
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
        -- Intervalo entre jogadores
        if show_counter_ms = 0 then 
          next_state <= GEN_DELAY; 
        end if;
        
      when RESULT =>
        -- Mostra resultado final
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

  -- Processo Síncrono para Lógica do Jogo CORRIGIDO
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
      -- Reset das variáveis quando inicia novo jogo - CORREÇÃO: apenas no WAIT_START
      if current_state = IDLE and next_state = WAIT_START then
        reaction_time_p1 <= 0; 
        reaction_time_p2 <= 0;
        winner_player <= 0; 
        current_player <= 1;
        false_start <= false;
        timer_ms <= 0;
        delay_counter_ms <= 0;
      end if;
      
      -- Lógica principal por estado
      case current_state is
        when IDLE =>
          -- Estado de repouso - CORREÇÃO: reset de variáveis
          timer_ms <= 0;
          delay_counter_ms <= 0;
          show_counter_ms <= 0;
          
        when WAIT_START =>
          -- Transição rápida
          null;
          
        when GEN_DELAY =>
          -- Gera novo delay aleatório
          delay_counter_ms <= random_delay_ms;
          false_start <= false;
          timer_ms <= 0;
          
        when WAIT_DELAY =>
          -- Decrementa contador de delay
          if ms_tick_s = '1' and delay_counter_ms > 0 then
            delay_counter_ms <= delay_counter_ms - 1;
          end if;
          
          -- Detecta false start (botão response pressionado durante espera)
          if btn_response_rising_edge = '1' then
            false_start <= true;
          end if;
          
        when MEASURE =>
          -- Incrementa timer de reação
          if ms_tick_s = '1' and timer_ms < MAX_REACTION_TIME then
            timer_ms <= timer_ms + 1;
          end if;
          
          -- Registra tempo de reação quando o botão response é pressionado
          if btn_response_rising_edge = '1' then
            if current_player = 1 then 
              reaction_time_p1 <= timer_ms;
            else 
              reaction_time_p2 <= timer_ms;
            end if;
          end if;
          
          -- Timeout - registra tempo máximo se atingir o limite
          if timer_ms = MAX_REACTION_TIME and ms_tick_s = '1' then
            if current_player = 1 then 
              reaction_time_p1 <= MAX_REACTION_TIME;
            else 
              reaction_time_p2 <= MAX_REACTION_TIME;
            end if;
          end if;
          
        when SHOW_TIME =>
          -- Decrementa contador de exibição
          if ms_tick_s = '1' and show_counter_ms > 0 then
            show_counter_ms <= show_counter_ms - 1;
          end if;
          
        when INTERVAL =>
          -- Prepara próximo jogador
          current_player <= 2;
          -- Decrementa contador de intervalo
          if ms_tick_s = '1' and show_counter_ms > 0 then
            show_counter_ms <= show_counter_ms - 1;
          end if;
          
        when RESULT =>
          -- Determina vencedor
          if reaction_time_p1 < reaction_time_p2 then 
            winner_player <= 1;
          elsif reaction_time_p2 < reaction_time_p1 then 
            winner_player <= 2;
          else 
            winner_player <= 0;
          end if;
          
      end case;
      
      -- Inicializa contadores quando entrando em certos estados
      if next_state /= current_state then
        if next_state = SHOW_TIME or next_state = INTERVAL then
          show_counter_ms <= SHOW_TIME_MS;
        end if;
      end if;
    end if;
  end process;

  -- Driver de Display de 7 Segmentos CORRIGIDO - HEX3 para jogador, HEX0-HEX2 para tempo
  display_driver_proc: process (clk, rst_n)
    -- Tabela de conversão BCD para 7 segmentos
    function to_7seg(digit: std_logic_vector(3 downto 0)) return std_logic_vector is
    begin
      case digit is
        when "0000" => return "1000000"; -- 0
        when "0001" => return "1111001"; -- 1
        when "0010" => return "0100100"; -- 2
        when "0011" => return "0110000"; -- 3
        when "0100" => return "0011001"; -- 4
        when "0101" => return "0010010"; -- 5
        when "0110" => return "0000010"; -- 6
        when "0111" => return "1111000"; -- 7
        when "1000" => return "0000000"; -- 8
        when "1001" => return "0010000"; -- 9
        when "1110" => return "0000110"; -- 'E'
        when "1111" => return "0111111"; -- '-' (traço)
        when others => return "1111111"; -- Apagado
      end case;
    end function to_7seg;

    variable time_value : integer;
    variable seconds    : integer;
    variable milliseconds : integer;
    variable bcd_seconds : std_logic_vector(3 downto 0);
    variable bcd_ms_high : std_logic_vector(3 downto 0);
    variable bcd_ms_low  : std_logic_vector(3 downto 0);
  begin
    if rst_n = '0' then
      HEX0 <= (others => '1');
      HEX1 <= (others => '1');
      HEX2 <= (others => '1');
      HEX3 <= (others => '1');
    elsif rising_edge(clk) then
      time_value := display_value_to_show;  -- tempo em milissegundos
      
      -- Converte milissegundos para segundos e milissegundos
      seconds := time_value / 1000;           -- Parte dos segundos
      milliseconds := time_value mod 1000;    -- Parte dos milissegundos (0-999)
      
      -- Converte para dígitos BCD
      bcd_seconds := std_logic_vector(to_unsigned(seconds mod 10, 4));
      bcd_ms_high := std_logic_vector(to_unsigned((milliseconds / 100) mod 10, 4));
      bcd_ms_low  := std_logic_vector(to_unsigned((milliseconds / 10) mod 10, 4));

      -- Lógica de exibição principal
      if display_show_tie then
        -- Mostra empate: "E --"
        HEX3 <= to_7seg("1110"); -- 'E'
        HEX2 <= to_7seg("1111"); -- '-'
        HEX1 <= to_7seg("1111"); -- '-'
        HEX0 <= to_7seg("1111"); -- '-'
        
      elsif display_show_time then
        -- Durante medição: mostra "Jogador S.MS" (ex: "1 3.45")
        if display_player_id = 1 then
          HEX3 <= to_7seg("0001"); -- '1'
        elsif display_player_id = 2 then
          HEX3 <= to_7seg("0010"); -- '2'
        else
          HEX3 <= (others => '1'); -- Apagado
        end if;

        -- Mostra tempo formatado como S.MS
        HEX2 <= to_7seg(bcd_seconds);    -- Segundos
        HEX1 <= to_7seg(bcd_ms_high);    -- Centenas de milissegundos
        HEX0 <= to_7seg(bcd_ms_low);     -- Dezenas de milissegundos
        
      else
        -- Modo normal de exibição de resultados
        if display_player_id = 1 then
          HEX3 <= to_7seg("0001"); -- '1'
        elsif display_player_id = 2 then
          HEX3 <= to_7seg("0010"); -- '2'
        else
          HEX3 <= (others => '1'); -- Apagado
        end if;

        -- Mostra tempo formatado
        HEX2 <= to_7seg(bcd_seconds);    -- Segundos
        HEX1 <= to_7seg(bcd_ms_high);    -- Centenas de milissegundos  
        HEX0 <= to_7seg(bcd_ms_low);     -- Dezenas de milissegundos
      end if;
    end if;
  end process;

end architecture Behavioral;