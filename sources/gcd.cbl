        IDENTIFICATION DIVISION.
        PROGRAM-ID. GCD.
        ENVIRONMENT DIVISION.
        DATA DIVISION.
       WORKING-STORAGE SECTION.

        77 NUM1 PIC 9(5) VALUE ZEROS.
        77 NUM2 PIC 9(5) VALUE ZEROS.
        77 REM PIC 9(5) VALUE ZEROES.
        77 QUOT PIC 9(5) VALUE ZEROES.
        77 GCD PIC 9(5) VALUE ZEROES.
        77 VAR PIC X(4) VALUE 'TRUE'.

       PROCEDURE DIVISION.

           PERFORM PROC.
           DISPLAY 'GCD = ' GCD.
           STOP RUN.

       PROC.
           MOVE 1000 to NUM1.
           MOVE 256 TO NUM2.

           PERFORM CALC-GCD.

       CALC-GCD.
           IF VAR = 'TRUE' THEN
               IF NUM1 > NUM2 GO TO NUM1-LARGER
               IF NUM2 <= NUM1 GO TO NUM2-LARGER
           END-IF.

       NUM2-LARGER.
              DIVIDE NUM2 BY NUM1 GIVING QUOT REMAINDER REM.
              IF REM = 0 THEN
                  MOVE NUM1 TO GCD
                   GO TO PRINT-RESULT
              END-IF.

              MOVE NUM1 TO NUM2.
              MOVE REM TO NUM1.
              GO TO CALC-GCD.

       NUM1-LARGER.
              DIVIDE NUM1 BY NUM2 GIVING QUOT REMAINDER REM.
              IF REM = 0 THEN
                  MOVE NUM2 TO GCD
                  GO TO PRINT-RESULT
              END-IF.

              MOVE NUM2 TO NUM1.
              MOVE REM TO NUM2.
              GO TO CALC-GCD.

         PRINT-RESULT.
           DISPLAY 'GCD = ' GCD.
