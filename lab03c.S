        .SECTION .DATA
MY_ARRAY: .SPACE 40          // initializing the array
        .SECTION .TEXT
        .GLOBAL MAIN

MAIN:
        MOV     W0, #1          // first digit of UIN
        MOV     W1, #0         // loop counter variable

LOOP:
        STR     W0, [MY_ARRAY, W1, LSL #2] // j is stored in arrau

        ADD     W0, W0, #1      // incrementing j variable
        ADD     W1, W1, #1      // incrementing i variable
        CMP     W1, #10         
        BLT     LOOP            // if i < 10, it loops again

        
        MOV     X0, #0          // return code 0
        RET                     // return from main

