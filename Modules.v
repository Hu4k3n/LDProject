module Mux2x1(out,in1,in2,s) ;

output reg out ;
input in1,in2,s ;

always@(in1,in2,s)
begin 
	if(s == 0) 
		out = in1 ;
	else if(s == 1) 
		out = in2 ;
	else 
		out = 1'bx ;
end

endmodule 

module Or(out,a,b) ;

output out ;
input a,b ;

or(out,a,b) ;

endmodule 

module PEncoder(out,in1,in2,in3,in4) ;

output reg [1:0] out ;
input in1 ,in2 ,in3 ,in4 ;

always @(in1,in2,in3,in4)
begin
	if (in1== 1)
		out = 0 ;
	else if(in2 == 1) 
		out = 1 ;
	else if(in3 == 1)
		out = 2 ;
	else if(in4 == 1)
		out = 3 ;
	else 
		out = 2'bxx ;
end

endmodule

module Decoder(o1,o2,o3,o4,in) ;

output reg o1,o2,o3,o4 ;
input [1:0] in ;

always @(in)
begin
	if(in == 0)
	begin 
		o1 = 1 ;
		o2 = 0 ;
		o3 = 0 ;
		o4 = 0 ;
	end 
	if(in == 1)
	begin 
		o1 = 0 ;
		o2 = 1 ;
		o3 = 0 ;
		o4 = 0 ;
	end 
	if(in == 2)
	begin 
		o1 = 0 ;
		o2 = 0 ;
		o3 = 1 ;
		o4 = 0 ;
	end 
	if(in == 3)
	begin 
		o1 = 0 ;
		o2 = 0 ;
		o3 = 0 ;
		o4 = 1 ;
	end 
end

endmodule

module TimerIC(mode,BoardSelect) ;

output reg [1:0] mode,BoardSelect ;

initial 
begin
	mode = 0 ;
	BoardSelect = 0 ;
end

endmodule

module LightBoard(enable,mode,mode_out) ;

output reg [1:0] mode_out ;
input enable ;
input [1:0] mode ;

endmodule