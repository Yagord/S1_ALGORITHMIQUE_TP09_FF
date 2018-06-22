program TP08_EX04;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;



Function nombre1a100() : Integer;

begin

  Randomize;

  Result := random(100) + 1;

end;




Procedure jouerPLusMoins();

Var
  nb : Integer;
  nbalea : Integer;
  sortie : Boolean;
  cpttour : Integer;

begin

  nbalea := nombre1a100();
  sortie := False;
  cpttour := 0;

  writeln('Saisir un nombre nb :');
  readln(nb);

  while sortie = False do
  begin

    cpttour := cpttour + 1;

    if cpttour = 5 then
    begin
      writeln('Vous avez perdu.');
      sortie := True;
    end

    else if nb = nbalea then
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

end;




Var
  repJouer : String;
  repQuitter : String;
  quit : Boolean;

begin

  quit := False;

  while quit = False do
  begin

    writeln('######PlusMoins######', chr(10));

    writeln('Souhaitez-vous jouez ? oui/non');
    readln(repJouer);

    if repJouer = 'oui' then
    begin
      jouerPlusMoins();
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
