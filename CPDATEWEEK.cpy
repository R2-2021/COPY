       01  :##:-DATEWEEK-AREA.
      *    *** ID=A DATE2-YMD よりWEEK,DD2セット
      *    *** ID=R NISSU よりDATE2-YMD,WEEKセット
           03  :##:-DATE2-ID     PIC  X(001) VALUE SPACE.
           03  :##:-DATE2-YMD.
             05  :##:-DATE2-YYYY PIC  9(004) VALUE ZERO.
             05  :##:-DATE2-MM   PIC  9(002) VALUE ZERO.
             05  :##:-DATE2-DD   PIC  9(002) VALUE ZERO.
           03  :##:-DATE2-YMD-9  REDEFINES :##:-DATE2-YMD
                                 PIC  9(008).

      *    *** 以下サブルーチンでセット
      *    *** DATETIME とは、セット値（内容）違う
      *    *** WEEK 1:月曜,...,6:土曜,7:日曜
           03  :##:-DATE2-WEEK   PIC  9(002) VALUE ZERO.

      *    *** 閏年計算して、月の最終日セット 1582年以降の年のみ算出
      *    *** 1582年以前は、暦がグレゴリオ暦でないので、目安である
           03  :##:-DATE2-AREA.
             05  :##:-DATE2-DD-DATA PIC  X(024) VALUE
                 "312831303130313130313031".
             05  :##:-DATE2-DD2  REDEFINES :##:-DATE2-DD-DATA
                                 OCCURS 12
                                 PIC  9(002).
      *    *** 閏年は１をセット、その他は０をセット
           03  :##:-URUU         PIC  X(001) VALUE SPACE.
      *    *** 0000年1月1日を1とし、:##:-DATE2-YMDまでの日数をセットする
           03  :##:-NISUU        BINARY-LONG VALUE ZERO.
      *
      *    *** 予備エリア、サイズ大きくした時はメインのリコンパイルが必要
      *    *** メインのエリア壊してしまう
      *    *** この長さで変更時は長さ同じにする
      *     03  FILLER            PIC  X(100) VALUE SPACE.

      *    *** 週の曜日
      *    *** NKは漢字で曜日セット
      *    *** NAはANKで曜日セット
           03  :##:-DATE2-WEEK-NK PIC  N(001) VALUE SPACE.
           03  :##:-DATE2-WEEK-NA PIC  X(003) VALUE SPACE.
           03  FILLER            PIC  X(095) VALUE SPACE.
