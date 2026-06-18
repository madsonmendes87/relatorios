program Relatorios;

uses
  Vcl.Forms,
  uPrincipal in 'src\view\uPrincipal.pas' {frmPrincipal},
  uConexao in 'src\datamodule\uConexao.pas' {dmConexao: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdmConexao, dmConexao);
  Application.Run;
end.
