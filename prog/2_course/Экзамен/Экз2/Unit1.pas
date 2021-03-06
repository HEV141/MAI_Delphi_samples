unit Unit1;

interface
type TCartrige = class
  Private
   cal: real;
   charge: integer;
   shell: string;
  public
  constructor init(c: real; ch: integer; s: string);
  Function get_cal():real;
  Function get_charge():integer;
  Function get_shell():string;
  Procedure ChageShell(st: integer);
  Procedure ChargeSet(ch: integer);
end;

implementation

constructor TCartrige.init(c: real; ch: integer; s: string);
begin
   cal := c;
   charge := ch;
   shell := s;
end;

Procedure TCartrige.ChargeSet(ch: integer);
begin
charge := ch;
end;

Procedure TCartrige.ChageShell(st: integer);
begin
  if st = 1 then  shell := 'Plastic';
  if st = 2 then  shell := 'Metal';
end;

Function TCartrige.get_cal():real;
begin
  result := cal;
end;

Function TCartrige.get_charge():integer;
begin
  result := charge;
end;

Function TCartrige.get_shell():string;
begin
  result := shell;
end;

end.
