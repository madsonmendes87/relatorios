unit uRelTecidoEmpenho;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Vcl.Imaging.pngimage;

type
  TfrmRelTecidoEmpenho = class(TForm)
    rlRelTecidoEmpenho: TRLReport;
    rlCabecalho: TRLBand;
    rLabelCod: TRLLabel;
    rLabProduto: TRLLabel;
    rLabTipoProd: TRLLabel;
    rlComposicao: TRLLabel;
    rlDBCodigo: TRLDBText;
    rlDBComposicao: TRLDBText;
    rlDBGrupo: TRLDBText;
    rlDBProduto: TRLDBText;
    rlDBSubgrupo: TRLDBText;
    rlDBTipoProduto: TRLDBText;
    rlGrupo: TRLLabel;
    rlImageJFI: TRLImage;
    rlImageNAT: TRLImage;
    rlSubGrupo: TRLLabel;
    rlEmpenhoEstilista: TRLGroup;
    rlDadosEstoque: TRLBand;
    rlPanelDtEntrada: TRLPanel;
    rlDBDtEmpenho: TRLDBText;
    rlPanelCor: TRLPanel;
    rlDBCor: TRLDBMemo;
    rlPanelTamanho: TRLPanel;
    rlDBTamanho: TRLDBText;
    rlPanelRolo: TRLPanel;
    rlDBRolo: TRLDBMemo;
    rlPanelEntForn: TRLPanel;
    rlDBEntForn: TRLDBText;
    rlPanelCustoForn: TRLPanel;
    rlDBCustForn: TRLDBText;
    rlPanelEntrada: TRLPanel;
    rlDBEntrada: TRLDBText;
    rlPanelFator: TRLPanel;
    rlDBFator: TRLDBText;
    rlPanelBalanco: TRLPanel;
    rlDBalanco: TRLDBText;
    rlPanelFisico: TRLPanel;
    rlDBFisico: TRLDBText;
    rlPanelEmpenhos: TRLPanel;
    rlDBEmpenhos: TRLDBText;
    rlPanelDisp: TRLPanel;
    rlDBDisp: TRLDBText;
    rlCusto: TRLPanel;
    rlDBCusto: TRLDBText;
    rlPanelForn: TRLPanel;
    rlDBFornecedor: TRLDBMemo;
    rlCabecalhoEstoque: TRLBand;
    rlLblEmpenho: TRLLabel;
    rlPanelEstilista: TRLPanel;
    rlLabelEstilista: TRLDBText;
    rlDBTotal: TRLDBText;
    rlLabTotal: TRLLabel;
    rlTotais: TRLBand;
    rlPanelTotEntForn: TRLPanel;
    rLabTotEntForn: TRLLabel;
    rlLblTotalEntForn: TRLLabel;
    rlPanelTotEntrada: TRLPanel;
    rLabTotEntrada: TRLLabel;
    rlLblTotalEntrada: TRLLabel;
    rlPanelTotalFisico: TRLPanel;
    rlLabelTotalFisico: TRLLabel;
    rlLblTotalFisico: TRLLabel;
    rlTotalEmpenhos: TRLPanel;
    rLabelTotEmpenhos: TRLLabel;
    rlLblTotEmpenhos: TRLLabel;
    rlPanelTotalDisponivel: TRLPanel;
    rlLabTotDisponivel: TRLLabel;
    rlLblTotDisponivel: TRLLabel;
    rlPanelTituloEmp: TRLPanel;
    rlPanelDtEmpenho: TRLPanel;
    rlLblDtEmpenho: TRLLabel;
    rlPanelReferencia: TRLPanel;
    rlLblReferencia: TRLLabel;
    rlPanelOrdCorte: TRLPanel;
    rlLblOrdCorte: TRLLabel;
    rlPanelOrdProducao: TRLPanel;
    rlLblOrdProducao: TRLLabel;
    rlPanCor: TRLPanel;
    rlLblCor: TRLLabel;
    rlPanelTam: TRLPanel;
    rlLblTam: TRLLabel;
    rlPanRolo: TRLPanel;
    rlLblRolo: TRLLabel;
    rlPanelTipo: TRLPanel;
    rlLblTipo: TRLLabel;
    rlPanSitEmpenho: TRLPanel;
    rlLblSitEmp: TRLLabel;
    rlSitEmp_: TRLLabel;
    rlLblOrdProd_: TRLLabel;
    rlPanConsumo: TRLPanel;
    rlLblConsumo: TRLLabel;

  private
    { Private declarations }
  public
    { Public declarations }
    procedure carregarDados;
  end;

var
  frmRelTecidoEmpenho: TfrmRelTecidoEmpenho;

implementation

{$R *.dfm}

uses uDmPrincipal, uFiltroArtigo, uConexao;

{ TfrmRelTecidoEmpenho }

procedure TfrmRelTecidoEmpenho.carregarDados;
begin
    dmConexao.Conexao.Connected :=true;

    dmPrincipal.dsDadosArtigo.DataSet     :=dmPrincipal.qryDadosArtigo;

    rlDBCodigo.DataSource                 :=dmPrincipal.dsDadosArtigo;
    rlDBCodigo.DataField                  :='cp_id';

    rlDBProduto.DataSource                :=dmPrincipal.dsDadosArtigo;
    rlDBProduto.DataField                 :='cp_descricao';

    rlDBGrupo.DataSource                  :=dmPrincipal.dsDadosArtigo;
    rlDBGrupo.DataField                   :='gr_nome';

    rlDBSubgrupo.DataSource               :=dmPrincipal.dsDadosArtigo;
    rlDBSubGrupo.DataField                :='sgr_nome';

    rlDBTipoProduto.DataSource            :=dmPrincipal.dsDadosArtigo;
    rlDBTipoProduto.DataField             :='tp_nome';

    rlDBComposicao.DataSource             :=dmPrincipal.dsDadosArtigo;
    rlDBComposicao.DataField              :='cm_descricao';






    with dmPrincipal.qryEmpTecidos do
    begin
        Close;
        SQL.Clear;
        SQL.Add('(SELECT');
        SQL.Add('       cp.cp_id,');
        SQL.Add('       gc.grc_id,');
        SQL.Add('       gt.grt_id,');
        SQL.Add('       est.es_id,');
        SQL.Add('       (est.es_nome) AS estilista,');
        SQL.Add('       ce.emp_idestoque,');
        SQL.Add('       (SELECT emp_dtlanc');
        SQL.Add('                   FROM controle_empenho');
        SQL.Add('                   WHERE emp_codprocesso=ce.emp_codprocesso');
        SQL.Add('                   AND emp_idestoque=ce.emp_idestoque');
        SQL.Add('                   AND emp_situacao<>''C''');
        SQL.Add('                   AND emp_tipo=''S''');
        SQL.Add('                   AND emp_eprototipo=ce.emp_eprototipo');
        SQL.Add('                   AND emp_dtlanc IS NOT NULL');
        SQL.Add('                   ORDER BY emp_id ASC');
        SQL.Add('                   LIMIT 1');
        SQL.Add('       ) AS emp_dtlanc,');
        SQL.Add('       ce.emp_codprocesso,');
        SQL.Add('       ce.emp_idordemcorte,');
        SQL.Add('       ce.emp_idordproducao,');
        SQL.Add('       pa.cad_idreferencia,');
        SQL.Add('       (gc.grc_codexterno || '' - ''|| gc.grc_nome) AS grc_nome,');
        SQL.Add('       gt.grt_nome,');
        SQL.Add('       ce.emp_eprototipo,');
        SQL.Add('       (CASE WHEN ce.emp_eprototipo=TRUE THEN ''PROTÓTIPO'' ELSE ''G. ESCALA'' END) AS tipo,');
        SQL.Add('       (CASE');
        SQL.Add('                     WHEN ce.emp_situacao IN (''N'', ''P'') THEN ''SOB PEDIDO DE EMPENHO''');
        SQL.Add('                     WHEN ce.emp_situacao = ''E'' THEN ''TRANSFERIDO''');
        SQL.Add('       END) AS situacao_empenho,');
        SQL.Add('       COALESCE(');
        SQL.Add('                   (SELECT SUM(ces.emp_consumo::numeric) FROM controle_empenho AS ces');
        SQL.Add('                   WHERE');
        SQL.Add('                         ces.emp_idestoque=ce.emp_idestoque');
        SQL.Add('                         AND ces.emp_codprocesso=ce.emp_codprocesso');
        SQL.Add('                         AND ces.emp_tipo=''S''');
        SQL.Add('                         AND ces.emp_situacao<>''C''');
        SQL.Add('                         AND ces.emp_eprototipo=ce.emp_eprototipo');
        SQL.Add('                   ),0) AS ent,');
        SQL.Add('       COALESCE(');
        SQL.Add('                   (SELECT SUM(ces.emp_consumo::numeric) From controle_empenho AS ces');
        SQL.Add('                   WHERE');
        SQL.Add('                         ces.emp_idestoque=ce.emp_idestoque');
        SQL.Add('                         AND ces.emp_codprocesso=ce.emp_codprocesso');
        SQL.Add('                         AND ces.emp_tipo =''E''');
        SQL.Add('                         AND ces.emp_mod=0');
        SQL.Add('                         AND ces.emp_situacao<>''C''');
        SQL.Add('                         AND ces.emp_eprototipo=ce.emp_eprototipo');
        SQL.Add('                   ), 0) AS dev,');
        SQL.Add('       ce.emp_situacao,');
        SQL.Add('       e.es_numrolo');
        SQL.Add('       FROM controle_empenho AS ce');
        SQL.Add('       JOIN estoque AS e ON e.es_id = ce.emp_idestoque');
        SQL.Add('       JOIN cadastro_produto AS cp On cp.cp_id=e.es_codproduto');
        SQL.Add('       JOIN grade_cor AS gc On gc.grc_id = e.es_idgradecor');
        SQL.Add('       JOIN grade_tamanho AS gt ON gt.grt_id = e.es_idgradetam');
        SQL.Add('       JOIN ficha_tecnica AS ft ON ft.fi_id = ce.emp_codprocesso');
        SQL.Add('       JOIN produto_acabado AS pa ON pa.cad_id = ft.fi_idprodutoacabado');
        SQL.Add('       LEFT JOIN cadastro_estilista As est On est.es_id = pa.cad_idestilista');
        SQL.Add('       WHERE');
        SQL.Add('       cp.cp_id=:idArtigo');
        SQL.Add('       AND ce.emp_situacao<>''C''');
        SQL.Add('       AND ce.emp_tipo=''S''');
        SQL.Add('       GROUP BY');
        SQL.Add('                 est.es_nome,');
        SQL.Add('                 ce.emp_idordemcorte,');
        SQL.Add('                 ce.emp_idordproducao,');
        SQL.Add('                 ce.emp_situacao,');
        SQL.Add('                 pa.cad_idreferencia,');
        SQL.Add('                 gc.grc_codexterno,');
        SQL.Add('                 gc.grc_nome,');
        SQL.Add('                 cp.cp_id,');
        SQL.Add('                 gc.grc_id,');
        SQL.Add('                 gt.grt_id,');
        SQL.Add('                 ce.emp_eprototipo,');
        SQL.Add('                 ce.emp_codprocesso,');
        SQL.Add('                 gt.grt_nome,');
        SQL.Add('                 est.es_id,');
        SQL.Add('                 ce.emp_idestoque,');
        SQL.Add('                 e.es_numrolo');
        SQL.Add('     ORDER BY');
        SQL.Add('                 est.es_nome,');
        SQL.Add('                 pa.cad_idreferencia)');

        ParamByName('idArtigo').AsInteger   :=StrToInt(frmFiltroArtigo.edtCodigo.Text);
        Open;
    end;


    dmPrincipal.dsEstTecidos.DataSet     :=dmPrincipal.qryEstTecidos;


     rlRelTecidoEmpenho.DataSource       :=dmPrincipal.dsEmpTecidos;
     rlEmpenhoEstilista.DataFields       :='estilista';

     rlLabelEstilista.DataSource         :=dmPrincipal.dsEmpTecidos;
     rlLabelEstilista.DataField          :='estilista';

     rlDBDtEmpenho.DataSource            :=dmPrincipal.dsEmpTecidos;
     rlDBDtEmpenho.DataField             :='emp_dtlanc';

end;


end.
