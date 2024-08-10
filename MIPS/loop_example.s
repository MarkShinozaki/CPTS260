    .data

    .text

    .globl main

main: li $t0, 10   #iteration = 10
    li $t1, 0       # variable i = 0
    li $t2, 17      # initial value of val = 17

loop: beq $t1, $t0, end
    add $t2, $t1, $t2   # val = i + val
    addi $t1, $t1, 1
    j loop



end: li $v0, 10
    syscall