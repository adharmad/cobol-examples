      * Perform with test after
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PEERFORM-WITH-TEST-AFTER.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 IDX PIC 9(2).
       01 NUM1 PIC 9(10).


       PROCEDURE DIVISION.

           PERFORM PARA1 WITH TEST AFTER
           VARYING IDX FROM 1 BY 1
           UNTIL NUM1 > 5.

       STOP RUN.

       PARA1.
           DISPLAY IDX.
           MOVE IDX TO NUM1.
