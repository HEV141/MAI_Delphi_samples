program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
a:array of integer;
i,n,l:integer;

begin
randomize;
SetLength(a,6);
l:=Length(a);
writeln('Dlina massiva: ',l);
for i:=0 to length(a)-1 do
 begin
 a[i]:=random(10);
 write(a[i]:2);
 end;

writeln;
SetLength(a,3);
for i:=0 to length(a)-1 do write(a[i]:2);

writeln;
SetLength(a,6);
for i:=0 to length(a)-1 do write(a[i]:2);

readln;
end.

