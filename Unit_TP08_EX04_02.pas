unit Unit_TP08_EX04_02;

interface

  Function nombre1a6() : Integer;

  Procedure jouerDeuxDes();

  Function lancer() : Integer;

  Procedure jouer();

implementation

Function nombre1a6() : Integer;

begin

  Randomize;

  Result := random(5) + 1;

end;

Procedure jouerDeuxDes();

Var
  de1 : Integer;
  de2 : Integer;
  score1 : Integer;
  score2 : Integer;


begin

  score1 := 0;
  score2 := 0;

  while (score1 <> 10) AND (score2 <> 10) do

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

end;




Function lancer() : Integer;

begin

  Randomize;

  Result := random(5) + random(5) + 2;

end;

Procedure jouer();

Var
  res1 : Integer;
  res2 : Integer;
  sortie : Boolean;

begin

  res1 := lancer();

  if (res1 = 7) OR (res1 = 11) then
  begin
    writeln('Gagné.');
  end

  else if (res1 = 2) OR (res1 = 3) OR (res1 = 12) then
  begin
    writeln('Perdu.');
  end

  else
  begin

    res2 := lancer();
    sortie := False;

    while sortie = False do
    begin

      if res1 = res2 then
      begin
        writeln('Gagné.');
        sortie := True;
      end

      else
      begin
        if res2 = 7 then
        begin
          writeln('Perdu.');
          sortie := True;
        end;
      end;

      res2 := lancer();

    end;


  end;

end;


end.




