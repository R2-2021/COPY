      *    *** CALL"DECODE08" �p
       01  :##:-DECODE08-AREA.

      *    *** OPEN
      *    *** CLOSE
      *    *** SEARCH
           03  :##:-ID         PIC  X(006).

      *    *** ����
           03  :##:-NAME       PIC  X(100).

      *    *** ���� ����
           03  :##:-NAME-LEN   BINARY-LONG SYNC.

      *    *** Y  : �Y������NAME �L��
      *    *** N  : �Y������NAME ����
           03  :##:-SEARCH     PIC  X(001).

      *    *** NETFLIX URL
           03  :##:-NFADDR     PIC  X(100).

      *    *** NETFLIX URL ����
           03  :##:-NFADDR-LEN BINARY-LONG SYNC.

      *    *** �\��
           03                  PIC  X(100).
