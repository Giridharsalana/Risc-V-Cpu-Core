// File: alu_control.v
// Generated by MyHDL 0.11
// Date: Mon Dec 28 14:44:59 2020


`timescale 1ns/10ps

module alu_control (
    reset,
    instruction,
    alu_op,
    alu_decode
);


input reset;
input [31:0] instruction;
input [3:0] alu_op;
output [3:0] alu_decode;
reg [3:0] alu_decode;




always @(alu_op, instruction, reset) begin: ALU_CONTROL_ALUCONT
    if ((reset == 1)) begin
        case (alu_op)
            'h2: begin
                if ((instruction[32-1:25] == 0)) begin
                    if ((instruction[15-1:12] == 0)) begin
                        alu_decode = 2;
                    end
                    else if ((instruction[15-1:12] == 1)) begin
                        alu_decode = 3;
                    end
                    else if ((instruction[15-1:12] == 2)) begin
                        alu_decode = 4;
                    end
                    else if ((instruction[15-1:12] == 3)) begin
                        alu_decode = 5;
                    end
                    else if ((instruction[15-1:12] == 4)) begin
                        alu_decode = 7;
                    end
                    else if ((instruction[15-1:12] == 5)) begin
                        alu_decode = 8;
                    end
                    else if ((instruction[15-1:12] == 6)) begin
                        alu_decode = 1;
                    end
                    else if ((instruction[15-1:12] == 7)) begin
                        alu_decode = 0;
                    end
                end
                else if ((instruction[32-1:25] == 32)) begin
                    if ((instruction[15-1:12] == 0)) begin
                        alu_decode = 6;
                    end
                    else if ((instruction[15-1:12] == 5)) begin
                        alu_decode = 9;
                    end
                end
            end
            'h0: begin
                alu_decode = 2;
            end
            'h7: begin
                if ((instruction[15-1:12] == 0)) begin
                    alu_decode = 7;
                end
            end
        endcase
    end
end

endmodule
