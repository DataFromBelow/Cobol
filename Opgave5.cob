       identification division.
       program-id. OPGAVEFIVE.

       data division.
       working-storage section.
       01  KUNDEOPL.
           copy "KUNDER.cpy".

       procedure division.

           move "1234567890" to KundeID
           move "Lars" to Fornavn
           move "Hansen" to Efternavn
           move "DK1234567891235" to KontoNummer
           move "2500.67" to Balance
           move "DKK" to Valutakode
           
           display KundeID 
           display Fornavn " " Efternavn
           display KontoNummer
           display Balance " " Valutakode           
           display KUNDEOPL

       stop run.
