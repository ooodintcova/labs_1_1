{$apptype CONSOLE}

uses
  system.sysutils,
  windows;


  {�������� ������������������ ����� �� ���. �����, 0 - ����� ������������������
  � ��������� ����� ��� �� ������ ���������� ��������.
  ����������, �������� �� ������������������ ���� �� 2 ������ �������� �����.}



var
  a, b, v: real;
  flag: boolean;

begin
  setconsolecp(1251);
  setconsoleoutputcp(1251);
  writeln('������� ������������������ �����. ���� �������� ������ ������������������: ');
  a:= 0;
  b:= 0;
  flag:= false;

  repeat
    readln(a);
    if (a <> b) and (a <> 0) then
      b:= a
    else
        if (b = a) and (a <> 0) then
      flag:= true;
  until a = 0;

  if flag = true then
    write('���� ���� �������� ���������� �����.')
  else
    write('��� ���� �������� ���������� �����.');
  readln;
end.



