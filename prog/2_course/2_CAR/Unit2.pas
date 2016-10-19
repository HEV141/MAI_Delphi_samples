unit Unit2;

interface
uses Unit1;

type
Truck = class(TCar)
private
  storage: real;

public
  constructor init(m: string; r, c, t, k, s: real);
  Function get_storage():real;
  Function drive(k, m: real): real;
end;

implementation

constructor Truck.init(m: string; r, c, t, k, s: real);
begin
reserve  :=  r;
consuption := c;
tank := t;
model := m;
km := k;
storage := s;
end;

Function Truck.get_storage():real;
begin
result:=storage;
end;

Function Truck.drive(k, m: real): real;
begin
if reserve < 0  then reserve := 0;
if k <= (reserve / consuption)
 then
  begin
  result := -1;
  km := km + k;
  reserve := reserve - (k / consuption);
  end

 else
  begin
  result := k - (reserve / consuption);
  km := km + result;
  reserve := reserve - (result / consuption);
  end;
end;

end.
