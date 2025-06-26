
Program betterrooter;

Var 
  r,s: real;

Begin
  writeln('>>better square root calculator<<');
  writeln;
  R := 1;
  While r<> 0 Do
    Begin
      writeln('>>enter the number (0 to exit): ');
      readln(r);
      If r<> 0 Then
        Begin
          s := sqrt(r);
          writeln(' the square root of ', R:7:7, ' is ', S:7:7, '.');
          writeln
        End
    End;
  writeln('>> square root calculator signing off...')
End.
