        IDENTIFICATION DIVISION.
        PROGRAM-ID. COMPOUND-INTEREST.
        DATA DIVISION.
        WORKING-STORAGE SECTION.
          01 PRINCIPAL PIC 9(8)V9(4).
          01 PERIOD PIC 9(4).
          01 RATE PIC 9(2)V99.

          01 IDX PIC 99.
          01 AMOUNT PIC 9(8)V99.
          01 TMP PIC 9(2)V9(4).

        PROCEDURE DIVISION.

           MOVE 15245.30 TO PRINCIPAL.
           MOVE 10 TO PERIOD.
           MOVE 7.25 TO RATE.

           PERFORM CALCULATE-AMOUNT.
           STOP RUN.

        CALCULATE-AMOUNT.

           MOVE 1 TO IDX.

            PERFORM UNTIL IDX > PERIOD
                COMPUTE TMP = (1 + RATE/100) ** IDX
                COMPUTE AMOUNT = PRINCIPAL * TMP

                DISPLAY 'Amount after ' IDX ' years = ' AMOUNT

                ADD 1 TO IDX

            END-PERFORM.
