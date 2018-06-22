unit Unit_TP08_EX03_05;

interface

  Procedure jouerPLusMoins(var score : Integer);

implementation

Function nombre1a100() : Integer;

begin

  Randomize;

  Result := random(2) + 1;

end;

Procedure jouerPLusMoins(var score : Integer);

Var
  nb : Integer;
  nbalea : Integer;
  sortie : Boolean;
  cpttour : Integer;

begin

  nbalea := nombre1a100();
  sortie := False;
  cpttour := 0;
  score := 0;

  writeln('Saisir un nombre nb :');
  readln(nb);

  while sortie = False do
  begin

    cpttour := cpttour + 1;

    if cpttour = 5 then
    begin
      writeln('Vous avez perdu.');
      score := score - 1;
      sortie := True;
    end

    else if nb = nbalea then
    begin
      writeln('Gagné.');
      score := score + 5 - cpttour;
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

end;

end.
