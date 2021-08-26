program business;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  Horse,
  Horse.Jhonson,
  Providers.Connection
    in 'src\providers\Providers.Connection.pas' {ProvidersConnection: TDataModule} ,
  Providers.Cadastro
    in 'src\providers\Providers.Cadastro.pas' {ProvidersCadastro: TDataModule} ,
  Services.Produto
    in 'src\services\Services.Produto.pas' {ServiceProduto: TDataModule} ,
  Controllers.Produto in 'src\controllers\Controllers.Produto.pas';

begin
  THorse.Use(Jhonson());

  Controllers.Produto.Registry;

  THorse.Listen(9000);

end.
