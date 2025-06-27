       IDENTIFICATION DIVISION.
       PROGRAM-ID. str2dbl.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
               01 DBL PIC 9(8)V99.
                 01 STR PIC X(10) REDEFINES DBL.

       PROCEDURE DIVISION.
       MOVE 1234.9 TO DBL.
       DISPLAY "DBL: *"DBL "*".
       DISPLAY "STR: *"STR "*".

       DISPLAY '--------------'.
       MOVE '11223' TO STR.
       DISPLAY "DBL: *"DBL "*".
       DISPLAY "STR: *"STR "*".
       DISPLAY '--------------'.
