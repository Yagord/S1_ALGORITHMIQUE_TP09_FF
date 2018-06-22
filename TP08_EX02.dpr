program TP08_EX02;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

Function lancer() : Integer;

begin

  Randomize;

  Result := random(5) + random(5) + 2;

end;



Procedure jouer();

Var
  res1 : Integer;
  res2 : Integer;

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

    while (res2 <> res1) AND (res2 <> 7) do
    begin

      if res1 = res2 then
      begin
        writeln('Gagné.');
      end

      else
      begin
        if res2 = 7 then
        begin
          writeln('Perdu.');
        end;
      end;

      res2 := lancer();

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
    writeln('######CRAPS######', chr(10));

    writeln('Souhaitez vous-jouez ? oui/non');
    readln(repJouer);

    if repJouer = 'oui' then
    begin
      jouer();
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
