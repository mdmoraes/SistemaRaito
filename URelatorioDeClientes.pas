unit URelatorioDeClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QuickRpt, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, QRCtrls;

type
  TfrmRelatorioDeClientes = class(TForm)
    QRepRelClientes: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRBand3: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    dsRelatorioDeCliente: TDataSource;
    FDTableRelatorioDeCliente: TFDTable;
    FDTableRelatorioDeClienteidcliente: TFDAutoIncField;
    FDTableRelatorioDeClientenomecliente: TStringField;
    FDTableRelatorioDeClienteregiao: TStringField;
    FDTableRelatorioDeClientedatacadastro: TDateField;
    FDTableRelatorioDeClienteendereco: TStringField;
    FDTableRelatorioDeClientebairro: TStringField;
    FDTableRelatorioDeClientecidade: TStringField;
    FDTableRelatorioDeClienteestado: TStringField;
    FDTableRelatorioDeClientecep: TStringField;
    FDTableRelatorioDeClientetel1: TStringField;
    FDTableRelatorioDeClientetel2: TStringField;
    FDTableRelatorioDeClientetel3: TStringField;
    FDTableRelatorioDeClientetel4: TStringField;
    FDTableRelatorioDeClientefax: TStringField;
    FDTableRelatorioDeClientecel1: TStringField;
    FDTableRelatorioDeClientecel2: TStringField;
    FDTableRelatorioDeClientecel3: TStringField;
    FDTableRelatorioDeClienteradio: TStringField;
    FDTableRelatorioDeClienteidradio: TStringField;
    FDTableRelatorioDeClientemsn: TStringField;
    FDTableRelatorioDeClienteskipe: TStringField;
    FDTableRelatorioDeClientecontato1: TStringField;
    FDTableRelatorioDeClientecontato2: TStringField;
    FDTableRelatorioDeClienteemail: TStringField;
    FDTableRelatorioDeClienteemailnfe: TStringField;
    FDTableRelatorioDeClientesite: TStringField;
    FDTableRelatorioDeClienteobs: TMemoField;
    FDTableRelatorioDeClientecnpj: TStringField;
    FDTableRelatorioDeClienteinscestadual: TStringField;
    FDTableRelatorioDeClientetwitter: TStringField;
    FDTableRelatorioDeClientetransportadora: TStringField;
    FDTableRelatorioDeClienteteltransportadora: TStringField;
    FDTableRelatorioDeClientecpf: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorioDeClientes: TfrmRelatorioDeClientes;

implementation

{$R *.dfm}

uses UDMRaito;

end.
