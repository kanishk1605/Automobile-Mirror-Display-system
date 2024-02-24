`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.02.2024 18:29:42
// Design Name: 
// Module Name: Mirror_Diplay
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


module Mirror_Diplay(
    input wire [7:0] Temperature, // All 4 sensors as Input
    input wire [7:0] Average_mpg,
    input wire [7:0] Instantaneous_mpg,
    input wire [7:0] Miles_remaining,
    input wire [1:0] SS,       // Selector Switches x,y as per block diagram
    output reg [7:0] Display // Output mirror display
    );
    
    always@(*)
    case(SS)
    0:Display = Temperature;
    1:Display = Average_mpg;
    2:Display = Instantaneous_mpg;
    3:Display = Miles_remaining;
    endcase
    
    
    
endmodule
