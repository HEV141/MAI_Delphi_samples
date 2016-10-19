unit Sub;

interface
  uses
  Basic, StdCtrls, SysUtils;

  type
    TBuckShot = class(TCartrige)

  private
    AmmoType: string;

  public
    constructor Init(acal: real; acharge: integer; ashell: string; aAmmoType: string);
    function get_AmmoType():string;
    procedure print(memo:TMemo); override;
    procedure TypeChange;
  end;

implementation

  constructor TBuckShot.Init(acal: real; acharge: integer; ashell: string; aAmmoType: string);
    begin
      inherited Init(acal, acharge, ashell);
      AmmoType := aAmmoType;
    end;

  function TBuckShot.get_AmmoType():string;
    begin
      result := AmmoType;
    end;


  procedure TBuckShot.print(memo:TMemo);
    begin
      inherited print(memo);
      memo.lines.add('Type of ammo: ' + AmmoType);
    end;

  procedure TBuckShot.TypeChange();
    begin
      if AmmoType = '000 Buckshot' then  AmmoType := '00 Buckshot';
      if AmmoType = '00 Buckshot' then  AmmoType := 'Critical defence';
      if AmmoType = 'Critical defence' then  AmmoType := '000 Buckshot';
    end;

end.
