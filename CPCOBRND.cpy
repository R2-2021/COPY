      *    *** COBRND サブルーチン用
       01  :##:-COBRND-AREA.
      *    *** ID=STR OPEN,INIT
      *    *** ID=RND ランダム作成
      *    *** ID=END CLOSE
           03  :##:-ID         PIC  X(003) VALUE SPACE.
      *    *** RND-TBL (N) 個分作成
           03  :##:-IDX        BINARY-LONG VALUE ZERO.
      *    *** SEQ CALL 回数セットする
           03  :##:-SEQ        BINARY-LONG VALUE ZERO.
           03  :##:-RND-TBL    OCCURS 99.
      *    *** FROM 初期値セット
             05  :##:-FROM     BINARY-DOUBLE VALUE ZERO.
      *    *** TO-CNT までカウントしたら、BEWWEEN値、FROMに加算
             05  :##:-TO-CNT   BINARY-DOUBLE VALUE ZERO.
      *    *** BEWWEEN値がZEROの時、１が初期値
             05  :##:-BETWEEN  BINARY-DOUBLE VALUE ZERO.

      *    *** SIGN=- マイナス有り,約１０回に1回、ランダムに発生、
      *    *** SIGN=1 1件おき
      *    *** SIGN=2 10件おき
      *    *** SIGN=3 100件おき
      *    *** スペース又はNはプラスのみ
             05  :##:-SIGN     PIC  X(001) VALUE SPACE.
      *    *** ZERO=N
      *    *** NUM の作成で0 含まない、Ｎ以外含む
             05  :##:-ZERO     PIC  X(001) VALUE SPACE.

             05  :##:-RND      PIC V9(9) BINARY VALUE ZERO.

      *    *** NUMをFROM2-TO2の範囲で作成、
      *    *** 両方ゼロは０－１０００００の初期値で作成
             05  :##:-FROM2    BINARY-DOUBLE VALUE ZERO.
             05  :##:-TO2      BINARY-DOUBLE VALUE ZERO.
             05  :##:-NUM      BINARY-DOUBLE VALUE ZERO.
             05  :##:-KANA     PIC  X(032) VALUE SPACE.
             05  :##:-ALPHA    PIC  X(032) VALUE SPACE.
      *    *** 声優名ＳＪＩＳ
             05  :##:-S-NAME   PIC  X(020) VALUE SPACE.
      *    *** 声優名ＵＴＦ８
             05  :##:-S-NAME8  PIC  X(030) VALUE SPACE.
      *
      *    *** 予備エリア、サイズ大きくした時はメインのリコンパイルが必要
      *    *** メインのエリア壊してしまう
      *    *** この長さで変更時は長さ同じにする
           03  FILLER          PIC  X(070) VALUE SPACE.
