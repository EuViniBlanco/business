inherited ServiceProduto: TServiceProduto
  inherited qryPesquisa: TFDQuery
    SQL.Strings = (
      'select p.id, p.nome, p.valor, p.status, p.estoque'
      '  from produto p'
      ' where 1 = 1')
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
    object qryPesquisavalor: TFMTBCDField
      FieldName = 'valor'
      Origin = 'valor'
      Precision = 20
      Size = 4
    end
    object qryPesquisastatus: TSmallintField
      FieldName = 'status'
      Origin = 'status'
    end
    object qryPesquisaestoque: TFMTBCDField
      FieldName = 'estoque'
      Origin = 'estoque'
      Precision = 20
      Size = 4
    end
  end
  inherited qryRecordCount: TFDQuery
    SQL.Strings = (
      'select count(p.id)'
      '  from produto p'
      ' where 1 = 1')
  end
end
