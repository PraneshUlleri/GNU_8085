start
		CMP R0, R1
		BLE l1
		MOV R3, R0
		B stop
l1	  	MOV R2,R1
stop    B stop
		END