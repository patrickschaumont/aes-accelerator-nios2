module tboxtop  (input  wire        clk,
	input  wire        reset,
	input  wire        clk_en,
	input  wire        start,
	output reg         done,
	input  wire [7:0] 	n,
	input  wire [31:0] dataa,
	input  wire [31:0] datab,
	output wire [31:0] result);

wire [7:0]  e0_a, e1_a, e2_a, e3_a, d0_a, d1_a, d2_a, d3_a;
wire [31:0] e0_q, e1_q, e2_q, e3_q, d0_q, d1_q, d2_q, d3_q;
wire [7:0]  e41_q, d41_q;
wire [7:0]  e42_q, d42_q;
wire [7:0]  e43_q, d43_q;
wire [7:0]  e44_q, d44_q;

tboxe0 e0 (clk, e0_a, e0_q);
tboxe1 e1 (clk, e1_a, e1_q);
tboxe2 e2 (clk, e2_a, e2_q);
tboxe3 e3 (clk, e3_a, e3_q);

tboxe4 e41(clk, e0_a, e41_q);
tboxe4 e42(clk, e1_a, e42_q);
tboxe4 e43(clk, e2_a, e43_q);
tboxe4 e44(clk, e3_a, e44_q);

tboxd0 d0 (clk, d0_a, d0_q);
tboxd1 d1 (clk, d1_a, d1_q);
tboxd2 d2 (clk, d2_a, d2_q);
tboxd3 d3 (clk, d3_a, d3_q);

tboxd4 d41(clk, d0_a, d41_q);
tboxd4 d42(clk, d1_a, d42_q);
tboxd4 d43(clk, d2_a, d43_q);
tboxd4 d44(clk, d3_a, d44_q);

localparam 
LOADINS      = 1,
UPDATEINS    = 2,
RKINS        = 3,
ENCINS       = 4,
DECINS       = 5,
ENCLASTINS   = 6,
DECLASTINS   = 7;

reg [31:0] i0, i1, i2, i3;
reg [31:0] q0, q1, q2, q3;
reg [31:0] rk0, rk1;

reg [4:0] state;

localparam sdecode   = 5'd0,
senc1     = 5'd1,
senc2     = 5'd2,
senc3     = 5'd3,
senc4     = 5'd4,
sdec1     = 5'd5,
sdec2     = 5'd6,
sdec3     = 5'd7,
sdec4     = 5'd8,
senclast1 = 5'd9,
senclast2 = 5'd10,
senclast3 = 5'd11,
senclast4 = 5'd12,
sdeclast1 = 5'd13,
sdeclast2 = 5'd14,
sdeclast3 = 5'd15,
sdeclast4 = 5'd16;

assign result = i0;

assign e0_a   = i0[31:24];
assign e1_a   = i1[23:16];
assign e2_a   = i2[15: 8];
assign e3_a   = i3[ 7: 0];

assign d0_a   = i0[31:24];
assign d1_a   = i3[23:16];
assign d2_a   = i2[15: 8];
assign d3_a   = i1[ 7: 0];

always @(posedge clk or posedge reset)
if (reset) begin
	state <= sdecode;
	done  <= 0;
end else begin
	done <= 0;

	case (state)

		sdecode: 
		begin
			if (clk_en & (n == LOADINS) & start) 
			begin
				i3    <= dataa;
				i2    <= i3;
				i1    <= i2;
				i0    <= i1;
				done  <= 1;
			end
			else if (clk_en & (n == UPDATEINS) & start)
			begin
				i0    <= q0;
				i1    <= q1;
				i2    <= q2;
				i3    <= q3;
				rk0   <= dataa;  // 1/4 round key
				rk1   <= datab;  // 1/4 round key
				done  <= 1;	     
			end 
			else if (clk_en & (n == RKINS) & start)
			begin
				rk0   <= dataa;  // 1/4 round key
				rk1   <= datab;  // 1/4 round key
				done  <= 1;	     
			end 
			else if (clk_en & (n == ENCINS) & start)
			begin
				i0    <= i1;
				i1    <= i2;
				i2    <= i3;
				i3    <= i0;
				state <= senc1;
			end 
			else if  (clk_en & (n == DECINS) & start)
			begin
				i0    <= i1;
				i1    <= i2;
				i2    <= i3;
				i3    <= i0;
				state <= sdec1;
			end
			else if (clk_en & (n == ENCLASTINS) & start)
			begin
				i0    <= i1;
				i1    <= i2;
				i2    <= i3;
				i3    <= i0;
				state <= senclast1;
			end 
			else if (clk_en & (n == DECLASTINS) & start)
			begin
				i0    <= i1;
				i1    <= i2;
				i2    <= i3;
				i3    <= i0;
				state <= sdeclast1;
			end 
		end

		senc1:
		begin
			q0    <= e0_q ^ e1_q ^ e2_q ^ e3_q ^ rk0;
			i0    <= i1;
			i1    <= i2;
			i2    <= i3;
			i3    <= i0;
			state <= senc2;
		end
		senc2:
		begin
			q1    <= e0_q ^ e1_q ^ e2_q ^ e3_q ^ rk1;
			i0    <= i1;
			i1    <= i2;
			i2    <= i3;
			i3    <= i0;
			state <= senc3;
		end
		senc3:
		begin
			q2    <= e0_q ^ e1_q ^ e2_q ^ e3_q ^ dataa;
			i0    <= i1;
			i1    <= i2;
			i2    <= i3;
			i3    <= i0;
			state <= senc4;
		end
		senc4:
		begin
			q3    <= e0_q ^ e1_q ^ e2_q ^ e3_q ^ datab;
			done  <= 1;
			state <= sdecode;
		end

		senclast1:
		begin
			q0    <= {e41_q, e42_q, e43_q, e44_q} ^ rk0;
			i0    <= i1;
			i1    <= i2;
			i2    <= i3;
			i3    <= i0;
			state <= senclast2;
		end
		senclast2:
		begin
			q1    <= {e41_q, e42_q, e43_q, e44_q} ^ rk1;
			i0    <= i1;
			i1    <= i2;
			i2    <= i3;
			i3    <= i0;
			state <= senclast3;
		end
		senclast3:
		begin
			q2    <= {e41_q, e42_q, e43_q, e44_q} ^ dataa;
			i0    <= i1;
			i1    <= i2;
			i2    <= i3;
			i3    <= i0;
			state <= senclast4;
		end
		senclast4:
		begin
			q3    <= {e41_q, e42_q, e43_q, e44_q} ^ datab;
			done  <= 1;
			state <= sdecode;
		end

		sdec1:
		begin
			q0    <= d0_q ^ d1_q ^ d2_q ^ d3_q ^ rk0;
			i0    <= i1;
			i1    <= i2;
			i2    <= i3;
			i3    <= i0;
			state <= sdec2;
		end
		sdec2:
		begin
			q1    <= d0_q ^ d1_q ^ d2_q ^ d3_q ^ rk1;
			i0    <= i1;
			i1    <= i2;
			i2    <= i3;
			i3    <= i0;
			state <= sdec3;
		end
		sdec3:
		begin
			q2    <= d0_q ^ d1_q ^ d2_q ^ d3_q ^ dataa;
			i0    <= i1;
			i1    <= i2;
			i2    <= i3;
			i3    <= i0;
			state <= sdec4;
		end
		sdec4:
		begin
			q3    <= d0_q ^ d1_q ^ d2_q ^ d3_q ^ datab;
			state <= sdecode;
			done  <= 1;
		end

		sdeclast1:
		begin
			q0    <= {d41_q, d42_q, d43_q, d44_q} ^ rk0;
			i0    <= i1;
			i1    <= i2;
			i2    <= i3;
			i3    <= i0;
			state <= sdeclast2;
		end
		sdeclast2:
		begin
			q1    <= {d41_q, d42_q, d43_q, d44_q} ^ rk1;
			i0    <= i1;
			i1    <= i2;
			i2    <= i3;
			i3    <= i0;
			state <= sdeclast3;
		end
		sdeclast3:
		begin
			q2    <= {d41_q, d42_q, d43_q, d44_q} ^ dataa;
			i0    <= i1;
			i1    <= i2;
			i2    <= i3;
			i3    <= i0;
			state <= sdeclast4;
		end
		sdeclast4:
		begin
			q3    <= {d41_q, d42_q, d43_q, d44_q} ^ datab;
			state <= sdecode;
			done  <= 1;
		end
	endcase
end // else: !if(rst)


endmodule // aesci
