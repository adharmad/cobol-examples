      * Test COMP-4
       IDENTIFICATION DIVISION.
       PROGRAM-ID. TEST-COMP4.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  OBJ1.
          05  FILLER              PIC  X(01).
          05  NUM-X               PIC  X(01).
       01 NUM1 REDEFINES OBJ1 PIC S9(04) BINARY.

       PROCEDURE DIVISION.

      *MOVE SPACES to STR.
           INITIALIZE OBJ1.
           MOVE '1' TO NUM-X.
           DISPLAY ":"OBJ1":".
           DISPLAY ":"NUM1":".

       STOP RUN.
