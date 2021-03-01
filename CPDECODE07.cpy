      *    *** CALL"DECODE07" 用
       01  :##:-DECODE07-AREA.
      *    *** OPEN
      *    *** CLOSE
      *    *** CHANGE
           03  :##:-ID         PIC  X(006).
           03  :##:-ASCII.
             05  :##:-ASCII-TBL OCCURS 80
                               PIC  X(001).
           03  :##:-PTN        PIC  9(002).
      *    *** FILEITEM 横最大、277桁なので、
      *    *** （１６＋１）＊８０文字＋１６（パターンシフト分）＝１３７６
           03  :##:-LINE-G.
             05  :##:-LINE     OCCURS 16
                               PIC  X(1376).
