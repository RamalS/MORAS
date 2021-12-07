@SCREEN
D = A
@address
M = D

@0
D = A
@row
M = D

@8
D = A
@column
M = D

@1
D = A
@diagonal
M = D

@1
D = A
@shift
M = D

@16
D = A
@dg
M = D

//Init loop 1
@i
M = 0
(LOOP1)
@128 // PONAVLJANJE
D = A
@i
D = M - D
@END_LOOP1
D; JGE
//code

@dg
D = M

@CONTINUE
D; JGT

@1// shiftaj u desno
D = A
@diagonal
M = D
@16
D = A
@dg
M = D
@shift
M = M + 1

(CONTINUE)
@32
D = A
@shift
D = M + D
@address
M = M + D
@0
D = A
@shift
M = D

@diagonal
D = M

@address
A = M
M = D

@diagonal
M = M + D
D = M


@i //povecaj iterator za 1
M = M + 1

@dg
M = M - 1

@LOOP1
0; JMP
(END_LOOP1)
//End loop1



//loop 2
@SCREEN
D = A
@address
M = D

@j
M = 0
(LOOP2)
@129 // BR. PONAVLJANJA
D = A
@j
D = M - D
@END_LOOP2
D; JGE

@0
D = !A

@32767
D = D - A

@address
A = M
M = D

@32
D = A
@address
M = M+D

@j// uvecaj j za 1
M = M + 1

@LOOP2
0; JMP
(END_LOOP2)
// end loop 2



//loop 3
@SCREEN // resetiraj address
D = A
@4097
D = A + D
@address
M = D

@k
M = 0
(LOOP3) // iscrtavanje horizontalne katete
    @8 // BR. PONAVLJANJA
    D = A
    @k
    D = M - D
    @END_LOOP3
    D; JGE


    @k
    D = M


    @address
    A = M + D
    M = -1

    @k// uvecaj k za 1
    M = M + 1

    @LOOP3
    0; JMP
(END_LOOP3)
// end loop 3

(END)
@END
0; JMP