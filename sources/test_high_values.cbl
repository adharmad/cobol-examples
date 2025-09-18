      * Test HIGH-VALUES
       IDENTIFICATION DIVISION.
       PROGRAM-ID. TEST-HIGH-VALUES.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  NUM1 PIC S9(9).

       PROCEDURE DIVISION.

           MOVE HIGH-VALUES TO NUM1.
           DISPLAY ':' NUM1 ':'.

           IF NUM1 EQUAL -1 THEN
               DISPLAY 'YES'
           END-IF.

       STOP RUN.
