      * Test INITIALIZE statement with a group
      * item having fillers
       IDENTIFICATION DIVISION.
       PROGRAM-ID. INIT_GROUPITEM.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 OBJ1.
             05 VAR1 PIC X(4).
             05 FILLER PIC X(1) VALUE '-'.
             05 VAR3 PIC X(4).
             05 FILLER PIC X(1) VALUE '-'.
             05 VAR5 PIC X(4).
       01 STR1 PIC X(14).

       PROCEDURE DIVISION.
           DISPLAY "HELLO".

      *    MOVE 'HELLOWORLD1234' TO OBJ1.
      *    MOVE OBJ1 TO STR1.
      *    DISPLAY ':'STR1':'.
           INITIALIZE OBJ1.
           MOVE OBJ1 TO STR1.
           DISPLAY ':'STR1':'.

       STOP RUN.
