module tboxd1(input wire clk,
              input wire [7:0] a,
              output reg [31:0] q);

   always @(posedge clk)
     case (a)
	8'd0: q = 32'h5051f4a7;
	8'd1: q = 32'h537e4165;
	8'd2: q = 32'hc31a17a4;
	8'd3: q = 32'h963a275e;
	8'd4: q = 32'hcb3bab6b;
	8'd5: q = 32'hf11f9d45;
	8'd6: q = 32'habacfa58;
	8'd7: q = 32'h934be303;
	8'd8: q = 32'h552030fa;
	8'd9: q = 32'hf6ad766d;
	8'd10: q = 32'h9188cc76;
	8'd11: q = 32'h25f5024c;
	8'd12: q = 32'hfc4fe5d7;
	8'd13: q = 32'hd7c52acb;
	8'd14: q = 32'h80263544;
	8'd15: q = 32'h8fb562a3;
	8'd16: q = 32'h49deb15a;
	8'd17: q = 32'h6725ba1b;
	8'd18: q = 32'h9845ea0e;
	8'd19: q = 32'he15dfec0;
	8'd20: q = 32'h2c32f75;
	8'd21: q = 32'h12814cf0;
	8'd22: q = 32'ha38d4697;
	8'd23: q = 32'hc66bd3f9;
	8'd24: q = 32'he7038f5f;
	8'd25: q = 32'h9515929c;
	8'd26: q = 32'hebbf6d7a;
	8'd27: q = 32'hda955259;
	8'd28: q = 32'h2dd4be83;
	8'd29: q = 32'hd3587421;
	8'd30: q = 32'h2949e069;
	8'd31: q = 32'h448ec9c8;
	8'd32: q = 32'h6a75c289;
	8'd33: q = 32'h78f48e79;
	8'd34: q = 32'h6b99583e;
	8'd35: q = 32'hdd27b971;
	8'd36: q = 32'hb6bee14f;
	8'd37: q = 32'h17f088ad;
	8'd38: q = 32'h66c920ac;
	8'd39: q = 32'hb47dce3a;
	8'd40: q = 32'h1863df4a;
	8'd41: q = 32'h82e51a31;
	8'd42: q = 32'h60975133;
	8'd43: q = 32'h4562537f;
	8'd44: q = 32'he0b16477;
	8'd45: q = 32'h84bb6bae;
	8'd46: q = 32'h1cfe81a0;
	8'd47: q = 32'h94f9082b;
	8'd48: q = 32'h58704868;
	8'd49: q = 32'h198f45fd;
	8'd50: q = 32'h8794de6c;
	8'd51: q = 32'hb7527bf8;
	8'd52: q = 32'h23ab73d3;
	8'd53: q = 32'he2724b02;
	8'd54: q = 32'h57e31f8f;
	8'd55: q = 32'h2a6655ab;
	8'd56: q = 32'h7b2eb28;
	8'd57: q = 32'h32fb5c2;
	8'd58: q = 32'h9a86c57b;
	8'd59: q = 32'ha5d33708;
	8'd60: q = 32'hf2302887;
	8'd61: q = 32'hb223bfa5;
	8'd62: q = 32'hba02036a;
	8'd63: q = 32'h5ced1682;
	8'd64: q = 32'h2b8acf1c;
	8'd65: q = 32'h92a779b4;
	8'd66: q = 32'hf0f307f2;
	8'd67: q = 32'ha14e69e2;
	8'd68: q = 32'hcd65daf4;
	8'd69: q = 32'hd50605be;
	8'd70: q = 32'h1fd13462;
	8'd71: q = 32'h8ac4a6fe;
	8'd72: q = 32'h9d342e53;
	8'd73: q = 32'ha0a2f355;
	8'd74: q = 32'h32058ae1;
	8'd75: q = 32'h75a4f6eb;
	8'd76: q = 32'h390b83ec;
	8'd77: q = 32'haa4060ef;
	8'd78: q = 32'h65e719f;
	8'd79: q = 32'h51bd6e10;
	8'd80: q = 32'hf93e218a;
	8'd81: q = 32'h3d96dd06;
	8'd82: q = 32'haedd3e05;
	8'd83: q = 32'h464de6bd;
	8'd84: q = 32'hb591548d;
	8'd85: q = 32'h571c45d;
	8'd86: q = 32'h6f0406d4;
	8'd87: q = 32'hff605015;
	8'd88: q = 32'h241998fb;
	8'd89: q = 32'h97d6bde9;
	8'd90: q = 32'hcc894043;
	8'd91: q = 32'h7767d99e;
	8'd92: q = 32'hbdb0e842;
	8'd93: q = 32'h8807898b;
	8'd94: q = 32'h38e7195b;
	8'd95: q = 32'hdb79c8ee;
	8'd96: q = 32'h47a17c0a;
	8'd97: q = 32'he97c420f;
	8'd98: q = 32'hc9f8841e;
	8'd99: q = 32'h0;
	8'd100: q = 32'h83098086;
	8'd101: q = 32'h48322bed;
	8'd102: q = 32'hac1e1170;
	8'd103: q = 32'h4e6c5a72;
	8'd104: q = 32'hfbfd0eff;
	8'd105: q = 32'h560f8538;
	8'd106: q = 32'h1e3daed5;
	8'd107: q = 32'h27362d39;
	8'd108: q = 32'h640a0fd9;
	8'd109: q = 32'h21685ca6;
	8'd110: q = 32'hd19b5b54;
	8'd111: q = 32'h3a24362e;
	8'd112: q = 32'hb10c0a67;
	8'd113: q = 32'hf9357e7;
	8'd114: q = 32'hd2b4ee96;
	8'd115: q = 32'h9e1b9b91;
	8'd116: q = 32'h4f80c0c5;
	8'd117: q = 32'ha261dc20;
	8'd118: q = 32'h695a774b;
	8'd119: q = 32'h161c121a;
	8'd120: q = 32'hae293ba;
	8'd121: q = 32'he5c0a02a;
	8'd122: q = 32'h433c22e0;
	8'd123: q = 32'h1d121b17;
	8'd124: q = 32'hb0e090d;
	8'd125: q = 32'hadf28bc7;
	8'd126: q = 32'hb92db6a8;
	8'd127: q = 32'hc8141ea9;
	8'd128: q = 32'h8557f119;
	8'd129: q = 32'h4caf7507;
	8'd130: q = 32'hbbee99dd;
	8'd131: q = 32'hfda37f60;
	8'd132: q = 32'h9ff70126;
	8'd133: q = 32'hbc5c72f5;
	8'd134: q = 32'hc544663b;
	8'd135: q = 32'h345bfb7e;
	8'd136: q = 32'h768b4329;
	8'd137: q = 32'hdccb23c6;
	8'd138: q = 32'h68b6edfc;
	8'd139: q = 32'h63b8e4f1;
	8'd140: q = 32'hcad731dc;
	8'd141: q = 32'h10426385;
	8'd142: q = 32'h40139722;
	8'd143: q = 32'h2084c611;
	8'd144: q = 32'h7d854a24;
	8'd145: q = 32'hf8d2bb3d;
	8'd146: q = 32'h11aef932;
	8'd147: q = 32'h6dc729a1;
	8'd148: q = 32'h4b1d9e2f;
	8'd149: q = 32'hf3dcb230;
	8'd150: q = 32'hec0d8652;
	8'd151: q = 32'hd077c1e3;
	8'd152: q = 32'h6c2bb316;
	8'd153: q = 32'h99a970b9;
	8'd154: q = 32'hfa119448;
	8'd155: q = 32'h2247e964;
	8'd156: q = 32'hc4a8fc8c;
	8'd157: q = 32'h1aa0f03f;
	8'd158: q = 32'hd8567d2c;
	8'd159: q = 32'hef223390;
	8'd160: q = 32'hc787494e;
	8'd161: q = 32'hc1d938d1;
	8'd162: q = 32'hfe8ccaa2;
	8'd163: q = 32'h3698d40b;
	8'd164: q = 32'hcfa6f581;
	8'd165: q = 32'h28a57ade;
	8'd166: q = 32'h26dab78e;
	8'd167: q = 32'ha43fadbf;
	8'd168: q = 32'he42c3a9d;
	8'd169: q = 32'hd507892;
	8'd170: q = 32'h9b6a5fcc;
	8'd171: q = 32'h62547e46;
	8'd172: q = 32'hc2f68d13;
	8'd173: q = 32'he890d8b8;
	8'd174: q = 32'h5e2e39f7;
	8'd175: q = 32'hf582c3af;
	8'd176: q = 32'hbe9f5d80;
	8'd177: q = 32'h7c69d093;
	8'd178: q = 32'ha96fd52d;
	8'd179: q = 32'hb3cf2512;
	8'd180: q = 32'h3bc8ac99;
	8'd181: q = 32'ha710187d;
	8'd182: q = 32'h6ee89c63;
	8'd183: q = 32'h7bdb3bbb;
	8'd184: q = 32'h9cd2678;
	8'd185: q = 32'hf46e5918;
	8'd186: q = 32'h1ec9ab7;
	8'd187: q = 32'ha8834f9a;
	8'd188: q = 32'h65e6956e;
	8'd189: q = 32'h7eaaffe6;
	8'd190: q = 32'h821bccf;
	8'd191: q = 32'he6ef15e8;
	8'd192: q = 32'hd9bae79b;
	8'd193: q = 32'hce4a6f36;
	8'd194: q = 32'hd4ea9f09;
	8'd195: q = 32'hd629b07c;
	8'd196: q = 32'haf31a4b2;
	8'd197: q = 32'h312a3f23;
	8'd198: q = 32'h30c6a594;
	8'd199: q = 32'hc035a266;
	8'd200: q = 32'h37744ebc;
	8'd201: q = 32'ha6fc82ca;
	8'd202: q = 32'hb0e090d0;
	8'd203: q = 32'h1533a7d8;
	8'd204: q = 32'h4af10498;
	8'd205: q = 32'hf741ecda;
	8'd206: q = 32'he7fcd50;
	8'd207: q = 32'h2f1791f6;
	8'd208: q = 32'h8d764dd6;
	8'd209: q = 32'h4d43efb0;
	8'd210: q = 32'h54ccaa4d;
	8'd211: q = 32'hdfe49604;
	8'd212: q = 32'he39ed1b5;
	8'd213: q = 32'h1b4c6a88;
	8'd214: q = 32'hb8c12c1f;
	8'd215: q = 32'h7f466551;
	8'd216: q = 32'h49d5eea;
	8'd217: q = 32'h5d018c35;
	8'd218: q = 32'h73fa8774;
	8'd219: q = 32'h2efb0b41;
	8'd220: q = 32'h5ab3671d;
	8'd221: q = 32'h5292dbd2;
	8'd222: q = 32'h33e91056;
	8'd223: q = 32'h136dd647;
	8'd224: q = 32'h8c9ad761;
	8'd225: q = 32'h7a37a10c;
	8'd226: q = 32'h8e59f814;
	8'd227: q = 32'h89eb133c;
	8'd228: q = 32'heecea927;
	8'd229: q = 32'h35b761c9;
	8'd230: q = 32'hede11ce5;
	8'd231: q = 32'h3c7a47b1;
	8'd232: q = 32'h599cd2df;
	8'd233: q = 32'h3f55f273;
	8'd234: q = 32'h791814ce;
	8'd235: q = 32'hbf73c737;
	8'd236: q = 32'hea53f7cd;
	8'd237: q = 32'h5b5ffdaa;
	8'd238: q = 32'h14df3d6f;
	8'd239: q = 32'h867844db;
	8'd240: q = 32'h81caaff3;
	8'd241: q = 32'h3eb968c4;
	8'd242: q = 32'h2c382434;
	8'd243: q = 32'h5fc2a340;
	8'd244: q = 32'h72161dc3;
	8'd245: q = 32'hcbce225;
	8'd246: q = 32'h8b283c49;
	8'd247: q = 32'h41ff0d95;
	8'd248: q = 32'h7139a801;
	8'd249: q = 32'hde080cb3;
	8'd250: q = 32'h9cd8b4e4;
	8'd251: q = 32'h906456c1;
	8'd252: q = 32'h617bcb84;
	8'd253: q = 32'h70d532b6;
	8'd254: q = 32'h74486c5c;
	8'd255: q = 32'h42d0b857;

     endcase // case (a)
endmodule

