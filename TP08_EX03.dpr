program TP08_EX03;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;



Function nombre1a100() : Integer;

begin

  Randomize;

  Result := random(100) + 1;

end;




Var
  nb : Integer;
  nbalea : Integer;
  sortie : Boolean;

begin

  nbalea := nombre1a100();
  sortie := False;

  writeln('Saisir un nombre nb :');
  readln(nb);

  while sortie = False do
  begin

    if nb = nbalea then
    begin
      writeln('Gagné.');
      sortie := True;
    end
    else if nb > nbalea then
    begin
      writeln('C''est moins.');
      readln(nb);
    end
    else if nb < nbalea then
    begin
      writeln('C''est plus.');
      readln(nb);
    end;

  end;

  readln;

end.
