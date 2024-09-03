      ******************************************************************
      * Author:
      * Date:
      * Purpose:Ecris un programme qui prend entr�e deux nombres et qui a pour r�sultat leur reste
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
           DISPLAY "Entrez le deuxi�me nombre : ".
           ACCEPT nombre2.

           SUBTRACT nombre1 FROM nombre2 GIVING resultat.
           DISPLAY "Le r�sultat de votre soustraction est " resultat.

       STOP RUN.
      ** add other procedures here
       END PROGRAM soustraction.
