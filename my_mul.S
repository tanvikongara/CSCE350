        .globl my_mul

my_mul:
        // Multiply X0 and X1
        // Does not handle negative X1!
        // Note: This is an inefficient way to multiply!
        SUB SP, SP, 16          // make room for X19 on the stack
        STUR X19, [SP, 0]       // push X19 onto the stack
        ADD X19, X1, XZR        // set X19 equal to X1
        ADD X9, XZR, XZR        // set X9 to 0

mult_loop:
        CBZ X19, mult_eol       // if X19 is zero, exit loop
        ADD X9, X9, X0          // add X0 to X9
        SUB X19, X19, 1         // decrement X19
        B mult_loop             // repeat loop

mult_eol:
        LDUR X19, [SP, 0]       // restore X19 from the stack  
        ADD X0, X9, XZR         // move X9 to X0 to return
	ADD SP, SP, 16          // restore SP
        BR X30                  // return

