module hw_accelerator_top(
	input 		      CLOCK_50,
	input 		      KEY
);

	wire [7:0] pio;

	softcore_top u0 (
		.clk_clk       (CLOCK_50),
		.reset_reset_n (KEY),
	   .pio_export    (pio)
	);


endmodule
