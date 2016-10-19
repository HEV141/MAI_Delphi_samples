program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
TRec=Record
 name:string[20];
 age:integer;
 mark:real;
 vec:array[1..4] of integer;
 end;

TSphere=Record
 name:string[20];
 case IsSphere:boolean of
  True: (diametr:integer);
  False: (length:integer;
         widht:integer;);
  end;

var
Stud1,Stud2,Stud3:TRec;
var1,var2:TSphere;
i:integer;

begin
with Stud1 do
begin
 name:='Vasya';
 age:=18;
 for i:=1 to 4 do vec[i]:=i;
end;

Stud1.mark:=0;
for i:=1 to 4 do Stud1.mark:=Stud1.mark+Stud1.vec[i];
Stud1.mark:=Stud1.mark/4;
writeln('Name: ',Stud1.name);
writeln('Age: ',Stud1.age);
writeln(Stud1.mark:4:2);
writeln;

with var1 do
begin
 name:='12';
 IsSphere:= false;
 length:=12;
 widht:=40;
end;
var1.diametr:=10;

with var1 do
begin
 Writeln('len ',length);
 Writeln('wid ',widht);
 Writeln('diam ',diametr);

end;


readln;
end.
