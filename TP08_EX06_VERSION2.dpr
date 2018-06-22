program TP08_EX06_VERSION2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;



Function nombre1a6() : Integer;

begin

  Randomize;

  Result := random(5) + 1;

end;




Procedure jouerDeuxDes(var score1 : Integer ; var score2 : Integer);

Var
  de1 : Integer;
  de2 : Integer;

begin

  begin

    writeln('Scores : ', score1, '-', score2);

    de1 := random(6) + 1;
    de2 := random(6) + 1;

    if de1 > de2 then
    begin
      score1 := score1 + 1;
      writeln('Le joueur 1 gagne 1 point.');
      writeln('Score1 + 1');
      writeln('Dé 1 = ', de1);
      writeln('Dé 2 = ', de2);
      writeln(chr(10));
    end

    else if de1 < de2 then
    begin
      score2 := score2 + 1;
      writeln('Le joueur 2 gagne 1 point.');
      writeln('Score2 + 1');
      writeln('Dé 1 = ', de1);
      writeln('Dé 2 = ', de2);
      writeln(chr(10));
    end

    else
    begin
      writeln('Egalité.');
      writeln('Pas de points.');
      writeln('Dé 1 = ', de1);
      writeln('Dé 2 = ', de2);
      writeln(chr(10));
    end;

  end;

end;




Var
  repJouer : String;
  repQuitter : String;
  quit : Boolean;
  score1 : Integer;
  score2 : Integer;

begin

  quit := False;
  score1 := 0;
  score2 := 0;

  while quit = False do
  begin
    writeln('######JEU DES DES######', chr(10));

    writeln('Souhaitez-vous jouez ? oui/non');
    readln(repJouer);

    if repJouer = 'oui' then
    begin

      while (score1 <> 10) AND (score2 <> 10) do
      begin
        jouerDeuxDes(score1, score2);
      end;

      writeln(chr(10));

      if score1 > score2 then
      begin
       writeln('Le joueur 1 gagne la partie.');
      end
      else
      begin
        writeln('Le joueur 2 gagne la partie.');
      end;

      writeln(chr(10));

      writeln('Les scores : ');
      writeln('Score 1 : ', score1);
      writeln('Score 2 : ', score2);

    end

    else
    begin
      writeln('Souhaitez-vous quitter le jeu ? oui/non');
      read(repQuitter);

      if repQuitter = 'oui' then
      begin
        quit := True;
      end;

    end;

    readln;

  end;


end.
