unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, XPMan, StdCtrls, Buttons, Basic, Sub;

type
  TForm1 = class(TForm)
    XPManifest1: TXPManifest;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    Memo1: TMemo;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ComboBox1: TComboBox;
    BitBtn1: TBitBtn;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    Procedure CreateList;
    Procedure PrintList;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  List: Tlist;
  p: ^TCartrige;
  Memo1:TMemo;


implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  List := TList.Create();
  Memo1.Clear;
  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
  Edit4.Text := '';
  ComboBox1.Items.Add('Basic');
  ComboBox1.Items.Add('BuckShot');
  ComboBox1.ItemIndex := 0;
  Label4.Visible := False;
  Edit4.Visible := False;
  Edit4.Enabled := False;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
if ComboBox1.ItemIndex = 0 then
 begin
   Label4.Visible := False;
   Edit4.Visible := False;
   Edit4.Enabled := False;
 end;
if ComboBox1.ItemIndex = 1 then
 begin
   Label4.Visible := True;
   Edit4.Visible := True;
   Edit4.Enabled := True;
 end;
end;

procedure TForm1.N5Click(Sender: TObject);
begin
  Form1.Close;
end;

procedure TForm1.CreateList();
begin
  new(p);
  p^ := TCartrige.Init(0.410, 80, 'Metal');
  List.Add(p);
  new(p);
  p^ := TBuckShot.Init(12, 50, 'Plastic', '000 Buckshot');
  List.Add(p);
end;

procedure TForm1.PrintList();
var
  i:integer;
begin
  for i := 0 to List.Count - 1 do
  begin
    TCartrige(List[i]^).print(Memo1);
  end;
end;

procedure TForm1.N4Click(Sender: TObject);
begin
  CreateList;
  PrintList;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
  List := nil;
  List := TList.Create();
  Memo1.Clear;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  if (combobox1.Items[combobox1.ItemIndex]='Basic')
    then
    begin
      if (Length(Edit1.Text) = 0)
      or (Length(Edit2.Text) = 0)
      or (Length(Edit3.Text) = 0) then
        begin
          ShowMessage('Check all fields');
          exit;
        end;
      new(p);
      p^ := TCartrige.Init(StrToFloat(Edit1.Text), StrToInt(Edit2.Text), Edit3.Text);
      List.Add(p);
    end;
  if (combobox1.Items[combobox1.ItemIndex]='BuckShot')
    then
    begin
      if (Length(Edit1.Text) = 0)
      or (Length(Edit2.Text) = 0)
      or (Length(Edit3.Text) = 0)
      or (Length(Edit4.Text) = 0) then
        begin
          ShowMessage('Check all fields');
          exit;
        end;
      new(p);
      p^ := TBuckShot.Init(StrToFloat(Edit1.Text), StrToInt(Edit2.Text), Edit3.Text, Edit4.Text);
      List.Add(p);
    end;
  Memo1.Clear;
  PrintList;
end;

end.
