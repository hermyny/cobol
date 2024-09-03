      ******************************************************************
      * Author:
      * Date:
      * Purpose:Ecris un programme qui prend entr�e deux nombres et qui a pour r�sultat leur reste
      * Tectonics: cobc
      ******************************************************************
              IDENTIFICATION DIVISION.
       PROGRAM-ID. Subtraction.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  NUM1     PIC 9(7).
       77  NUM2     PIC 9(7).
       77  RESULT   PIC Z(7)9.
       77  FLAG     PIC X(1) VALUE 'O'.
      
       

       PROCEDURE DIVISION.
           
           PERFORM UNTIL FLAG = 'N'

                PERFORM MEMBRE1


                PERFORM MEMBRE2
                
                

                PERFORM  SOUSTRACTION-MEMBRES
                PERFORM ACCEPT-CONTINUE
              

              
           END-PERFORM.

       MEMBRE1.
           DISPLAY "Enter the first number or 'N' to quit: ".
           ACCEPT NUM1.

       MEMBRE2.
           DISPLAY "Enter the second number or 'N' to quit: ".
           ACCEPT NUM2.


       SOUSTRACTION-MEMBRES.
            SUBTRACT NUM1 FROM NUM2 GIVING RESULT.
            DISPLAY "The result of subtraction is: " RESULT.
  

       ACCEPT-CONTINUE.
           DISPLAY "Do you want to continue? (O/N): ".
           ACCEPT FLAG.


           STOP RUN.
       END PROGRAM Subtraction.

