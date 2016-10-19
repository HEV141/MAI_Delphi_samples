program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const
N=5;
M=4;
mini=5;
maxi=105;
del=10;

var
a:array [1..N,1..M] of real;
i,j,k1,k2:integer;
tmp_i,tmp_j:integer;
min,t:real;

begin
randomize;
for i:=1 to N do
 begin
 for j:=1 to M do
  begin
  a[i,j]:=(random(abs(maxi)-abs(mini))+mini)/del;
  write(a[i,j]:6:1);
  end;
 writeln;
 end;


{
for j:=0 to N-1 do
 for i:=0 to N-j-1 do
  if a[i,M]>a[i+1,M] then
   begin
   t:=a[i,M];
   a[i,M]:=a[i+1,M];
   a[i+1,M]:=t;
   end;

for j:=0 to M-1 do
 for i:=0 to M-j-1 do
  if a[N,i]>a[N,i+1] then
   begin
   t:=a[N,i];
   a[N,i]:=a[N,i+1];
   a[N,i+1]:=t;
   end;

}

for k1:=1 to N do
 for k2:=1 to M-1 do
  begin min:=a[k1,k2]; tmp_i:=k1; tmp_j:=k2;
  for i:=k1 to N do
   for j:=k2 to M do
   begin
    if (a[i,j])<(min)
     then
      begin
      min:=a[i,j];
      tmp_i:=i;
      tmp_j:=j;
      end;
   end;
   a[tmp_i,tmp_j]:=a[k1,k2];
   a[k1,k2]:=min;
  end;

writeln;

for i:=1 to N do
 begin
 for j:=1 to M do
  begin
  write(a[i,j]:6:1);
  end;
 writeln;
 end;

readln;
end.

