
.text
.globl main
main:
    # matriz
    addi $t0, $zero, 1    # [0][0]
    addi $t1, $zero, 2    # [0][1]
    addi $t2, $zero, 3    # [0][2]
    addi $t3, $zero, 4    # [0][3]
    addi $t4, $zero, 5    # [1][0]
    addi $t5, $zero, 6    # [1][1]
    addi $t6, $zero, 7    # [1][2]
    addi $t7, $zero, 8    # [1][3]
    addi $t8, $zero, 9    # [2][0]
    addi $t9, $zero, 1    # [2][1]
    addi $s0, $zero, 2    # [2][2]
    addi $s1, $zero, 3    # [2][3]
    addi $s2, $zero, 4    # [3][0]
    addi $s3, $zero, 5    # [3][1]
    addi $s4, $zero, 6    # [3][2]
    addi $s5, $zero, 7    # [3][3]
    
    
    #esta misma logica se usa para las columnas, solo se cambian los valores

    # — Fila 1 —
    add  $s6, $t0, $zero      # max fila 1
    slt  $a0, $s6, $t1
    beq  $a0, $zero, f1a
      add $s6, $t1, $zero
f1a:
    slt  $a0, $s6, $t2
    beq  $a0, $zero, f1b
      add $s6, $t2, $zero
f1b:
    slt  $a0, $s6, $t3
    beq  $a0, $zero, f1c
      add $s6, $t3, $zero
f1c:

    add  $s7, $t0, $zero      # min fila 1
    slt  $a0, $t1, $s7
    beq  $a0, $zero, f1d
      add $s7, $t1, $zero
f1d:
    slt  $a0, $t2, $s7
    beq  $a0, $zero, f1e
      add $s7, $t2, $zero
f1e:
    slt  $a0, $t3, $s7
    beq  $a0, $zero, f1f
      add $s7, $t3, $zero
f1f:

    # — Fila 2 —
    add  $a1, $t4, $zero
    slt  $a2, $a1, $t5
    beq  $a2, $zero, f2a
      add $a1, $t5, $zero
f2a:
    slt  $a2, $a1, $t6
    beq  $a2, $zero, f2b
      add $a1, $t6, $zero
f2b:
    slt  $a2, $a1, $t7
    beq  $a2, $zero, f2c
      add $a1, $t7, $zero
f2c:

    add  $a3, $t4, $zero
    slt  $v0, $t5, $a3
    beq  $v0, $zero, f2d
      add $a3, $t5, $zero
f2d:
    slt  $v0, $t6, $a3
    beq  $v0, $zero, f2e
      add $a3, $t6, $zero
f2e:
    slt  $v0, $t7, $a3
    beq  $v0, $zero, f2f
      add $a3, $t7, $zero
f2f:

    # — Fila 3 —
    add  $v1, $t8, $zero
    slt  $k0, $v1, $t9
    beq  $k0, $zero, f3a
      add $v1, $t9, $zero
f3a:
    slt  $k0, $v1, $s0
    beq  $k0, $zero, f3b
      add $v1, $s0, $zero
f3b:
    slt  $k0, $v1, $s1
    beq  $k0, $zero, f3c
      add $v1, $s1, $zero
f3c:

    add  $k1, $t8, $zero
    slt  $a0, $t9, $k1
    beq  $a0, $zero, f3d
      add $k1, $t9, $zero
f3d:
    slt  $a0, $s0, $k1
    beq  $a0, $zero, f3e
      add $k1, $s0, $zero
f3e:
    slt  $a0, $s1, $k1
    beq  $a0, $zero, f3f
      add $k1, $s1, $zero
f3f:

    # — Fila 4 —
    add  $s6, $s2, $zero
    slt  $a1, $s6, $s3
    beq  $a1, $zero, f4a
      add $s6, $s3, $zero
f4a:
    slt  $a1, $s6, $s4
    beq  $a1, $zero, f4b
      add $s6, $s4, $zero
f4b:
    slt  $a1, $s6, $s5
    beq  $a1, $zero, f4c
      add $s6, $s5, $zero
f4c:

    add  $s7, $s2, $zero
    slt  $a2, $s3, $s7
    beq  $a2, $zero, f4d
      add $s7, $s3, $zero
f4d:
    slt  $a2, $s4, $s7
    beq  $a2, $zero, f4e
      add $s7, $s4, $zero
f4e:
    slt  $a2, $s5, $s7
    beq  $a2, $zero, f4f
      add $s7, $s5, $zero
f4f:

    li $v0, 10
    syscall

##ejemplo de adaptacion para las columnas
    # Columna 0: $t0, $t4, $t8, $s2

    add $s6, $t0, $zero       # max col 0
    slt $a0, $s6, $t4
    beq $a0, $zero, c0a
      add $s6, $t4, $zero
c0a:
    slt $a0, $s6, $t8
    beq $a0, $zero, c0b
      add $s6, $t8, $zero
c0b:
    slt $a0, $s6, $s2
    beq $a0, $zero, c0c
      add $s6, $s2, $zero
c0c:

    add $s7, $t0, $zero       # min col 0
    slt $a0, $t4, $s7
    beq $a0, $zero, c0d
      add $s7, $t4, $zero
c0d:
    slt $a0, $t8, $s7
    beq $a0, $zero, c0e
      add $s7, $t8, $zero
c0e:
    slt $a0, $s2, $s7
    beq $a0, $zero, c0f
      add $s7, $s2, $zero
c0f:
