unit UPedido;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, QuickRpt, qrpBaseCtrls,
  QRCtrls, Vcl.Consts, Vcl.ActnMan, Math, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Stan.Param, JvExExtCtrls,
  JvExtComponent, JvDBRadioPanel, JvExControls, JvLabel, JvDBControls,
  JvExStdCtrls, JvRichEdit, JvDBRichEdit, System.IniFiles, QRPDFFilt, System.UITypes;
type
  TfrmPedido = class(TForm)
    panelNav: TPanel;
    btnNovo: TSpeedButton;
    btnAlterar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnPesquisa: TSpeedButton;
    btn1: TBitBtn;
    dbnv1: TDBNavigator;
    panelConfirma: TPanel;
    btnCancelar: TSpeedButton;
    btnGravar: TSpeedButton;
    btnImprimir: TSpeedButton;
    panelTela: TPanel;
    lbl: TLabel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    dbedtnum_pedido: TDBEdit;
    dbedtdata_pedido: TDBEdit;
    BalloonHint1: TBalloonHint;
    lbl4: TLabel;
    lbl8: TLabel;
    dbedttotaldopedido: TDBEdit;
    btn2: TSpeedButton;
    btnNovoCliente: TSpeedButton;
    btnNovaRepresentada: TSpeedButton;
    btnNovaTransportadora: TSpeedButton;
    dbrgrptipopedido: TDBRadioGroup;
    lbl9: TLabel;
//    dbedtcondicoespagto1: TDBEdit;
    lbl10: TLabel;
    dbedtcomissaopercentual: TDBEdit;
    lbl11: TLabel;
    dbedtcomissaovalor1: TDBEdit;
    lokupcliente1: TDBLookupComboBox;
    dbgrdItens: TDBGrid;
    DBEditCliente: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBEditIdCliente: TDBEdit;
    edtObs: TJvDBRichEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    edTransportadora: TDBEdit;
    QRPDFFilter1: TQRPDFFilter;
    procedure btnNovoClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnNovoClienteClick(Sender: TObject);
    procedure lokupclienteClick(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure ButtonPesquisarProdtoClick(Sender: TObject);
    procedure dbgrdItensEditButtonClick(Sender: TObject);
    procedure dbgrdItensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgrdItensCellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBEditClienteExit(Sender: TObject);
    procedure btnNovaTransportadoraClick(Sender: TObject);
    procedure dbgrdItensColExit(Sender: TObject);
  private
   procedure LimparCache(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
  end;
var
  frmPedido: TfrmPedido;
implementation
uses UDMRaito, UCadastroDeClientes, UPesquisarProdutos, UPesquisaPedido,
 URelatorioPedido, UPesquisarClientes, UBuscarProdutoParaEmissaoDePedido, UEscolherTelaParaPedido;

{$R *.dfm}
procedure TfrmPedido.btn1Click(Sender: TObject);
begin
Close;
end;
procedure TfrmPedido.btnAlterarClick(Sender: TObject);
begin
    panelConfirma.Enabled:= True;
    panelNav.Visible:= False;
    panelTela.Enabled:= True;
    DMRaito.FdTablePedidos.Edit;
end;
procedure TfrmPedido.btnCancelarClick(Sender: TObject);
begin
    panelConfirma.Enabled:= False;
    panelNav.Visible:= True;
    panelTela.Enabled:= False;
    DMRaito.FdTablePedidos.Cancel;
    DMRaito.FdTableItens.Cancel;
end;
procedure TfrmPedido.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('DESEJA EXCLUIR ESSE REGISTRO ?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    DMRaito.FdTablePedidos.Delete;
    ShowMessage('Registro exclu�do com sucesso!');
  end;
end;

procedure TfrmPedido.btnGravarClick(Sender: TObject);
begin
    DMRaito.FdTablePedidos.Edit;
    DMRaito.FdTableItens.Edit;
    DMRaito.FdTablePedidos.Post;
    DMRaito.FdTableItens.Post;
    ShowMessage('Registro gravado com sucesso.!');
    panelConfirma.Enabled:= False;
    panelNav.Visible:= True;
    panelTela.Enabled:= False;
end;


procedure TfrmPedido.btnImprimirClick(Sender: TObject);
var config: TIniFile; aPDF: TQRPDFDocumentFilter; caminhoP, data, pasta, numpedido, cliente: String;
//pasta: D:\PROJETOS DELPHI\Projeto Raito D11\EMAILS
//C:\PROJETO RAITO\e-mails
begin
pasta:= 'C:\PROJETO RAITO\e-mails\';
numpedido:= dbedtnum_pedido.Text;
cliente  := DBEditCliente.Text;

  try
    Application.CreateForm(TfrmRelatorioPedido, frmRelatorioPedido);
     // DMRatio.TBCadCliente.Locate('IdCliente', dbCodCliente.Text, []);
    frmRelatorioPedido.queryRelPedido.Close;
    frmRelatorioPedido.queryRelPedido.Params.ClearValues();
    frmRelatorioPedido.queryRelPedido.Params[0].AsInteger := DMRaito.FdTablePedidosPedidoId.Value;      //StrToInt(dbedtnum_pedido.Text);
    frmRelatorioPedido.queryRelPedido.Prepare;
    frmRelatorioPedido.queryRelPedido.Open();
    if DMRaito.FdTablePedidosTipoPedido.Value = 'Or�amento' then
      frmRelatorioPedido.qrdbTIPOPEDIDO.Caption := 'Or�amento'
    else
    frmRelatorioPedido.qrdbTIPOPEDIDO.Caption := 'Venda';
    // envia o relat�rio para uma pasta com nome de arquivo +.pdf
  //    config := TIniFile.Create(extractfiledir(ParamStr(0))+'\config.ini'); //Abre o arquivo INI
   //   caminhoP := config.ReadString('PDF','pasta',''); //Pega o caminho para salvar o PDF (Arquivo INI)
    //  if DirectoryExists(caminhoP) then //Verifica se a pasta realmente existe
    //  begin
        data := FormatDateTime('dd-mm-yyyy',Date()); //Formando o nome do arquivo
//        caminhoP := ' N� Ped.: ' +numpedido + '-' + ' Cliente: ' + cliente + '.PDF'; //Formando o nome do arquivo
       // s:=v1+' '+v2
        caminhoP := pasta + numpedido + ' - ' +cliente + '.PDF';
        aPDF := TQRPDFDocumentFilter.Create(caminhoP);

        frmRelatorioPedido.QRPQuickrep1.ExportToFilter(aPDF);

      //  frmRelatorioPedido.QRPQuickrep1.ExportToFilter(QRPDFFilter1.Create(caminhoP));
         //TQRPDFDocumentFilter - Gerando o PDF
        ShowMessage('PDF gerado em: ' + caminhoP);
     // end;

   // frmRelatorioPedido.QRPQuickrep1.Preview;
    frmRelatorioPedido.queryRelPedido.Close;
  finally
    frmRelatorioPedido.Free;
  end;
end;
procedure TfrmPedido.btnNovaTransportadoraClick(Sender: TObject);
begin
try
 application.CreateForm(TfrmCadastroClientes, frmCadastroClientes);
 frmCadastroClientes.ShowModal;
 finally
 frmCadastroClientes.Free;
 end;
end;

procedure TfrmPedido.btnNovoClick(Sender: TObject);

begin
  panelConfirma.Enabled:= True;
  panelNav.Visible:= False;
  panelTela.Enabled:= True;
//  DMRaito.FdTablePedidos.Edit;
  DMRaito.FdTablePedidos.Append;
  DMRaito.FdTablePedidos['data_pedido']:= DateToStr(Now);
  DBEditCliente.SetFocus;
end;

procedure TfrmPedido.btnNovoClienteClick(Sender: TObject);
begin
 try
 application.CreateForm(TfrmCadastroClientes, frmCadastroClientes);
 frmCadastroClientes.ShowModal;
 finally
 frmCadastroClientes.Free;
 end;
end;
procedure TfrmPedido.btnPesquisaClick(Sender: TObject);
begin
try
 application.CreateForm(TFrmPesquisaPedido, FrmPesquisaPedido);
 FrmPesquisaPedido.ShowModal;
 finally
 FrmPesquisaPedido.Free;
 end;
end;
procedure TfrmPedido.ButtonPesquisarProdtoClick(Sender: TObject);
begin
try
 application.CreateForm(TFrmPesquisarProdutos, FrmPesquisarProdutos);
 FrmPesquisarProdutos.ShowModal;
 finally
 FrmPesquisarProdutos.Free;
 end;
end;
procedure TfrmPedido.DBEditClienteExit(Sender: TObject);
begin
    if DMRaito.FdTablePedidos.State in [dsInsert, dsEdit] then
      begin
      DMRaito.FDTablePedidos.Post;
      DMRaito.FDTablePedidos.Edit;
      end;
//  Try
//  DMRaito.FDConnection1.StartTransaction;
//  DMRaito.FDConnection1.Commit;
//  Except
//  DMRaito.FDConnection1.Rollback;
//  End;

end;
procedure TfrmPedido.dbgrdItensCellClick(Column: TColumn);
begin
//    if dbgrdItens.SelectedIndex = 2 then
//    begin
//    DMRaito.FdTablePedido.Post;
//    DMRaito.FdTablePedido.Edit;
//    end;
end;


procedure TfrmPedido.dbgrdItensColExit(Sender: TObject);
begin
//if (dbgrdItens.Columns[14].Field.AsString <> '') then // and (dbgrdItens.Columns[6].Field.AsString = '') THEN
//    dbgrdItens.SelectedIndex := 6;
end;

procedure TfrmPedido.dbgrdItensEditButtonClick(Sender: TObject);
begin
 try
 application.CreateForm(TfrmBuscarProdutoParaPedido, frmBuscarProdutoParaPedido);
 frmBuscarProdutoParaPedido.ShowModal;
 finally
 frmBuscarProdutoParaPedido.Free;
 end;
end;
procedure TfrmPedido.dbgrdItensKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = VK_DELETE
  then begin
       if MessageDlg('Deseja Excluir este Item selecionado ?',mtConfirmation,[mbYes,mbNo],0)=mrYes
       then begin
            DMRaito.FdTableItens.Delete;
        //    DMRaito.FdTableItens.ApplyUpdates(0);
       end;
  end;
end;
procedure TfrmPedido.FormCreate(Sender: TObject);
begin
//DMRaito.FDSchemaAdapter.AfterApplyUpdate := LimparCache;
end;
procedure TfrmPedido.LimparCache(Sender: TObject);
begin
//  DMRaito.FdTablePedidos.CommitUpdates();
//  DMRaito.FdTableItens.CommitUpdates();
end;
procedure TfrmPedido.lokupclienteClick(Sender: TObject);
begin
 //   DMRaito.FDTableCliente.IndexName:= 'IdxCliente';
end;
procedure TfrmPedido.SpeedButton1Click(Sender: TObject);
begin
 try
    Application.CreateForm(TFrmPesquisarClientes, FrmPesquisarClientes);
    FrmPesquisarClientes.ShowModal;
    finally
    FrmPesquisarClientes.Free;
    end;
end;
end.
