{ �16. ����� ���� ���������� ���� ����� �� ���������. ���� ��� ����� ���� ���������
  ��������������� ������������� ������������, ��������� ��� �������. ��������
  ����� ������ � ������� � ������� ����������� ��������. }

{ -6; -2;           1;1;                        2;1;                        1;3;
  6; -2;            1;8;                        5;11;                       3;3;
  0;  3;            4;1; - �������������        8;1; - ��������������       2;5; - ��������������
  a=7,81
  b=7,81
  c=12
  s=30 }

{$apptype CONSOLE}

uses
  system.sysutils,
  windows;

var
  a, b, c, x1, y1, x2, y2, x3, y3, s, p, b_st, st1, st2: real;
  bool: boolean;

begin
  setconsolecp(1251);
  setconsoleoutputcp(1251);
  writeln('������� x1 � y1 ����� ������:'); // ������ ����������
  readln(x1, y1);
  writeln('������� x2 � y2 ����� ������:');
  readln(x2, y2);
  writeln('������� x3 � y3 ����� ������:');
  readln(x3, y3);

  a := 0;
  b := 0;
  c := 0;
  s := 0;
  p := 0;
  b_st := 0;
  st1 := 0;
  st2 := 0;
  bool := false;

  if (x1 - x3) * (y2 - y3) = (x2 - x3) * (y1 - y3) then //����� ����� �� ����� ������?
    writeln('����� ����� �� ����� ������.')
  else begin
    a := sqrt(sqr(x2 - x1) + sqr(y2 - y1)); // ���� ����� ������
    b := sqrt(sqr(x3 - x2) + sqr(y3 - y2));
    c := sqrt(sqr(x1 - x3) + sqr(y1 - y3));


    if (a < 0) and (b < 0) and (c < 0) then // ������� ������� �� ����� ����
      writeln('��� �� �����������!')
    else if (a <> b) and (a <> c) and (b <> c) then // ���������, ��� ���� �� ��� ������� �����
      writeln('��� �� �������������� �����������!')
    else
    begin
      if ((a > b) and (b = c)) then // ��������� ������� �� ��������
      begin
        b_st := a;
        st1 := b;
        st2 := c;
      end;

      if ((b > c) and (c = a)) then
      begin
        b_st := b;
        st1 := c;
        st2 := a;
      end;

      if ((c > b) and (b = a)) then
      begin
        b_st := c;
        st1 := b;
        st2 := a;
      end;


      if ((sqr(st1) + sqr(st2)) < sqr(b_st)) then bool := true; // ��������� ��������������
      if bool = false then
        writeln('��� �� ������������ �����������!')
    end;
  end;
  p := (a + b + c) / 2; // ���� �����������
  s := sqrt(p * (p - a) * (p - b) * (p - c)); // ���� �������

  if bool then
    writeln('��� ������� � ������� �����������: ', st1:0:2, ' ', st2:0:2, ' ', b_st:0:2, ' �������: ', s:0:1);
  readln;
end.
