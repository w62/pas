
Program states;

Type 
    {II = Indiana; OG = Oregon to avoid reserved word conflict}
  State = (AK,AL,AR,AZ,CA,CO,CT,DE,DC,FL,GA,HI,ID,IL,II,
           IA,KS,KY,LA,MA,MD,ME,MI,MN,MO,MS,MT,NE,NV,NH,
           NJ,NM,NY,NC,ND,OH,OK,OG,PA,RI,SC,SD,TN,TX,UT,
           VA,VT,WA,WI,WV,WY);

  spectrum = (red, orange, yellow, green, blue, indigo, violet);

Var 
  FromState : State;
  countnewengland: integer;
  countmidatlantic: integer;
  countmidwest: integer;
  countplains: integer;
  countsoutheast: integer;
  countwest: integer;
  countsouthwest: integer;
  countsouth: integer;
  countunknown: integer;
  lightspeed: real;
  color: spectrum;
  frequency: array[red..violet] Of real;
  wavelength: array[red..violet] Of real;
Begin
  fromstate := AK;
  countnewengland := 0;;
  countmidatlantic := 0;
  countmidwest := 0;
  countplains := 0;
  countsoutheast := 0;
  countwest := 0;
  countsouthwest := 0;
  countsouth := 0;
  countunknown := 0;


  Wavelength[Red] := 6.2E-7; { All in meters }
  Wavelength[Orange] := 5.9E-7;
  Wavelength[Yellow] := 5.6E-7;
  Wavelength[Green] := 5.4E-7;
  Wavelength[Blue] := 5.15E-7;
  Wavelength[Indigo] := 4.8E-7;
  Wavelength[Violet] := 4.5E-7;

  lightspeed := 3.0e06;
  For color:=red To violet Do
    Begin
      frequency[color] := wavelength[color]/lightspeed;
    End;
  Case FromState Of 
    CT,MA,ME,NH,
    RI,VT : CountNewEngland := CountNewEngland + 1;

    DC,DE,MD,NJ,
    NY,PA : CountMidAtlantic := CountMidAtlantic + 1;

    FL,GA,NC,SC : CountSoutheast := CountSoutheast + 1;

    IA,IL,II,MI,
    MN,OH,WI,WV : CountMidwest := CountMidwest + 1;

    AL,AR,KY,LA,
    MO,MS,TN,VA : CountSouth := CountSouth + 1;

    KS,ND,NE,SD,
    WY : CountPlains := CountPlains + 1;

    AK,CA,CO,HI,
    ID,MT,OG,UT,
    WA : CountWest := CountWest + 1;

    AZ,NM,NV,OK,
    TX : CountSouthwest := CountSouthwest + 1;


  End; { CASE }
End.
