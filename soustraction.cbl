      ******************************************************************
      * Author:
      * Date:
      * Purpose:Ecris un programme qui prend entrée deux nombres et qui a pour résultat leur reste
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       PROGRAM-ID. soustraction.
       ENVIRONMENT DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       CONFIGURATION SECTION.
      *-----------------------
       INPUT-OUTPUT SECTION.
      *-----------------------
       DATA DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       FILE SECTION.
      *-----------------------
       WORKING-STORAGE SECTION.
       77 nombre1 PIC 9(5).
       77 nombre2 PIC 9(5).
       77 resultat PIC Z(7)9.
      *-----------------------
       PROCEDURE DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       MAIN-PROCEDURE.
      **
      * The main procedure of the program
      **

           DISPLAY "Entrez le premier nombre : ".
           ACCEPT nombre1.
           DISPLAY "Entrez le deuxième nombre : ".
           ACCEPT nombre2.

           SUBTRACT nombre1 FROM nombre2 GIVING resultat.
           DISPLAY "Le résultat de votre soustraction est " resultat.

       STOP RUN.
      ** add other procedures here
       END PROGRAM soustraction.
