{$apptype CONSOLE}

uses
  system.sysutils,
  windows;

{����� �������� ������������������ �� ����� �����,
  �������������� �����. ������� ���������� �� ���� �������������
  ����� ������������������. �49�}



var
  a, min: integer;
  flag: boolean;

begin
  setconsolecp(1251);
  setconsoleoutputcp(1251);
  writeln('������� ������������������ �� ����� �����, ���� ����� 0 �������� ����� ������������������: ');
  a := 0;
  min := 0;
  flag := false;


  if flag = false then begin
    repeat
      readln(a);
      if a > 0 then begin                        //����� ������� �������������� ��������
        flag := true;
        min := a;
      end;
    until (flag = true) or (a = 0);
  end;
  if flag = true then
  begin                                        //����� �������� ����� ���������
    repeat
      readln(a);
      if (a > 0) and (a < min) then
        min := a;
    until a = 0;
  end;
 
  if flag = false then writeln('�� ��������� ������������������ ��� ��������, ���������������� ������� ������.')
  else writeln('������� = ', min, '.');
  readln;
end.
