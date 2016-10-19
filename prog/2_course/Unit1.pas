unit Unit1;

interface
type TCar = class
  private
   reserve: real;
   consuption: real;
   tank: real;
   model: string[5];
   km: real;
   empty: boolean;
  public
  constructor init(r, c, t, k: real; m: string);
  Function refuel(l: real): real;
  Function get_reserve(): real;
  Function get_km(): real;
  Function drive(k: real): real; overload;
  Function drive(h, s: real): real; overload;
end;

implementation

constructor TCar.init(r, c, t, k: real; m: string);
begin
reserve  :=  r;
consuption := c;
tank := t;
model := m;
km := k;
end;

Function TCar.refuel(l: real): real;
begin
if l <= tank then result := -1
             else result := l - tank;
end;

Function TCar.drive(k: real): real;
begin
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

Function TCar.drive(h, s: real): real;
var
k:real;
begin
k := h * s;
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
