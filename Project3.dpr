 program Project3;

{$APPTYPE CONSOLE}

uses
  System.SysUtils,
  windows;


  {�������� ������������������ ����� �� ���. �����, 0 - ����� ������������������
  � ��������� ����� ��� �� ������ ���������� ��������.
  ����������, �������� �� ������������������ ���� �� 2 ������ �������� �����.}

  var
  input, preinput: real;
  flag: boolean;
  
  begin
     setconsolecp(1251);
     setconsoleoutputcp(1251);
     writeln('������� ������������������ �����. ���� �������� ������ ������������������: ');
	 input := 0.0;
	 preinput := 0.0;
	 flag := false;
	 
     repeat
      readln(input);
      if (input = preinput) AND (input <> 0)
		flag := true;
     until input = 0;

if flag then 
	write('���� ���� �������� ���������� �����.')
else 
	write('��� ���� �������� ���������� �����.');
readln;
end.



