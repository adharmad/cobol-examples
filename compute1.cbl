      * COMPUTE1 statement
       IDENTIFICATION DIVISION.
       PROGRAM-ID. COMPUTE1.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 WFACT-CURR-INT       PIC S9(7)V9(10)     COMP-5.
       01 WULPR-TAMRA-INT-RATE  PIC S999V99  COMP-5 VALUE 4.

       PROCEDURE DIVISION.

           COMPUTE WFACT-CURR-INT
           = (1 + .01 * WULPR-TAMRA-INT-RATE ) ** (1 / 12).
           DISPLAY WFACT-CURR-INT.
           DISPLAY WULPR-TAMRA-INT-RATE.

       STOP RUN.
