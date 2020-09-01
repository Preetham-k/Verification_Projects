class c_51_4;
    bit[25:0] clk_freq = 26'hf4240;

    constraint freq_this    // (constraint_mode = ON) (./../seq/uart_tr.sv:27)
    {
       ((clk_freq[25]) == ((clk_freq[25]) + 5));
    }
endclass

program p_51_4;
    c_51_4 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011xxx0zzzz0xz0110zx1xzxzx10x0x0zxxzzxxxxzzxzxzzzzzxxxzzzzxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
