program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const
N=5;
M=10;
min=-50;
max=50;

var
a:array[1..N,1..M] of integer;
i,j:integer;
num:integer;

begin
randomize;
for i:=1 to N do
 begin
 for j:=1 to M do
  begin
  a[i,j]:=random(abs(min)+abs(max))+min;
  write(a[i,j]:3,' ');
  end;
 writeln;
 end;
num:=0;
for i:=1 to N do
 begin
 for j:=1 to M do
  begin
  if a[i,j]>0 then a[i,j]:=i;
  if a[i,j]<0 then a[i,j]:=sqr(j);
  if a[i,j]=0 then num:=num+1;
  end;
 end;

writeln;
for i:=1 to N do
 begin
 for j:=1 to M do write(a[i,j]:3,' ');
 writeln;
 end;

writeln;
writeln('Kolichestvo nulei: ',num);
readln;
end.
