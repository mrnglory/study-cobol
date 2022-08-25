*-------------
DATA DIVISION.
*-------------
FILE SECTION.
FD     PRINT-LINE  RECORDING MODE F.
01     PRINT-REC.
       05  ACCT-NO-O           PIC X(8).
       05  ACCT-LIMIT-O        PIC $$,$$$,$$9.99.
       05  ACCT-BALANCE-O      PIC $$,$$$,$$9.99.
       05  LAST-NAME-O         PIC X(20).
       05  FIRST-NAME-O        PIC X(15).
       05  COMMENTS-O          PIC X(50).
*
FD     ACCT-REC    RECORDING MODE F.
01     ACCT-FIELDS.
       05  ACCT-NO             PIC X(8).
       05  ACCT-LIMIT          PIC S9(7)V99 COMP-3.
       05  ACCT-BALANCE        PIC S9(7)V99 COMP-3.
       05  LAST-NAME           PIC X(20).
       05  FIRST-NAME          PIC X(15).
       05  CILENT-ADDR.
           10  STREET-ADDR     PIC X(25).
           10  CITY-COUNTY     PIC X(20).
           10  USA-STATE       PIC X(15).
       05  RESERVED            PIC X(7).
       05  COMMENTS            PIC X(50).
*
WORKING-STORAGE SECTION.
01     FLAGS.
05     LASTREC                 PIC X VALUE SPACE.