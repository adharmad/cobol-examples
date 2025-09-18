        IDENTIFICATION DIVISION.
        PROGRAM-ID. TEST-STRING.
        DATA DIVISION.
        WORKING-STORAGE SECTION.
            01 OBJ1.
                 05 STR1 PIC X(1).
                 05 STR2 PIC X(7).
                 05 NUM1 PIC 9(2).
        PROCEDURE DIVISION.

            INITIALIZE OBJ1.
            DISPLAY ':' OBJ1 ':'.
            MOVE LOW-VALUES TO OBJ1.
            DISPLAY ':' OBJ1 ':'.

            STOP RUN.
