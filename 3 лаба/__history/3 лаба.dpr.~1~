{$apptype CONSOLE}

uses
  system.sysutils,
  windows;


  {¬водитс€ последовательность чисел из вещ. чисел, 0 - конец последовательности
  и состо€ща€ более чем из одного ненулевого элемента.
  ќпределить, содержит ли последовательность хот€ бы 2 равных соседних числа.}



var
  a, b, v: real;
  flag: boolean;

begin
  setconsolecp(1251);
  setconsoleoutputcp(1251);
  writeln('¬ведите последовательность чисел. Ќоль €вл€етс€ концом последовательности: ');
  a:= 0;
  b:= 0;
  flag:= false;

  repeat
    readln(a);
    if (a <> b) AND (a <> 0) then
      b:= a
    else
        if (b = a) then
      flag:= true;
  until a = 0;

  if flag then
    write('≈сть пара соседних одинаковых чисел.')
  else
    write('Ќет пары соседних одинаковых чисел.');
  readln;
end.



