       IDENTIFICATION DIVISION.
       PROGRAM-ID. COMP4-REDEF-OBJ.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 OBJ1.
           10  FILLER                      PIC X(01).
           10  TAX-QUAL-CODE               PIC X(01).
       01  NUM1 REDEFINES OBJ1 PIC 9(04) COMP-4.

       PROCEDURE DIVISION.

           MOVE LOW-VALUES TO OBJ1.
           DISPLAY '*' NUM1 '*'.
           MOVE 1 TO TAX-QUAL-CODE.
           DISPLAY '*' NUM1 '*'.


       STOP RUN.
