        .data
msg:   .asciiz "Hello ... Pls enter your name"
buffer: .space 20
msg2:  .asciiz "name: "
	
        .text
        .globl main
main:   la $a0, msg     # argument: string
	li $v0, 4       # syscall 4 (print_str)
        syscall         # print the string
	
	li $v0,5 
	la $a0, buffer	
	li $a1, 20
	move $t0, $a0
	syscall

	la $a0,msg2 
	li $v0,4
	syscall       
       
	la $a0, buffer
	move $a0, $t0
	li $v0, 4
	syscall 

	li $v0, 10 
	syscall

	jr $ra          # retrun to caller
