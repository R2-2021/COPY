      *    *** CALL"DECODE07" �p
       01  :##:-DECODE07-AREA.
      *    *** OPEN
      *    *** CLOSE
      *    *** CHANGE
           03  :##:-ID         PIC  X(006).
           03  :##:-ASCII.
             05  :##:-ASCII-TBL OCCURS 80
                               PIC  X(001).
           03  :##:-PTN        PIC  9(002).
      *    *** FILEITEM ���ő�A277���Ȃ̂ŁA
      *    *** �i�P�U�{�P�j���W�O�����{�P�U�i�p�^�[���V�t�g���j���P�R�V�U
           03  :##:-LINE-G.
             05  :##:-LINE     OCCURS 16
                               PIC  X(1376).
