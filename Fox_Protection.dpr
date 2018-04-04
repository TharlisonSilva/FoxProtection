program Fox_Protection;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {FrmPrincipal},
  UModelo in 'Telas\UModelo.pas' {FrmModelo},
  UFrmStatus in 'Telas\UFrmStatus.pas' {FrmStatus},
  UFrmAnalise in 'Telas\UFrmAnalise.pas' {FrmAnalise},
  UFrmHistorico in 'Telas\UFrmHistorico.pas' {FrmHistorico},
  UFrmQuarentena in 'Telas\UFrmQuarentena.pas' {FrmQuarentena},
  UFrmOpcoes in 'Telas\UFrmOpcoes.pas' {FrmOpcoes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Fox Protection';
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmStatus, FrmStatus);
  Application.CreateForm(TFrmAnalise, FrmAnalise);
  Application.CreateForm(TFrmHistorico, FrmHistorico);
  Application.CreateForm(TFrmQuarentena, FrmQuarentena);
  Application.CreateForm(TFrmOpcoes, FrmOpcoes);
  Application.Run;
end.
