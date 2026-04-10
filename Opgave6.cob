       identification division.
       program-id. OPGAVEFIVE.

       environment division.
       input-output section.
       file-control.
           select input-file-1 assign to "Kundeoplysninger.txt"
           organization is line sequential.

       data division.
       file section.
       fd  input-file-1.

       01  input-record.
           copy "KUNDER.cpy".
       working-storage section.
       01  END-OF-FILE   PIC X VALUE "N".

       procedure division.
       MAIN-PROCEDURE. 
           OPEN INPUT input-file-1 
      *     OPEN OUTPUT OUTPUT-FILE 
            
           PERFORM UNTIL END-OF-FILE = "Y" 
               READ input-file-1 INTO input-record 
                   AT END 
                       MOVE "Y" TO END-OF-FILE 
                   NOT AT END
                       display input-record
      *                 MOVE INPUT-RECORD TO OUTPUT-RECORD 
      *                 WRITE OUTPUT-RECORD 
      *                 DISPLAY "Name: " NAME ", Age: " AGE 
               END-READ 
           END-PERFORM 
            
           CLOSE input-file-1
           
           

       stop run.
