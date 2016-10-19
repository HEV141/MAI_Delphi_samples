program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
Pointer=^TElement;
TElement=record
data:integer;
next:Pointer;
end;

procedure PrintList(aListHead:Pointer);
var
current:Pointer;
i:integer;
begin
current:=aListHead;
i:=1;
while(Current<>nil) do
  begin
  writeln('Elem #',i,'=',Current^.data);
  i:=i+1;
  current:=current^.next;
  end;
writeln('-|End list|-')
end;

procedure AddItem(aListHead:Pointer; aData:integer);
var
current:Pointer;
NewItem:Pointer;
begin
NewItem:=new(Pointer);
NewItem^.next:=nil;
NewItem^.data:=aData;
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

procedure InsertItem(var aListHead:Pointer; item:integer; aData:integer);
var
tmp,current,NewItem:Pointer;
i:integer;
begin
NewItem:=new(Pointer);
NewItem^.next:=nil;
NewItem^.data:=aData;

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

procedure DeliteItem(var aListHead:Pointer;item:integer);
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

function FindItem(aListHead:Pointer; var sItem:Pointer; aData:integer):boolean;
var
current:Pointer;
begin
result:=false;
current:=aListHead;
while(current <> nil) do
 begin
 if(current^.data = aData) then
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
end;

var
ListHead:Pointer;
Item:Pointer;

begin
ListHead:=new(Pointer);
ListHead^.data:=100;
ListHead^.next:=nil;
PrintList(ListHead);
writeln;

AddItem(ListHead,200);
AddItem(ListHead,300);
PrintList(ListHead);
writeln;

InsertItem(ListHead,1,150);
InsertItem(ListHead,2,250);
InsertItem(ListHead,4,450);
PrintList(ListHead);
writeln;

DeliteItem(ListHead,1);
DeliteItem(ListHead,2);
DeliteItem(ListHead,4);
PrintList(ListHead);
writeln;

if(FindItem(ListHead,Item,200)) then
 writeln(Item^.data)
else
 writeln('Not found');
writeln;

if(FindItem(ListHead,Item,500)) then
 writeln(Item^.data)
else
 writeln('Not found');
writeln;

DeliteList(ListHead);
PrintList(ListHead);
writeln;

readln;
end.
