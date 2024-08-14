	AREA ARMex, CODE, READONLY			;Assignment3 using second operand
	ENTRY
	
	LDR r0, Address1		;Address to store
	
	MOV r1, #1						;r1 = 1
	STR r1, [r0], #4
	
	ADD r2, r1, r1					;r2 = r1 + r1 = r1 * 2 
	STR r2, [r0], #4
	
	ADD r3, r2, r2, LSL #1		;r3 = r2 + r2 * 2 = r2 * 3
	STR r3, [r0], #4
	
	ADD r4, r3, LSL #2			;r4 = r3 * 4 
	STR r4, [r0], #4
	
	ADD r5, r4, r4, LSL #2		;r5 = r4 + r4 * 4 = r4* 5
	STR r5, [r0], #4
	
	ADD r6, r5, LSL #1			;r6 = r5 * 2 + r5 * 4 = r5 * 6
	ADD r6, r5, LSL #2
	STR r6, [r0], #4
	
	ADD r7, r6, r6, LSL #1		;r7 = r6 + r6 * 2 + r6 * 4 = r6 * 7
	ADD r7, r6, LSL #2
	STR r7, [r0], #4
	
	ADD r8, r7, LSL #3			;r8 = r7 * 8
	STR r8, [r0], #4
	
	ADD r9, r8, r8, LSL #3		;r9 = r8 + r8 * 8
	STR r9, [r0], #4
	
	ADD r10, r9, LSL #1			;r10 = r9 * 2 + r9 * 8 = r9 * 10
	ADD r10, r9, LSL #3
	STR r10, [r0], #4
	
	MOV pc, lr
	
Address1 & &40000				;Address to store array

	END