unit BasicUnit;

interface
  uses
  StdCtrls, SysUtils;

  type
   TBullet = class

  private
    name: string;
    cal: real;
    lenght: integer;
    charge: string;
    memo:TMemo;

  public
    Constructor Init(aname: string; acal: real; alenght: integer);
    Function get_name(): string;
    Function get_cal(): real;
    Function get_lenght(): integer;

    procedure print(memo:TMemo); virtual;
  end;


implementation

end.
