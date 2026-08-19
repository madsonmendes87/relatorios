object dmPrincipal: TdmPrincipal
  Height = 480
  Width = 640
  object qryGrc: TFDQuery
    Connection = dmConexao.Conexao
    SQL.Strings = (
      'SELECT '
      '    gc.grc_id,'
      '    CAST('
      
        '        COALESCE(gc.grc_codexterno, '#39#39') || '#39' - '#39' || TRIM(gc.grc_' +
        'nome)'
      '        AS VARCHAR(50)'
      '    ) AS grc_nome_pa'
      'FROM grade_cor AS gc')
    Left = 88
    Top = 48
  end
  object dsGrc: TDataSource
    DataSet = qryGrc
    Left = 152
    Top = 48
  end
  object qryTamanho: TFDQuery
    Connection = dmConexao.Conexao
    SQL.Strings = (
      'SELECT grt_id, grt_nome FROM grade_tamanho ORDER BY grt_id')
    Left = 224
    Top = 48
  end
  object dsTamanho: TDataSource
    DataSet = qryTamanho
    Left = 312
    Top = 48
  end
  object qryComprador: TFDQuery
    Connection = dmConexao.Conexao
    SQL.Strings = (
      
        'SELECT comp_id, comp_nome, comp_idestilista FROM cadastro_compra' +
        'dores ORDER BY comp_nome')
    Left = 88
    Top = 128
  end
  object dsComprador: TDataSource
    DataSet = qryComprador
    Left = 192
    Top = 128
  end
  object qryFornecedor: TFDQuery
    Connection = dmConexao.Conexao
    SQL.Strings = (
      
        'SELECT for_codigo, for_apelido FROM fornecedor ORDER BY for_apel' +
        'ido')
    Left = 288
    Top = 128
  end
  object dsFornecedor: TDataSource
    DataSet = qryFornecedor
    Left = 376
    Top = 128
  end
  object qryDadosArtigo: TFDQuery
    Connection = dmConexao.Conexao
    Left = 80
    Top = 208
  end
  object dsDadosArtigo: TDataSource
    DataSet = qryDadosArtigo
    Left = 168
    Top = 208
  end
  object qryEstAviamentos: TFDQuery
    Connection = dmConexao.Conexao
    Left = 272
    Top = 208
  end
  object dsEstAviamentos: TDataSource
    DataSet = qryEstAviamentos
    Left = 376
    Top = 208
  end
  object qryTotaisAviamentos: TFDQuery
    Connection = dmConexao.Conexao
    Left = 72
    Top = 272
  end
  object dsTotaisAviamentos: TDataSource
    DataSet = qryTotaisAviamentos
    Left = 200
    Top = 272
  end
  object qryTotaisTecido: TFDQuery
    Connection = dmConexao.Conexao
    Left = 312
    Top = 272
  end
  object dsTotaisTecido: TDataSource
    DataSet = qryTotaisTecido
    Left = 408
    Top = 272
  end
  object qryEstTecidos: TFDQuery
    Connection = dmConexao.Conexao
    SQL.Strings = (
      '')
    Left = 72
    Top = 336
  end
  object dsEstTecidos: TDataSource
    DataSet = qryEstTecidos
    Left = 160
    Top = 336
  end
  object qryEmpTecidos: TFDQuery
    Connection = dmConexao.Conexao
    Left = 256
    Top = 336
  end
  object dsEmpTecidos: TDataSource
    DataSet = qryEmpTecidos
    Left = 352
    Top = 336
  end
  object qryTotaisEmpenho: TFDQuery
    Connection = dmConexao.Conexao
    Left = 464
    Top = 336
  end
  object dsTotaisEmpenho: TDataSource
    DataSet = qryTotaisEmpenho
    Left = 568
    Top = 336
  end
  object qryEstilistaComprador: TFDQuery
    Connection = dmConexao.Conexao
    Left = 424
    Top = 48
  end
  object qryTecidoEstoqueTot: TFDQuery
    Connection = dmConexao.Conexao
    Left = 472
    Top = 112
  end
end
