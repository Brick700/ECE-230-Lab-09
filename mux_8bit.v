module mux_8bit (
    input [7:0] A, B, C, D,
    input [1:0] Select,
    output [7:0] Out 
);

    assign Out = (Select == 2'b00 ? A : 
                  Select == 2'b01 ? B : 
                  Select == 2'b10 ? C : D); 

endmodule