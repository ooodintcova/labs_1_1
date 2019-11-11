{ №16. Пусть даны координаты трех точек на плоскости. Если они могут быть вершинами
  равнобедренного тупоугольного треугольника, вычислите его площадь. Выведите
  длины сторон и площадь в порядке возрастания значений. }

{ -6; -2;           1;1;
  6; -2;            1;8;
  0;  3;            4;1; - прямоугольный
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
  writeln('Введите x1 и y1 через пробел:'); // Вводим координаты
  readln(x1, y1);
  writeln('Введите x2 и y2 через пробел:');
  readln(x2, y2);
  writeln('Введите x3 и y3 через пробел:');
  readln(x3, y3);

  a:=0;
  b:=0;
  c:=0;
  s:=0;
  p:=0;
  b_st:=0;
  st1:=0;
  st2:=0;

  if (x1-x3)*(y2-y3)=(x2-x3)*(y1-y3) then //Точки лежат на одной прямой?
     writeln('0 Точки лежат на одной прямой.')
  else begin
  a := sqrt(sqr(x2 - x1) + sqr(y2 - y1)); // Ищем длины сторон
  b := sqrt(sqr(x3 - x2) + sqr(y3 - y2));
  c := sqrt(sqr(x1 - x3) + sqr(y1 - y3));
  end;

  if (a < 0) and (b < 0) and (c < 0) then // Никакая сторона не равна нулю
    writeln('1 Это не треугольник!')
  else if (a <> b) and (a <> c) and (b <> c) then // Проверяем, что хотя бы две стороны равны
    writeln('2 Это не равнобедренный треугольник!')
  else
    begin
      if ((a > b) and (b = c)) then // Сортируем стороны по величине
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

      bool := (sqr(st1) + sqr(st2)) < sqr(b_st); // Проверяем тупоугольность
      if not bool then
        writeln('3 Это не тупоугольный треугольник!')
    end;

    p := (a + b + c) / 2; // Ищем полуперметр
    s := sqrt(p * (p - a) * (p - b) * (p - c)); // Ищем площадь

  if bool then
    writeln('Его стороны в порядке возрастания: ', st1:0:2, ' ', st2:0:2, ' ', b_st:0:2, ' Площадь: ', s:0:1);
  readln;
end.
