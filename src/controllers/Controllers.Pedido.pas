unit Controllers.Pedido;

interface

procedure Registry;

implementation

uses Horse, System.JSON, Services.Pedido, DataSet.Serialize;

procedure ListarPedidos(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  LRetorno: TJSONObject;
  LService: TServicePedido;
begin
  LService := TServicePedido.Create;
  try
    LRetorno := TJSONObject.Create;
    LRetorno.AddPair('data', LService.ListAll(Req.Query).ToJSONArray());
    LRetorno.AddPair('records', TJSONNumber.Create(LService.GetRecordCount));
    Res.Send(LRetorno);
  finally
    LService.Free;
  end;
end;

procedure ObterPedidos(Req: THorseRequest; Res: THorseResponse; Next: TProc);
begin

end;

procedure CadastrarPedidos(Req: THorseRequest; Res: THorseResponse;
  Next: TProc);
begin

end;

procedure AlterarPedidos(Req: THorseRequest; Res: THorseResponse; Next: TProc);
begin

end;

procedure DeletarPedidos(Req: THorseRequest; Res: THorseResponse; Next: TProc);
begin

end;

procedure Registry;
begin
  THorse.Get('/pedidos', ListarPedidos);
  THorse.Get('/pedidos/:id', ObterPedidos);
  THorse.Post('/pedidos', CadastrarPedidos);
  THorse.Put('/pedidos/:id', AlterarPedidos);
  THorse.Get('/pedidos/:id', DeletarPedidos);
end;

end.
