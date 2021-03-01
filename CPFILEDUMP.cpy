      *    *** FILEDUMP サブルーチン用
       01  :##:-FILEDUMP-AREA.
      *    
      *    *** :##:-ID=O OPEN 
      *    *** :##:-ID=P RECORDの出力
      *    *** :##:-ID=X 項目の出力
      *    ***      ＭＡＸ１００バイトまで出力
      *    ***      ４０バイト以下の時、１行で出力、TYPE=Aでも16進数出力
      *    *** :##:-ID=C CLOSE
           03  :##:-ID         PIC  X(001) VALUE SPACE.
      *    
      *    *** :##:-SU=1 FILEDUMP.POT1 に出力 
      *    *** :##:-SU=2 FILEDUMP.POT2 に出力（1以外の時）
           03  :##:-SU         PIC  9(001) VALUE 1.
      *    
      *    *** :##:-TYPE=A ALPHA 文字で出力（M以外の時）
      *    *** :##:-TYPE=M MIX 16進数も出力
           03  :##:-TYPE       PIC  X(001) VALUE "M".
      *
      *    *** :##:-SEQ メインでセットしたＳＥＱ．ＮＯ出力
           03  :##:-SEQ        PIC  9(009) VALUE ZERO.
      *
      *    *** :##:-ITEM メID=X の時、メインでセットした項目名出力
           03  :##:-ITEM       PIC  X(010) VALUE SPACE.
      *
      *    *** 予備エリア、サイズ大きくした時はメインのリコンパイルが必要
      *    *** メインのエリア壊してしまう
      *    *** この長さで変更時は長さ同じにする
      *
      *    *** :##:-PGMを指定すると、アウトプットファイル名
      *    *** FILEDUMP.PGM.POT1,FILEDUMP.PGM.POT2 になる
           03  :##:-PGM        PIC  X(008) VALUE SPACE.
      *
      *    *** :##:-HEDを指定すると、ヘッダー出力
      *    *** :##:-HED=Y 先頭に１件ヘッダ－出力
      *    *** :##:-HED=A 項目ごとにヘッダ－出力
      *    *** :##:-HED=N ヘッダ－出力無し（Y,A以外の時）
           03  :##:-HED        PIC  X(001) VALUE "Y".
      *
      *    *** :##:-KANJI を指定すると、漢字変換を変更
      *    *** :##:-KANJI=SJIS を初期値
      *    *** :##:-KANJI=UTF8 UTF-8 用に出力位置調整（3バイト系漢字の時）
           03  :##:-KANJI      PIC  X(004) VALUE "SJIS".
      *
           03  FILLER          PIC  X(087) VALUE SPACE.
      *
      *    *** :##:-LEN CALL 時未指定なら、指定した項目、レコード長
      *    *** の長さで出力
      *    *** :##:-LEN CALL 時指定なら、ここで指定した長さで出力
       01  :##:-LEN            BINARY-LONG VALUE 100.
