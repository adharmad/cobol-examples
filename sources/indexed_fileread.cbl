       IDENTIFICATION DIVISION.
       PROGRAM-ID. INDEXEDFILEREAD.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT FILEIN ASSIGN TO 'MAPFILE'
               ORGANIZATION IS INDEXED
               ACCESS MODE IS SEQUENTIAL
            RECORD KEY   IS FOO-RECORD-KEY
               FILE STATUS IS WS-FILEIN-STATUS.

       DATA DIVISION.
       FILE SECTION.
       FD  FILEIN.
       01  TEST-MAP-RECORD.
           05  FOO-RECORD-KEY.
               10  FOO-MAPSET-NR           PIC  X(01).
               10  FOO-DB2-TBL-NA          PIC  X(07).
               10  FOO-DB2-XXX-KK-INST     PIC  9(02).
           05  FOO-QUEUE-NRS-BY-DB2-PTN-NR.
               10  FOO-QUEUE-NR            OCCURS 64 TIMES
                   INDEXED BY FOO-QUEUE-NR-IDX
                   PIC  X(01).
               88  FOO-QUEUE-NR-UNUSED            VALUE HIGH-VALUES.

       WORKING-STORAGE SECTION.
       01  WS-FILEIN-STATUS      PIC XX.
       01  WS-DATA PIC X(74).

       PROCEDURE DIVISION.
           PERFORM MAIN-PROCEDURE.
           PERFORM CLOSE-FILE.
           STOP RUN.

       MAIN-PROCEDURE.
           OPEN INPUT FILEIN.
           MOVE LOW-VALUES TO FOO-RECORD-KEY.
           MOVE '2' TO FOO-MAPSET-NR.
      *   START FILEIN KEY NOT LESS THAN FOO-RECORD-KEY.

      *    PERFORM READ-FILE UNTIL WS-FILEIN-STATUS NOT = '00'.
           READ FILEIN NEXT.
           DISPLAY '*' FOO-RECORD-KEY '*'.
           READ FILEIN NEXT.
           DISPLAY '*' FOO-RECORD-KEY '*'.
           READ FILEIN NEXT.
           DISPLAY '*' FOO-RECORD-KEY '*'.
           READ FILEIN NEXT.
           DISPLAY '*' FOO-RECORD-KEY '*'.
           READ FILEIN NEXT.
           DISPLAY '*' FOO-RECORD-KEY '*'.

       READ-FILE.
               READ FILEIN NEXT RECORD
                   AT END
                       MOVE '00' TO WS-FILEIN-STATUS
                   NOT AT END
                       DISPLAY '*' FOO-DB2-TBL-NA '*'
      *               MOVE PARTITION-QUEUE-MAP-RECORD TO WS-DATA
      *               DISPLAY ':' WS-DATA ':'
               END-READ.

        CLOSE-FILE.
           CLOSE FILEIN.
