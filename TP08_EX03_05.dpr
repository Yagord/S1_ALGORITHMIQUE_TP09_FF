program TP08_EX03_05;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Unit_TP08_EX03_05 in 'Unit_TP08_EX03_05.pas';

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