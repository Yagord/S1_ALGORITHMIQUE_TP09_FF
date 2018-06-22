program TP08_EX04_02;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Unit_TP08_EX04_02 in 'Unit_TP08_EX04_02.pas';

Var
  repJouer : String;
  repQuitter : String;
  repJeu : String;
  quit : Boolean;

begin

  quit := False;

  while quit = False do
  begin

    writeln('Souhaitez-vous jouez ? oui/non');
    readln(repJouer);

    if repJouer = 'oui' then
    begin

      writeln('A quel jeu ? 1 - Jeu des dés 2 - Craps');
      readln(repJeu);

      if repJeu = '1' then
      begin
        writeln('######JEU DES DES######', chr(10));
        jouerDeuxDes()
      end

      else if repJeu = '2' then
      begin
        writeln('######CRAPS######', chr(10));
        jouer();
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
