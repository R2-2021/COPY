      *    *** CALL"DECODE08" p
       01  :##:-DECODE08-AREA.

      *    *** OPEN
      *    *** CLOSE
      *    *** SEARCH
           03  :##:-ID         PIC  X(006).

      *    *** Ό
           03  :##:-NAME       PIC  X(100).

      *    *** Ό ·³
           03  :##:-NAME-LEN   BINARY-LONG SYNC.

      *    *** Y  : Y·ιNAME Lθ
      *    *** N  : Y·ιNAME ³΅
           03  :##:-SEARCH     PIC  X(001).

      *    *** NETFLIX URL
           03  :##:-NFADDR     PIC  X(100).

      *    *** NETFLIX URL ·³
           03  :##:-NFADDR-LEN BINARY-LONG SYNC.

      *    *** \υ
           03                  PIC  X(100).
