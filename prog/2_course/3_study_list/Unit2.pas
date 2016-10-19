unit Unit2;

interface
uses Unit1;
type
TStudent = class(THuman)
private
  group: integer;
  mark: real;

public
  constructor init(n: string; a, g: integer; m: real);
  Function get_group(): integer;
  Function get_mark(): real;
  procedure print(); override;
end;

implementation

Constructor TStudent.Init(n: string; a, g: integer; m: real);
 begin
 inherited Init(n, a);
 group := g;
 mark :=  m;
 end;

Function TStudent.get_group(): integer;
 begin
 result := group;
 end;

Function TStudent.get_mark(): real;
 begin
 result := mark;
 end;

procedure TStudent.print();
 begin
 inherited print;
 writeln('Group: ', group);
 writeln('Mark: ', mark:2:2);
 end;


end.
