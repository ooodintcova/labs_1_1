{�16. ����� ���� ���������� ���� ����� �� ���������. ���� ��� ����� �������������
��������������� ������������� ������������, ��������� ��� �������. ��������
����� ������ � ������� � ������� ����������� ��������.}

{-6; -2;            1;1;
  6; -2;            1;8;
  0;  3;            4;1; - �������������
  a=7,81
  b=7,81
  c=12
  s=30}



  program project_1;

{$APPTYPE CONSOLE}

uses
  System.SysUtils,
  windows;

var a,b,c,x1,y1,x2,y2,x3,y3,S,p,b_st,st1,st2 :real;
begin
setconsolecp(1251);
setconsoleoutputcp(1251);
  writeln('������� x1 � y1 ����� ������: ');         //������ ����������
     readln(x1,y1);
  writeln('������� x2 � y2 ����� ������: ');
     readln(x2,y2);
  writeln('������� x3 � y3 ����� ������: ');
     readln(x3,y3);

     a:=sqrt(sqr(x2-x1)+sqr(y2-y1));      //���� ����� ������
     b:=sqrt(sqr(x3-x2)+sqr(y3-y2));
     c:=sqrt(sqr(x1-x3)+sqr(y1-y3));

  p:=(a+b+c)/2;                           //���� �����������
  S:=sqrt(p*(p-a)*(p-b)*(p-c));           //���� �������

   if ((a=0) or (b=0) or (c=0)) then      //������� ������� �� ����� ����
    begin
     writeln('��� �� �����������! ������� ������ ����������.');
     readln;
     exit;
    end
  else
   if ((a<>b) and (a<>c) and (b<>c)) then     //���������, ��� ���� �� ��� ������� �����
    begin
     writeln('��� �� �������������� �����������! ������� ������ ����������.');
     readln;
     exit;
    end
  else
          begin
          if ((a>b) and (b=c)) then                  //��������� ������� �� ��������
              begin
                b_st:=a;
                st1:=b;
                st2:=c;
              end;

          if ((b>c) and (c=a)) then
              begin
              b_st:=b;
              st1:=c;
              st2:=a;
              end;

          if ((c>b) and (b=a)) then
             begin
              b_st:=c;
             st1:=b;
             st2:=a;
             end;
           end;

      if (sqr(st1)+sqr(st2)<sqr(b_st)) then          //��������� ��������������
      writeln('��� ������� � ������� �����������: ',st1:0:2, ' ',st2:0:2, ' ',b_st:0:2,' �������: ', S:0:1)
      else writeln('��� �� ������������ �����������! ������� ������ ����������.');
  readln;
  end.


