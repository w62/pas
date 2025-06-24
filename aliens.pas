


{---
aliens
by jeff duntemann
freepascal v.2.2.0
last update 2/8/2008
from: freepascal from square one by jeff duntemann
---}

Program aliens;
{$mode objfpc}

Uses 
crt,
sysutils,
character;

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

  tempstring : string;

Begin
  randomize;
  printables := ['A'..'Z', 'a'..'z'];
  clrscr;
  nameswanted := 0;
  write('How many alien names do you want? (1-10): ');
  Repeat
    readln(tempstring);

    Try
      nameswanted := strtoint(tempstring);
    Except
      on e : econverterror Do
             writeln('Invalid number.');
  End;

  write('nameswanted is: ');
  writeln(nameswanted);
Until (nameswanted > 0) And (nameswanted <=10);

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



{
Bug:

1. Input < 1 no output        (fixed)
2. Input is character, runtime error (fixed)
3. Input > 10 still works (fixed)

}
