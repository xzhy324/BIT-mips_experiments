lui 	$2, 0x0000
ori	$2, 0xabcd	# $2 = 0x0000_abcd, which is the data for sw/lw instruction test
lui	$3, 0x0000	
ori	$3, 0x0000	# $3 = 0x0000_0000, which is the address where data stores.
sw 	$2, 0x0($3)

addiu   $2, $0, 0x1234	# test 'addiu' 
lw	$2, 0x0($3)	# set $2 to the previous-stored word
nop
