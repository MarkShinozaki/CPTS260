    .data

msg: .asciiz "Hello World"

    .text
    .globl main

main: li $v0, 4   # syscall 4 for print string
    la $a0, msg    # load argument for the syscall
    syscall

    li $s0, 4  # load 4 into register s0
    li $s1, 1  # Load 1 into register s1
    add $s2, $s0, $s1

    li $v0, 10 # syscall for exiting the program
    syscall