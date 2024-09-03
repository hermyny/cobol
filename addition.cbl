       *exercice
       *écris un programme qui demande deux nombres à l'utilisateur et qui affiche leur somme
       IDENTIFICATION DIVISION.
       PROGRAM-ID. addition.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM1 PIC 9(5).
       01 NUM2 PIC 9(5).
       01 RESULTAT PIC Z(7)9.

       PROCEDURE DIVISION.
           DISPLAY 'Entrez le premier nombre :'.
           ACCEPT NUM1.
           DISPLAY 'Entrez le deuxième nombre :'.
           ACCEPT NUM2.

           ADD NUM1 TO NUM2 GIVING RESULTAT.

           DISPLAY "La somme est :" RESULTAT.

       STOP RUN.
       END PROGRAM addition.
