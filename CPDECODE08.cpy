      *    *** CALL"DECODE08" óp
       01  :##:-DECODE08-AREA.

      *    *** OPEN
      *    *** CLOSE
      *    *** SEARCH
           03  :##:-ID         PIC  X(006).

      *    *** éÅñº
           03  :##:-NAME       PIC  X(100).

      *    *** éÅñº í∑Ç≥
           03  :##:-NAME-LEN   BINARY-LONG SYNC.

      *    *** Y  : äYìñÇ∑ÇÈNAME óLÇË
      *    *** N  : äYìñÇ∑ÇÈNAME ñ≥Çµ
           03  :##:-SEARCH     PIC  X(001).

      *    *** NETFLIX URL
           03  :##:-NFADDR     PIC  X(100).

      *    *** NETFLIX URL í∑Ç≥
           03  :##:-NFADDR-LEN BINARY-LONG SYNC.

      *    *** ó\îı
           03                  PIC  X(100).
