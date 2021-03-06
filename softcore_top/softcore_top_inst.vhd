	component softcore_top is
		port (
			clk_clk       : in  std_logic                    := 'X'; -- clk
			reset_reset_n : in  std_logic                    := 'X'; -- reset_n
			pio_export    : out std_logic_vector(7 downto 0)         -- export
		);
	end component softcore_top;

	u0 : component softcore_top
		port map (
			clk_clk       => CONNECTED_TO_clk_clk,       --   clk.clk
			reset_reset_n => CONNECTED_TO_reset_reset_n, -- reset.reset_n
			pio_export    => CONNECTED_TO_pio_export     --   pio.export
		);

