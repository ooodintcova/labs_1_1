 program Project3;

{$APPTYPE CONSOLE}

uses
  System.SysUtils,
  windows;


  {Вводится последовательность чисел из вещ. чисел, 0 - конец последовательности
  и состоящая более чем из одного ненулевого элемента.
  Определить, содержит ли последовательность хотя бы 2 равных соседних числа.}

  var
  input, preinput: real;
  flag: boolean;
  
  begin
     setconsolecp(1251);
     setconsoleoutputcp(1251);
     writeln('Введите последовательность чисел. Ноль является концом последовательности: ');
	 input := 0.0;
	 preinput := 0.0;
	 flag := false;
	 
     repeat
      readln(input);
      if (input = preinput) AND (input <> 0)
		flag := true;
     until input = 0;

if flag then 
	write('…сть пара соседних одинаковых чисел.')
else 
	write('Ќет пары соседних одинаковых чисел.');
readln;
end.



