program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

function add(a,b:real):real;
 begin
 result:=a+b;
 end;

function dec(a,b:real):real;
 begin
 result:=a-b;
 end;

function mux(a,b:real):real;
 begin
 result:=a*b;
 end;

function divs(a,b:real):real;
 begin
 if b=0 then result:=-999999
        else result:=a/b;
 end;

procedure clear;
 var
 i:integer;
 begin
  for i:=1 to 50 do writeln;
 end;

procedure print(a,b:real;res:real;menu:integer);
 begin
 case menu of
 1:writeln(a:0:2,'+',b:0:2,'=',res:0:2);
 2:writeln(a:0:2,'-',b:0:2,'=',res:0:2);
 3:writeln(a:0:2,'*',b:0:2,'=',res:0:2);
 4:writeln(a:0:2,'/',b:0:2,'=',res:0:2); end;
 end;

var
res:real;
a,b:real;
menu,menu2,i:integer;
first_start:boolean;


begin
first_start:=true;
while(true) do
 begin
 if(first_start)
 then
  begin
  first_start:=false;
  writeln('1 - Exit');
  writeln('2 - Novoe vychislenie');
  for i:=0 to 5 do
   begin
   writeln; write('->'); readln(menu2);
   if (menu2>2)or(menu2<1)
   then
    begin
    writeln('Nevernyi nomer. Ostalos ',(5-i),' popytok');
    menu2:=1
    end
   else break;
   end;
  end
 else
  begin
  writeln('1 - Exit');
  writeln('2 - Novoe vychislenie');
  writeln('3 - Prodoljit vychislenie');
  for i:=0 to 5 do
   begin
   writeln; write('->'); readln(menu2);
   if (menu2>3)or(menu2<1)
   then
    begin
    writeln('Nevernyi nomer. Ostalos ',(5-i),' popytok');
    menu2:=1
    end
   else break;
   end;
  end;
 case menu2 of
 1:break;
 2:begin
   writeln; writeln('Vvedite cherez ENTER chisla: ');
   write('a='); readln(a);
   write('b='); readln(b);
   writeln('a=',a:0:2,' b=',b:0:2);
   res:=0; writeln;
   end;
 3:begin
   writeln; a:=res;
   writeln('Vvedite vtoroe chislo:');
   write('b='); readln(b);
   writeln('a(Predydushiy rezultat)=',a:0:2,' b=',b:0:2);
   res:=0; writeln;
   end; end;

 writeln('Vyberite deistvie:');
 writeln('1-slojenie');
 writeln('2-vychitanie');
 writeln('3-umnojenie');
 writeln('4-delenie');
 writeln('5-nichego ne delat'); writeln;

 write('->'); readln(menu);
 case menu of
 1:res:=add(a,b);
 2:res:=dec(a,b);
 3:res:=mux(a,b);
 4:res:=divs(a,b);
 5:writeln('Ne vopros');
 else writeln('Nevernyi kod') end;

 writeln;
 print(a,b,res,menu);
 writeln; writeln('==============================');writeln;

 end;
readln;
end.
