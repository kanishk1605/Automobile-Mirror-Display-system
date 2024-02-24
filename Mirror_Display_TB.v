`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.02.2024 18:38:20
// Design Name: 
// Module Name: Mirror_Display_TB
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Mirror_Display_TB(

    );
    // reg for input and wire for output
    reg [7:0] Temperature;
    reg [7:0] Average_mpg;
    reg [7:0] Instantaneous_mpg;
    reg [7:0] Miles_remaining;
    reg [1:0] SS;
    wire [7:0] Display;
    
    // Instantiating source file created
    Mirror_Diplay u0( Temperature, Average_mpg, Instantaneous_mpg, Miles_remaining, SS, Display);
    
    // Checking simulation for couple of combinations to verify the output
    initial begin
     Temperature = 8'b0;
     Average_mpg = 8'b10011000;
     Instantaneous_mpg = 8'b00010010;
     Miles_remaining = 8'b11110000;
     SS = 2'b00;
     #100; // 100 ns delay
      
             Average_mpg = 8'b10011000;
             Instantaneous_mpg = 8'b10010010;
             Miles_remaining = 8'b00001111;
             SS = 2'b11;
         #1000;
     end
     
    
    
endmodule
