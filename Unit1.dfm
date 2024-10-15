object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Classe Gen'#233'rica'
  ClientHeight = 170
  ClientWidth = 317
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Button1: TButton
    Left = 24
    Top = 16
    Width = 121
    Height = 25
    Caption = 'Adicionar Inteiro'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 176
    Top = 16
    Width = 121
    Height = 25
    Caption = 'Adicionar Texto'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Memo1: TMemo
    Left = 24
    Top = 47
    Width = 121
    Height = 107
    TabOrder = 2
  end
  object Memo2: TMemo
    Left = 176
    Top = 47
    Width = 121
    Height = 107
    TabOrder = 3
  end
end
