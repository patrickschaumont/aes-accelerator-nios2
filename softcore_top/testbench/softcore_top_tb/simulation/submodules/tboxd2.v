module tboxd2(input wire clk,
              input wire [7:0] a,
              output reg [31:0] q);

   always @(posedge clk)
     case (a)
	8'd0: q = 32'ha75051f4;
	8'd1: q = 32'h65537e41;
	8'd2: q = 32'ha4c31a17;
	8'd3: q = 32'h5e963a27;
	8'd4: q = 32'h6bcb3bab;
	8'd5: q = 32'h45f11f9d;
	8'd6: q = 32'h58abacfa;
	8'd7: q = 32'h3934be3;
	8'd8: q = 32'hfa552030;
	8'd9: q = 32'h6df6ad76;
	8'd10: q = 32'h769188cc;
	8'd11: q = 32'h4c25f502;
	8'd12: q = 32'hd7fc4fe5;
	8'd13: q = 32'hcbd7c52a;
	8'd14: q = 32'h44802635;
	8'd15: q = 32'ha38fb562;
	8'd16: q = 32'h5a49deb1;
	8'd17: q = 32'h1b6725ba;
	8'd18: q = 32'he9845ea;
	8'd19: q = 32'hc0e15dfe;
	8'd20: q = 32'h7502c32f;
	8'd21: q = 32'hf012814c;
	8'd22: q = 32'h97a38d46;
	8'd23: q = 32'hf9c66bd3;
	8'd24: q = 32'h5fe7038f;
	8'd25: q = 32'h9c951592;
	8'd26: q = 32'h7aebbf6d;
	8'd27: q = 32'h59da9552;
	8'd28: q = 32'h832dd4be;
	8'd29: q = 32'h21d35874;
	8'd30: q = 32'h692949e0;
	8'd31: q = 32'hc8448ec9;
	8'd32: q = 32'h896a75c2;
	8'd33: q = 32'h7978f48e;
	8'd34: q = 32'h3e6b9958;
	8'd35: q = 32'h71dd27b9;
	8'd36: q = 32'h4fb6bee1;
	8'd37: q = 32'had17f088;
	8'd38: q = 32'hac66c920;
	8'd39: q = 32'h3ab47dce;
	8'd40: q = 32'h4a1863df;
	8'd41: q = 32'h3182e51a;
	8'd42: q = 32'h33609751;
	8'd43: q = 32'h7f456253;
	8'd44: q = 32'h77e0b164;
	8'd45: q = 32'hae84bb6b;
	8'd46: q = 32'ha01cfe81;
	8'd47: q = 32'h2b94f908;
	8'd48: q = 32'h68587048;
	8'd49: q = 32'hfd198f45;
	8'd50: q = 32'h6c8794de;
	8'd51: q = 32'hf8b7527b;
	8'd52: q = 32'hd323ab73;
	8'd53: q = 32'h2e2724b;
	8'd54: q = 32'h8f57e31f;
	8'd55: q = 32'hab2a6655;
	8'd56: q = 32'h2807b2eb;
	8'd57: q = 32'hc2032fb5;
	8'd58: q = 32'h7b9a86c5;
	8'd59: q = 32'h8a5d337;
	8'd60: q = 32'h87f23028;
	8'd61: q = 32'ha5b223bf;
	8'd62: q = 32'h6aba0203;
	8'd63: q = 32'h825ced16;
	8'd64: q = 32'h1c2b8acf;
	8'd65: q = 32'hb492a779;
	8'd66: q = 32'hf2f0f307;
	8'd67: q = 32'he2a14e69;
	8'd68: q = 32'hf4cd65da;
	8'd69: q = 32'hbed50605;
	8'd70: q = 32'h621fd134;
	8'd71: q = 32'hfe8ac4a6;
	8'd72: q = 32'h539d342e;
	8'd73: q = 32'h55a0a2f3;
	8'd74: q = 32'he132058a;
	8'd75: q = 32'heb75a4f6;
	8'd76: q = 32'hec390b83;
	8'd77: q = 32'hefaa4060;
	8'd78: q = 32'h9f065e71;
	8'd79: q = 32'h1051bd6e;
	8'd80: q = 32'h8af93e21;
	8'd81: q = 32'h63d96dd;
	8'd82: q = 32'h5aedd3e;
	8'd83: q = 32'hbd464de6;
	8'd84: q = 32'h8db59154;
	8'd85: q = 32'h5d0571c4;
	8'd86: q = 32'hd46f0406;
	8'd87: q = 32'h15ff6050;
	8'd88: q = 32'hfb241998;
	8'd89: q = 32'he997d6bd;
	8'd90: q = 32'h43cc8940;
	8'd91: q = 32'h9e7767d9;
	8'd92: q = 32'h42bdb0e8;
	8'd93: q = 32'h8b880789;
	8'd94: q = 32'h5b38e719;
	8'd95: q = 32'heedb79c8;
	8'd96: q = 32'ha47a17c;
	8'd97: q = 32'hfe97c42;
	8'd98: q = 32'h1ec9f884;
	8'd99: q = 32'h0;
	8'd100: q = 32'h86830980;
	8'd101: q = 32'hed48322b;
	8'd102: q = 32'h70ac1e11;
	8'd103: q = 32'h724e6c5a;
	8'd104: q = 32'hfffbfd0e;
	8'd105: q = 32'h38560f85;
	8'd106: q = 32'hd51e3dae;
	8'd107: q = 32'h3927362d;
	8'd108: q = 32'hd9640a0f;
	8'd109: q = 32'ha621685c;
	8'd110: q = 32'h54d19b5b;
	8'd111: q = 32'h2e3a2436;
	8'd112: q = 32'h67b10c0a;
	8'd113: q = 32'he70f9357;
	8'd114: q = 32'h96d2b4ee;
	8'd115: q = 32'h919e1b9b;
	8'd116: q = 32'hc54f80c0;
	8'd117: q = 32'h20a261dc;
	8'd118: q = 32'h4b695a77;
	8'd119: q = 32'h1a161c12;
	8'd120: q = 32'hba0ae293;
	8'd121: q = 32'h2ae5c0a0;
	8'd122: q = 32'he0433c22;
	8'd123: q = 32'h171d121b;
	8'd124: q = 32'hd0b0e09;
	8'd125: q = 32'hc7adf28b;
	8'd126: q = 32'ha8b92db6;
	8'd127: q = 32'ha9c8141e;
	8'd128: q = 32'h198557f1;
	8'd129: q = 32'h74caf75;
	8'd130: q = 32'hddbbee99;
	8'd131: q = 32'h60fda37f;
	8'd132: q = 32'h269ff701;
	8'd133: q = 32'hf5bc5c72;
	8'd134: q = 32'h3bc54466;
	8'd135: q = 32'h7e345bfb;
	8'd136: q = 32'h29768b43;
	8'd137: q = 32'hc6dccb23;
	8'd138: q = 32'hfc68b6ed;
	8'd139: q = 32'hf163b8e4;
	8'd140: q = 32'hdccad731;
	8'd141: q = 32'h85104263;
	8'd142: q = 32'h22401397;
	8'd143: q = 32'h112084c6;
	8'd144: q = 32'h247d854a;
	8'd145: q = 32'h3df8d2bb;
	8'd146: q = 32'h3211aef9;
	8'd147: q = 32'ha16dc729;
	8'd148: q = 32'h2f4b1d9e;
	8'd149: q = 32'h30f3dcb2;
	8'd150: q = 32'h52ec0d86;
	8'd151: q = 32'he3d077c1;
	8'd152: q = 32'h166c2bb3;
	8'd153: q = 32'hb999a970;
	8'd154: q = 32'h48fa1194;
	8'd155: q = 32'h642247e9;
	8'd156: q = 32'h8cc4a8fc;
	8'd157: q = 32'h3f1aa0f0;
	8'd158: q = 32'h2cd8567d;
	8'd159: q = 32'h90ef2233;
	8'd160: q = 32'h4ec78749;
	8'd161: q = 32'hd1c1d938;
	8'd162: q = 32'ha2fe8cca;
	8'd163: q = 32'hb3698d4;
	8'd164: q = 32'h81cfa6f5;
	8'd165: q = 32'hde28a57a;
	8'd166: q = 32'h8e26dab7;
	8'd167: q = 32'hbfa43fad;
	8'd168: q = 32'h9de42c3a;
	8'd169: q = 32'h920d5078;
	8'd170: q = 32'hcc9b6a5f;
	8'd171: q = 32'h4662547e;
	8'd172: q = 32'h13c2f68d;
	8'd173: q = 32'hb8e890d8;
	8'd174: q = 32'hf75e2e39;
	8'd175: q = 32'haff582c3;
	8'd176: q = 32'h80be9f5d;
	8'd177: q = 32'h937c69d0;
	8'd178: q = 32'h2da96fd5;
	8'd179: q = 32'h12b3cf25;
	8'd180: q = 32'h993bc8ac;
	8'd181: q = 32'h7da71018;
	8'd182: q = 32'h636ee89c;
	8'd183: q = 32'hbb7bdb3b;
	8'd184: q = 32'h7809cd26;
	8'd185: q = 32'h18f46e59;
	8'd186: q = 32'hb701ec9a;
	8'd187: q = 32'h9aa8834f;
	8'd188: q = 32'h6e65e695;
	8'd189: q = 32'he67eaaff;
	8'd190: q = 32'hcf0821bc;
	8'd191: q = 32'he8e6ef15;
	8'd192: q = 32'h9bd9bae7;
	8'd193: q = 32'h36ce4a6f;
	8'd194: q = 32'h9d4ea9f;
	8'd195: q = 32'h7cd629b0;
	8'd196: q = 32'hb2af31a4;
	8'd197: q = 32'h23312a3f;
	8'd198: q = 32'h9430c6a5;
	8'd199: q = 32'h66c035a2;
	8'd200: q = 32'hbc37744e;
	8'd201: q = 32'hcaa6fc82;
	8'd202: q = 32'hd0b0e090;
	8'd203: q = 32'hd81533a7;
	8'd204: q = 32'h984af104;
	8'd205: q = 32'hdaf741ec;
	8'd206: q = 32'h500e7fcd;
	8'd207: q = 32'hf62f1791;
	8'd208: q = 32'hd68d764d;
	8'd209: q = 32'hb04d43ef;
	8'd210: q = 32'h4d54ccaa;
	8'd211: q = 32'h4dfe496;
	8'd212: q = 32'hb5e39ed1;
	8'd213: q = 32'h881b4c6a;
	8'd214: q = 32'h1fb8c12c;
	8'd215: q = 32'h517f4665;
	8'd216: q = 32'hea049d5e;
	8'd217: q = 32'h355d018c;
	8'd218: q = 32'h7473fa87;
	8'd219: q = 32'h412efb0b;
	8'd220: q = 32'h1d5ab367;
	8'd221: q = 32'hd25292db;
	8'd222: q = 32'h5633e910;
	8'd223: q = 32'h47136dd6;
	8'd224: q = 32'h618c9ad7;
	8'd225: q = 32'hc7a37a1;
	8'd226: q = 32'h148e59f8;
	8'd227: q = 32'h3c89eb13;
	8'd228: q = 32'h27eecea9;
	8'd229: q = 32'hc935b761;
	8'd230: q = 32'he5ede11c;
	8'd231: q = 32'hb13c7a47;
	8'd232: q = 32'hdf599cd2;
	8'd233: q = 32'h733f55f2;
	8'd234: q = 32'hce791814;
	8'd235: q = 32'h37bf73c7;
	8'd236: q = 32'hcdea53f7;
	8'd237: q = 32'haa5b5ffd;
	8'd238: q = 32'h6f14df3d;
	8'd239: q = 32'hdb867844;
	8'd240: q = 32'hf381caaf;
	8'd241: q = 32'hc43eb968;
	8'd242: q = 32'h342c3824;
	8'd243: q = 32'h405fc2a3;
	8'd244: q = 32'hc372161d;
	8'd245: q = 32'h250cbce2;
	8'd246: q = 32'h498b283c;
	8'd247: q = 32'h9541ff0d;
	8'd248: q = 32'h17139a8;
	8'd249: q = 32'hb3de080c;
	8'd250: q = 32'he49cd8b4;
	8'd251: q = 32'hc1906456;
	8'd252: q = 32'h84617bcb;
	8'd253: q = 32'hb670d532;
	8'd254: q = 32'h5c74486c;
	8'd255: q = 32'h5742d0b8;

     endcase // case (a)
endmodule

