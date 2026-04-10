       identification division.
       program-id. OPGAVESEVEN.

       environment division.
       input-output section.
       file-control.
           select input-file-1 assign to "Kundeoplysninger.txt"
               organization is line sequential.
           SELECT OUTPUT-FILE-1 ASSIGN TO "KundeoplysningerOUT.txt" 
               ORGANIZATION IS LINE SEQUENTIAL.

       data division.
       file section.
       fd  input-file-1.
       01  input-record.
           copy "KUNDER.cpy".
       fd  OUTPUT-FILE-1.
       01  KUNDE-ADR. 
           02  NAVN-ADR          PIC X(100). 
           



       working-storage section.
       01  END-OF-FILE   PIC X VALUE "N".

       procedure division.
       MAIN-PROCEDURE. 
           OPEN INPUT input-file-1 
           OPEN OUTPUT OUTPUT-FILE-1
            
           PERFORM UNTIL END-OF-FILE = "Y" 
               READ input-file-1 INTO input-record
                   AT END 
                       MOVE "Y" TO END-OF-FILE 
                   NOT AT END
                       display input-record
                       MOVE INPUT-RECORD TO NAVN-ADR
                       move NAVN-ADR to KUNDE-ADR    
                       WRITE KUNDE-ADR 
                       DISPLAY KUNDE-ADR
               END-READ 
           END-PERFORM 
           close OUTPUT-FILE-1
           CLOSE input-file-1
           
           

       stop run.
