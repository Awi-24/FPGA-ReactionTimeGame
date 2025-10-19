-- ++ bibliotecas ++
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

-- ++ entidade ++
entity reaction_game is
  port (
    clk          : in  std_logic;
    control_btn  : in  std_logic;  -- ++ botao de controle (inicia/reseta) ++
    player1_btn  : in  std_logic;  -- ++ botao do jogador 1 ++
    player2_btn  : in  std_logic;  -- ++ botao do jogador 2 ++
    led_ind      : out std_logic;
    HEX0         : out std_logic_vector(6 downto 0);
    HEX1         : out std_logic_vector(6 downto 0);
    HEX2         : out std_logic_vector(6 downto 0);
    HEX3         : out std_logic_vector(6 downto 0)
  );
end entity reaction_game;

architecture Behavioral of reaction_game is

  -- ++ constantes ++
  constant CLK_FREQ_HZ      : integer := 50_000_000;
  constant MS_TICK_LIMIT    : integer := CLK_FREQ_HZ / 1000 - 1;
  constant DISPLAY_MSG_TIME : integer := 2000;
  constant MAX_REACTION_TIME: integer := 9999;
  constant MIN_RAND_DELAY_MS: integer := 2000;
  constant MAX_RAND_DELAY_MS: integer := 5000;

  -- ++ fsm ++
  type t_fsm_state is (IDLE, WAIT_P2, SHOW_S, WAIT_DELAY, MEASURE, SHOW_RESULT, WAIT_FOR_CONTINUE);
  signal current_state, next_state : t_fsm_state;

  -- ++ sinais de tick ++
  signal ms_tick_s : std_logic := '0';

  -- ++ sinais de botao ++
  signal control_pressed : std_logic := '0';
  signal player1_pressed : std_logic := '0';
  signal player2_pressed : std_logic := '0';

  -- ++ sinais do gerador aleatorio ++
  signal lfsr_reg        : std_logic_vector(15 downto 0) := (others => '1');
  signal random_delay_ms : integer range MIN_RAND_DELAY_MS to MAX_RAND_DELAY_MS;

  -- ++ sinais de controle ++
  signal delay_counter_ms : integer range 0 to MAX_RAND_DELAY_MS := 0;
  signal timer_ms         : integer range 0 to MAX_REACTION_TIME := 0;
  signal display_counter_ms : integer range 0 to DISPLAY_MSG_TIME := 0;
  signal reaction_time_p1 : integer range 0 to MAX_REACTION_TIME := 0;
  signal reaction_time_p2 : integer range 0 to MAX_REACTION_TIME := 0;
  signal winner_player    : integer range 0 to 3 := 0;  -- ++ 0=ninguem, 1=jogador1, 2=jogador2, 3=empate ++
  signal false_start      : boolean := false;  -- ++ sinal para detectar falso start ++

  -- ++ sinais de display ++
  signal hex0_digit, hex1_digit, hex2_digit, hex3_digit : std_logic_vector(3 downto 0);

begin

  -- ++ saida do led ++
  led_ind <= '1' when current_state = MEASURE else '0';

  -- ++ gerador de tick de 1ms ++
  ms_tick_gen_proc: process (clk, control_btn)
    variable ms_counter : integer range 0 to MS_TICK_LIMIT := 0;
  begin
    if control_btn = '0' then
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

  -- ++ deteccao simples de borda de subida ++
  button_detect_proc: process (clk, control_btn)
    variable control_prev, player1_prev, player2_prev : std_logic := '0';
  begin
    if control_btn = '0' then
      control_pressed <= '0';
      player1_pressed <= '0';
      player2_pressed <= '0';
      control_prev := '0';
      player1_prev := '0';
      player2_prev := '0';
    elsif rising_edge(clk) then
      -- ++ deteccao de borda de subida para control_btn ++
      control_pressed <= '0';
      if control_prev = '0' and control_btn = '1' then
        control_pressed <= '1';
      end if;
      control_prev := control_btn;

      -- ++ deteccao de borda de subida para player1_btn ++
      player1_pressed <= '0';
      if player1_prev = '0' and player1_btn = '1' then
        player1_pressed <= '1';
      end if;
      player1_prev := player1_btn;

      -- ++ deteccao de borda de subida para player2_btn ++
      player2_pressed <= '0';
      if player2_prev = '0' and player2_btn = '1' then
        player2_pressed <= '1';
      end if;
      player2_prev := player2_btn;
    end if;
  end process;

  -- ++ gerador pseudo-aleatorio ++
  lfsr_proc: process (clk, control_btn)
    variable lfsr_feedback : std_logic;
  begin
    if control_btn = '0' then 
      lfsr_reg <= (others => '1');
    elsif rising_edge(clk) then
      lfsr_feedback := lfsr_reg(15) xor lfsr_reg(13) xor lfsr_reg(12) xor lfsr_reg(10);
      lfsr_reg <= lfsr_reg(14 downto 0) & lfsr_feedback;
    end if;
  end process;
  
  random_delay_ms <= MIN_RAND_DELAY_MS + (to_integer(unsigned(lfsr_reg(14 downto 0))) mod (MAX_RAND_DELAY_MS - MIN_RAND_DELAY_MS + 1));

  -- ++ fsm sincrono ++
  fsm_sync_proc: process (clk, control_btn)
  begin
    if control_btn = '0' then
      current_state <= IDLE;
    elsif rising_edge(clk) then
      current_state <= next_state;
    end if;
  end process;

  -- ++ fsm combinacional - ATUALIZADA COM SEQUENCIA DE INICIO ++
  fsm_comb_proc: process (all)
  begin
    next_state <= current_state;

    case current_state is
      when IDLE =>
        -- ++ espera player 1 pressionar para iniciar ++
        if player1_pressed = '1' then 
          next_state <= WAIT_P2; 
        end if;
        
      when WAIT_P2 =>
        -- ++ espera player 2 pressionar para confirmar ++
        if player2_pressed = '1' then 
          next_state <= SHOW_S; 
        end if;
        
      when SHOW_S =>
        if display_counter_ms = 0 then
          next_state <= WAIT_DELAY;
        end if;
        
      when WAIT_DELAY =>
        -- ++ verifica falso start durante o delay ++
        if player1_pressed = '1' or player2_pressed = '1' then
          next_state <= SHOW_RESULT;
        elsif delay_counter_ms = 0 then 
          next_state <= MEASURE; 
        end if;
        
      when MEASURE =>
        if player1_pressed = '1' or player2_pressed = '1' or timer_ms >= MAX_REACTION_TIME then 
          next_state <= SHOW_RESULT; 
        end if;
        
      when SHOW_RESULT =>
        -- ++ aguarda o player 1 pressionar para continuar ++
        if player1_pressed = '1' then 
          next_state <= WAIT_FOR_CONTINUE; 
        end if;
        
      when WAIT_FOR_CONTINUE =>
        -- ++ volta para idle quando o player 1 soltar o botão ++
        if player1_btn = '0' then
          next_state <= IDLE;
        end if;
    end case;
  end process;

  -- ++ logica do jogo - ATUALIZADA ++
  game_logic_proc: process(clk, control_btn)
  begin
    if control_btn = '0' then
      reaction_time_p1 <= 0; 
      reaction_time_p2 <= 0;
      winner_player <= 0; 
      timer_ms <= 0;
      delay_counter_ms <= 0; 
      display_counter_ms <= 0;
      false_start <= false;
    elsif rising_edge(clk) then
      -- ++ contadores ++
      if ms_tick_s = '1' then
        if display_counter_ms > 0 then
          display_counter_ms <= display_counter_ms - 1;
        end if;
        if delay_counter_ms > 0 then
          delay_counter_ms <= delay_counter_ms - 1;
        end if;
        if current_state = MEASURE and timer_ms < MAX_REACTION_TIME then
          timer_ms <= timer_ms + 1;
        end if;
      end if;

      -- ++ transicoes de estado ++
      case current_state is
        when IDLE =>
          timer_ms <= 0;
          delay_counter_ms <= 0;
          display_counter_ms <= 0;
          reaction_time_p1 <= 0;
          reaction_time_p2 <= 0;
          winner_player <= 0;
          false_start <= false;
          
        when WAIT_P2 =>
          null;
          
        when SHOW_S =>
          null;
          
        when WAIT_DELAY =>
          -- ++ deteccao de falso start ++
          if player1_pressed = '1' and player2_pressed = '1' and winner_player = 0 then
            -- ++ ambos fizeram falso start - empate ++
            winner_player <= 3;
            false_start <= true;
          elsif player1_pressed = '1' and winner_player = 0 then
            -- ++ jogador 1 fez falso start - jogador 2 vence ++
            winner_player <= 2;
            false_start <= true;
          elsif player2_pressed = '1' and winner_player = 0 then
            -- ++ jogador 2 fez falso start - jogador 1 vence ++
            winner_player <= 1;
            false_start <= true;
          end if;
          
        when MEASURE =>
          -- ++ deteccao de vencedor normal ++
          if player1_pressed = '1' and player2_pressed = '1' and winner_player = 0 then
            -- ++ ambos apertaram ao mesmo tempo - empate ++
            reaction_time_p1 <= timer_ms;
            reaction_time_p2 <= timer_ms;
            winner_player <= 3;
          elsif player1_pressed = '1' and winner_player = 0 then
            reaction_time_p1 <= timer_ms;
            winner_player <= 1;
          elsif player2_pressed = '1' and winner_player = 0 then
            reaction_time_p2 <= timer_ms;
            winner_player <= 2;
          elsif timer_ms = MAX_REACTION_TIME and winner_player = 0 then
            -- ++ timeout - ninguem apertou ++
            winner_player <= 3;
          end if;
          
        when SHOW_RESULT =>
          null;
          
        when WAIT_FOR_CONTINUE =>
          null;
      end case;

      -- ++ inicializacao de contadores ++
      if next_state /= current_state then
        case next_state is
          when SHOW_S =>
            display_counter_ms <= DISPLAY_MSG_TIME;
          when WAIT_DELAY =>
            delay_counter_ms <= random_delay_ms;
          when others =>
            null;
        end case;
      end if;
    end if;
  end process;

  -- ++ logica de display - ATUALIZADA ++
  display_proc: process (clk, control_btn)
    variable time_value : integer;
  begin
    if control_btn = '0' then
      hex0_digit <= "1111";
      hex1_digit <= "1111";
      hex2_digit <= "1111";
      hex3_digit <= "1111";
    elsif rising_edge(clk) then
      case current_state is
        when IDLE =>
          -- ++ mostra "I" no HEX0 (Idle) ++
          hex3_digit <= "1111";
          hex2_digit <= "1111";
          hex1_digit <= "1111";
          hex0_digit <= "1101";  -- I
          
        when WAIT_P2 =>
          -- ++ mostra "P2" (aguardando player 2) ++
          hex3_digit <= "1111";
          hex2_digit <= "1111";
          hex1_digit <= "0010";  -- 2
          hex0_digit <= "1100";  -- P
          
        when SHOW_S =>
          -- ++ mostra "S" no HEX0 (Start) ++
          hex3_digit <= "1111";
          hex2_digit <= "1111";
          hex1_digit <= "1111";
          hex0_digit <= "1010";  -- S
          
        when MEASURE =>
          -- ++ mostra contagem de tempo ++
          hex3_digit <= "1111";
          hex2_digit <= std_logic_vector(to_unsigned((timer_ms / 1000) mod 10, 4));
          hex1_digit <= std_logic_vector(to_unsigned((timer_ms / 100) mod 10, 4));
          hex0_digit <= std_logic_vector(to_unsigned((timer_ms / 10) mod 10, 4));
          
        when SHOW_RESULT | WAIT_FOR_CONTINUE =>
          -- ++ mostra resultado ++
          if false_start then
            -- ++ falso start: exibe vencedor e 000 ++
            if winner_player = 1 then
              hex3_digit <= "0001"; -- 1 (jogador 1 vence por falso start do jogador 2)
            elsif winner_player = 2 then
              hex3_digit <= "0010"; -- 2 (jogador 2 vence por falso start do jogador 1)
            else
              hex3_digit <= "1110"; -- E (empate - ambos fizeram falso start)
            end if;
            hex2_digit <= "0000"; -- 0
            hex1_digit <= "0000"; -- 0
            hex0_digit <= "0000"; -- 0
          else
            -- ++ resultado normal ++
            if winner_player = 1 then
              -- ++ jogador 1 venceu ++
              hex3_digit <= "0001"; -- 1
              time_value := reaction_time_p1;
              hex2_digit <= std_logic_vector(to_unsigned((time_value / 1000) mod 10, 4));
              hex1_digit <= std_logic_vector(to_unsigned((time_value / 100) mod 10, 4));
              hex0_digit <= std_logic_vector(to_unsigned((time_value / 10) mod 10, 4));
            elsif winner_player = 2 then
              -- ++ jogador 2 venceu ++
              hex3_digit <= "0010"; -- 2
              time_value := reaction_time_p2;
              hex2_digit <= std_logic_vector(to_unsigned((time_value / 1000) mod 10, 4));
              hex1_digit <= std_logic_vector(to_unsigned((time_value / 100) mod 10, 4));
              hex0_digit <= std_logic_vector(to_unsigned((time_value / 10) mod 10, 4));
            else
              -- ++ empate (winner_player = 3) ++
              hex3_digit <= "1110"; -- E (empate)
              hex2_digit <= "1111"; -- - (traco)
              hex1_digit <= "1111"; -- - (traco)
              hex0_digit <= "1111"; -- - (traco)
            end if;
          end if;
          
        when others =>
          -- ++ wait_delay: displays apagados ++
          hex0_digit <= "1111";
          hex1_digit <= "1111";
          hex2_digit <= "1111";
          hex3_digit <= "1111";
      end case;
    end if;
  end process;

  -- ++ conversor para 7 segmentos - ATUALIZADO ++
  with hex0_digit select
    HEX0 <= "1000000" when "0000", -- 0
            "1111001" when "0001", -- 1
            "0100100" when "0010", -- 2
            "0110000" when "0011", -- 3
            "0011001" when "0100", -- 4
            "0010010" when "0101", -- 5
            "0000010" when "0110", -- 6
            "1111000" when "0111", -- 7
            "0000000" when "1000", -- 8
            "0010000" when "1001", -- 9
            "0010010" when "1010", -- S
            "0101111" when "1011", -- R
            "1001111" when "1101", -- I
            "0000110" when "1110", -- E
            "0001100" when "1100", -- P
            "0111111" when "1111", -- - (traco)
            "1111111" when others; -- apagado

  with hex1_digit select
    HEX1 <= "1000000" when "0000",
            "1111001" when "0001",
            "0100100" when "0010",
            "0110000" when "0011",
            "0011001" when "0100",
            "0010010" when "0101",
            "0000010" when "0110",
            "1111000" when "0111",
            "0000000" when "1000",
            "0010000" when "1001",
            "0010010" when "1010",
            "0101111" when "1011",
            "1001111" when "1101",
            "0000110" when "1110",
            "0001100" when "1100",
            "0111111" when "1111",
            "1111111" when others;

  with hex2_digit select
    HEX2 <= "1000000" when "0000",
            "1111001" when "0001",
            "0100100" when "0010",
            "0110000" when "0011",
            "0011001" when "0100",
            "0010010" when "0101",
            "0000010" when "0110",
            "1111000" when "0111",
            "0000000" when "1000",
            "0010000" when "1001",
            "0010010" when "1010",
            "0101111" when "1011",
            "1001111" when "1101",
            "0000110" when "1110",
            "0001100" when "1100",
            "0111111" when "1111",
            "1111111" when others;

  with hex3_digit select
    HEX3 <= "1000000" when "0000",
            "1111001" when "0001",
            "0100100" when "0010",
            "0110000" when "0011",
            "0011001" when "0100",
            "0010010" when "0101",
            "0000010" when "0110",
            "1111000" when "0111",
            "0000000" when "1000",
            "0010000" when "1001",
            "0000110" when "1110", -- E
            "1111111" when others;

end architecture Behavioral;