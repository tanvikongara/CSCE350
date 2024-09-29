        .globl lab04b    


lab04b:
    
        CMP X0, 0              // Compare X0 with 0
        B.EQ base_case         // If X0 == 0, branch to base_case

        
        STP X30, X19, [SP, -16]!   // Push X30 (link register) and X19 onto the stack
        SUB X0, X0, 1          // Decrement n (X0) by 1 for the recursive call
        MOV X19, X0            // Store n - 1 in X19 
        BL lab04b              // Call factorial(n - 1)
        
    
        MOV X1, X19            // Move n into X1 for multiplication
        BL my_mul              // Call my_mul with X0 * X1, result in X0

        LDP X30, X19, [SP], 16 // Restore X30 and X19, adjust the stack pointer
        RET                    // Return from the function

base_case:
        MOV X0, 1              // Set X0 = 1 as the base case result
        RET                    // Return from the function

