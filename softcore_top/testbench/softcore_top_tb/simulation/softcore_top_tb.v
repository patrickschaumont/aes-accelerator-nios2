// softcore_top_tb.v

// Generated using ACDS version 18.1 625

`timescale 1 ps / 1 ps
module softcore_top_tb (
	);

	wire    softcore_top_inst_clk_bfm_clk_clk;       // softcore_top_inst_clk_bfm:clk -> [softcore_top_inst:clk_clk, softcore_top_inst_reset_bfm:clk]
	wire    softcore_top_inst_reset_bfm_reset_reset; // softcore_top_inst_reset_bfm:reset -> softcore_top_inst:reset_reset_n

	softcore_top softcore_top_inst (
		.clk_clk       (softcore_top_inst_clk_bfm_clk_clk),       //   clk.clk
		.reset_reset_n (softcore_top_inst_reset_bfm_reset_reset)  // reset.reset_n
	);

	altera_avalon_clock_source #(
		.CLOCK_RATE (50000000),
		.CLOCK_UNIT (1)
	) softcore_top_inst_clk_bfm (
		.clk (softcore_top_inst_clk_bfm_clk_clk)  // clk.clk
	);

	altera_avalon_reset_source #(
		.ASSERT_HIGH_RESET    (0),
		.INITIAL_RESET_CYCLES (50)
	) softcore_top_inst_reset_bfm (
		.reset (softcore_top_inst_reset_bfm_reset_reset), // reset.reset_n
		.clk   (softcore_top_inst_clk_bfm_clk_clk)        //   clk.clk
	);

endmodule
