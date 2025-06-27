        IDENTIFICATION DIVISION.
        PROGRAM-ID. T5.
        ENVIRONMENT DIVISION.
        configuration section.
        special-names. decimal-point is comma.
        DATA DIVISION.
        WORKING-STORAGE SECTION.
           01 cab-data pic 99/99/9999.
           01 cab-data-1 pic 99/09/0999.
           01 salary pic zzz.zz9,99.
           01 cnpj pic 9(8)/9(4).99.
           01 f1 pic 99.9,9.
        PROCEDURE DIVISION.
        PROC.
           move 19022024 to cab-data.
           move 032024 to cab-data-1.
           move 12345,67 to salary.
           move 12345678 to cnpj.
           move 21,5 to f1.

           display cab-data.
           display cab-data-1.
           display salary.
           display cnpj.
           display f1.
        stop run.
