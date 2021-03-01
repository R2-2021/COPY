      *    *** DATETIME サブルーチン用
       01  :##:-DATETIME-AREA.
      *
      *    *** "S" START
      *    *** "L" LUP
      *    *** "E" END
           03  :##:-DATE-TIME-ID PIC  X(001) VALUE SPACE.
           03  :##:-DATE-TIME-PGM PIC X(008) VALUE SPACE.

      *    *** 以下サブルーチンでセットする
      *    *** 開始、ラップ、終了の日付、時刻セット
           03  :##:-DATE-TIME.
             05  :##:-DATE-YMD.
               07  :##:-DATE-YY  PIC  9(002) VALUE ZERO.
               07  :##:-DATE-MM  PIC  9(002) VALUE ZERO.
               07  :##:-DATE-DD  PIC  9(002) VALUE ZERO.
             05  :##:-DATE-HMS.
               07  :##:-DATE-HH  PIC  9(002) VALUE ZERO.
               07  :##:-DATE-MI  PIC  9(002) VALUE ZERO.
               07  :##:-DATE-SS  PIC  9(002) VALUE ZERO.
               07  :##:-DATE-SM  PIC  9(002) VALUE ZERO.

      *    *** :##:-DATE-TIME-A=S 開始の時の、年４桁、開始時日付の年の日数
           03  :##:-DATE-DAY.
             05  :##:-DATE-YYYY  PIC  9(004) VALUE ZERO.
             05  :##:-DATE-DDD   PIC  9(003) VALUE ZERO.

      *    *** 週の曜日
      *    *** WEEK 1=日曜日、..、7=土曜日
      *    *** NKは漢字で曜日セット
      *    *** NAはANKで曜日セット
           03  :##:-DATE-WEEK    PIC  9(001) VALUE ZERO.
           03  :##:-DATE-WEEK-NK PIC  N(001) VALUE SPACE.
           03  :##:-DATE-WEEK-NA PIC  X(003) VALUE SPACE.

      *    *** 経過時間、総秒数に変換
           03  :##:-DATE-SSMM    PIC  9(9)V99 VALUE ZERO.

      *    *** ラップ時のコメント曜日
           03  :##:-DATE-LUP-COM PIC  X(020) VALUE SPACE.

      *    *** 開始、ラップ、終了の
      *    *** 月、漢字に変換
      *    *** NK1 Ｊａｎｕａｒｙ等
      *    *** NK2 １月等
      *    *** NA   January等
           03  :##:-DATE-MM-NK1  PIC  N(009) VALUE SPACE.
           03  :##:-DATE-MM-NK2  PIC  N(003) VALUE SPACE.
           03  :##:-DATE-MM-NA   PIC  X(018) VALUE SPACE.

      *    *** 開始、ラップ、終了の時刻、漢字に変換
           03  :##:-DATE-TIME-N.
             05  :##:-DATE-YMD-N.
               07  :##:-DATE-YY-N PIC  N(002) VALUE SPACE.
               07  :##:-DATE-MM-N PIC  N(002) VALUE SPACE.
               07  :##:-DATE-DD-N PIC  N(002) VALUE SPACE.
             05  :##:-DATE-HMS-N.
               07  :##:-DATE-HH-N PIC  N(002) VALUE SPACE.
               07  :##:-DATE-MI-N PIC  N(002) VALUE SPACE.
               07  :##:-DATE-SS-N PIC  N(002) VALUE SPACE.
               07  :##:-DATE-SM-N PIC  N(002) VALUE SPACE.
           03  :##:-DATE-TIME-N-R REDEFINES :##:-DATE-TIME-N
             05  :##:-DATE-YMD-HMS-N  OCCURS 14
                               PIC  N(001).

      *    *** 開始、ラップ、終了の時刻、漢字に変換
           03  :##:-DATE-DAY-N.
             05  :##:-DATE-YYYY-N PIC  N(004) VALUE SPACE.
             05  :##:-DATE-DDD-N  PIC  N(003) VALUE SPACE.
           03  :##:-DATE-DAY-N-R  REDEFINES :##:-DATE-DAY-N
             05  :##:-DATE-DAY-YYDDD-N OCCURS 7
                               PIC  N(001).
      *    *** 予備エリア、サイズ大きくした時はメインのリコンパイルが必要
      *    *** メインのエリア壊してしまう
      *    *** この長さで変更時は長さ同じにする
           03  FILLER          PIC  X(100) VALUE SPACE.
