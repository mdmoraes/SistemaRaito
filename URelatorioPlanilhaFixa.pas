unit URelatorioPlanilhaFixa;
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, qrpctrls, FireDAC.Stan.Async, FireDAC.DApt;
type
  TfrmRelatorioPlanilhaFixa = class(TForm)
    qckrpPlanilhaFixa: TQuickRep;
    qrbnd1: TQRBand;
    qrbnd2: TQRBand;
    qrxpr1: TQRExpr;
    qrxpr2: TQRExpr;
    QRDBText3: TQRDBText;
    qrdbtxtIsolacao: TQRDBText;
    qrdbtxtCustoMP: TQRDBText;
    QRSysData1: TQRSysData;
    QRImage1: TQRImage;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    FDTableRelFixa: TFDTable;
    FDTableRelFixacodigo: TStringField;
    FDTableRelFixadescricao: TStringField;
    FDTableRelFixagrupo: TStringField;
    FDTableRelFixaisolacao: TStringField;
    FDTableRelFixaclasse: TStringField;
    FDTableRelFixatemperatura: TStringField;
    FDTableRelFixakg_km: TFloatField;
    FDTableRelFixaicms18: TFloatField;
    FDTableRelFixaicms12: TFloatField;
    FDTableRelFixaicms7: TFloatField;
 //   procedure qrbnd2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  frmRelatorioPlanilhaFixa: TfrmRelatorioPlanilhaFixa;
implementation
{$R *.dfm}
uses UDMRaito, UTabelaFixaImportada;

//procedure TfrmRelatorioPlanilhaFixa.qrbnd2AfterPrint(Sender: TQRCustomBand;
//  BandPrinted: Boolean);
//begin
////if not frmTabelaFixaImportada.memdata.EOF then
////     qckrpPlanilhaFixa.NewPage;
//end;

end.
