start:
	LDR	R6,=0x55555555
	LDR	R5,=0x40020C00
	STR	R6,[R5]
	LDR	R5,=0x40020C14
	LDR	R6,=0x40021010
main:
	LDRB	R0,[R6]
	LDRB	R1,[R6,#1]
	@EOR	R0,R0,R1
	AND	R0,R0,R1
	@ORR	R0,R0,R1
	@BIC	R0,R0,R1
	@MVN	R0,R1
	STRB	R0,[R5]
	B	main
