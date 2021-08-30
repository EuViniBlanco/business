unit Controllers.Cliente;

interface

procedure Registry;

implementation

uses Horse, Services.Cliente, System.JSON, DataSet.Serialize;

procedure ListarClientes(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  LRetorno: TJSONObject;
  LService: TServiceCliente;
begin
  LService := TServiceCliente.Create;
  try
    LRetorno := TJSONObject.Create;
    LRetorno.AddPair('data', LService.ListAll(Req.Query).ToJSONArray());
    LRetorno.AddPair('records', TJSONNumber.Create(LService.GetRecordCount));
    Res.Send(LRetorno);
  finally
    LService.Free;
  end;
end;

procedure ObterCliente(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  LService: TServiceCliente;
begin
  LService := TServiceCliente.Create;
  try

  finally
    LService.Free;
  end;
end;

procedure CadastrarCliente(Req: THorseRequest; Res: THorseResponse;
  Next: TProc);
var
  LService: TServiceCliente;
begin
  LService := TServiceCliente.Create;
  try

  finally
    LService.Free;
  end;
end;

procedure AlterarCLiente(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  LService: TServiceCliente;
begin
  LService := TServiceCliente.Create;
  try

  finally
    LService.Free;
  end;
end;

procedure DeletarCliente(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  LService: TServiceCliente;
begin
  LService := TServiceCliente.Create;
  try

  finally
    LService.Free;
  end;
end;

procedure Registry;
begin
  THorse.Get('\clientes', ListarClientes);
  THorse.Get('\clientes/:id', ObterCliente);
  THorse.Post('\clientes', CadastrarCliente);
  THorse.Put('\clientes', AlterarCLiente);
  THorse.Delete('\clientes', DeletarCliente);
end;

end.
