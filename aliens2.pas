{---
aliens2
by jeff duntemann
freepascal v.2.2.0
last update 2/8/2008
from: freepascal from square one by jeff duntemann
---}

Program aliens2;
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

  colors = (red,orange,yellow,green,blue,ingigo,violet);

Var 
  printables : set Of char;
  i,j : integer;
  namelength : integer;
  namechar : char;
  nameswanted : integer;
  currentname : namestring;

  tempstring : string;

  function pull(minvalue, maxvalue: integer): integer;

  var i: integer;

  begin
      repeat
          I := random(maxvalue);
          until i >= minvalue;
          pull := i;
  end;


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
             writeln('Invalid input. An integer between 1 and 10 is expected.');
  End;

  write('nameswanted is: ');
  writeln(nameswanted);
Until (nameswanted > 0) And (nameswanted <=10);

For i := 1 To nameswanted Do
  Begin
    currentname := '';
      namelength := pull(minlength,maxlength);

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
Introduce function

}
