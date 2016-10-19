object Form1: TForm1
  Left = 192
  Top = 125
  Width = 489
  Height = 308
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 176
    Top = 40
    Width = 20
    Height = 16
    Caption = 'Cal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 176
    Top = 72
    Width = 67
    Height = 16
    Caption = 'Charge (%)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 176
    Top = 104
    Width = 30
    Height = 16
    Caption = 'Shell'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 176
    Top = 136
    Width = 87
    Height = 16
    Caption = 'Type of ammo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 161
    Height = 233
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Lines.Strings = (
      'Memo1')
    ParentFont = False
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 272
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 272
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Edit2'
  end
  object Edit3: TEdit
    Left = 272
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'Edit3'
  end
  object Edit4: TEdit
    Left = 272
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'Edit4'
  end
  object ComboBox1: TComboBox
    Left = 176
    Top = 8
    Width = 145
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    TabOrder = 5
    Text = 'ComboBox1'
    OnChange = ComboBox1Change
  end
  object BitBtn1: TBitBtn
    Left = 176
    Top = 168
    Width = 105
    Height = 33
    Caption = '&Add'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = BitBtn1Click
    Kind = bkAll
  end
  object Button1: TButton
    Left = 288
    Top = 168
    Width = 105
    Height = 33
    Caption = 'Change'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object XPManifest1: TXPManifest
    Left = 440
  end
  object MainMenu1: TMainMenu
    object N1: TMenuItem
      Caption = 'Menu'
      object N3: TMenuItem
        Caption = 'New list'
        OnClick = N3Click
      end
      object N4: TMenuItem
        Caption = 'Demo'
        OnClick = N4Click
      end
      object N5: TMenuItem
        Caption = 'Exit'
        OnClick = N5Click
      end
    end
  end
end
