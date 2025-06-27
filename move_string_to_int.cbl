      * Test if MOVE statement moving an string to an int
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MOVE-STRING-TO-INT.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  STR PIC X(8).
       01  NUM PIC 9(8).


       PROCEDURE DIVISION.

           MOVE NUM TO STR.
           DISPLAY ":"STR":".

       STOP RUN.
