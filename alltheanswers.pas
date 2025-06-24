program alltheanswers;

const
    answer = 42;

    platter = 1;
    firstside = odd(platter);
    flipside = not firstside;

    yesses = ['Y', 'y'];
    noes = ['N', 'n'];
    answers = yesses + noes;

    usholler = 'ATTENTION!! ';
    usgasmsg = 'Fuel level is low!';
    usgaswarn = usholler + usgasmsg;
    uswarnsiz = length(usgaswarn);

    longside = 17;
    shortside = 6;
    tankdepth = 8;
    volume = longside * shortside * tankdepth;

    var
        tiny:byte;
        little:shortint;
        small:integer;
        big:longint;
        huge: real;

        unitchar : char;

        begin 
        tiny := answer;
        little := answer;
        small := answer;
        big := answer;
        huge := answer;

        unitchar := 'C';

        writeln('A');
        write(chr(234));
        write(unitchar);
        end.

