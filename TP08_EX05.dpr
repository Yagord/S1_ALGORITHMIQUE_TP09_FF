program TP08_EX05;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;



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




Var
  repJouer : String;
  repQuitter : String;
  quit : Boolean;
  score : Integer;
  scoreMax : Integer;
  cptpartie : Integer;

begin

  quit := False;
  scoreMax := 0;
  cptpartie := 0;

  while quit = False do
  begin

    writeln('######PlusMoins######', chr(10));

    writeln('Souhaitez-vous jouez ? oui/non');
    readln(repJouer);

    if repJouer = 'oui' then
    begin

      jouerPlusMoins(score);

      cptpartie := cptpartie + 1;

      writeln('Votre score sur cette partie est : ', score);

      scoreMax := scoreMax + score;

      if scoreMax >= 10 then
      begin
        writeln(chr(10), 'Votre Score est de : ', scoreMax);
        writeln('VOUS AVEZ TERMINE LE JEU EN ', cptpartie, ' PARTIES.', chr(10), 'APPUYER SUR ENTRE POUR QUITTER.');
        quit := True;
      end;

    end

    else
    begin

      writeln('Souhaitez-vous quittez ? oui/non');
      read(repQuitter);

      if repQuitter = 'oui' then
      begin
        quit := True;
      end;

    end;

    readln;

  end;



end.
