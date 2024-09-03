      ******************************************************************
      * Author:
      * Date:
      * Purpose: Ecirs un programme cobol qui permet de renseigner un nombre et qui dit ensuite si ce nombre est pair ou impair
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       PROGRAM-ID. nombrePairImpair.
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
       77 num PIC Z(7)9.
       01 FLAG PIC X(1) VALUE 'O'.
      *-----------------------
       PROCEDURE DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
        PERFORM UNTIL FLAG = 'N'
               DISPLAY "Entrez un nombre entier ou tapez 'N' pour quitter: ".
               ACCEPT NUM
               
               IF FUNCTION NUMVAL(NUM) = 0 AND NUM(1:1) = 'N'
                   MOVE 'N' TO FLAG
               ELSE
                   IF FUNCTION MOD(NUM, 2) = 0
                       DISPLAY NUM " est pair."
                   ELSE
                       DISPLAY NUM " est impair."
                   END-IF
               END-IF

               IF FLAG NOT = 'N'
                   DISPLAY "Voulez-vous continuer? (O/N) : ".
                   ACCEPT FLAG
               END-IF
           END-PERFORM.
           STOP RUN.
       END PROGRAM PairImpair.
