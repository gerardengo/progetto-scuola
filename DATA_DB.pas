unit DATA_DB;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.Phys.SQLiteDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, FireDAC.Comp.UI,
  FireDAC.Phys.SQLite;

type
  TDataModule1 = class(TDataModule)
    FDConnection1: TFDConnection;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDQuery1: TFDQuery;
    TabAnnoSezione: TFDTable;
    TabMaterie: TFDTable;
    tabPagelle: TFDTable;
    tabPagelleid_pagella: TFDAutoIncField;
    tabPagelleid_studente: TIntegerField;
    tabPagellebit_materia: TIntegerField;
    tabPagellevoto: TFloatField;
    tabPagelledata_voto: TWideStringField;
    FDQuery1id_pagella: TFDAutoIncField;
    FDQuery1id_studente: TIntegerField;
    FDQuery1nome_studente: TWideStringField;
    FDQuery1bit_materia: TIntegerField;
    FDQuery1voto: TFloatField;
    FDQuery1data_voto: TWideStringField;
    FDQuery1materiaNome: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
