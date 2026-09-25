unit uTipoTecido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.Generics.Collections, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons;

type
  TTecidoSelecionado = class
  public
    Id: Integer;
    Nome: string;
  end;

  TfrmTipoTecido = class(TForm)
    gridTipoTecido: TDBGrid;
    pnlSelecionar: TPanel;
    btnSelecionar: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure gridTipoTecidoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure gridTipoTecidoCellClick(Column: TColumn);
    procedure FormDestroy(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);

  private
    { Private declarations }
    FSelecionados: TObjectList<TTecidoSelecionado>;
    procedure alternarSelecao;

  public
    { Public declarations }
  end;

var
  frmTipoTecido: TfrmTipoTecido;

implementation

{$R *.dfm}

uses uFiltroProdutividade, uDmFiltroProdutividade;

procedure TfrmTipoTecido.alternarSelecao;

var
  idTecido: Integer;
  nomeTecido: string;
  item: TTecidoSelecionado;

begin
    if dmFiltroProdutividade.qryTipoTecido.IsEmpty then
    Exit;

    idTecido    :=dmFiltroProdutividade.qryTipoTecido.FieldByName('tec_id').AsInteger;

    nomeTecido  :=dmFiltroProdutividade.qryTipoTecido.FieldByName('tec_nome').AsString;


  for item in FSelecionados do
  begin
      if item.id = idTecido then
      begin
          FSelecionados.Remove(item);
          gridTipoTecido.Invalidate;
          Exit;
      end;
  end;


  item      :=TTecidoSelecionado.Create;
  item.id   :=idTecido;
  item.Nome :=nomeTecido;

  FSelecionados.Add(item);

  gridTipoTecido.Invalidate;
end;


procedure TfrmTipoTecido.btnSelecionarClick(Sender: TObject);

var
  item: TTecidoSelecionado;

begin
    for item in FSelecionados do
    begin
        ShowMessage('ID: ' + Item.Id.ToString + sLineBreak +'Nome: ' + Item.Nome);
    end;
end;

procedure TfrmTipoTecido.FormCreate(Sender: TObject);
begin
    FSelecionados :=TObjectList<TTecidoSelecionado>.Create;

end;

procedure TfrmTipoTecido.FormDestroy(Sender: TObject);
begin
     FSelecionados.Free;
end;

procedure TfrmTipoTecido.FormShow(Sender: TObject);
begin
    with dmFiltroProdutividade.qryTipoTecido do
    begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT');
        SQL.Add('     tec_id,');
        SQL.Add('     tec_nome');
        SQL.Add('     FROM tipo_tecido');
        SQL.Add('     ORDER BY tec_nome');
        Open;
    end;


    gridTipoTecido.Columns[0].Title.Alignment         :=taCenter;
    gridTipoTecido.Columns[0].Title.Caption           :='CODIGO';
    gridTipoTecido.Columns[1].Title.Alignment         :=taCenter;
    gridTipoTecido.Columns[1].Title.Caption           :='TIPO TECIDO';

end;

procedure TfrmTipoTecido.gridTipoTecidoCellClick(Column: TColumn);
begin
    alternarSelecao;
end;


procedure TfrmTipoTecido.gridTipoTecidoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);

  var
    idTecido: Integer;
    item: TTecidoSelecionado;
    selecionado: Boolean;

begin
    if not dmFiltroProdutividade.qryTipoTecido.Active then
    Exit;

  if dmFiltroProdutividade.qryTipoTecido.IsEmpty then
    Exit;

  idTecido :=dmFiltroProdutividade.qryTipoTecido.FieldByName('tec_id').AsInteger;

  selecionado :=False;

  for item in FSelecionados do
  begin
      if item.id = idTecido then
      begin
        selecionado := True;
        break;
      end;
  end;

  if selecionado then
  begin
      gridTipoTecido.Canvas.Brush.Color := $00E6E6E6;
      gridTipoTecido.Canvas.Font.Style := [fsBold];
  end
  else
  begin
      gridTipoTecido.Canvas.Brush.Color := clWhite;
      gridTipoTecido.Canvas.Font.Style := [];
  end;

  gridTipoTecido.Canvas.FillRect(Rect);

  gridTipoTecido.DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;



end.
