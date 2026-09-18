program Relatorios;

uses
  Vcl.Forms,
  uPrincipal in 'src\view\uPrincipal.pas' {frmPrincipal},
  uConexao in 'src\datamodule\uConexao.pas' {dmConexao: TDataModule},
  uFiltroArtigo in 'src\view\uFiltroArtigo.pas' {frmFiltroArtigo},
  uDmPrincipal in 'src\datamodule\uDmPrincipal.pas' {dmPrincipal: TDataModule},
  uRelTecidos in 'src\view\uRelTecidos.pas' {frmRelTecidos},
  uRelTecidoEmpenho in 'src\view\uRelTecidoEmpenho.pas' {frmRelTecidoEmpenho},
  uRelArtigos in 'src\view\uRelArtigos.pas' {frmRelArtigos},
  uRelArtigosEmpenho in 'src\view\uRelArtigosEmpenho.pas' {frmRelArtigosEmpenho},
  uTecidoReserva in 'src\view\uTecidoReserva.pas' {frmTecidoReserva},
  uArtigosReserva in 'src\view\uArtigosReserva.pas' {frmArtigosReserva},
  uRelSinteticoTecido in 'src\view\uRelSinteticoTecido.pas' {frmRelSinteticoTecido},
  uRelSinteticoArtigo in 'src\view\uRelSinteticoArtigo.pas' {frmRelSinteticoArtigo},
  uFiltroProdutividade in 'src\view\uFiltroProdutividade.pas' {frmFiltroProdutividade},
  uDmFiltroProdutividade in 'src\datamodule\uDmFiltroProdutividade.pas' {dmFiltroProdutividade: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdmConexao, dmConexao);
  Application.CreateForm(TdmPrincipal, dmPrincipal);
  Application.CreateForm(TfrmRelTecidos, frmRelTecidos);
  Application.CreateForm(TfrmRelTecidoEmpenho, frmRelTecidoEmpenho);
  Application.CreateForm(TfrmRelArtigos, frmRelArtigos);
  Application.CreateForm(TfrmRelArtigosEmpenho, frmRelArtigosEmpenho);
  Application.CreateForm(TfrmTecidoReserva, frmTecidoReserva);
  Application.CreateForm(TfrmArtigosReserva, frmArtigosReserva);
  Application.CreateForm(TfrmRelSinteticoTecido, frmRelSinteticoTecido);
  Application.CreateForm(TfrmRelSinteticoArtigo, frmRelSinteticoArtigo);
  Application.CreateForm(TdmFiltroProdutividade, dmFiltroProdutividade);
  Application.Run;
end.
