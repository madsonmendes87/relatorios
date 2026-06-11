object dmConexao: TdmConexao
  Height = 411
  Width = 626
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=dberp'
      'User_Name=postgres'
      'Password=#maga2020'
      'Server=localhost'
      'DriverID=PG')
    LoginPrompt = False
    Left = 16
    Top = 16
  end
  object Transacao: TFDTransaction
    Connection = Conexao
    Left = 104
    Top = 16
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 'C:\Program Files (x86)\PostgreSQL\psqlODBC\bin\libpq.dll'
    Left = 208
    Top = 16
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 336
    Top = 16
  end
end
