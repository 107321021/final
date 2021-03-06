module  test(
input C,D, 
input CLK, //PIN_22
input [1:4]push,
input [1:4]line,
input start,
input reset,
output reg a,b,c,d,e,f,g, 
output reg [7:0]light,
output [7:0] OR, OG, OB,
output reg [0:2] s,
output EN,
output COM4); //control row


reg [7:0] BL [7:0];
reg [7:0] G [7:0];
reg [7:0] R [7:0];

 

initial

	begin

		s = 4'b0001;

		OR = 8'b11111111;

		OG = 8'b11111111;

		OB = 8'b11111111;
		
		light = 8'b11111111;

		BL[0] = 8'b11111111;

		BL[1] = 8'b11111111;

		BL[2] = 8'b11111111;

		BL[3] = 8'b11111111;

		BL[4] = 8'b11111111;

		BL[5] = 8'b11111111;

		BL[6] = 8'b11111111;

		BL[7] = 8'b11111111;

		

		G[0] = 8'b11111111;

		G[1] = 8'b11111111;

		G[2] = 8'b11111111;

		G[3] = 8'b11111111;

		G[4] = 8'b11111111;

		G[5] = 8'b11111111;

		G[6] = 8'b11111111;

		G[7] = 8'b11111111;

		

		R[0] = 8'b11111111;

		R[1] = 8'b11111111;

		R[2] = 8'b11111111;

		R[3] = 8'b11111111;

		R[4] = 8'b11111111;

		R[5] = 8'b11111111;

		R[6] = 8'b11111111;

		R[7] = 8'b11111111;

	end
 
 
always @(C,D)
case({C,D})

2'b00:
      begin
				{a,b,c,d,e,f,g}= 7'b0000001;
		end						
2'b01:
		begin
				{a,b,c,d,e,f,g}= 7'b1001111; 
		end
2'b10:
		begin
				{a,b,c,d,e,f,g}= 7'b0010010; 
		end				
2'b11:
		begin	
				{a,b,c,d,e,f,g}= 7'b0000110; 
		end

default: {a,b,c,d,e,f,g}= 7'b1111110;

endcase


parameter logic [7:0] stage1_R [7:0] = '{
8'b00111111,
8'b00111111,
8'b11111111,
8'b11111111,
8'b00110000,
8'b00110000,
8'b00000000,
8'b00000000};

parameter logic [7:0] stage1_G [7:0] = '{
8'b11110000,
8'b11110000,
8'b11001111,
8'b11001111,
8'b11111111,
8'b11111111,
8'b11111100,
8'b11111100};

parameter logic [7:0] stage1_B [7:0] = '{


8'b00110000,
8'b00110000,
8'b11001111,
8'b11001111,
8'b00110000,
8'b00110000,
8'b00000011,
8'b00000011};


divfreq F0(CLK, CLK_div);
divfreq F1(CLK, CLK_dis);
CLK_two F2(CLK, CLK_2);
 
always @(posedge CLK_div)
begin

case ({line})
  
	4'b1000:
	begin

		if(push[1]==1)
		begin
				BL[0]=8'b11111111;
				BL[4]=8'b11111111;
				G[0]=8'b11111100;
				G[4]=8'b11111100;
				R[0]=8'b11111111;
				R[4]=8'b11111111;				 
		end
		
		if(push[2]==1)
		begin
				BL[2]=8'b11111100;
				BL[6]=8'b11111100;
				G[2]=8'b11111100;
				G[6]=8'b11111100;
				R[2]=8'b11111100;
				R[6]=8'b11111100;				 
		end
		
		if(push[3]==1)
		begin
				BL[0]=8'b11111111;
				BL[1]=8'b11111111;
				BL[2]=8'b11111111;
				BL[3]=8'b11111111;
				BL[4]=8'b11111111;
				BL[5]=8'b11111111;
				BL[6]=8'b11111111;
				BL[7]=8'b11111111;
				G[0]=8'b11111111;
				G[1]=8'b11111111;
				G[2]=8'b11111111;
				G[3]=8'b11111111;
				G[4]=8'b11111111;
				G[5]=8'b11111111;
				G[6]=8'b11111111;
				G[7]=8'b11111111;
				R[0]=8'b01111110;
				R[1]=8'b11100111;
				R[2]=8'b11011011;
				R[3]=8'b10111101;
				R[4]=8'b10111101;
				R[5]=8'b11011011;
				R[6]=8'b11100111;
				R[7]=8'b01111110;
		end
		
		if(push[4]==1)
		begin
				 BL[0]=8'b11111111;
				BL[1]=8'b11111111;
				BL[2]=8'b11111111;
				BL[3]=8'b11111111;
				BL[4]=8'b11111111;
				BL[5]=8'b11111111;
				BL[6]=8'b11111111;
				BL[7]=8'b11111111;
				G[0]=8'b11111111;
				G[1]=8'b11111111;
				G[2]=8'b11111111;
				G[3]=8'b11111111;
				G[4]=8'b11111111;
				G[5]=8'b11111111;
				G[6]=8'b11111111;
				G[7]=8'b11111111;
				R[0]=8'b01111110;
				R[1]=8'b11100111;
				R[2]=8'b11011011;
				R[3]=8'b10111101;
				R[4]=8'b10111101;
				R[5]=8'b11011011;
				R[6]=8'b11100111;
				R[7]=8'b01111110;	
		end
		
	end
	
	4'b1100:
	begin

		if(push[1]==1)
		begin
				BL[0]=8'b11110011;
				BL[4]=8'b11110011;
				G[0]=8'b11101011;
				G[4]=8'b11101011;
				R[0]=8'b11110011;
				R[4]=8'b11110011;				 
		end
		
		if(push[2]==1)
		begin
				 BL[0]=8'b11111111;
				BL[1]=8'b11111111;
				BL[2]=8'b11111111;
				BL[3]=8'b11111111;
				BL[4]=8'b11111111;
				BL[5]=8'b11111111;
				BL[6]=8'b11111111;
				BL[7]=8'b11111111;
				G[0]=8'b11111111;
				G[1]=8'b11111111;
				G[2]=8'b11111111;
				G[3]=8'b11111111;
				G[4]=8'b11111111;
				G[5]=8'b11111111;
				G[6]=8'b11111111;
				G[7]=8'b11111111;
				R[0]=8'b01111110;
				R[1]=8'b11100111;
				R[2]=8'b11011011;
				R[3]=8'b10111101;
				R[4]=8'b10111101;
				R[5]=8'b11011011;
				R[6]=8'b11100111;
				R[7]=8'b01111110;
				
		end
		
		if(push[3]==1)
		begin
				BL[1]=8'b11110011;
				BL[5]=8'b11110011;
				G[1]=8'b11101011;
				G[5]=8'b11101011;
				R[1]=8'b11110011;
				R[5]=8'b11110011;				 
		end
		
		if(push[4]==1)
		begin
				BL[3]=8'b11110011;
				BL[7]=8'b11110011;
				G[3]=8'b11101011;
				G[7]=8'b11101011;
				R[3]=8'b11110011;
				R[7]=8'b11110011;	 
		end
		
	end
	
	4'b1110:
	begin

		if(push[1]==1)
		begin
				BL[0]=8'b11111111;
				BL[4]=8'b11111111;
				G[0]=8'b11010111;
				G[4]=8'b11010111;
				R[0]=8'b11111111;
				R[4]=8'b11111111;				 
		end
		
		if(push[2]==1)
		begin
				BL[2]=8'b11001111;
				BL[6]=8'b11001111;
				G[2]=8'b11010111;
				G[6]=8'b11010111;
				R[2]=8'b11001111;
				R[6]=8'b11001111;				 
		end
		
		if(push[3]==1)
		begin
				BL[1]=8'b11111111;
				BL[5]=8'b11111111;
				G[1]=8'b11010111;
				G[5]=8'b11010111;
				R[1]=8'b11111111;
				R[5]=8'b11111111;				 
		end
		
		if(push[4]==1)
		begin
				BL[3]=8'b11111111;
				BL[7]=8'b11111111;
				G[3]=8'b11010111;
				G[7]=8'b11010111;
				R[3]=8'b11111111;
				R[7]=8'b11111111;				 
		end
		
	end
	
	4'b1111:
	begin

		if(push[1]==1)
		begin
				BL[0]=8'b11111111;
				BL[4]=8'b11111111;
				G[0]=8'b00111111;
				G[4]=8'b00111111;
				R[0]=8'b11111111;
				R[4]=8'b11111111;				 
		end
		
		if(push[2]==1)
		begin
				BL[2]=8'b11111111;
				BL[6]=8'b11111111;
				G[2]=8'b00111111;
				G[6]=8'b00111111;
				R[2]=8'b11111111;
				R[6]=8'b11111111;				 
		end
		
		if(push[3]==1)
		begin
				BL[1]=8'b11111111;
				BL[5]=8'b11111111;
				G[1]=8'b00111111;
				G[5]=8'b00111111;
				R[1]=8'b11111111;
				R[5]=8'b11111111;				 
		end
		
		if(push[4]==1)
		begin
				BL[0]=8'b11000011;
				BL[1]=8'b01111110;
				BL[2]=8'b01111110;
				BL[3]=8'b10111101;
				BL[4]=8'b10111101;
				BL[5]=8'b01111110;
				BL[6]=8'b01111110;
				BL[7]=8'b11000011;
				G[0]=8'b11111111;
				G[1]=8'b11111111;
				G[2]=8'b11111111;
				G[3]=8'b11111111;
				G[4]=8'b11111111;
				G[5]=8'b11111111;
				G[6]=8'b11111111;
				G[7]=8'b11111111;
				R[0]=8'b11111111;
				R[1]=8'b11111111;
				R[2]=8'b11111111;
				R[3]=8'b11111111;
				R[4]=8'b11111111;
				R[5]=8'b11111111;
				R[6]=8'b11111111;
				R[7]=8'b11111111;
				
		end
		
	end
	      /*第二關*/
endcase

case ({reset})
	1'b1:
	begin
			BL[0]=8'b11111111;
			G[0]=8'b11111111;
			R[0]=8'b11111111;
			BL[1]=8'b11111111;
			G[1]=8'b11111111;
			R[1]=8'b11111111;
			BL[2]=8'b11111111;
			G[2]=8'b11111111;
			R[2]=8'b11111111;
			BL[3]=8'b11111111;
			G[3]=8'b11111111;
			R[3]=8'b11111111;
			BL[4]=8'b11111111;
			G[4]=8'b11111111;
			R[4]=8'b11111111;
			BL[5]=8'b11111111;
			G[5]=8'b11111111;
			R[5]=8'b11111111;
			BL[6]=8'b11111111;
			G[6]=8'b11111111;
			R[6]=8'b11111111;
			BL[7]=8'b11111111;
			G[7]=8'b11111111;
			R[7]=8'b11111111;
	end
endcase


end


always @(posedge CLK_dis)

	begin

		s = s + 1;

	end

assign EN = 1;
assign OR = R[s];
assign OG = G[s];
assign OB = BL[s];


always @(posedge CLK_2)
begin

if(start == 1) light <= {1'b0,light[7:1]};

end


endmodule






module divfreq(input CLK, output reg CLK_div);

reg [24:0] Count;

always @(posedge CLK)

begin

if(Count > 12500)

begin

Count <= 25'b0;

CLK_div <= ~CLK_div;

end

else

Count <= Count + 1'b1;

end

endmodule


module CLK_two(input CLK, output reg CLK_2);
reg [24:0] Count;
always @(posedge CLK)
begin
if(Count >= 25000000)
begin
Count <= 25'b0;
CLK_2<= ~CLK_2;
end
else Count <= Count + 1'b1;
end
endmodule

