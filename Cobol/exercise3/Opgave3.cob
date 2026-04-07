       identification division.
       program-id. OPGAVETWO.

       data division.
       working-storage section.
       01  KundeID         pic x(10) value spaces.
       01  Fornavn         pic x(20) value spaces.
       01  Efternavn       pic x(20) value spaces.
       01  KontoNummer     pic x(20) value spaces.
       01  FuldtNavn       pic x(40) value spaces.
       01  Balance         pic 9(7)v9(2) value zeros.
       01  Valutakode      pic x(3) value spaces.
       


       procedure division.

       display Fornavn
       display KundeID
       display Efternavn
       display KontoNummer
       display Balance
       display Valutakode



       move "1234567890" to KundeID
       move "Lars" to Fornavn
       move "Hansen" to Efternavn
       move "DK1234567891235" to KontoNummer
       move 2500.67 to Balance
       move "DKK" to Valutakode

       move function trim(Fornavn trailing "  ") delimited by space
               to Fornavn

       string Fornavn delimited by space "  "
           " " delimited by size Efternavn
           delimited by space 
           into FuldtNavn 

       display KundeID
       display Fornavn Efternavn
       display KontoNummer
       display Balance Valutakode
       stop run.
