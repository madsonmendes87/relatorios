object dmFiltroProdutividade: TdmFiltroProdutividade
  Height = 480
  Width = 640
  object qryFase: TFDQuery
    Connection = dmConexao.Conexao
    SQL.Strings = (
      '')
    Left = 32
    Top = 16
  end
  object dsFase: TDataSource
    DataSet = qryFase
    Left = 104
    Top = 16
  end
  object qryUsuarioFase: TFDQuery
    Connection = dmConexao.Conexao
    Left = 176
    Top = 16
  end
  object dsUsuarioFase: TDataSource
    DataSet = qryUsuarioFase
    Left = 272
    Top = 16
  end
end
