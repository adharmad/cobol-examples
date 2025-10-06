      * SEARCH statement
       IDENTIFICATION DIVISION.
       PROGRAM-ID. TRYSORT.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.

       FILE-CONTROL.
       SELECT FOO-SORT-FILE   ASSIGN TO SORTWORK.


       DATA DIVISION.
       FILE SECTION.
       SD  FOO-SORT-FILE.
       01 FOO-SORT-RECORD.
          05 FOO-KEY PIC X(02).
          05 FOO-DATA PIC X(100).

       WORKING-STORAGE SECTION.

           01 IDX1 PIC 9(02) VALUE 1.
           01 STR1 REDEFINES IDX1 PIC X(02).
           77 OUTPUT-SORT-AT-END PIC X.
              88 EOF-SORT-FILE VALUE "Y".

       PROCEDURE DIVISION.

           SORT FOO-SORT-FILE
               ON ASCENDING KEY FOO-KEY
               INPUT  PROCEDURE IS IP-PROC
              OUTPUT PROCEDURE IS OP-PROC.

           DISPLAY 'AFTER SORTING'.
           STOP RUN.

       IP-PROC.

           PERFORM VARYING IDX1 FROM 1 BY 1 UNTIL IDX1 > 10
              MOVE STR1 TO FOO-KEY
              MOVE 'HELLO' TO FOO-DATA
              MOVE STR1 TO FOO-DATA(6:2)
              RELEASE FOO-SORT-RECORD
           END-PERFORM.

       OP-PROC.
           PERFORM UNTIL EOF-SORT-FILE
                     RETURN FOO-SORT-FILE
                            AT END MOVE "Y" TO OUTPUT-SORT-AT-END
                            NOT AT END
                                DISPLAY FOO-SORT-RECORD
                     END-RETURN
           END-PERFORM.
