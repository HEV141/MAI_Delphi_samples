program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const
N=14;
min=0;
max=1000;

var
a:array[1..N] of real;
k,i,num:integer;
p,p1:integer;

begin
randomize;
num:=0;
for i:=1 to N do
 begin
 num:=num+1;
 write(num:4,' ');
 end;

writeln;
for i:=1 to N do
 begin
 a[i]:=(random(abs(min)+abs(max))+min)/100;
 write(a[i]:4:2,' ');
 end;

p:=0;

if a[1]<=a[2]
then
for i:=2 to N-1 do
 begin
 if a[i]<=a[i+1] then p:=p+1
                 else begin p:=14; k:=i; break; end;
 end
else
for i:=2 to N-1 do
 begin
 if a[i]>=a[i+1] then p1:=p1+1
                 else begin k:=i; break; end;
 end;
writeln;
if p<13 then writeln('Posledovatelnost ubyvaet do ',k,' elementa')
else if p1<13 then writeln('Posledovatelnost vozrastaet do ',k,' elementa');

readln;
end.
