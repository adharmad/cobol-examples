        IDENTIFICATION DIVISION.
        PROGRAM-ID. TESTINIT-NATIVE.
        DATA DIVISION.
        WORKING-STORAGE SECTION.
           01 NUM1 PIC 9(10).
           01 STR1 PIC X(10).
        PROCEDURE DIVISION.

           DISPLAY ':' NUM1 ':'
           DISPLAY ':' STR1 ':'

           INITIALIZE NUM1.
           INITIALIZE STR1.

           DISPLAY ':' NUM1 ':'
           DISPLAY ':' STR1 ':'
            STOP RUN.
