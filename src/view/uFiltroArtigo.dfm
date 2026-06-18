object frmFiltroArtigo: TfrmFiltroArtigo
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio de Demonstrativo de uso de artigo'
  ClientHeight = 343
  ClientWidth = 772
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object lblTipoSaldo: TLabel
    Left = 8
    Top = 8
    Width = 87
    Height = 15
    Caption = 'TIPO DE SALDO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblCodigo: TLabel
    Left = 8
    Top = 64
    Width = 47
    Height = 15
    Caption = 'CODIGO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblPesquisar: TLabel
    Left = 78
    Top = 67
    Width = 57
    Height = 12
    Caption = 'F5 PESQUISAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object cboTipoSaldo: TComboBox
    Left = 8
    Top = 29
    Width = 145
    Height = 23
    ItemIndex = 0
    TabOrder = 0
    Text = '>=0'
    Items.Strings = (
      '>=0'
      '>0')
  end
  object edtCodigo: TEdit
    Left = 8
    Top = 85
    Width = 145
    Height = 23
    TabOrder = 1
    OnKeyPress = edtCodigoKeyPress
  end
end
