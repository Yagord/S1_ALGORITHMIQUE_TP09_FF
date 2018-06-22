program TP08_EX07;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

Var
  A : Integer;
  B : Integer;
  C : Integer;
  cptsolution : Integer;

begin

  cptsolution := 0;

  for A := 1 to 10 do
  begin
    for B := 1 to 10 do
    begin
      for C := 1 to 10 do
      begin

        if A * 100 + B * 10 + C = A * A * A + B * B * B + C * C * C then
        begin

          cptsolution := cptsolution + 1;

          writeln('Solution ', cptsolution);
          writeln('A = ', A);
          writeln('B = ', B);
          writeln('C = ', C, chr(10));

        end;

      end;
    end;
  end;

  readln;

end.
