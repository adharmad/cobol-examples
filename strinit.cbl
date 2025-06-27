       IDENTIFICATION DIVISION.
       PROGRAM-ID. strinit.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 STR PIC X(10).

       PROCEDURE DIVISION.
          DISPLAY "STR: *"STR "*".
          MOVE 'HELLO' TO STR.
          DISPLAY "STR: *"STR "*".
