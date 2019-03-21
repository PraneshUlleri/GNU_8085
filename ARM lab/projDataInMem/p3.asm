		AREA    Prog3, CODE, READWRITE
		LDR		R1, Q
		LDR		R2, R
		LDR		R3, S
		ADD		R0, R1, R2
		ADD 	R0, R3
		STR 	R0, Q
Stop	B 		Stop
;.AREA	Prog3, CODE, READWRITE
P		SPACE	4
Q		DCD		2468
R		DCD		2
S		DCD		5
		END