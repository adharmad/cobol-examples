      * Test COMP-4
       IDENTIFICATION DIVISION.
       PROGRAM-ID. TEST-COMP4.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  STR PIC X(10).
       01  OBJ REDEFINES STR.
            05  NUM1    PIC S9(07)V99  COMP-4.
            05  NUM2    PIC S9(07)V99  COMP-4.


       PROCEDURE DIVISION.

      *MOVE SPACES to STR.
           INITIALIZE STR.
           DISPLAY ":"STR":".
           DISPLAY ":"NUM1":".

       STOP RUN.
