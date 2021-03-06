program business;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  Horse,
  Horse.Jhonson,
  Horse.HandleException,
  Providers.Connection in 'src\providers\Providers.Connection.pas' {ProvidersConnection: TDataModule},
  Providers.Cadastro in 'src\providers\Providers.Cadastro.pas' {ProvidersCadastro: TDataModule},
  Services.Produto in 'src\services\Services.Produto.pas' {ServiceProduto: TDataModule},
  Controllers.Produto in 'src\controllers\Controllers.Produto.pas',
  Services.Cliente in 'src\services\Services.Cliente.pas' {ServicesCliente: TDataModule},
  Controllers.Cliente in 'src\controllers\Controllers.Cliente.pas',
  Services.Pedido in 'src\services\Services.Pedido.pas' {ServicePedido: TDataModule},
  Controllers.Pedido in 'src\controllers\Controllers.Pedido.pas';

begin
  THorse
    .Use(Jhonson())
    .Use(HandleException);

  Controllers.Produto.Registry;
  Controllers.Cliente.Registry;

  THorse.Listen(9000);

end.
