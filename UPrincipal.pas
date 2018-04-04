unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, pngimage, StdCtrls,
  UFrmStatus,
  UFrmAnalise,
  UFrmHistorico,
  UFrmQuarentena,
  UFrmOpcoes;

type
  TFrmPrincipal = class(TForm)
    pnlTop: TPanel;
    pnlBottom: TPanel;
    ImgQuarentena: TImage;
    ImgAnalise: TImage;
    lbAnalise: TLabel;
    lbQuarentena: TLabel;
    ImgOpcoes: TImage;
    lbOpcoes: TLabel;
    lbStatus: TLabel;
    ImgMinimizar: TImage;
    ImgFechar: TImage;
    ImgStatus: TImage;
    ImgHistorico: TImage;
    lbHistorico: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Image1: TImage;
    ImgLog: TImage;
    lbFooterVersao: TLabel;
    procedure ImgFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ImgStatusClick(Sender: TObject);
    procedure ImgAnaliseClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ImgHistoricoClick(Sender: TObject);
    procedure ImgQuarentenaClick(Sender: TObject);
    procedure ImgOpcoesClick(Sender: TObject);
  private
    { Private declarations }
  public
  end;

var
  FrmPrincipal: TFrmPrincipal;
  Status      : TFrmStatus;
  Analise     : TFrmAnalise;
  Historico   : TFrmHistorico;
  Quarentena  : TFrmQuarentena;
  Opcoes      : TFrmOpcoes;

implementation

{$R *.dfm}

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  Quarentena := TFrmQuarentena.Create(Self.Owner);
  Opcoes     := TFrmOpcoes.Create(Self.Owner);
  Historico  := TFrmHistorico.Create(Self.Owner);
  Analise    := TFrmAnalise.Create(Self.Owner);
  Status     := TFrmStatus.Create(Self.Owner);
end;

procedure TFrmPrincipal.ImgAnaliseClick(Sender: TObject);
begin
if Assigned(Analise)then
  Analise.Show;
end;

procedure TFrmPrincipal.ImgFecharClick(Sender: TObject);
begin
  Close();
end;

procedure TFrmPrincipal.ImgHistoricoClick(Sender: TObject);
begin
if Assigned(Historico)then
  Historico.Show;
end;

procedure TFrmPrincipal.ImgOpcoesClick(Sender: TObject);
begin
  if Assigned(Opcoes)then
    Opcoes.Show;
end;

procedure TFrmPrincipal.ImgQuarentenaClick(Sender: TObject);
begin
  if Assigned(Quarentena)then
    Quarentena.Show;
end;

procedure TFrmPrincipal.ImgStatusClick(Sender: TObject);
begin
  if Assigned(Status)then
    Status.Show;
end;

procedure TFrmPrincipal.FormDestroy(Sender: TObject);
begin
if Assigned(Status)then
  Status.Owner.Free;
if Assigned(Historico)then
  Historico.Owner.Free;
if Assigned(Analise)then
  Analise.Owner.Free;
if Assigned(Quarentena)then
  Quarentena.Owner.Free;
if Assigned(Opcoes)then
  Opcoes.Owner.Free;
end;

end.
