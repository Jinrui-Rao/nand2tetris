// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen
// by writing 'black' in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen by writing
// 'white' in every pixel;
// the screen should remain fully clear as long as no key is pressed.

//// Replace this comment with your code.

(LOOP)
@SCREEN
D=A
@address
M=D

@8191
D=A
@n
M=D

@i
M=0

@KBD
D=M
@BLACK
D;JNE
@WHILTE
D;JEQ

(BLACK)
@i
D=M
@n
D=D-M
@LOOP
D;JGT

@address
A=M
M=-1

@address
M=M+1
@i
M=M+1

@BLACK
0;JMP


(WHILTE)
@i
D=M
@n
D=D-M
@LOOP
D;JGT

@address
A=M
M=0

@address
M=M+1
@i
M=M+1

@WHILTE
0;JMP

@LOOP
0;JMP
