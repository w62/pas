
Program boxtest;

Uses crt;

Type 
  linerec = Record
    ulcorner,
    urcorner,
    llcorner,
    lrcorner,
    hbar,
    vbar,
    linecross,
    tdown,
    tup,
    tright,
    tleft: string[4]
  End;

Const 
{pclinechars : linerec = 
                          (ulcorner:#201;
                           urcorner:#201;
                           llcorner:#187;
                           lrcorner:#200;
                           hbar:#205;
                           vbar:#186;
                           linecross:#206;
                           tdown:#203;
                           tup:#202;
                           tright:#185;
                           tleft:#204);}
  pclinechars : linerec = 
                          (ulcorner:#65;
                           urcorner:#65;
                           llcorner:#65;
                           lrcorner:#65;
                           hbar:#66;
                           vbar:#66;
                           linecross:#68;
                           tdown:#67;
                           tup:#67;
                           tright:#67;
                           tleft:#67);

Var 
  x,y: integer;
  width,height: integer;

Procedure makebox(x,y,width,height:integer;
                  linechars:linerec);

Var 
  i: integer;
Begin
  If x<0 Then x := (80-width) Div 2;
  With linechars Do
    Begin
      gotoxy(x,y);
      write(ulcorner);
      For i:=3 To width Do
        write(hbar);
      write(urcorner);
      gotoxy(x,(y+height)-1);
      write(llcorner);
      For i:=3 To width Do
        write(hbar);
      write(lrcorner);

      For I:=1 To height-2 Do
        Begin
          gotoxy(x,y+I);
          write(vbar);
          gotoxy((x+width)-1,y+i);
          write(vbar);
        End
    End
End;
Begin
  randomize;
  clrscr;
  While Not keypressed Do
    Begin
      x := random(72);
      y := random(21);
      Repeat
        width := random(80-72)
      Until width > 1;
      Repeat
        height := random(25-y)
      Until height > 1;
      makebox(x,y,width,height,pclinechars);
      delay(25);
    End
End.
