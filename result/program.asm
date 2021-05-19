.data
a: .space 16
j main
demo:
sw $ra 4($sp)
lw $s7 8($sp)
addi $s6 $zero 2
add $s7 $s7 $s6
addi $s6 $zero 2
mul $s5 $s7 $s6
add $v0 $zero $s5
lw $ra 4($sp)
jr $ra
main:
addi $s7 $zero 3
lw $s7 a+0
addi $s6 $zero 1
mul $s5 $s6 $s6
addi $s6 $zero 1
add $s4 $s7 $s6
lw $s6 0($sp)
lw $s4 a($s6)
addi $s3 $zero 1
addi $s2 $zero 2
mul $s1 $s3 $s2
addi $s2 $zero 1
addi $s3 $zero 2
mul $s0 $s2 $s3
lw $s2 0($sp)
lw $s3 a($s2)
add $s7 $s7 $s3
lw $s3 0($sp)
lw $s7 a($s3)
addi $s0 $zero 1
mul $s1 $s0 $s0
addi $s0 $zero 1
addi $s2 $zero 2
mul $s3 $s0 $s2
add $s1 $s1 $s3
addi $s3 $zero 1
mul $s1 $s3 $s3
addi $s3 $zero 1
addi $s2 $zero 2
mul $s0 $s3 $s2
sw  8($sp)
lw $s3 0($sp)
lw $s2 a($s3)
sw $s2 20($sp)
sw $sp 12($sp)
addi $sp $sp 12
jal demo
lw $sp 0($sp)
Label6:
lw $s7 a+0
sw $s7 20($sp)
lw $s6 0($sp)
lw $s7 a($s6)
sw $s7 24($sp)
sw $v0 28($sp)
sw $sp 12($sp)
addi $sp $sp 12
jal program
lw $sp 0($sp)
Label7:
lw $s7 0($sp)
lw $v0 a($s7)
j end
program:
sw $ra 4($sp)
addi $s7 $zero 0
lw $s6 12($sp)
lw $s5 16($sp)
add $s4 $s6 $s5
sw $s7 20($sp)
lw $s3 8($sp)
ble $s3 $s4 Label2
Label1:
lw $s7 12($sp)
lw $s6 16($sp)
mul $s7 $s7 $s6
addi $s6 $zero 1
add $s7 $s7 $s6
lw $s6 8($sp)
add $s6 $s6 $s7
sw $s6 24($sp)
j Label3
Label2:
lw $s7 8($sp)
sw $s7 24($sp)
Label3:
lw $s7 20($sp)
addi $s6 $zero 100
bgt $s7 $s6 Label5
Label4:
lw $s7 24($sp)
addi $s6 $zero 2
mul $s7 $s7 $s6
sw $s7 20($sp)
sw $s7 24($sp)
j Label3
Label5:
lw $v0 20($sp)
lw $ra 4($sp)
jr $ra
end:
