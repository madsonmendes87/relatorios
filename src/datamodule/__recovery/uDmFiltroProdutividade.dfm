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
  object qryEstilista: TFDQuery
    Connection = dmConexao.Conexao
    Left = 32
    Top = 80
  end
  object dsEstilista: TDataSource
    DataSet = qryEstilista
    Left = 112
    Top = 80
  end
  object qryGrupo: TFDQuery
    Connection = dmConexao.Conexao
    Left = 192
    Top = 80
  end
  object dsGrupo: TDataSource
    DataSet = qryGrupo
    Left = 272
    Top = 80
  end
  object qrySubGrupo: TFDQuery
    Connection = dmConexao.Conexao
    Left = 32
    Top = 152
  end
  object dsSubGrupo: TDataSource
    DataSet = qrySubGrupo
    Left = 120
    Top = 152
  end
  object qryTipo: TFDQuery
    Connection = dmConexao.Conexao
    Left = 208
    Top = 152
  end
  object dsTipo: TDataSource
    DataSet = qryTipo
    Left = 280
    Top = 152
  end
  object qryMarca: TFDQuery
    Connection = dmConexao.Conexao
    Left = 32
    Top = 224
  end
  object dsMarca: TDataSource
    DataSet = qryMarca
    Left = 112
    Top = 224
  end
  object qryGrife: TFDQuery
    Connection = dmConexao.Conexao
    Left = 208
    Top = 224
  end
  object dsGrife: TDataSource
    DataSet = qryGrife
    Left = 280
    Top = 224
  end
  object qryUsuario: TFDQuery
    Connection = dmConexao.Conexao
    Left = 360
    Top = 16
  end
end
