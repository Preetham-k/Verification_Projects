class c_118_1;
    rand bit[25:0] clk_freq; // rand_mode = ON 

    constraint freq_this    // (constraint_mode = ON) (./../seq/uart_tr.sv:27)
    {
       ((clk_freq[25]) == ((clk_freq[25]) + 5));
    }
endclass

program p_118_1;
    c_118_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z10zzz10x00zz10zz11xz0zz010x111zxzzxxxzxzzzxzxxzzzxzxxzzxxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
