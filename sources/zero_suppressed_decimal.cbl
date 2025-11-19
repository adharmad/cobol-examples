      * Test zero suppressed decimal
       IDENTIFICATION DIVISION.
       PROGRAM-ID. TEST-ZSD.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  NUM PIC ZZZZZZ9.999999.

       PROCEDURE DIVISION.

           MOVE 12345.6789 to NUM.
           DISPLAY ":"NUM":".

       STOP RUN.
