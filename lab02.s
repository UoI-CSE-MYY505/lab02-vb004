
.data

array: .word 1, 0, 1, 12, 0, 1, 4

.text

    la a0, array
    li a1, 7    # unsigned
    li a2, 1
prog:
#-----------------------------
# Write your code here!
    add s0, zero, zero
    add s1, zero, zero
loop:
    beq a1 ,s1,done
    lw t1 , 0(a0)
    addi s1 , s1 , 1
    beq a2 ,t1,found
    addi a0,a0,4
    j loop
    
found:
    add s0 ,zero ,a0
    addi a0,a0,4
    j loop  
            
# Do not remove the prog label or write code above it!
#-----------------------------
done:
    addi a7, zero, 10 
    ecall
