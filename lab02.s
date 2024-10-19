
.data

array: .word 1, 0, 1, 12, 0, 1, 1

.text

    la a0, array
    li a1, 7    # unsigned
    li a2, 1
prog:
#-----------------------------
# Write your code here!
    add s0, zero, zero
    add t2, zero, zero
loop:
    beq a1 ,t2,done
    addi t2 , t2 , 1
    lw t1 , 0(a0)
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
