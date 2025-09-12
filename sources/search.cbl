      * SEARCH statement
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SEARCH.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

         01 IDX1 PIC 9(04) VALUE 1.
         01 STR1 REDEFINES IDX1 PIC X(04).

         01  CODE-TABLE-OBJ.
             05  CODE-TABLE OCCURS 10 TIMES
                      INDEXED BY IDX.
                  10  CODE-DATA PIC  X(04).
                  10  CODE-NUM PIC S9(04) COMP.

       PROCEDURE DIVISION.

           PERFORM VARYING IDX1 FROM 1 BY 1 UNTIL IDX1 > 10
               MOVE STR1 TO CODE-DATA(IDX1)
           END-PERFORM.

           PERFORM VARYING IDX1 FROM 1 BY 1 UNTIL IDX1 > 10
               DISPLAY ':' CODE-DATA(IDX1) ':'
           END-PERFORM.

           SET IDX TO 1.

           SEARCH CODE-TABLE
              AT END DISPLAY 'NOT FOUND'
              WHEN CODE-DATA (IDX) EQUALS '0005'
                 DISPLAY 'FOUND IDX = ' IDX
           END-SEARCH.

       STOP RUN.
