class c_104_4;
    bit[25:0] clk_freq = 26'hf4240;

    constraint freq_this    // (constraint_mode = ON) (./../seq/uart_tr.sv:27)
    {
       ((clk_freq[25]) == ((clk_freq[25]) + 5));
    }
endclass

program p_104_4;
    c_104_4 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z00zz11xz11x1zz1zxxzxz0111z0xzzzzxzxxxxzxxzzzxzxzzxxxxzzxzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram