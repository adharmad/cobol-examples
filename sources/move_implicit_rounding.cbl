      * Test if MOVE statement does an implicit rounding
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MOVE_IMPLICIT_ROUNDING.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  AA PIC 9(07)V99.
       01  BB PIC 9(07)V9(07).

       PROCEDURE DIVISION.

           MOVE 6.022 TO BB.
           MOVE BB TO AA.
           DISPLAY AA.
           DISPLAY BB.

       STOP RUN.
