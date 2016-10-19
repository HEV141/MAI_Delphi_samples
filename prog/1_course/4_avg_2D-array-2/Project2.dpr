program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
matr:array [1..3,1..5] of integer;

var
a:matr;
i,j:integer;
sum,n:integer;
ar:real;

begin
function init(a,b,c):matr;
sum:=0;
n:=0;
randomize;
for i:=1 to b do
 begin
 for j:=1 to c do
  begin
  a[i,j]:=random(a);
  write(a[i,j],' ');

  if ((i mod 2)<>(0)) and ((j mod 2)<>(0)) and ((a[i,j] mod 2)=(0))
  then
   begin
   sum:=sum+a[i,j];
   n:=n+1;
   end;

  end;
 writeln;
 end;
ar:=sum/n;
writeln('Srednee arifmeticheskoe: ',ar);
readln;
end.
