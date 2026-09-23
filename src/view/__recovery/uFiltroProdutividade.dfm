object frmFiltroProdutividade: TfrmFiltroProdutividade
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Produtividade Corte e Planejamento'
  ClientHeight = 406
  ClientWidth = 536
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  TextHeight = 15
  object lblFase: TLabel
    Left = 8
    Top = 8
    Width = 26
    Height = 15
    Caption = 'FASE'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblUsuarioFase: TLabel
    Left = 8
    Top = 52
    Width = 80
    Height = 15
    Caption = 'USU'#193'RIO FASE'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblColecao: TLabel
    Left = 274
    Top = 8
    Width = 145
    Height = 15
    Caption = 'POR COLE'#199#195'O DESTE ANO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblGrupo: TLabel
    Left = 273
    Top = 52
    Width = 39
    Height = 15
    Caption = 'GRUPO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblSubGrupo: TLabel
    Left = 8
    Top = 145
    Width = 61
    Height = 15
    Caption = 'SUBGRUPO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblEstilista: TLabel
    Left = 8
    Top = 97
    Width = 55
    Height = 15
    Caption = 'ESTILISTA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTipo: TLabel
    Left = 273
    Top = 97
    Width = 27
    Height = 15
    Caption = 'TIPO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblMarca: TLabel
    Left = 273
    Top = 145
    Width = 41
    Height = 15
    Caption = 'MARCA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblGenero: TLabel
    Left = 8
    Top = 189
    Width = 45
    Height = 15
    Caption = 'GENERO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblGrife: TLabel
    Left = 273
    Top = 189
    Width = 31
    Height = 15
    Caption = 'GRIFE'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTipoTecido: TLabel
    Left = 8
    Top = 233
    Width = 72
    Height = 15
    Caption = 'TIPO TECIDO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblPrototipo: TLabel
    Left = 294
    Top = 233
    Width = 64
    Height = 15
    Caption = 'PROT'#211'TIPO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblGE: TLabel
    Left = 413
    Top = 233
    Width = 92
    Height = 15
    Caption = 'GRANDE ESCALA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblFicha: TLabel
    Left = 294
    Top = 265
    Width = 85
    Height = 15
    Caption = 'FICHA T'#201'CNICA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblOrdemCorte: TLabel
    Left = 412
    Top = 265
    Width = 81
    Height = 15
    Caption = 'ORDEM CORTE'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblOrdemProducao: TLabel
    Left = 296
    Top = 297
    Width = 109
    Height = 15
    Caption = 'ORDEM PRODU'#199#195'O'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblAnalitico: TLabel
    Left = 294
    Top = 329
    Width = 62
    Height = 15
    Caption = 'ANAL'#205'TICO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblSintetico: TLabel
    Left = 412
    Top = 329
    Width = 60
    Height = 15
    Caption = 'SINT'#201'TICO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 385
    Top = 360
    Width = 8
    Height = 15
    Caption = 'A'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnZerarCor: TSpeedButton
    Left = 244
    Top = 23
    Width = 23
    Height = 23
    Cursor = crHandPoint
    Caption = 'X'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 245
    Top = 68
    Width = 23
    Height = 23
    Cursor = crHandPoint
    Caption = 'X'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpeedButton2: TSpeedButton
    Left = 244
    Top = 112
    Width = 23
    Height = 23
    Cursor = crHandPoint
    Caption = 'X'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpeedButton3: TSpeedButton
    Left = 244
    Top = 160
    Width = 23
    Height = 23
    Cursor = crHandPoint
    Caption = 'X'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpeedButton4: TSpeedButton
    Left = 245
    Top = 204
    Width = 23
    Height = 23
    Cursor = crHandPoint
    Caption = 'X'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpeedButton5: TSpeedButton
    Left = 510
    Top = 23
    Width = 23
    Height = 23
    Cursor = crHandPoint
    Caption = 'X'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpeedButton6: TSpeedButton
    Left = 510
    Top = 68
    Width = 23
    Height = 23
    Cursor = crHandPoint
    Caption = 'X'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpeedButton7: TSpeedButton
    Left = 510
    Top = 112
    Width = 23
    Height = 23
    Cursor = crHandPoint
    Caption = 'X'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpeedButton8: TSpeedButton
    Left = 510
    Top = 160
    Width = 23
    Height = 23
    Cursor = crHandPoint
    Caption = 'X'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpeedButton9: TSpeedButton
    Left = 510
    Top = 204
    Width = 23
    Height = 23
    Cursor = crHandPoint
    Caption = 'X'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbLkFase: TDBLookupComboBox
    Left = 8
    Top = 23
    Width = 233
    Height = 23
    KeyField = 'fa_id'
    ListField = 'fa_nome'
    ListSource = dmFiltroProdutividade.dsFase
    TabOrder = 0
    OnExit = dbLkFaseExit
  end
  object dbLkUsuario: TDBLookupComboBox
    Left = 8
    Top = 68
    Width = 233
    Height = 23
    TabOrder = 1
  end
  object dbLkColecao: TDBLookupComboBox
    Left = 274
    Top = 23
    Width = 233
    Height = 23
    TabOrder = 2
  end
  object dbLkGrupo: TDBLookupComboBox
    Left = 274
    Top = 68
    Width = 233
    Height = 23
    TabOrder = 3
    OnExit = dbLkGrupoExit
  end
  object dbLkEstilista: TDBLookupComboBox
    Left = 8
    Top = 112
    Width = 233
    Height = 23
    TabOrder = 4
  end
  object dbLkTipo: TDBLookupComboBox
    Left = 273
    Top = 112
    Width = 234
    Height = 23
    TabOrder = 5
  end
  object dbLkSubGrupo: TDBLookupComboBox
    Left = 8
    Top = 160
    Width = 233
    Height = 23
    TabOrder = 6
    OnExit = dbLkSubGrupoExit
  end
  object dbLkMarca: TDBLookupComboBox
    Left = 273
    Top = 160
    Width = 233
    Height = 23
    TabOrder = 7
  end
  object cmbGenero: TComboBox
    Left = 8
    Top = 204
    Width = 233
    Height = 23
    TabOrder = 8
    Text = 'N'#195'O INFORMAR'
    Items.Strings = (
      'FEMININO'
      'MASCULINO'
      'UNISSEX')
  end
  object dbLkGrife: TDBLookupComboBox
    Left = 274
    Top = 204
    Width = 233
    Height = 23
    TabOrder = 9
  end
  object pnlBuscar: TPanel
    Left = 8
    Top = 249
    Width = 72
    Height = 25
    Color = clDarkcyan
    ParentBackground = False
    TabOrder = 10
    object btnBuscar: TSpeedButton
      Left = 1
      Top = 1
      Width = 70
      Height = 23
      Cursor = crHandPoint
      Hint = 'F2'
      Align = alClient
      Caption = 'Buscar'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = btnBuscarClick
      ExplicitLeft = 49
      ExplicitTop = 3
      ExplicitWidth = 23
      ExplicitHeight = 22
    end
  end
  object pnlLimpar: TPanel
    Left = 89
    Top = 249
    Width = 72
    Height = 25
    Color = clOrange
    ParentBackground = False
    TabOrder = 11
    object btnLimpar: TSpeedButton
      Left = 1
      Top = 1
      Width = 70
      Height = 23
      Cursor = crHandPoint
      Hint = 'F3'
      Align = alClient
      Caption = 'Limpar'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = btnLimparClick
      ExplicitLeft = 49
      ExplicitTop = 3
      ExplicitWidth = 23
      ExplicitHeight = 22
    end
  end
  object pnlRetirar: TPanel
    Left = 169
    Top = 249
    Width = 72
    Height = 25
    Color = clDarkred
    ParentBackground = False
    TabOrder = 12
    object btnRetirar: TSpeedButton
      Left = 1
      Top = 1
      Width = 70
      Height = 23
      Cursor = crHandPoint
      Hint = 'F4'
      Align = alClient
      Caption = 'Retirar'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = btnRetirarClick
      ExplicitLeft = 49
      ExplicitTop = 3
      ExplicitWidth = 23
      ExplicitHeight = 22
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 280
    Width = 233
    Height = 123
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object chkPrototipo: TCheckBox
    Left = 274
    Top = 233
    Width = 19
    Height = 17
    TabOrder = 14
  end
  object chkGE: TCheckBox
    Left = 390
    Top = 233
    Width = 19
    Height = 17
    TabOrder = 15
  end
  object chkFicha: TCheckBox
    Left = 274
    Top = 265
    Width = 19
    Height = 17
    TabOrder = 16
  end
  object chkOrdemCorte: TCheckBox
    Left = 390
    Top = 265
    Width = 19
    Height = 17
    TabOrder = 17
  end
  object chkOrdemProducao: TCheckBox
    Left = 274
    Top = 297
    Width = 19
    Height = 17
    TabOrder = 18
  end
  object chkSintetico: TCheckBox
    Left = 390
    Top = 329
    Width = 19
    Height = 17
    TabOrder = 19
  end
  object chkAnalitico: TCheckBox
    Left = 274
    Top = 329
    Width = 19
    Height = 17
    TabOrder = 20
  end
  object DateTimePicker1: TDateTimePicker
    Left = 273
    Top = 352
    Width = 106
    Height = 23
    Date = 46283.000000000000000000
    Time = 0.390431967593031000
    TabOrder = 21
  end
  object DateTimePicker2: TDateTimePicker
    Left = 400
    Top = 352
    Width = 106
    Height = 23
    Date = 46283.000000000000000000
    Time = 0.390431967593031000
    TabOrder = 22
  end
  object pnlGerar: TPanel
    Left = 361
    Top = 381
    Width = 64
    Height = 22
    Color = clHotLight
    ParentBackground = False
    TabOrder = 23
    object btnGerar: TSpeedButton
      Left = 1
      Top = 1
      Width = 62
      Height = 20
      Cursor = crHandPoint
      Hint = 'F1'
      Align = alClient
      Caption = 'GERAR'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = btnGerarClick
      ExplicitLeft = 41
      ExplicitTop = 0
      ExplicitWidth = 23
      ExplicitHeight = 22
    end
  end
end
