.text
.global _start

_start:
	MOV r0, #5 // m
	MOV r1, #10 // n
	MOV r2, #0 // sum
	MOV r3, #4 // bytes per word
	
	ADR r5, loop_start
	MOV PC, r5
	
loop_start:
	ADD r2, r2, r0 // sum += m
	ADD r0, r0, #1 // n++ 
	
	CMP r0, r1 // if else function 11 > 10
	
	// m < n: loop_start
	ADR r5, loop_start
	MOVLE PC, r5
	
	// m >= n: loop_exit
	ADR r5, loop_exit
	MOVGT PC, r5 // conditional data ops, 0 or 1
	
loop_exit:
	SVC 2
	
// r2 --> 5, 11, 18, 26, 35, 45
// r0 --> 6, 7, 8, 9, 10, 11