unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPMan, StdCtrls, Buttons, ExtCtrls, Human, Student, Tutor;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Bevel1: TBevel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    Procedure CreateList;
    Procedure PrintList;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  List: Tlist;
  p: ^THuman;
  Memo1:TMemo;

implementation


{$R *.dfm}


procedure TForm1.FormCreate(Sender: TObject);
begin
Memo1.Clear;
List := TList.Create();
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
CreateList;
PrintList;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
Memo1.Lines.Delete(1);
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
Form1.Close;
end;

procedure TForm1.CreateList();
begin
new(p);
p^ := Thuman.Init('Warfalamey', 94);
List.Add(p);

new(p);
p^ := TStudent.Init('Pafnutiy', 20, 222, 4.33);
List.Add(p);

new(p);
p^ := TTutor.Init('Inokentiy', 'Physics', 55, 10);
List.Add(p);

end;

procedure TForm1.PrintList();
var
i:integer;
begin
  for i := 0 to List.Count - 1 do
  begin
  Thuman(List[i]^).print(Memo1);
  end;
end;

end. procedure TForm1.Memo1Change(Sender: TObject);
begin

end;


