       identification division.
       program-id. OPGAVETHREE.

       data division.
       working-storage section.
       01  KundeID         pic x(10) value spaces.
       01  Fornavn         pic x(20) value spaces.
       01  Trimmed-String    PIC X(20).
       01  Efternavn       pic x(20) value spaces.
       01  KontoNummer     pic x(20) value spaces.
       01  FuldtNavn       pic x(40) value spaces.
       01  Balance         pic 9(7)v9(2) value zeros.
       01  Valutakode      pic x(3) value spaces.
       01  IX              pic 9(2) value 0.
       01  IX2             pic 9(2) value 1.
       01  CURRENT-CHAR    pic x(1).
       01  PREVIOUS-CHAR   pic x(1).
       
       01  NavnRens        pic x(40) value spaces.

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

       string Fornavn delimited by size
           " " delimited by size 
           Efternavn delimited by size
           into FuldtNavn
       
       perform varying IX from 1 by 1 until IX > length of FuldtNavn
           move FuldtNavn(IX:1) to CURRENT-CHAR
           IF (CURRENT-CHAR NOT = SPACE OR PREVIOUS-CHAR NOT = SPACE)
               move CURRENT-CHAR to NavnRens(IX2:1)
               add 1 to IX2
               display IX2
           END-IF
           move CURRENT-CHAR to PREVIOUS-CHAR
       end-perform


       display KundeID
       display NavnRens
       display KontoNummer
       display Balance Valutakode
       stop run.
