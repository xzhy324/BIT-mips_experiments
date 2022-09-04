    .org 0x0
    .set noat
    .set noreorder
    .set nomacro
    .global _start
    
_start:
    lui $2, 0x0000
    ori $2, 0x0000      # $2 = 0x0000_0000 which is the head address of an array where the fibonacci array store
    lui $3, 0x0000
    ori $3, 0x0001      # $3 = 1
    lui $4, 0x0000
    ori $4, 0x0004      # $4 = 4
    lui $8, 0x0000
    ori $8, 0x0014      # $8 = 20 means program will calculate first (20 + 2) items of fibonacci array
    lui $9, 0x0000      # $9 = 0 means current calc round number
    lui $10, 0x0000
    ori $10, 0x0001     # $10 = 1
    lui $11, 0x0000
    ori $11, 0x0001     # $11 = 1

cal:
    add $12, $10, $11   # $12 = $10 + $11
    sw  $12, 0x0($2)

    add $10, $0, $11    # $10 = $11
    add $11, $0, $12    # $11 = $12

    add $2, $2, $4      # arr_addr + 4
    add $9, $9, $3      # cnt + 1
    beq $9, $8, endCal
    nop

    j cal
    nop

endCal:
    j endCal
    nop
    
