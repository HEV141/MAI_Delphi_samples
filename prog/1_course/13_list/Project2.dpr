program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
PElement=^TElement;
TElement=record
data:integer;
next,prew:PElement;
end;

procedure PrintList(aListHead:PElement; aListTail:PElement; reverse:boolean);
var
current:PElement;
i:integer;
begin
current:=aListHead;
i:=1;
if (reverse) then
 begin
 current:=aListTail;
  while(Current<>nil) do
  begin
  writeln('Elem #',i,'=',Current^.data);
  i:=i+1;
  current:=current^.prew;
  end;
 end
else
 begin
 current:=aListHead;
  while(Current<>nil) do
  begin
  writeln('Elem #',i,'=',Current^.data);
  i:=i+1; 
  current:=current^.next;
  end;
 end;
writeln('-|End list|-')
end;

procedure AddItem(aListHead:PElement; var aListTail:PElement; aData:integer);
var
current:PElement;
NewItem:PElement;
begin
NewItem:=new(PElement);
NewItem^.next:=nil;
NewItem^.data:=aData;

current:=aListHead;
while(current^.next<>nil) do current:=current^.next;
current^.next:=NewItem;
NewItem^.prew:=current;
aListTail:=newItem;
//current^.next:=new(PElement);
//current:=current^.next;
//current^.next:=nil;
//current^.data:=aData;
end;

procedure DeliteList(var aListHead:PElement);
var
tmp,current:PElement;
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

procedure InsertItem(var aListHead:PElement; var aListTail:PElement; item:integer; aData:integer);
var
current,NewItem:PElement;
i:integer;
begin
NewItem:=new(PElement);
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
 NewItem^.next:=current^.next;
 current^.next:=NewItem;
 NewItem^.prew:=current;
 current:=NewItem^.next;
 if (current = nil) then
  aListTail:=NewItem
 else
 current^.prew:=NewItem;
// tmp:=current^.next;
// current^.next:=NewItem;
// NewItem^.next:=tmp;
// current^.next:=new(PElement);
// current:=current^.next;
// current^.data:=aData;
// current^.next:=tmp;
 end
else
 begin
 NewItem^.next:=aListHead;
 aListHead^.prew:=NewItem;
 aListHead:=NewItem;
// NewItem^.next:=aListHead;
// aListHead:=NewItem;
// current:=new(PElement);
// current^.next:=aListHead;
// current^.data:=aData;
// aListHead:=current;
 end;
end;

procedure DeliteItem(var aListHead:PElement;item:integer);
var
tmp,current:PElement;
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

function FindItem(aListHead:PElement; var sItem:PElement; aData:integer):boolean;
var
current:PElement;
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
ListHead,ListTail:PElement;
Item:PElement;

begin
ListHead:=new(PElement);
ListHead^.data:=100;
ListHead^.next:=nil;
ListHead^.prew:=nil;
ListTail:=ListHead;
PrintList(ListHead,ListTail,False);
writeln;

AddItem(ListHead,ListTail,200);
AddItem(ListHead,ListTail,300);
PrintList(ListHead,ListTail,False);
writeln;

PrintList(ListHead,ListTail,True);
writeln;


InsertItem(ListHead,ListTail,1,150);
InsertItem(ListHead,ListTail,2,250);
InsertItem(ListHead,ListTail,4,450);
PrintList(ListHead,ListTail,False);
writeln;

DeliteItem(ListHead,1);
DeliteItem(ListHead,2);
DeliteItem(ListHead,4);
PrintList(ListHead,ListTail,False);
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
PrintList(ListHead,ListTail,False);
writeln;

readln;
end.
