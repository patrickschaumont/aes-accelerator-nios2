module tboxe4(input wire clk,
              input wire [7:0] a,
              output reg [7:0] q);

   always @(posedge clk)
     case (a)
	8'd0: q = 8'h63;
	8'd1: q = 8'h7c;
	8'd2: q = 8'h77;
	8'd3: q = 8'h7b;
	8'd4: q = 8'hf2;
	8'd5: q = 8'h6b;
	8'd6: q = 8'h6f;
	8'd7: q = 8'hc5;
	8'd8: q = 8'h30;
	8'd9: q = 8'h1;
	8'd10: q = 8'h67;
	8'd11: q = 8'h2b;
	8'd12: q = 8'hfe;
	8'd13: q = 8'hd7;
	8'd14: q = 8'hab;
	8'd15: q = 8'h76;
	8'd16: q = 8'hca;
	8'd17: q = 8'h82;
	8'd18: q = 8'hc9;
	8'd19: q = 8'h7d;
	8'd20: q = 8'hfa;
	8'd21: q = 8'h59;
	8'd22: q = 8'h47;
	8'd23: q = 8'hf0;
	8'd24: q = 8'had;
	8'd25: q = 8'hd4;
	8'd26: q = 8'ha2;
	8'd27: q = 8'haf;
	8'd28: q = 8'h9c;
	8'd29: q = 8'ha4;
	8'd30: q = 8'h72;
	8'd31: q = 8'hc0;
	8'd32: q = 8'hb7;
	8'd33: q = 8'hfd;
	8'd34: q = 8'h93;
	8'd35: q = 8'h26;
	8'd36: q = 8'h36;
	8'd37: q = 8'h3f;
	8'd38: q = 8'hf7;
	8'd39: q = 8'hcc;
	8'd40: q = 8'h34;
	8'd41: q = 8'ha5;
	8'd42: q = 8'he5;
	8'd43: q = 8'hf1;
	8'd44: q = 8'h71;
	8'd45: q = 8'hd8;
	8'd46: q = 8'h31;
	8'd47: q = 8'h15;
	8'd48: q = 8'h4;
	8'd49: q = 8'hc7;
	8'd50: q = 8'h23;
	8'd51: q = 8'hc3;
	8'd52: q = 8'h18;
	8'd53: q = 8'h96;
	8'd54: q = 8'h5;
	8'd55: q = 8'h9a;
	8'd56: q = 8'h7;
	8'd57: q = 8'h12;
	8'd58: q = 8'h80;
	8'd59: q = 8'he2;
	8'd60: q = 8'heb;
	8'd61: q = 8'h27;
	8'd62: q = 8'hb2;
	8'd63: q = 8'h75;
	8'd64: q = 8'h9;
	8'd65: q = 8'h83;
	8'd66: q = 8'h2c;
	8'd67: q = 8'h1a;
	8'd68: q = 8'h1b;
	8'd69: q = 8'h6e;
	8'd70: q = 8'h5a;
	8'd71: q = 8'ha0;
	8'd72: q = 8'h52;
	8'd73: q = 8'h3b;
	8'd74: q = 8'hd6;
	8'd75: q = 8'hb3;
	8'd76: q = 8'h29;
	8'd77: q = 8'he3;
	8'd78: q = 8'h2f;
	8'd79: q = 8'h84;
	8'd80: q = 8'h53;
	8'd81: q = 8'hd1;
	8'd82: q = 8'h0;
	8'd83: q = 8'hed;
	8'd84: q = 8'h20;
	8'd85: q = 8'hfc;
	8'd86: q = 8'hb1;
	8'd87: q = 8'h5b;
	8'd88: q = 8'h6a;
	8'd89: q = 8'hcb;
	8'd90: q = 8'hbe;
	8'd91: q = 8'h39;
	8'd92: q = 8'h4a;
	8'd93: q = 8'h4c;
	8'd94: q = 8'h58;
	8'd95: q = 8'hcf;
	8'd96: q = 8'hd0;
	8'd97: q = 8'hef;
	8'd98: q = 8'haa;
	8'd99: q = 8'hfb;
	8'd100: q = 8'h43;
	8'd101: q = 8'h4d;
	8'd102: q = 8'h33;
	8'd103: q = 8'h85;
	8'd104: q = 8'h45;
	8'd105: q = 8'hf9;
	8'd106: q = 8'h2;
	8'd107: q = 8'h7f;
	8'd108: q = 8'h50;
	8'd109: q = 8'h3c;
	8'd110: q = 8'h9f;
	8'd111: q = 8'ha8;
	8'd112: q = 8'h51;
	8'd113: q = 8'ha3;
	8'd114: q = 8'h40;
	8'd115: q = 8'h8f;
	8'd116: q = 8'h92;
	8'd117: q = 8'h9d;
	8'd118: q = 8'h38;
	8'd119: q = 8'hf5;
	8'd120: q = 8'hbc;
	8'd121: q = 8'hb6;
	8'd122: q = 8'hda;
	8'd123: q = 8'h21;
	8'd124: q = 8'h10;
	8'd125: q = 8'hff;
	8'd126: q = 8'hf3;
	8'd127: q = 8'hd2;
	8'd128: q = 8'hcd;
	8'd129: q = 8'hc;
	8'd130: q = 8'h13;
	8'd131: q = 8'hec;
	8'd132: q = 8'h5f;
	8'd133: q = 8'h97;
	8'd134: q = 8'h44;
	8'd135: q = 8'h17;
	8'd136: q = 8'hc4;
	8'd137: q = 8'ha7;
	8'd138: q = 8'h7e;
	8'd139: q = 8'h3d;
	8'd140: q = 8'h64;
	8'd141: q = 8'h5d;
	8'd142: q = 8'h19;
	8'd143: q = 8'h73;
	8'd144: q = 8'h60;
	8'd145: q = 8'h81;
	8'd146: q = 8'h4f;
	8'd147: q = 8'hdc;
	8'd148: q = 8'h22;
	8'd149: q = 8'h2a;
	8'd150: q = 8'h90;
	8'd151: q = 8'h88;
	8'd152: q = 8'h46;
	8'd153: q = 8'hee;
	8'd154: q = 8'hb8;
	8'd155: q = 8'h14;
	8'd156: q = 8'hde;
	8'd157: q = 8'h5e;
	8'd158: q = 8'hb;
	8'd159: q = 8'hdb;
	8'd160: q = 8'he0;
	8'd161: q = 8'h32;
	8'd162: q = 8'h3a;
	8'd163: q = 8'ha;
	8'd164: q = 8'h49;
	8'd165: q = 8'h6;
	8'd166: q = 8'h24;
	8'd167: q = 8'h5c;
	8'd168: q = 8'hc2;
	8'd169: q = 8'hd3;
	8'd170: q = 8'hac;
	8'd171: q = 8'h62;
	8'd172: q = 8'h91;
	8'd173: q = 8'h95;
	8'd174: q = 8'he4;
	8'd175: q = 8'h79;
	8'd176: q = 8'he7;
	8'd177: q = 8'hc8;
	8'd178: q = 8'h37;
	8'd179: q = 8'h6d;
	8'd180: q = 8'h8d;
	8'd181: q = 8'hd5;
	8'd182: q = 8'h4e;
	8'd183: q = 8'ha9;
	8'd184: q = 8'h6c;
	8'd185: q = 8'h56;
	8'd186: q = 8'hf4;
	8'd187: q = 8'hea;
	8'd188: q = 8'h65;
	8'd189: q = 8'h7a;
	8'd190: q = 8'hae;
	8'd191: q = 8'h8;
	8'd192: q = 8'hba;
	8'd193: q = 8'h78;
	8'd194: q = 8'h25;
	8'd195: q = 8'h2e;
	8'd196: q = 8'h1c;
	8'd197: q = 8'ha6;
	8'd198: q = 8'hb4;
	8'd199: q = 8'hc6;
	8'd200: q = 8'he8;
	8'd201: q = 8'hdd;
	8'd202: q = 8'h74;
	8'd203: q = 8'h1f;
	8'd204: q = 8'h4b;
	8'd205: q = 8'hbd;
	8'd206: q = 8'h8b;
	8'd207: q = 8'h8a;
	8'd208: q = 8'h70;
	8'd209: q = 8'h3e;
	8'd210: q = 8'hb5;
	8'd211: q = 8'h66;
	8'd212: q = 8'h48;
	8'd213: q = 8'h3;
	8'd214: q = 8'hf6;
	8'd215: q = 8'he;
	8'd216: q = 8'h61;
	8'd217: q = 8'h35;
	8'd218: q = 8'h57;
	8'd219: q = 8'hb9;
	8'd220: q = 8'h86;
	8'd221: q = 8'hc1;
	8'd222: q = 8'h1d;
	8'd223: q = 8'h9e;
	8'd224: q = 8'he1;
	8'd225: q = 8'hf8;
	8'd226: q = 8'h98;
	8'd227: q = 8'h11;
	8'd228: q = 8'h69;
	8'd229: q = 8'hd9;
	8'd230: q = 8'h8e;
	8'd231: q = 8'h94;
	8'd232: q = 8'h9b;
	8'd233: q = 8'h1e;
	8'd234: q = 8'h87;
	8'd235: q = 8'he9;
	8'd236: q = 8'hce;
	8'd237: q = 8'h55;
	8'd238: q = 8'h28;
	8'd239: q = 8'hdf;
	8'd240: q = 8'h8c;
	8'd241: q = 8'ha1;
	8'd242: q = 8'h89;
	8'd243: q = 8'hd;
	8'd244: q = 8'hbf;
	8'd245: q = 8'he6;
	8'd246: q = 8'h42;
	8'd247: q = 8'h68;
	8'd248: q = 8'h41;
	8'd249: q = 8'h99;
	8'd250: q = 8'h2d;
	8'd251: q = 8'hf;
	8'd252: q = 8'hb0;
	8'd253: q = 8'h54;
	8'd254: q = 8'hbb;
	8'd255: q = 8'h16;

     endcase // case (a)
endmodule

