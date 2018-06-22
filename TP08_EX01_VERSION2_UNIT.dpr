program TP08_EX01_VERSION2_UNIT;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Unit_TP08_EX01_VERSION2 in 'Unit_TP08_EX01_VERSION2.pas';

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
