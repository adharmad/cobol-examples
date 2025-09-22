       IDENTIFICATION DIVISION.
       PROGRAM-ID. INDEXEDFILEREAD1.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT FILEIN ASSIGN TO 'CONFIG-FILE'
               ORGANIZATION IS INDEXED
               ACCESS MODE IS RANDOM
            RECORD KEY   IS ABCD-RECORD
               FILE STATUS IS WS-FILEIN-STATUS.

       DATA DIVISION.
       FILE SECTION.
       FD  FILEIN.
           COPY ABCDCOPY.

       WORKING-STORAGE SECTION.
       01  WS-FILEIN-STATUS      PIC XX.
       01  KK PIC X(12).

       PROCEDURE DIVISION.
           PERFORM MAIN-PROCEDURE.
           PERFORM CLOSE-FILE.
           STOP RUN.

       MAIN-PROCEDURE.
           OPEN INPUT FILEIN.

      *    PERFORM READ-FILE UNTIL WS-FILEIN-STATUS NOT = '00'.
           MOVE 'PQRAAAAA0001' TO KK.
           READ FILEIN INTO ABCD-RECORD KEY IS KK.
           DISPLAY ':' ABCD-ENVIRON-TYP ':'.

       READ-FILE.
               READ FILEIN NEXT RECORD
                   AT END
                       MOVE '00' TO WS-FILEIN-STATUS
                   NOT AT END
                       DISPLAY '***********************'
      *               MOVE PARTITION-QUEUE-MAP-RECORD TO WS-DATA
      *               DISPLAY ':' WS-DATA ':'
               END-READ.

        CLOSE-FILE.
           CLOSE FILEIN.
