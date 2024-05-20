module fsm_1101 (
    input clk,
    input reset,
    input din,
    output reg dout
);

reg [1:0] next_state, current_state;
parameter [1:0] S0= 2'b00,
                S1= 2'b01,
                S2= 2'b10,
                S3= 2'b11;

    always @(posedge clk or posedge reset) begin
        if (reset)
            current_state <= S0;
        else
            current_state <= next_state;
    end

    // Next state logic and output logic
    always @(din,current_state) begin
         
        case (current_state)
            S0: begin
                if (din) 
                begin
                    next_state = S1;
                    dout=0;
                end
            end
            S1: begin
                if (din)
                begin
                    next_state = S2;
                    dout=0;
                end
                else
                begin
                    next_state = S0;
                    dout=0;
                end 
            end
            S2: begin
                if (din)
                begin
                    next_state = S2;  // Remain in S2 if 1 continues
                    dout=0;
                end 
                else
                begin
                    next_state = S3;
                    dout=0;
                end 
            end
            S3: begin
                if (din)
                begin
                    dout=1;
                    next_state = S1;  
                end                          
                else
                begin
                    next_state = S0;
                    dout=0;
                end   
            end
            
        endcase
    end

endmodule

