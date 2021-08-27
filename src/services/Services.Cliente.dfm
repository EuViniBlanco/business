inherited ServiceCliente: TServiceCliente
  inherited qryPesquisa: TFDQuery
    SQL.Strings = (
      'select c.id, c.nome, c.status'
      #9'from cliente c')
    object qryPesquisaid: TLargeintField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryPesquisanome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 60
    end
    object qryPesquisastatus: TSmallintField
      FieldName = 'status'
      Origin = 'status'
    end
  end
  inherited qryRecordCount: TFDQuery
    SQL.Strings = (
      'select count(c.id)'
      #9'from cliente c')
  end
  inherited qryCadastro: TFDQuery
    SQL.Strings = (
      'select c.id, c.nome, c.status'
      #9'from cliente c')
    object qryCadastroid: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryCadastronome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 60
    end
    object qryCadastrostatus: TSmallintField
      FieldName = 'status'
      Origin = 'status'
    end
  end
end
