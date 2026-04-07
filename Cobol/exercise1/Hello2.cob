       identification division.
       program-id. HELLO.

       data division.
       working-storage section.
       01 VAR-TEXT         pic x(30) value "HELLO med Variabel".

       procedure division.

       display VAR-TEXT
       stop run.
