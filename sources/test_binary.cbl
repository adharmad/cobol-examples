       IDENTIFICATION DIVISION.
       PROGRAM-ID. TEST-BINARY.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  NUM1 PIC S9(8) BINARY.

       PROCEDURE DIVISION.

           MOVE HIGH-VALUES TO NUM1.

           IF NUM1 NOT EQUAL -1 THEN
               DISPLAY 'YES'
           ELSE
               DISPLAY 'NO'
           END-IF.

       STOP RUN.
