  program Project3;

{$APPTYPE CONSOLE}

uses
  System.SysUtils,
  windows;


  {�������� ������������������ ����� �� ���. �����, 0 - ����� ������������������
  � ��������� ����� ��� �� ������ ���������� ��������.
  ����������, �������� �� ������������������ ���� �� 2 ������ �������� �����.}

  var
  a,b,c,n: real;
  begin
     setconsolecp(1251);
     setconsoleoutputcp(1251);
     writeln('������� ������������������ �����. ���� �������� ������ ������������������: ');
     readln(a);
     n:=0;
     c:=0;

     repeat
      readln(b);
      n:=n+1;
      if b=a then c:=1;
      a:=b;
     until(b=0)and(n>1);

if c=1 then write('���� ���� �������� ���������� �����.')
else write('��� ���� �������� ���������� �����.');
readln
end.



