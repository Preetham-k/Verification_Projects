class c_151_1;
    rand bit[25:0] clk_freq; // rand_mode = ON 

    constraint freq_this    // (constraint_mode = ON) (./../seq/uart_tr.sv:27)
    {
       ((clk_freq[25]) == ((clk_freq[25]) + 5));
    }
endclass

program p_151_1;
    c_151_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0xxx01zz1xx0xxx1z0xx1z010z00z1zzzzxzxxzxxxzxxxxzxxzzzxxxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
