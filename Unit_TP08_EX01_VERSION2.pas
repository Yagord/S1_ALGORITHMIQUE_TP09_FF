unit Unit_TP08_EX01_VERSION2;

interface

  Procedure table(p1 : Integer ; p2 : Integer ; p3 : Integer);

implementation

Procedure table(p1 : Integer ; p2 : Integer ; p3 : Integer);

Var
  i : Integer;
  j : Integer;

begin

  for i := p1 to p2 do
  begin

    for j := 1 to p3 do
    begin
      writeln(i:3,' x ', j:3, ' = ', (i*j):3);
    end;

    writeln(chr(10));

  end;

end;

end.
