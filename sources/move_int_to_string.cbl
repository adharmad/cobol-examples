      * Test if MOVE statement moving an int to a string
      * having larger size
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MOVE-INT-TO-STRING.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  STR PIC X(100).
       01  NUM PIC 9(3) VALUE 5.


       PROCEDURE DIVISION.

           MOVE NUM TO STR.
           DISPLAY ":"STR":".

       STOP RUN.
