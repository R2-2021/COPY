      *    *** CALL"DECODE05" �p
       01  :##:-DECODE05-AREA.
      *    *** OPEN
      *    *** CLOSE
      *    *** CHANGE
           03  :##:-ID         PIC  X(006).
      *    *** SU:SJIS=>UTF8
      *    *** US:UTF8=>SJIS
           03  :##:-HENKAN     PIC  X(002).
      *    *** MODE=
      *    *** SPACE:�����R�[�h�ϊ����ďo��
      *    *** AK  :ANK => ���� 2.3BYTE �n�ŏo��
      *    *** AA  :ANK => ANK 1BYTE �n�͂��̂܂܏o��
           03  :##:-MODE       PIC  X(002).
      *    *** �ϊ��O����
           03  :##:-BUF1-LEN   BINARY-LONG SYNC.
      *    *** �ϊ��㒷��
           03  :##:-BUF2-LEN   BINARY-LONG SYNC.
      *    *** �ϊ��O�̉����ڂ�
           03  :##:-BUF1-CNT   BINARY-LONG SYNC.
      *    *** �\��
           03                  PIC  X(100).
