program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const
N=9;

type
mas=array[0..N] of real;

var
a:mas;
i,o,p,z:integer;

procedure print(a:mas);
 var
 i,j:integer;
 begin
 write('Odinakovye elementy: ');
 for j:=0 to N do
  begin
  for i:=0 to N-1 do
   begin
   if ((a[j])=(a[i])) and ((i)<>(j)) then o:=1;
   end;
  end;
 if (o)=(1) then write('da')
            else write('net');
 writeln;
 end;

begin
writeln('Vvedite cherez probel ',N+1,' chisel:');
for i:=0 to N do
 begin
 read(a[i]);
 end;
print(a);
write('Posledovatelnost: ');
p:=0;
for i:=0 to N-1 do
 begin
  if (a[i])>=(a[i+1])
   then p:=p+1
   else
    if (a[i])<=(a[i+1])
     then p:=p;
  if (((a[i])>(0)) and ((a[i+1])<(0))) or (((a[i])<(0)) and ((a[i+1])>(0)))
   then z:=1;
 end;

case p of
9: writeln('ubyvaushaya');
0: writeln('vozvrastaushaya');
else writeln('besporyadochnaya');
end;

write('Cheredovanie znakov: ');
if (z)=(1) then writeln('da')
           else writeln('net');

readln;
readln;
end.

