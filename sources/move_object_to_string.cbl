      * Test MOVE OBJECT TO STRING
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MOVE-OBJECT-TO-STRING.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  STR PIC X(20) VALUE '********************'.
       01  OBJ.
            05 STRX1 PIC X(5) VALUE 'HELLO'.
            05 STRX2 PIC X(5) VALUE 'WORLD'.

       PROCEDURE DIVISION.

         DISPLAY ":"STR":".
         MOVE OBJ TO STR.
         DISPLAY ":"STR":".

       STOP RUN.
