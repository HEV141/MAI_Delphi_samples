unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, XPMan, StdCtrls, Buttons, Basic, Actinide, Noble_gas;

type
  TForm1 = class(TForm)
    XPManifest1: TXPManifest;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    Memo1: TMemo;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Edit5: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ComboBox1: TComboBox;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
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
  p: ^TChemicalElements;
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
  Edit5.Text := '';
  ComboBox1.Items.Add('Общий случай');
  ComboBox1.Items.Add('Инертные газы');
  ComboBox1.Items.Add('Актиноиды');
  ComboBox1.ItemIndex := 0;
  Label4.Visible := False;
  Label5.Visible := False;
  Edit4.Visible := False;
  Edit4.Enabled := False;
  Edit5.Visible := False;
  Edit5.Enabled := False;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
if ComboBox1.ItemIndex = 0 then
 begin
   Label4.Visible := False;
   Label5.Visible := False;
   Edit4.Visible := False;
   Edit4.Enabled := False;
   Edit5.Visible := False;
   Edit5.Enabled := False;
 end;
if ComboBox1.ItemIndex = 1 then
 begin
   Label4.Visible := True;
   Label4.Caption := 'Цвет свечения';
   Label5.Visible := True;
   Label5.Caption := 'Температура кипения';
   Edit4.Visible := True;
   Edit4.Enabled := True;
   Edit5.Visible := True;
   Edit5.Enabled := True;
 end;
if ComboBox1.ItemIndex = 2 then
 begin
   Label4.Visible := True;
   Label4.Caption := 'Период полураспада';
   Label5.Visible := True;
   Label5.Caption := 'Основной тип распада';
   Edit4.Visible := True;
   Edit4.Enabled := True;
   Edit5.Visible := True;
   Edit5.Enabled := True;
 end;
end;

procedure TForm1.N5Click(Sender: TObject);
begin
  Form1.Close;
end;

procedure TForm1.CreateList();
begin
  new(p);
  p^ := TChemicalElements.Init('Plumbum', 82, 207);
  List.Add(p);
  new(p);
  p^ := TChemicalElements.Init('Wolframium', 74, 183);
  List.Add(p);
  new(p);
  p^ := TActinoids.Init('Actinium-228', 89, 228, 'beta', 0.25);
  List.Add(p);
  new(p);
  p^ := TActinoids.Init('Radium-224', 88, 224, 'alpha', 3.66);
  List.Add(p);
  new(p);
  p^ := TInertGases.Init('Helium', 2, 4, 'yellow', 4.215);
  List.Add(p);
  new(p);
  p^ := TInertGases.Init('Neon', 10, 20, 'red', 27.1);
  List.Add(p);
end;

procedure TForm1.PrintList();
var
  i:integer;
begin
  for i := 0 to List.Count - 1 do
  begin
    TChemicalElements(List[i]^).print(Memo1);
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
  if (combobox1.Items[combobox1.ItemIndex]='Общий случай')
    then
    begin
      if (Length(Edit1.Text) = 0)
      or (Length(Edit2.Text) = 0)
      or (Length(Edit3.Text) = 0) then
        begin
          ShowMessage('Заполните все поля');
          exit;
        end;
      new(p);
      p^ := TChemicalElements.Init(Edit1.Text, StrToInt(Edit2.Text), StrToInt(Edit3.Text));
      List.Add(p);
    end;
  if (combobox1.Items[combobox1.ItemIndex]='Инертные газы')
    then
    begin
      if (Length(Edit1.Text) = 0)
      or (Length(Edit2.Text) = 0)
      or (Length(Edit3.Text) = 0)
      or (Length(Edit4.Text) = 0)
      or (Length(Edit5.Text) = 0) then
        begin
          ShowMessage('Заполните все поля');
          exit;
        end;
      new(p);
      p^ := TInertGases.Init(Edit1.Text, StrToInt(Edit2.Text), StrToInt(Edit3.Text), Edit4.Text, StrToFloat(Edit5.Text));
      List.Add(p);
    end;
  if (combobox1.Items[combobox1.ItemIndex]='Актиноиды')
    then
    begin
      if (Length(Edit1.Text) = 0)
      or (Length(Edit2.Text) = 0)
      or (Length(Edit3.Text) = 0)
      or (Length(Edit4.Text) = 0)
      or (Length(Edit5.Text) = 0) then
        begin
          ShowMessage('Заполните все поля');
          exit;
        end;
      new(p);
      p^ := TActinoids.Init(Edit1.Text, StrToInt(Edit2.Text), StrToInt(Edit3.Text), Edit4.Text, StrToFloat(Edit5.Text));
      List.Add(p);
    end;
  Memo1.Clear;    
  PrintList;
end;

procedure TForm1.N2Click(Sender: TObject);
var
  Mess: TForm;
begin
  Mess := Dialogs.CreateMessageDialog('Made by JlE6EDb, PAK, LLLYKA', mtCustom, [mbOK]);
  Mess.Font.Size := 8;
  Mess.ShowModal;
end;

end.
