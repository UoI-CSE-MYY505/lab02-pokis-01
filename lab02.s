
.data

array: .word 1, 0, 1, 12, 0, 1, 4

.text

    la a0, array
    li a1, 7    # unsigned
    li a2, 3   
prog:
#-----------------------------
    add s0, zero,zero
loop: 
    beq a1,zero,done
    lw t1,0(a0)
    bne a0,t1,if
    add s0, zero,a0
if:
    addi a1,a1,-1
    addi a0,a0,4
    j loop
#-----------------------------
done:
    addi a7, zero, 10 
    ecall
