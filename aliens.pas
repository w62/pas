
{---
aliens
by jeff duntemann
freepascal v.2.2.0
last update 2/8/2008
from: freepascal from square one by jeff duntemann
---}

Program aliens;

Uses crt;

Const 
  maxlength = 9;   {The longest name we'll try to generate }
  minlength = 2;
  lastletter = 122; {lower=case 'z' in the ASCII symbol set }

Type 
  namestring = string[maxlength];

Var 
  printables : set Of char;
  i,j : integer;
  namelength : integer;
  namechar : char;
  nameswanted : integer;
  currentname : namestring;

Begin
  randomize;
  printables := ['A'..'Z', 'a'..'z'];
  clrscr;
  write('How many alien names do you want? (1-10): ');

  readln(nameswanted);

  For i := 1 To nameswanted Do
    Begin
      currentname := '';
      Repeat
        namelength := random(maxlength);
      Until namelength > minlength;

      For j := 1 To namelength Do
        Begin
          Repeat
            namechar := chr(random(lastletter));
          Until namechar In printables;
          currentname := currentname+namechar;
        End;
      writeln(currentname);
    End;
  readln
End.
