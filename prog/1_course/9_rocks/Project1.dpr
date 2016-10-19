program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const
N=12;
min1=1;
max1=25;

var
a:array[1..N] of integer;
i,j,num,sum:integer;
sr:real;
s1,s2,k,min:integer;

begin
randomize;
num:=0;
{write('N:');}
for i:=1 to N do
 begin
 num:=num+1;
 write(num:2,' ');
 end;

writeln;
{write('M:');}
sum:=0;
for i:=1 to N do
 begin
 a[i]:=(random(abs(min1)+abs(max1))+min1);
 write(a[i]:2,' ');
 sum:=sum+a[i];
 end;

sr:=sum/2;

writeln;writeln;
writeln('Kajdaya gruppa ~ po ',sr:4:2,' kg');writeln;

min:=25*6;
for i:=1 to N-1 do
 begin
 s1:=0;
 s2:=0;
 for j:=1 to i do s1:=s1+a[j];
 for j:=i+1 to 12 do s2:=s2+a[j];
 if abs(s1-s2)<min then begin min:=abs(s1-s2); k:=i; end;
 end;
writeln(s1,' ',s2);
readln;
end.
