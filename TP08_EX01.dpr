program TP08_EX01;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;



Procedure table(p1 : Integer ; p2 : Integer ; p3 : Integer);

Var
  i : Integer;
  j : Integer;

begin

  for i := p1 to p2 do
  begin

    for j := 1 to p3 do
    begin
      writeln(i,' x ', j, ' = ', i*j);
    end;

    writeln(chr(10));

  end;

end;




Var
  parametre1 : Integer;
  parametre2 : Integer;
  parametre3 : Integer;


begin

  writeln('Saisir le paramètre 1 :');
  readln(parametre1);
  writeln('Saisir le paramètre 2 :');
  readln(parametre2);
  writeln('Saisir le paramètre 3 :');
  readln(parametre3);

  table(parametre1, parametre2, parametre3);

  readln;

end.
