object ProvidersConnection: TProvidersConnection
  OldCreateOrder = False
  Height = 284
  Width = 212
  object FDConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=Curso_Pooled')
    Connected = True
    LoginPrompt = False
    Left = 88
    Top = 56
  end
  object FDPhysPgDriverLink: TFDPhysPgDriverLink
    VendorHome = 'C:\dev\Delphi\business\'
    Left = 88
    Top = 128
  end
end
