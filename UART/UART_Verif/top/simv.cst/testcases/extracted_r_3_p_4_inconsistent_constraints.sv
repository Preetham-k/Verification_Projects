class c_3_4;
    bit[25:0] clk_freq = 26'hf4240;

    constraint freq_this    // (constraint_mode = ON) (./../seq/uart_tr.sv:27)
    {
       ((clk_freq[25]) == ((clk_freq[25]) + 5));
    }
endclass

program p_3_4;
    c_3_4 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10010zz11xx101x000x1xzxx110zzzzxzzxzzzzzzxxzxzzxxzzxzxxzzzzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram