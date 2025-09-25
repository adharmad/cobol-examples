      * SEARCH statement
       IDENTIFICATION DIVISION.
       PROGRAM-ID. TRYARRAY.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

        01 IDX1 PIC 9(04).

        01  CODE-TABLE-OBJ.
            05  CODE-TABLE OCCURS 10 TIMES.
                  10  CODE-DATA PIC  X(04) VALUE 'TEST'.
                  10  CODE-NUM PIC S9(04) COMP.

       PROCEDURE DIVISION.

           DISPLAY ':' IDX1 ':'
           DISPLAY ':' CODE-DATA(IDX1) ':'

           MOVE 1 TO IDX1.

           DISPLAY ':' IDX1 ':'
           DISPLAY ':' CODE-DATA(IDX1) ':'
       STOP RUN.
