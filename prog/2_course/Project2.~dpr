program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Unit1 in 'Unit1.pas';

var a:integer;
MyObj: Ttest;

begin
writeln('enter a');
readln(a);

MyObj := Ttest.Create;
MyObj.init(a, a*2);
MyObj.add();
a := MyObj.resultat;

writeln('a= ',a);

readln;
end.
