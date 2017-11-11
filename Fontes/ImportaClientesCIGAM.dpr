program ImportaClientesCIGAM;

uses
  Forms,
  Windows,
  Dialogs,
  SysUtils,
  MidasLib,
  ImportacaoClientesCIGAM in 'ImportacaoClientesCIGAM.pas' {frm_ImportaClientesCIGAM},
  uwsCadastroEmpresasCIGAM in 'uwsCadastroEmpresasCIGAM.pas',
  PadStrUtils in 'PadStrUtils.pas',
  PadUtils in 'PadUtils.pas',
  uwsCadastroNotaFiscalCIGAM in 'uwsCadastroNotaFiscalCIGAM.pas',
  uwsCadastroMateriais in 'uwsCadastroMateriais.pas',
  uwsCadastroEspecif1 in 'uwsCadastroEspecif1.pas',
  ReconcilieError in 'ReconcilieError.pas' {ReconcileErrorForm},
  uwsCadastroCondPagtoCIGAM in 'uwsCadastroCondPagtoCIGAM.pas';

{$R *.res}

begin

  Application.Initialize;
  Application.CreateForm(Tfrm_ImportaClientesCIGAM, frm_ImportaClientesCIGAM);
  Application.Title := 'in.Pulse - Importação de Clientes e Compras da Base do CIGAM';
//  Application.Run;

  frm_ImportaClientesCIGAM.sintTotal_Parametros := ParamCount;

  if ParamCount = 0 then
  begin

    Application.Run;

  end
  else
  begin

    if (ParamStr(1) = 'ATUALIZACAO') or (ParamStr(1) = 'INICIAL') then
    begin

      try

        frm_ImportaClientesCIGAM.ExecutaFormShow;
        frm_ImportaClientesCIGAM.btn_Carrega_XML.OnClick(frm_ImportaClientesCIGAM.btn_Carrega_XML);

        FreeAndNil(frm_ImportaClientesCIGAM);

      finally

      end;

    end;

  end;

end.
