program TP08_EXSUPP01;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;



Procedure affichageLigneCaractere(caractere : Char ; nbCaractere : Integer);

Var
  chaineCaractere : String;
  i : Integer;

begin
  chaineCaractere := '';
  for i:= 1 to nbCaractere do
  begin
    chaineCaractere := chaineCaractere + caractere;
  end;

  write(chaineCaractere);

end;


Var
  i : Integer;
  hauteurDesFeuilles : Integer;
  hauteurTronc : Integer;
  largeurTronc : Integer;
  decalageTronc : Integer;

begin

  hauteurDesFeuilles := 10;
  hauteurTronc := 5;
  decalageTronc := (2*hauteurDesFeuilles + 1) div 4 + 1;
  largeurTronc := (2*hauteurDesFeuilles - 1) - 2*decalageTronc;


  for i:= 0 to hauteurDesFeuilles - 1 do
  begin

    affichageLigneCaractere(' ', hauteurDesFeuilles - 1 - i);
    affichageLigneCaractere('a', 2*i+1);

    writeln;

  end;

  for i:= 0 to hauteurTronc do
  begin
    affichageLigneCaractere(' ', decalageTronc);
    affichageLigneCaractere('a', largeurTronc);
    writeln;
  end;


  readln;

end.
