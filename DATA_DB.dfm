object DataModule1: TDataModule1
  Height = 1080
  Width = 1440
  PixelsPerInch = 144
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=D:\DBSqluite\Scuola.db'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 624
    Top = 320
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 1304
    Top = 64
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 1296
    Top = 168
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT '
      '    p.id_pagella, '
      '    p.id_studente, '
      '    s.nome_studente, '
      
        '    p.bit_materia, -- Questo '#232' il campo che diventer'#224' il menu a ' +
        'tendina'
      '    p.voto, '
      '    p.data_voto'
      'FROM Pagelle p'
      'JOIN Studenti s ON p.id_studente = s.id_studente')
    Left = 352
    Top = 664
    object FDQuery1id_pagella: TFDAutoIncField
      FieldName = 'id_pagella'
      Origin = 'id_pagella'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = False
    end
    object FDQuery1id_studente: TIntegerField
      FieldName = 'id_studente'
      Origin = 'id_studente'
    end
    object FDQuery1nome_studente: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_studente'
      Origin = 'nome_studente'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object FDQuery1bit_materia: TIntegerField
      FieldKind = fkLookup
      FieldName = 'bit_materia'
      KeyFields = 'bit_materia'
      Origin = 'bit_materia'
      Lookup = True
    end
    object FDQuery1voto: TFloatField
      FieldName = 'voto'
      Origin = 'voto'
      Required = True
    end
    object FDQuery1data_voto: TWideStringField
      FieldName = 'data_voto'
      Origin = 'data_voto'
      Required = True
      Size = 10
    end
    object FDQuery1materiaNome: TStringField
      FieldKind = fkLookup
      FieldName = 'materiaNome'
      LookupDataSet = TabMaterie
      LookupKeyFields = 'bit_mask'
      LookupResultField = 'nome_materia'
      KeyFields = 'bit_materia'
      Lookup = True
    end
  end
  object TabAnnoSezione: TFDTable
    IndexFieldNames = 'id_coppia'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'Classi_Sezioni'
    Left = 128
    Top = 816
  end
  object TabMaterie: TFDTable
    Active = True
    IndexFieldNames = 'bit_mask'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'Materie'
    Left = 240
    Top = 680
  end
  object tabPagelle: TFDTable
    Active = True
    IndexFieldNames = 'id_pagella'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'Pagelle'
    Left = 264
    Top = 872
    object tabPagelleid_pagella: TFDAutoIncField
      FieldName = 'id_pagella'
      Origin = 'id_pagella'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = False
    end
    object tabPagelleid_studente: TIntegerField
      FieldName = 'id_studente'
      Origin = 'id_studente'
    end
    object tabPagellebit_materia: TIntegerField
      FieldName = 'bit_materia'
      Origin = 'bit_materia'
    end
    object tabPagellevoto: TFloatField
      FieldName = 'voto'
      Origin = 'voto'
      Required = True
    end
    object tabPagelledata_voto: TWideStringField
      FieldName = 'data_voto'
      Origin = 'data_voto'
      Required = True
      Size = 10
    end
  end
end
