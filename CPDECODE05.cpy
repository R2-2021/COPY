      *    *** CALL"DECODE05" 用
       01  :##:-DECODE05-AREA.
      *    *** OPEN
      *    *** CLOSE
      *    *** CHANGE
           03  :##:-ID         PIC  X(006).
      *    *** SU:SJIS=>UTF8
      *    *** US:UTF8=>SJIS
           03  :##:-HENKAN     PIC  X(002).
      *    *** MODE=
      *    *** SPACE:漢字コード変換して出力
      *    *** AK  :ANK => 漢字 2.3BYTE 系で出力
      *    *** AA  :ANK => ANK 1BYTE 系はそのまま出力
           03  :##:-MODE       PIC  X(002).
      *    *** 変換前長さ
           03  :##:-BUF1-LEN   BINARY-LONG SYNC.
      *    *** 変換後長さ
           03  :##:-BUF2-LEN   BINARY-LONG SYNC.
      *    *** 変換前の何件目か
           03  :##:-BUF1-CNT   BINARY-LONG SYNC.
      *    *** 予備
           03                  PIC  X(100).
