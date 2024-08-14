	AREA ARMex, CODE, READONLY			;Assignment3 using MUL
	ENTRY
	
	LDR r0, Address1		;Address to store
	
	MOV r1, #1				;r1 = 1
	STR r1, [r0], #4
	
	MOV r2, #2
	MUL r2, r1, r2 			;r2 = r1 * 2 
	STR r2, [r0], #4

	MOV r3, #3
	MUL r3, r2, r3			;r3 = r2 * 3
	STR r3, [r0], #4
	
	MOV r4, #4
	MUL r4, r3, r4			;r4 = r3 * 4 
	STR r4, [r0], #4
	
	MOV r5, #5
	MUL r5, r4, r5			;r5 = r4* 5
	STR r5, [r0], #4

	MOV r6, #6	
	MUL r6, r5, r6			;r6 = r5 * 6
	STR r6, [r0], #4
	
	MOV r7, #7
	MUL r7, r6, r7			;r7 = r6 * 7
	STR r7, [r0], #4
	
	MOV r8, #8	
	MUL r8, r7, r8			;r8 = r7 * 8
	STR r8, [r0], #4

	MOV r9, #9
	MUL r9, r8, r9			;r9 = r8 * 9
	STR r9, [r0], #4

	MOV r10, #10
	MUL r10, r9, r10			;r10 = r9 * 10
	STR r10, [r0], #4
	
	MOV pc, lr
	
Address1 & &40000				;Address to store array

	END