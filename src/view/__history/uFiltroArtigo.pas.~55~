unit uFiltroArtigo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmFiltroArtigo = class(TForm)
    lblTipoSaldo: TLabel;
    cboTipoSaldo: TComboBox;
    lblCodigo: TLabel;
    edtCodigo: TEdit;
    lblPesquisar: TLabel;
    lblCor: TLabel;
    dblcbCor: TDBLookupComboBox;
    btnZerarCor: TSpeedButton;
    lblTamanho: TLabel;
    dblcbTamanho: TDBLookupComboBox;
    btnZeraTamanho: TSpeedButton;
    lblComprador: TLabel;
    dblcbComprador: TDBLookupComboBox;
    btnZeraComprador: TSpeedButton;
    lblTipoReserva: TLabel;
    cbTipoReserva: TComboBox;
    chkProtSemGE: TCheckBox;
    lblCheck1: TLabel;
    lblCheck2: TLabel;
    lblFornecedor: TLabel;
    dblcbFornecedor: TDBLookupComboBox;
    btnZeraFornecedor: TSpeedButton;
    lblTipoEmpenho: TLabel;
    cboTipoEmpenho: TComboBox;
    boxTecido: TGroupBox;
    chkEmpRolos: TCheckBox;
    boxOrdenar: TGroupBox;
    rbREF: TRadioButton;
    rbNumRolo: TRadioButton;
    rbEstilista: TRadioButton;
    pnlVisualizar: TPanel;
    btnVisualizarEstoque: TSpeedButton;
    pnlVisualEmpenho: TPanel;
    btnVisEmpenho: TSpeedButton;
    pnlVisualizarReserva: TPanel;
    btnVisReservas: TSpeedButton;
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btnZerarCorClick(Sender: TObject);
    procedure edtCodigoExit(Sender: TObject);
    procedure btnZeraTamanhoClick(Sender: TObject);
    procedure btnZeraCompradorClick(Sender: TObject);
    procedure btnZeraFornecedorClick(Sender: TObject);
    procedure btnVisualizarEstoqueClick(Sender: TObject);
    procedure btnVisEmpenhoClick(Sender: TObject);
    procedure chkProtSemGEClick(Sender: TObject);
    procedure btnVisReservasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure previsualizacao;
  end;

var
  frmFiltroArtigo: TfrmFiltroArtigo;

implementation

{$R *.dfm}

uses uPrincipal, uDmPrincipal, uRelTecidos, uRelTecidoEmpenho, uRelArtigos,
  uRelArtigosEmpenho, uTecidoReserva, uArtigosReserva;

procedure TfrmFiltroArtigo.btnVisEmpenhoClick(Sender: TObject);
begin
    previsualizacao;

    if dmPrincipal.qryDadosArtigo.FindField('tp_nome') <> nil then
    begin
        if dmPrincipal.qryDadosArtigo.FieldByName('tp_nome').AsString = 'MATERIA PRIMA' then
        begin
            frmRelTecidoEmpenho.carregarDados;
            frmRelTecidoEmpenho.rlRelTecidoEmpenho.Preview();
        end
        else
        begin
            frmRelArtigosEmpenho.carregarDados;
            frmRelArtigosEmpenho.rlRelArtigosEmpenho.Preview();
        end;
    end;
end;

procedure TfrmFiltroArtigo.btnVisReservasClick(Sender: TObject);
begin
    previsualizacao;

    if dmPrincipal.qryDadosArtigo.FindField('tp_nome') <> nil then
    begin
        if dmPrincipal.qryDadosArtigo.FieldByName('tp_nome').AsString = 'MATERIA PRIMA' then
        begin
            frmTecidoReserva.carregarDados;
            frmTecidoReserva.rlRelTecidoReserva.Preview();
        end
        else
        begin
            frmArtigosReserva.carregarDados;
            frmArtigosReserva.rlRelArtigoReserva.Preview();
        end;
    end;
end;

procedure TfrmFiltroArtigo.btnVisualizarEstoqueClick(Sender: TObject);
begin
    previsualizacao;

    if dmPrincipal.qryDadosArtigo.FindField('tp_nome') <> nil then
    begin
        if dmPrincipal.qryDadosArtigo.FieldByName('tp_nome').AsString = 'MATERIA PRIMA' then
        begin
            frmRelTecidos.carregarDados;
            frmRelTecidos.rlRelTecidos.Preview();
        end
        else
        begin
            frmRelArtigos.carregarDados;
            frmRelArtigos.rlRelArtigos.Preview();
        end;
    end;
end;

procedure TfrmFiltroArtigo.btnZeraCompradorClick(Sender: TObject);
begin
    dblcbComprador.KeyValue   :=Null;
end;

procedure TfrmFiltroArtigo.btnZerarCorClick(Sender: TObject);
begin
    dblcbCor.KeyValue   :=Null;
end;

procedure TfrmFiltroArtigo.btnZeraTamanhoClick(Sender: TObject);
begin
    dblcbTamanho.KeyValue   :=Null;
end;

procedure TfrmFiltroArtigo.chkProtSemGEClick(Sender: TObject);
begin
    if chkProtSemGE.Checked = true then
    begin
        cbTipoReserva.ItemIndex     :=1;
        cboTipoEmpenho.ItemIndex    :=1;
    end
    else
    begin
        cbTipoReserva.ItemIndex     :=0;
        cboTipoEmpenho.ItemIndex    :=0;
    end;
end;

procedure TfrmFiltroArtigo.edtCodigoExit(Sender: TObject);
begin
    if edtCodigo.Text <> '' then
    begin
        with dmPrincipal.qryGrc do
        begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT DISTINCT');
            SQL.Add('   gc.grc_id,');
            SQL.Add('   CAST(');
            SQL.Add('       COALESCE(gc.grc_codexterno, '''') || '' - '' || TRIM(gc.grc_nome)');
            SQL.Add('       AS VARCHAR(50)');
            SQL.Add('   ) AS grc_nome_pa');
            SQL.Add('  FROM grade_cor gc');
            SQL.Add('  INNER JOIN estoque e');
            SQL.Add('  ON e.es_idgradecor = gc.grc_id');
            SQL.Add('  WHERE e.es_codproduto = :idProduto');
            SQL.Add('  ORDER BY grc_nome_pa');

            ParamByName('idProduto').AsInteger    :=StrToInt(edtCodigo.Text);
            Open;
        end;





        with dmPrincipal.qryTamanho do
        begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT DISTINCT');
            SQL.Add('   gt.grt_id,');
            SQL.Add('   gt.grt_nome');
            SQL.Add('   FROM grade_tamanho gt');
            SQL.Add('   INNER JOIN estoque e');
            SQL.Add('   ON e.es_idgradetam = gt.grt_id');
            SQL.Add('   WHERE e.es_codproduto = :idProduto');
            SQL.Add('   ORDER BY grt_nome');

            ParamByName('idProduto').AsInteger    :=StrToInt(edtCodigo.Text);
            Open;
        end;





        with dmPrincipal.qryComprador do
        begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT DISTINCT');
            SQL.Add('   cc.comp_id,');
            SQL.Add('   cc.comp_nome');
            SQL.Add('   FROM itens_grade_nfentrada ign');
            SQL.Add('   JOIN estoque es ON es.es_codproduto = ign.ig_codproduto');
            SQL.Add('   JOIN cadastro_compradores cc ON cc.comp_id = ign.ig_idcomprador');
            SQL.Add('   WHERE es.es_codproduto = :idProduto');

            ParamByName('idProduto').AsInteger    :=StrToInt(edtCodigo.Text);
            Open;
        end;



        with dmPrincipal.qryFornecedor do
        begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT DISTINCT');
            SQL.Add('   fo.for_codigo,');
            SQL.Add('   fo.for_apelido');
            SQL.Add('   FROM itens_grade_nfentrada ign');
            SQL.Add('   JOIN estoque es ON es.es_codproduto = ign.ig_codproduto');
            SQL.Add('   JOIN nota_fiscal_entrada nf ON nf.nfe_id = ign.ig_idnfent');
            SQL.Add('   JOIN fornecedor fo ON nf.nfe_codforn = fo.for_codigo');
            SQL.Add('   WHERE es.es_codproduto = :idProduto');

            ParamByName('idProduto').AsInteger    :=StrToInt(edtCodigo.Text);
            Open;
        end;

    end;
end;

procedure TfrmFiltroArtigo.edtCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
    if not (Key in ['0'..'9', #8]) then
      Key := #0;
end;

procedure TfrmFiltroArtigo.FormShow(Sender: TObject);
begin
    dmPrincipal.qryGrc.Active             :=true;
    dmPrincipal.qryTamanho.Active         :=true;
    dmPrincipal.qryComprador.Active       :=true;
    dmPrincipal.qryFornecedor.Active      :=true;
    rbEstilista.Checked                   :=true;
end;

procedure TfrmFiltroArtigo.previsualizacao;
begin
    if edtCodigo.Text = '' then
    begin
        Application.MessageBox('Informe o código do produto','Relatorio Artigos', MB_OK + MB_ICONINFORMATION);
        exit;
    end;


    with dmPrincipal.qryDadosArtigo do
    begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT');
        SQL.Add('     cp.cp_id,');
        SQL.Add('     cp.cp_descricao,');
        SQL.Add('     gr.gr_nome,');
        SQL.Add('     sgr.sgr_nome,');
        SQL.Add('     tp.tp_nome,');
        SQL.Add('     cm.cm_descricao');
        SQL.Add('     FROM cadastro_produto AS cp');
        SQL.Add('     LEFT JOIN grupo AS gr ON gr.gr_id = cp.cp_idgrupo');
        SQL.Add('     LEFT JOIN subgrupo AS sgr ON sgr.sgr_id = cp.cp_idsubgrupo');
        SQL.Add('     LEFT JOIN tipo_produto AS tp ON tp.tp_id = cp.cp_idtipoproduto');
        SQL.Add('     LEFT JOIN composicao_material AS cm ON cm.cm_id = cp.cp_idcomposicao');
        SQL.Add('     WHERE cp_id = :idArtigo');

        ParamByName('idArtigo').AsInteger   :=StrToInt(edtCodigo.Text);
        Open;
    end;
end;

procedure TfrmFiltroArtigo.btnZeraFornecedorClick(Sender: TObject);
begin
    dblcbFornecedor.KeyValue   :=Null;
end;

end.
