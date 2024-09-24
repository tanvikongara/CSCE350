        .SECTION .BSS
UIN:    .SPACE 4

        .SECTION .TEXT
        .GLOBAL MAIN

MAIN:
        MOV     W1, #45    // initialize UIN with the sum  
        STR     W1, UIN    // puts the value into UIN

        MOV     W2, #0     // loop counter variable

LOOP:
        LDR     W0, UIN          
        SUB     W0, W0, #1  // UIN = UIN - 1 
        STR     W0, UIN       //puts the value into UIN

        ADD     W2, W2, #1   // increments the loop counter variable
        CMP     W2, #10      // compares i with 10
        BLT     LOOP          // if i < 10, it loops again

        MOV     X0, #0      // return code 0
        RET                  // returns the code from main

