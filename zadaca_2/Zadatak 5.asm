@SCREEN
D = A
@address
M = D

//i-th position (y)
@0
D = A
@i
M = D

//j-th position (x)
@0
D = A
@j
M = D

@0 // Varijabla za provjeru je li tipka pritisnuta ili ne. Ako je pressed na 1 tipka se jos nije otpustila u iducoj iteraciji
D = A
@pressed
M = D


//KEYBOARD
(KEYBOARD)
    @KBD// Ako je tipka otpustena stavi pressed na 0
    D = M 
    @PRESSED
    D; JEQ

    @pressed// Ako je tipka pritisnuta vrati
    D = M
    @KEYBOARD
    D; JNE


    @48 //Tipka 0
    D = A
    @KBD
    D = M - D
    @NUMBERNIL
    D; JEQ

    @j// provjeri je li izasao iz ekrana, ako je ne upisuj nista
    D = M
    @i
    D = M + D
    @8191
    D = A - D
    @KEYBOARD
    D; JLE

    @49 //Tipka 1
    D = A
    @KBD
    D = M - D
    @NUMBER1
    D; JEQ

    @50 //Tipka 2
    D = A
    @KBD
    D = M - D
    @NUMBER2
    D; JEQ

    @51 //Tipka 3
    D = A
    @KBD
    D = M - D
    @NUMBER3
    D; JEQ

    @52 //Tipka 4
    D = A
    @KBD
    D = M - D
    @NUMBER4
    D; JEQ

    @53 //Tipka 5
    D = A
    @KBD
    D = M - D
    @NUMBER5
    D; JEQ

    @KBD //Ignoriraj bilo koju drugu tipku
    D = M
    @KEYBOARD
    0; JEQ


//----NUMBERS-----
//N. 1
(NUMBER1)
    @1
    D = A
    @pressed
    M = D

    @SCREEN
    D = A
    @address
    M = D

    @j//column
    D = M
    @address
    M = M + D

    @i // row
    D = M
    @address
    M = M + D

    //0
    @0
    D = A
    @address
    A = M 
    M = D
    //1
    @32
    D = A
    @address
    M = M + D
    @384
    D = A
    @address
    A = M 
    M = D
    //2
    @32
    D = A
    @address
    M = M + D
    @384
    D = A
    @address
    A = M
    M = D
    //3
    @32
    D = A
    @address
    M = M + D
    @384
    D = A
    @address
    A = M
    M = D
    //4
    @32
    D = A
    @address
    M = M + D
    @384
    D = A
    @address
    A = M
    M = D
    //5
    @32
    D = A
    @address
    M = M + D
    @384
    D = A
    @address
    A = M
    M = D
    //6
    @32
    D = A
    @address
    M = M + D
    @384
    D = A
    @address
    A = M
    M = D
    //7
    @32
    D = A
    @address
    M = M + D
    @384
    D = A
    @address
    A = M
    M = D
    //8
    @32
    D = A
    @address
    M = M + D
    @384
    D = A
    @address
    A = M
    M = D
    //9
    @32
    D = A
    @address
    M = M + D
    @384
    D = A
    @address
    A = M
    M = D
    //10
    @32
    D = A
    @address
    M = M + D
    @384
    D = A
    @address
    A = M
    M = D
    //11
    @32
    D = A
    @address
    M = M + D
    @384
    D = A
    @address
    A = M
    M = D
    //12
    @32
    D = A
    @address
    M = M + D
    @384
    D = A
    @address
    A = M
    M = D
    //13
    @32
    D = A
    @address
    M = M + D
    @384
    D = A
    @address
    A = M
    M = D
    //14
    @32
    D = A
    @address
    M = M + D
    @384
    D = A
    @address
    A = M
    M = D

    @RESET
    0; JMP

//_N. 2_______________
(NUMBER2)
    @1
    D = A
    @pressed
    M = D

    @SCREEN
    D = A
    @address
    M = D

    @j//column
    D = M
    @address
    M = M + D

    @i // row
    D = M
    @address
    M = M + D

    //0
    @0
    D = A
    @address
    A = M 
    M = D
    //1
    @32
    D = A
    @address
    M = M + D
    @4080
    D = A
    @address
    A = M 
    M = D
    //2
    @32
    D = A
    @address
    M = M + D
    @4080
    D = A
    @address
    A = M 
    M = D
    //3
    @32
    D = A
    @address
    M = M + D
    @3120
    D = A
    @address
    A = M 
    M = D
    //4
    @32
    D = A
    @address
    M = M + D
    @3120
    D = A
    @address
    A = M 
    M = D
    //5
    @32
    D = A
    @address
    M = M + D
    @3120
    D = A
    @address
    A = M 
    M = D
    //6
    @32
    D = A
    @address
    M = M + D
    @3072
    D = A
    @address
    A = M 
    M = D
    //7
    @32
    D = A
    @address
    M = M + D
    @3072
    D = A
    @address
    A = M 
    M = D
    //8
    @32
    D = A
    @address
    M = M + D
    @3072
    D = A
    @address
    A = M 
    M = D
    //9
    @32
    D = A
    @address
    M = M + D
    @4080
    D = A
    @address
    A = M 
    M = D
    //10
    @32
    D = A
    @address
    M = M + D
    @4080
    D = A
    @address
    A = M 
    M = D
    //11
    @32
    D = A
    @address
    M = M + D
    @48
    D = A
    @address
    A = M 
    M = D
    //12
    @32
    D = A
    @address
    M = M + D
    @48
    D = A
    @address
    A = M 
    M = D
    //13
    @32
    D = A
    @address
    M = M + D
    @4080
    D = A
    @address
    A = M 
    M = D
    //14
    @32
    D = A
    @address
    M = M + D
    @4080
    D = A
    @address
    A = M 
    M = D


    @RESET
    0; JMP

//_N. 3_______________
(NUMBER3)
    @1
    D = A
    @pressed
    M = D

    @SCREEN
    D = A
    @address
    M = D

    @j//column
    D = M
    @address
    M = M + D

    @i // row
    D = M
    @address
    M = M + D

    //0
    @0
    D = A
    @address
    A = M 
    M = D
    //1
    @32
    D = A
    @address
    M = M + D
    @4080
    D = A
    @address
    A = M 
    M = D
    //2
    @32
    D = A
    @address
    M = M + D
    @4080
    D = A
    @address
    A = M 
    M = D
    //3
    @32
    D = A
    @address
    M = M + D
    @3120
    D = A
    @address
    A = M 
    M = D
    //4
    @32
    D = A
    @address
    M = M + D
    @3120
    D = A
    @address
    A = M 
    M = D
    //5
    @32
    D = A
    @address
    M = M + D
    @3120
    D = A
    @address
    A = M 
    M = D
    //6
    @32
    D = A
    @address
    M = M + D
    @3072
    D = A
    @address
    A = M 
    M = D
    //7
    @32
    D = A
    @address
    M = M + D
    @3072
    D = A
    @address
    A = M 
    M = D
    //8
    @32
    D = A
    @address
    M = M + D
    @3072
    D = A
    @address
    A = M 
    M = D
    //9
    @32
    D = A
    @address
    M = M + D
    @4080
    D = A
    @address
    A = M 
    M = D
    //10
    @32
    D = A
    @address
    M = M + D
    @4080
    D = A
    @address
    A = M 
    M = D
    //11
    @32
    D = A
    @address
    M = M + D
    @3072
    D = A
    @address
    A = M 
    M = D
    //12
    @32
    D = A
    @address
    M = M + D
    @3072
    D = A
    @address
    A = M 
    M = D
    //13
    @32
    D = A
    @address
    M = M + D
    @4080
    D = A
    @address
    A = M 
    M = D
    //14
    @32
    D = A
    @address
    M = M + D
    @4080
    D = A
    @address
    A = M 
    M = D


    @RESET
    0; JMP

//_N. 4_______________
(NUMBER4)
    @1
    D = A
    @pressed
    M = D

    @SCREEN
    D = A
    @address
    M = D

    @j//column
    D = M
    @address
    M = M + D

    @i // row
    D = M
    @address
    M = M + D

    //0
    @0
    D = A
    @address
    A = M 
    M = D
    //1
    @32
    D = A
    @address
    M = M + D
    @3120
    D = A
    @address
    A = M 
    M = D
    //2
    @32
    D = A
    @address
    M = M + D
    @3120
    D = A
    @address
    A = M 
    M = D
    //3
    @32
    D = A
    @address
    M = M + D
    @3120
    D = A
    @address
    A = M 
    M = D
    //4
    @32
    D = A
    @address
    M = M + D
    @3120
    D = A
    @address
    A = M 
    M = D
    //5
    @32
    D = A
    @address
    M = M + D
    @3120
    D = A
    @address
    A = M 
    M = D
    //6
    @32
    D = A
    @address
    M = M + D
    @3120
    D = A
    @address
    A = M 
    M = D
    //7
    @32
    D = A
    @address
    M = M + D
    @3120
    D = A
    @address
    A = M 
    M = D
    //8
    @32
    D = A
    @address
    M = M + D
    @3120
    D = A
    @address
    A = M 
    M = D
    //9
    @32
    D = A
    @address
    M = M + D
    @4080
    D = A
    @address
    A = M 
    M = D
    //10
    @32
    D = A
    @address
    M = M + D
    @4080
    D = A
    @address
    A = M 
    M = D
    //11
    @32
    D = A
    @address
    M = M + D
    @3072
    D = A
    @address
    A = M 
    M = D
    //12
    @32
    D = A
    @address
    M = M + D
    @3072
    D = A
    @address
    A = M 
    M = D
    //13
    @32
    D = A
    @address
    M = M + D
    @3072
    D = A
    @address
    A = M 
    M = D
    //14
    @32
    D = A
    @address
    M = M + D
    @3072
    D = A
    @address
    A = M 
    M = D


    @RESET
    0; JMP

//_N. 5_______________
(NUMBER5)
    @1
    D = A
    @pressed
    M = D

    @SCREEN
    D = A
    @address
    M = D

    @j//column
    D = M
    @address
    M = M + D

    @i // row
    D = M
    @address
    M = M + D

    //0
    @0
    D = A
    @address
    A = M 
    M = D
    //1
    @32
    D = A
    @address
    M = M + D
    @4080
    D = A
    @address
    A = M 
    M = D
    //2
    @32
    D = A
    @address
    M = M + D
    @4080
    D = A
    @address
    A = M 
    M = D
    //3
    @32
    D = A
    @address
    M = M + D
    @48
    D = A
    @address
    A = M 
    M = D
    //4
    @32
    D = A
    @address
    M = M + D
    @48
    D = A
    @address
    A = M 
    M = D
    //5
    @32
    D = A
    @address
    M = M + D
    @48
    D = A
    @address
    A = M 
    M = D
    //6
    @32
    D = A
    @address
    M = M + D
    @48
    D = A
    @address
    A = M 
    M = D
    //7
    @32
    D = A
    @address
    M = M + D
    @48
    D = A
    @address
    A = M 
    M = D
    //8
    @32
    D = A
    @address
    M = M + D
    @48
    D = A
    @address
    A = M 
    M = D
    //9
    @32
    D = A
    @address
    M = M + D
    @4080
    D = A
    @address
    A = M 
    M = D
    //10
    @32
    D = A
    @address
    M = M + D
    @4080
    D = A
    @address
    A = M 
    M = D
    //11
    @32
    D = A
    @address
    M = M + D
    @3072
    D = A
    @address
    A = M 
    M = D
    //12
    @32
    D = A
    @address
    M = M + D
    @3072
    D = A
    @address
    A = M 
    M = D
    //13
    @32
    D = A
    @address
    M = M + D
    @4080
    D = A
    @address
    A = M 
    M = D
    //14
    @32
    D = A
    @address
    M = M + D
    @4080
    D = A
    @address
    A = M 
    M = D


    @RESET
    0; JMP

//_NUMBERNIL_______________
(NUMBERNIL)
    @j// provjera, je li broj izasao iz ekrana kod brisanja, ako je ignoriraj
    D = M
    @i
    D = M + D
    @KEYBOARD
    D; JEQ

    @j//smanji j
    M = M - 1
    D = M
    @SKIP
    D; JGE

    @512 //prebaci brojeve u predhodni red
    D = A
    @i
    M = M - D
    @31
    D = A
    @j
    M = D
    (SKIP)

    @1
    D = A
    @pressed
    M = D

    @SCREEN
    D = A
    @address
    M = D

    @j//column
    D = M
    @address
    M = M + D

    @i // row
    D = M
    @address
    M = M + D

    //0
    @address
    A = M 
    M = 0
    //1
    @32
    D = A
    @address
    M = M + D
    @address
    A = M 
    M = 0
    //2
    @32
    D = A
    @address
    M = M + D
    @address
    A = M 
    M = 0
    //3
    @32
    D = A
    @address
    M = M + D
    @address
    A = M 
    M = 0
    //4
    @32
    D = A
    @address
    M = M + D
    @address
    A = M 
    M = 0
    //5
    @32
    D = A
    @address
    M = M + D
    @address
    A = M 
    M = 0
    //6
    @32
    D = A
    @address
    M = M + D
    @address
    A = M 
    M = 0
    //7
    @32
    D = A
    @address
    M = M + D
    @address
    A = M 
    M = 0
    //8
    @32
    D = A
    @address
    M = M + D
    @address
    A = M 
    M = 0
    //9
    @32
    D = A
    @address
    M = M + D
    @address
    A = M 
    M = 0
    //10
    @32
    D = A
    @address
    M = M + D
    @address
    A = M 
    M = 0
    //11
    @32
    D = A
    @address
    M = M + D
    @address
    A = M 
    M = 0
    //12
    @32
    D = A
    @address
    M = M + D
    @address
    A = M 
    M = 0
    //13
    @32
    D = A
    @address
    M = M + D
    @address
    A = M 
    M = 0
    //14
    @32
    D = A
    @address
    M = M + D
    @address
    A = M 
    M = 0


    @KEYBOARD
    0; JMP

//_______________________________________
(PRESSED) //OTPUSTI TIPKU 
    @0// postavi varijablu pressed na 0
    D = A
    @pressed
    M = D

    @KEYBOARD
    0;JMP

//_______________________________________
(RESET) // zavrsna radnja nakon svake tipke
    @j//povecaj j
    M = M + 1

    @32// provjeri je li j > 32
    D = A
    @j
    D = D - M
    @NOINCR
    D; JNE

    @512 //prebaci brojeve u iduci red
    D = A
    @i
    M = M + D

    @j
    M = 0

    (NOINCR)
        @KEYBOARD// Return to keyboard
        0; JMP


//_END____
(END)
@END
0; JMP