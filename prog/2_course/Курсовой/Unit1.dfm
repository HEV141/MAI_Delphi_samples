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
    Width = 66
    Height = 16
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077
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
    Width = 43
    Height = 16
    Caption = #1053#1086#1084#1077#1088
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
    Width = 41
    Height = 16
    Caption = #1052#1072#1089#1089#1072
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
    Width = 140
    Height = 16
    Caption = #1055#1077#1088#1080#1086#1076' '#1087#1086#1083#1091#1088#1072#1089#1087#1072#1076#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 176
    Top = 168
    Width = 112
    Height = 16
    Caption = #1054#1089#1085'. '#1090#1080#1087' '#1088#1072#1089#1087#1072#1076#1072
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
    Left = 256
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 256
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Edit2'
  end
  object Edit3: TEdit
    Left = 256
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'Edit3'
  end
  object Edit4: TEdit
    Left = 336
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'Edit4'
  end
  object Edit5: TEdit
    Left = 336
    Top = 168
    Width = 121
    Height = 21
    TabOrder = 5
    Text = 'Edit5'
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
    TabOrder = 6
    Text = 'ComboBox1'
    OnChange = ComboBox1Change
  end
  object BitBtn1: TBitBtn
    Left = 176
    Top = 200
    Width = 105
    Height = 33
    Caption = '&'#1044#1086#1073#1072#1074#1080#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = BitBtn1Click
    Kind = bkAll
  end
  object XPManifest1: TXPManifest
    Left = 440
  end
  object MainMenu1: TMainMenu
    object N1: TMenuItem
      Caption = #1052#1077#1085#1102
      object N3: TMenuItem
        Caption = #1053#1086#1074#1099#1081' '#1089#1087#1080#1089#1086#1082
        OnClick = N3Click
      end
      object N4: TMenuItem
        Caption = #1044#1077#1084#1086#1085#1089#1090#1088#1072#1094#1080#1103
        OnClick = N4Click
      end
      object N5: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = N5Click
      end
    end
    object N2: TMenuItem
      Caption = #1054' '#1087#1088#1086#1077#1082#1090#1077
      OnClick = N2Click
    end
  end
end
