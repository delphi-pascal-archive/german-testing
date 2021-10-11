object Form4: TForm4
  Left = 228
  Top = 215
  Width = 717
  Height = 453
  Caption = #1055#1077#1088#1077#1074#1086#1076' '#1089#1083#1086#1074
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 56
    Width = 223
    Height = 20
    Caption = #1057#1083#1086#1074#1086' '#1085#1072' '#1080#1085#1086#1089#1090#1088#1072#1085#1085#1086#1084' '#1103#1079#1099#1082#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 408
    Top = 56
    Width = 117
    Height = 20
    Caption = #1055#1077#1088#1077#1074#1086#1076' '#1089#1083#1086#1074#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 32
    Top = 96
    Width = 273
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 328
    Top = 96
    Width = 273
    Height = 21
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 280
    Top = 152
    Width = 75
    Height = 25
    TabOrder = 2
    OnClick = BitBtn1Click
    Kind = bkOK
  end
  object MainMenu1: TMainMenu
    Left = 8
    Top = 256
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N3: TMenuItem
        Caption = '-'
      end
      object N4: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = N4Click
      end
    end
    object N10: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1082#1072
      object N11: TMenuItem
        Caption = #1055#1086#1084#1086#1097#1100
        OnClick = N11Click
      end
      object N12: TMenuItem
        Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
        OnClick = N12Click
      end
    end
  end
end
