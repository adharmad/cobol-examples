       IDENTIFICATION DIVISION.
       PROGRAM-ID. longredefstr.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
               01 STR PIC X(10).
               01 NUM PIC 9(10) REDEFINES STR.

       PROCEDURE DIVISION.
       MOVE '12345' TO STR.
       DISPLAY "NUM: *"NUM "*".
       DISPLAY "STR: *"STR "*".

       DISPLAY '--------------'.
       MOVE 11223 TO NUM.
       DISPLAY "NUM: *"NUM "*".
       DISPLAY "STR: *"STR "*".
       DISPLAY '--------------'.
