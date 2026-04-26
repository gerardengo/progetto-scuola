object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 627
  ClientWidth = 1263
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object GridAnnoSezione: TDBGrid
    Left = 8
    Top = 8
    Width = 865
    Height = 369
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_pagella'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome_studente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome_materia'
        Width = 197
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'voto'
        Width = 221
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_voto'
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = DataModule1.FDQuery1
    Left = 616
    Top = 480
  end
end
