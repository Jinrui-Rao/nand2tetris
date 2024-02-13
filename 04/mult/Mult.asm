@R0
D=M
@mul1
M=D

@R1
D=M
@mul2
M=D

@result
M=0
@i
M=1

@result
D=M
@R2
M=D

(LOOP)
@i
D=M
@mul2
D=D-M
@END
D;JGT

@mul1
D=M
@result
M=D+M
@i
M=M+1

@result
D=M
@R2
M=D

@LOOP
0;JMP

(END)
@END
0;JMP