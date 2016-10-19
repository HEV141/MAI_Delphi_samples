program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Unit1 in '..\Unit1.pas';

var
TestVar: Ttest;

begin
TestVar := Ttest.init(10);
writeln(TestVar.math(10, 20));
writeln(TestVar.math(10.0, 20.0):0:2);

readln;
end.
