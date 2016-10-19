unit Basic;

interface
  uses
  StdCtrls, SysUtils;

  type
    TChemicalElements = class

  private
    name: string;
    number: integer;
    mass: real;
    memo:TMemo;

  public
    Constructor Init(aname: string; anumber: integer; amass: real);
    Function get_name(): string;
    Function get_number(): integer;
    Function get_mass(): real;
    procedure print(memo:TMemo); virtual;
  end;

implementation

  Constructor TChemicalElements.Init(aname: string; anumber: integer; amass: real);
    begin
      name := aname;
      number := anumber;
      mass := amass;
    end;

  Function TChemicalElements.get_name(): string;
    begin
      result := name;
    end;

  Function TChemicalElements.get_number(): integer;
    begin
      result := number;
    end;

  Function TChemicalElements.get_mass(): real;
    begin
      result := mass;
    end;

  procedure TChemicalElements.print(memo:TMemo);
    begin
      memo.lines.add('===============');
      memo.lines.add('Name: ' + name);
      memo.lines.add('Number: ' + inttostr(number));
      memo.lines.add('Mass: ' + floattostr(mass));
    end;

end.
