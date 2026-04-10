       identification division.
       program-id. OPGAVETWO.

       data division.
       working-storage section.
       01  KundeID         pic x(10) value spaces.
       01  Fornavn         pic x(20) value spaces.
       01  Efternavn       pic x(20) value spaces.
       01  KontoNummer     pic x(20) value spaces.
       01  Balance         pic 9(7)v99 value zeros.
       01  Valutakode      pic x(3) value spaces.


       procedure division.
           display KundeID
           display Fornavn " " Efternavn
           display KontoNummer
           display Balance
           display Valutakode
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
           stop run.
