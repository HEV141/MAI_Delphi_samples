unit Human;

interface
type THuman = class
  private
   name: string;
   age: integer;
  public
   Constructor Init(n: string; a: integer);
   Function get_name(): string;
   Function get_age(): integer;
   procedure print(); virtual;
  end;

implementation

Constructor THuman.Init(n: string; a: integer);
 begin
 name := n;
 age :=  a;
 end;

Function THuman.get_name(): string;
 begin
 result := name;
 end;

Function THuman.get_age(): integer;
 begin
 result := age;
 end;

procedure THuman.print();
 begin
 writeln;
 writeln('=================');
 writeln('Name: ', name);
 writeln('Age: ', age);
 end;

end.
