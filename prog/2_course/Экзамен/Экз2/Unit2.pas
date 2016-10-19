unit Unit2;

interface
uses Unit1;

type
TBuckshot = class(TCartrige)
private
  AmmoType: string;

public
  constructor init(c: real; ch: integer; s: string; AT: string);
  Function get_AmmoType(): string;
  Procedure ChangeType(st:integer);
end;

implementation

constructor TBuckshot.init(c: real; ch: integer; s: string; AT: string);
begin
inherited Init(c, ch, s);
AmmoType := AT;
end;

Function TBuckshot.get_AmmoType(): string;
begin
result := AmmoType;
end;

Procedure TBuckshot.ChangeType(st:integer);
begin
  if st = 1 then  AmmoType := '000 BuckShot';
  if st = 2 then  AmmoType := '00 BuckShot';
  if st = 3 then  AmmoType := 'Flechete';
end;


end.
