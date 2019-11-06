  program Project3;

{$APPTYPE CONSOLE}

uses
  System.SysUtils,
  windows;


  {¬водитс€ последовательность чисел из вещ. чисел, 0 - конец последовательности
  и состо€ща€ более чем из одного ненулевого элемента.
  ќпределить, содержит ли последовательность хот€ бы 2 равных соседних числа.}

  var
  a,b,c,n: real;
  begin
     setconsolecp(1251);
     setconsoleoutputcp(1251);
     writeln('¬ведите последовательность чисел. Ќоль €вл€етс€ концом последовательности: ');
     readln(a);
     n:=0;
     c:=0;

     repeat
      readln(b);
      n:=n+1;
      if b=a then c:=1;
      a:=b;
     until(b=0)and(n>1);

if c=1 then write('≈сть пара соседних одинаковых чисел.')
else write('Ќет пары соседних одинаковых чисел.');
readln
end.



