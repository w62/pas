
Program runtimetest1;

{$rangechecks on}

Type 
  grade = 'a'..'f' ;
  highgrade='A'..'F';

  semestergrades = Record
    studentid: string[9];
    semesterid: string[6];
    math: grade;
    english: grade;
    drafting: grade;
    history: grade;
    spanish: grade;
    gym: grade;
    semestergpa: real
  End;

Var 
  mymath:grade;
  thissemester: semestergrades;

Begin
    with thissemester do
        begin
            studentid:='hello';
            semesterid:='er';
            math:='d';
            english:='a';
            drafting:='c';
            history:='b';
            spanish:='a';
            gym:='b';
            semestergpa:=12.3
        end;
  writeln(thissemester.studentid);
  readln
End.
