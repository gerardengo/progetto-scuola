program PjScuola;

uses
  Vcl.Forms,
  U_Main in 'U_Main.pas' {Form1},
  DATA_DB in 'DATA_DB.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
