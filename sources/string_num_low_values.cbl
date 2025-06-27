      * Print out a string having LOW-VALUES
      * Print out a number which has values from a string which had
      * LOW-VALUES
       IDENTIFICATION DIVISION.
       PROGRAM-ID. STRINGNUM_LOWVALUES.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 NUM1 PIC 9(4).
       01 STR1 PIC X(4).

       PROCEDURE DIVISION.
           DISPLAY "HELLO".


           MOVE LOW-VALUES TO STR1.
           DISPLAY ":"STR1":".

           MOVE STR1 TO NUM1.
           DISPLAY ":"NUM1":".

       STOP RUN.
