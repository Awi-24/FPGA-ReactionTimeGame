library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity seven_segment_driver is
    Port (
        clk               : in  STD_LOGIC;
        value_to_display  : in  unsigned(15 downto 0);
        anodes            : out STD_LOGIC_VECTOR(3 downto 0);
        segments          : out STD_LOGIC_VECTOR(6 downto 0)
    );
end seven_segment_driver;

architecture Behavioral of seven_segment_driver is
    signal refresh_counter : unsigned(19 downto 0) := (others => '0');
    signal digit_select : std_logic_vector(1 downto 0) := "00";
    signal bcd_digit : unsigned(3 downto 0);

    function to_7_segment (digit : unsigned(3 downto 0)) return std_logic_vector is
        variable segment_data : std_logic_vector(6 downto 0);
    begin
        case digit is
            when "0000" => segment_data := "1000000"; -- 0
            when "0001" => segment_data := "1111001"; -- 1
            when "0010" => segment_data := "0100100"; -- 2
            when "0011" => segment_data := "0110000"; -- 3
            when "0100" => segment_data := "0011001"; -- 4
            when "0101" => segment_data := "0010010"; -- 5
            when "0110" => segment_data := "0000010"; -- 6
            when "0111" => segment_data := "1111000"; -- 7
            when "1000" => segment_data := "0000000"; -- 8
            when "1001" => segment_data := "0010000"; -- 9
            when others => segment_data := "1111111"; -- Off
        end case;
        return segment_data;
    end function;

begin

    process(clk)
    begin
        if rising_edge(clk) then
            refresh_counter <= refresh_counter + 1;
            if refresh_counter = 50000 then -- Ajusta a taxa de atualização do display
                refresh_counter <= (others => '0');
                digit_select <= std_logic_vector(unsigned(digit_select) + 1);
            end if;
        end if;
    end process;

    process(digit_select, value_to_display)
        variable temp_value : integer;
    begin
        temp_value := to_integer(value_to_display);
        case digit_select is
            when "00" =>
                anodes <= "1110"; -- Seleciona o primeiro dígito (menos significativo)
                bcd_digit <= to_unsigned(temp_value mod 10, 4);
            when "01" =>
                anodes <= "1101";
                bcd_digit <= to_unsigned((temp_value / 10) mod 10, 4);
            when "10" =>
                anodes <= "1011";
                bcd_digit <= to_unsigned((temp_value / 100) mod 10, 4);
            when "11" =>
                anodes <= "0111"; -- Dígito mais significativo
                bcd_digit <= to_unsigned((temp_value / 1000) mod 10, 4);
            when others =>
                anodes <= "1111";
                bcd_digit <= (others => '0');
        end case;
    end process;

    segments <= to_7_segment(bcd_digit);

end Behavioral;