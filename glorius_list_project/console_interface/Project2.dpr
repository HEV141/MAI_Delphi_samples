program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
Pointer=^TElement;
TElement=record
data:string;
x:integer;
y:integer;
z:integer;
next:Pointer;
end;

procedure PrintList(aListHead:Pointer);
var
current:Pointer;
i:integer;
begin
writeln('================');
current:=aListHead;
i:=1;
while(Current<>nil) do
  begin
  writeln('Elem #',i,'-',Current^.data);
  writeln('Length = ',Current^.x);
  writeln('Width  = ',Current^.y);
  writeln('Height = ',Current^.z);
  i:=i+1;
  current:=current^.next;
  writeln;
  end;
writeln('-|End list|-');
writeln('================');
writeln;
end;

procedure AddItem(aListHead:Pointer; aData:string; ax,ay,az:integer);
var
current:Pointer;
NewItem:Pointer;
begin
NewItem:=new(Pointer);
NewItem^.next:=nil;
NewItem^.data:=aData;
NewItem^.x:=ax;
NewItem^.y:=ay;
NewItem^.z:=az;
current:=aListHead;
while(current^.next<>nil) do current:=current^.next;
current^.next:=NewItem;
end;

procedure DeliteList(var aListHead:Pointer);
var
tmp,current:Pointer;
begin
current:=aListHead;
while(current<>nil) do
 begin
 tmp:=current^.next;
 dispose(current);
 current:=tmp;
 end;
aListHead:=nil;
end;

procedure InsertItem(var aListHead:Pointer; item:integer; aData:string; ax,ay,az:integer);
var
tmp,current,NewItem:Pointer;
i:integer;
begin
NewItem:=new(Pointer);
NewItem^.next:=nil;
NewItem^.data:=aData;
NewItem^.x:=ax;
NewItem^.y:=ay;
NewItem^.z:=az;

if (item>1) then
 begin
 i:=1;
 current:=aListHead;
 while((i<item-1) and (current^.next<>nil)) do
  begin
  current:=current^.next;
  i:=i+1;
  end;
 tmp:=current^.next;
 current^.next:=newItem;
 newItem^.next:=tmp;
 end
 else
  begin
  newItem^.next:=aListHead;
  aListHead:=newItem;
  end;
end;

procedure DeliteItem(var aListHead:Pointer; item:integer);
var
tmp,current:Pointer;
i:integer;
begin
if (item>1) then
 begin
 current:=aListHead;
 i:=1;
 while((i<item-1) and (current^.next<>nil)) do
  begin
  current:=current^.next;
  i:=i+1;
  end;
  tmp:=current^.next;
  if (tmp<>nil) then current^.next:=tmp^.next
                else current^.next:=nil;
 end
else
 begin
 tmp:=aListHead;
 aListHead:=tmp^.next;
 dispose(tmp);
 tmp:=nil;
 end;
end;

function FindItem(aListHead:Pointer; aOpt:integer; var sItem:Pointer; aData:string; ax,ay,az:integer):boolean;
var
current:Pointer;
begin
result:=false;
current:=aListHead;
while(current <> nil) do
 begin
 case aOpt of
 1:begin
   if(current^.data=aData) then
    begin
    sItem:=current;
    result:=true;
    break;
    end
   else
    begin
    current:=current^.next
    end;
   end;

 2:begin
   if(current^.x=ax) then
    begin
    sItem:=current;
    result:=true;
    break;
    end
   else
    begin
    current:=current^.next
    end;
   end;

 3:begin
   if(current^.y=ay) then
    begin
    sItem:=current;
    result:=true;
    break;
    end
   else
    begin
    current:=current^.next
    end;
   end;

 4:begin
   if(current^.z=az) then
    begin
    sItem:=current;
    result:=true;
    break;
    end
   else
    begin
    current:=current^.next
    end;
   end;
 end; //case

 end; //while
end;

var
ListHead:Pointer;
Item:Pointer;
choice,Data:string;
pos,x,y,z,opt:integer;

begin

repeat
writeln('[N]ew list');
writeln('[P]rint list');
writeln('[A]dd item');
writeln('[I]nsert item');
writeln('[D]elete item');
writeln('[F]ind item');
writeln('[De]lite list');
writeln('[E]xit');
write('->');
readln(choice);
writeln;

if (choice='n') or (choice='N') then
 begin
 writeln('New list');
 writeln('New element');
 ListHead:=new(Pointer);
 write('Name: ');
 readln(ListHead^.data);
 write('Length: ');
 readln(ListHead^.x);
 write('Wigth:  ');
 readln(ListHead^.y);
 write('Height: ');
 readln(ListHead^.z);
 ListHead^.next:=nil;
 writeln;
 end;


if (choice='p') or (choice='P') then
 begin
 PrintList(ListHead);
 end;

if (choice='a') or (choice='A') then
 begin
 write('Name: ');
 readln(data);
 write('Length: ');
 readln(x);
 write('Width:  ');
 readln(y);
 write('Height: ');
 readln(z);
 AddItem(ListHead,Data,x,y,z);
 writeln;
 end;

if (choice='i') or (choice='I') then
 begin
 write('Position: ');
 readln(pos);
 write('Name: ');
 readln(data);
 write('Length: ');
 readln(x);
 write('Width:  ');
 readln(y);
 write('Height: ');
 readln(z);
 InsertItem(ListHead,pos,Data,x,y,z);
 writeln;
 end;

if (choice='d') or (choice='D') then
 begin
 write('Position: ');
 readln(pos);
 DeliteItem(ListHead,pos);
 writeln;
 end;

if (choice='f') or (choice='F') then
 begin
 writeln('Choose search option: ');
 writeln('1: Name');
 writeln('2: Length');
 writeln('3: Width');
 writeln('4: Height');
 write('->');
 readln(opt);
 write('Enter search query: ');
 case opt of
 1:readln(Data);
 2:readln(x);
 3:readln(y);
 4:readln(z);
 end;
 if(FindItem(ListHead,Opt,Item,Data,x,y,z))
  then
  begin
  writeln;
  writeln('Name: ',Item^.data);
  writeln('Length: ',Item^.x);
  writeln('Width:  ',Item^.y);
  writeln('Height: ',Item^.z);
  end
  else writeln('Not found');
  writeln;
 end;

if (choice='de') or (choice='DE') or (choice='De') then
 begin
 DeliteList(ListHead);
 writeln;
 end;

until (choice='e') or (choice='E');
end.
