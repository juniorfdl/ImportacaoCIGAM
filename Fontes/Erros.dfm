object ExceptionDialog: TExceptionDialog
  Left = 267
  Top = 133
  Width = 859
  Height = 497
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Erros Ocorridos no Programa'
  Color = clBtnFace
  Constraints.MinWidth = 200
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnPaint = FormPaint
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnTop: TRzPanel
    Left = 0
    Top = 77
    Width = 843
    Height = 170
    Align = alTop
    BorderOuter = fsNone
    TabOrder = 0
    object Panel1: TRzPanel
      Left = 839
      Top = 0
      Width = 4
      Height = 170
      Align = alRight
      BorderOuter = fsNone
      Color = clWhite
      TabOrder = 0
    end
  end
  object pnTopo: TRzPanel
    Left = 0
    Top = 0
    Width = 843
    Height = 73
    Align = alTop
    BorderOuter = fsFlat
    Color = clWhite
    TabOrder = 1
  end
  object pnSepTopo: TRzPanel
    Left = 0
    Top = 73
    Width = 843
    Height = 4
    Align = alTop
    BorderOuter = fsNone
    Color = clWhite
    TabOrder = 2
  end
  object pnSepTextMemo: TRzPanel
    Left = 0
    Top = 247
    Width = 843
    Height = 4
    Align = alTop
    BorderOuter = fsNone
    Color = clWhite
    TabOrder = 3
  end
  object rzfc_Controles: TRzFrameController
    DisabledColor = clWindow
    FlatButtonColor = 12230785
    FocusColor = 13499128
    FrameColor = 12230785
    FrameHotColor = 1532667
    FrameHotTrack = True
    FrameVisible = True
    Left = 752
    Top = 24
  end
end
