program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
a:array [1..3,1..5] of integer;
i,j:integer;
sum,n:integer;
ar:real;

begin
sum:=0;
n:=0;
randomize;
for i:=1 to 3 do
 begin
 for j:=1 to 5 do
  begin
  a[i,j]:=random(10);
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
