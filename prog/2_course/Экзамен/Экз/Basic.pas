unit Basic;

interface
  uses
  StdCtrls, SysUtils;

  type
    TCartrige = class

  private
    cal: real;
    charge: integer;
    shell: string;
    memo:TMemo;

  public
    Constructor Init(acal: real; acharge: integer; ashell: string);
    Function get_cal(): real;
    Function get_charge(): integer;
    Function get_shell(): string;
    procedure print(memo:TMemo); virtual;
    procedure ShellChange();
    procedure ChargeUp();
    procedure ChargeDown();
  end;

implementation

  Constructor TCartrige.Init(acal: real; acharge: integer; ashell: string);
    begin
      cal := acal;
      charge := acharge;
      shell := ashell;
    end;

  Function TCartrige.get_cal(): real;
    begin
      result := cal;
    end;

  Function TCartrige.get_charge(): integer;
    begin
      result := charge;
    end;

  Function TCartrige.get_shell(): string;
    begin
      result := shell;
    end;

  procedure TCartrige.print(memo:TMemo);
    begin
      memo.lines.add('===============');
      memo.lines.add('Cal: ' + floattostr(cal));
      memo.lines.add('Charge: ' + inttostr(charge) + '%');
      memo.lines.add('Shell: ' + shell);
    end;

  procedure TCartrige.ShellChange();
    begin
      if shell = 'Metal' then  shell := 'Plastic';
      if shell = 'Plastic' then  shell := 'Metal';
    end;

  procedure TCartrige.ChargeUp();
    begin
      charge := charge + 10;
    end;

  procedure TCartrige.ChargeDown();
    begin
      charge := charge - 10;
    end;

end.
