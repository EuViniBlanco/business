unit Services.Pedido;

interface

uses
  System.SysUtils, System.Classes, Providers.Cadastro, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.PG, FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TServicePedido = class(TProvidersCadastro)
    qryPesquisaid: TLargeintField;
    qryPesquisaid_cliente: TLargeintField;
    qryPesquisadata: TSQLTimeStampField;
    qryPesquisanome_cliente: TWideStringField;
    qryPesquisaid_usuario: TLargeintField;
    qryCadastroid: TLargeintField;
    qryCadastroid_cliente: TLargeintField;
    qryCadastrodata: TSQLTimeStampField;
    qryCadastronome_cliente: TWideStringField;
    qryCadastroid_usuario: TLargeintField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ServicePedido: TServicePedido;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
