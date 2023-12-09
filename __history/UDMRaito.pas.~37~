unit UDMRaito;
interface
uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Dialogs;
type
  TDMRaito = class(TDataModule)
    FDConnection1: TFDConnection;
    FDTableCliente: TFDTable;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FdTbImportacao: TFDTable;
    FdTbImportacaocodigo: TStringField;
    strngfldFdTbImportacaodescricao: TStringField;
    strngfldFdTbImportacaogrupo: TStringField;
    strngfldFdTbImportacaoisolacao: TStringField;
    strngfldFdTbImportacaoclasse: TStringField;
    strngfldFdTbImportacaotemperatura: TStringField;
    FdTableCadastroProdutos: TFDTable;
    dsPedidos: TDataSource;
    dsItens: TDataSource;
    dsCliente: TDataSource;
    FdTableTransportadora: TFDTable;
    FdTableContatoCliente: TFDTable;
    dsContatoCliente: TDataSource;
    dsTableTransportadora: TDataSource;
    FdTableRepresentada: TFDTable;
    dsRepresentada: TDataSource;
    fdtncfldFdTableRepresentadaidcliente: TFDAutoIncField;
    TableFdTableRepresentadanomecliente: TStringField;
    TableFdTableRepresentadaregiao: TStringField;
    dtfldFdTableRepresentadadatacadastro: TDateField;
    TableFdTableRepresentadaendereco: TStringField;
    TableFdTableRepresentadabairro: TStringField;
    TableFdTableRepresentadacidade: TStringField;
    TableFdTableRepresentadaestado: TStringField;
    TableFdTableRepresentadacep: TStringField;
    TableFdTableRepresentadacomissao: TFloatField;
    TableFdTableRepresentadatel1: TStringField;
    TableFdTableRepresentadatel2: TStringField;
    TableFdTableRepresentadatel3: TStringField;
    TableFdTableRepresentadatel4: TStringField;
    TableFdTableRepresentadafax: TStringField;
    TableFdTableRepresentadacel1: TStringField;
    TableFdTableRepresentadacel2: TStringField;
    TableFdTableRepresentadacel3: TStringField;
    TableFdTableRepresentadaradio: TStringField;
    TableFdTableRepresentadaid: TStringField;
    TableFdTableRepresentadamsn: TStringField;
    TableFdTableRepresentadaskipe: TStringField;
    TableFdTableRepresentadacontato1: TStringField;
    TableFdTableRepresentadacontato2: TStringField;
    TableFdTableRepresentadaemail: TStringField;
    TableFdTableRepresentadaemailnfe: TStringField;
    TableFdTableRepresentadasite: TStringField;
    mfldFdTableRepresentadaobs: TMemoField;
    TableFdTableRepresentadacnpj: TStringField;
    TableFdTableRepresentadainscestadual: TStringField;
    TableFdTableRepresentadatwitter: TStringField;
    dsCadastroDeProdutos: TDataSource;
    FdTablePedidos: TFDTable;
    FdTableItens: TFDTable;
    FDSchemaAdapter: TFDSchemaAdapter;
    FdTableContatoClienteContatoId: TFDAutoIncField;
    FdTableContatoClienteContato_IdCliente: TIntegerField;
    FdTableContatoClienteTipo: TStringField;
    FdTableContatoClienteDescricao: TStringField;
    FdTableContatoClienteNomeDoContato: TStringField;
    FdTableContatoClientecadastroclientes_idcliente: TIntegerField;
    FdTableCadastroProdutosidproduto: TFDAutoIncField;
    FdTableCadastroProdutoscodigoproduto: TStringField;
    FdTableCadastroProdutosdescricao: TStringField;
    FdTableCadastroProdutosgrupo: TStringField;
    FdTableCadastroProdutoscodauxiliar: TStringField;
    FdTableCadastroProdutoscodbarra: TFloatField;
    FdTableCadastroProdutosncm: TStringField;
    FdTableCadastroProdutosunidade: TStringField;
    FdTableCadastroProdutossubgrupo: TStringField;
    FdTableCadastroProdutosrepresentada: TStringField;
    FdTableCadastroProdutosipi: TFloatField;
    FdTableCadastroProdutosicms: TStringField;
    FdTableCadastroProdutospeso: TFloatField;
    FdTableCadastroProdutospvenda: TFloatField;
    FDTableClienteidcliente: TFDAutoIncField;
    FDTableClientenomecliente: TStringField;
    FDTableClienteregiao: TStringField;
    FDTableClientedatacadastro: TDateField;
    FDTableClienteendereco: TStringField;
    FDTableClientebairro: TStringField;
    FDTableClientecidade: TStringField;
    FDTableClienteestado: TStringField;
    FDTableClientecep: TStringField;
    FDTableClientetel1: TStringField;
    FDTableClientetel2: TStringField;
    FDTableClientetel3: TStringField;
    FDTableClientetel4: TStringField;
    FDTableClientefax: TStringField;
    FDTableClientecel1: TStringField;
    FDTableClientecel2: TStringField;
    FDTableClientecel3: TStringField;
    FDTableClienteradio: TStringField;
    FDTableClienteidradio: TStringField;
    FDTableClientemsn: TStringField;
    FDTableClienteskipe: TStringField;
    FDTableClientecontato1: TStringField;
    FDTableClientecontato2: TStringField;
    FDTableClienteemail: TStringField;
    FDTableClienteemailnfe: TStringField;
    FDTableClientesite: TStringField;
    FDTableClienteobs: TMemoField;
    FDTableClientecnpj: TStringField;
    FDTableClienteinscestadual: TStringField;
    FDTableClientetwitter: TStringField;
    FDTableClientetransportadora: TStringField;
    FDTableClienteteltransportadora: TStringField;
    FdTableItensItemId: TFDAutoIncField;
    FdTableItensitem_PedidoId: TIntegerField;
    FdTableItenscod_produto: TStringField;
    FdTableItensDes_Produto: TStringField;
    FdTableItensgrupo: TStringField;
    FdTableItensun: TStringField;
    FdTableItensqtd: TFloatField;
    FdTableItensvrunit: TFloatField;
    FdTableItensp1: TFloatField;
    FdTableItensp2: TFloatField;
    FdTableItensp3: TFloatField;
    FdTableItenspedidos_PedidoId: TIntegerField;
    FdTablePedidosPedidoId: TFDAutoIncField;
    FdTablePedidosdata_pedido: TDateField;
    FdTablePedidosrepresentada: TStringField;
    FdTablePedidoscliente: TStringField;
    FdTablePedidostransportadora: TStringField;
    FdTablePedidoscondicoespagto: TStringField;
    FdTablePedidoscomissao: TFloatField;
    FdTablePedidoscomissaovalor: TFloatField;
    FdTablePedidosobs: TStringField;
    FdTablePedidoslembrete: TStringField;
    FdTablePedidostotalbruto: TFloatField;
    FdTablePedidostipopedido: TStringField;
    FdTablePedidosidcliente: TIntegerField;
    FdTablePedidoscadastroclientes_idcliente: TIntegerField;
    FdTableItensliq1: TFloatField;
    FdTableTransportadoraTransportadoraId: TFDAutoIncField;
    FdTableTransportadoraNomeTransportadora: TStringField;
    FdTableTransportadoraEndereco: TStringField;
    FdTableTransportadoraTelefone: TStringField;
    FdTableTransportadoraemail: TStringField;
    FdTableTransportadoraContato: TStringField;
    FdTableTransportadoraCidade: TStringField;
    FdTableTransportadoraUF: TStringField;
    FdTableTransportadoraCep: TStringField;
    FdTableTransportadoraObs: TStringField;
    FDTableClientecpf: TStringField;
    dsImportacao: TDataSource;
    FdTbImportacaoicms18: TFloatField;
    FdTbImportacaoicms12: TFloatField;
    FdTbImportacaoicms7: TFloatField;
    FdTbImportacaokg_km: TFloatField;
    FDTableTabelaFixa: TFDTable;
    FDTableTabelaFixacodigo: TStringField;
    FDTableTabelaFixadescricao: TStringField;
    FDTableTabelaFixagrupo: TStringField;
    FDTableTabelaFixaisolacao: TStringField;
    FDTableTabelaFixaclasse: TStringField;
    FDTableTabelaFixatemperatura: TStringField;
    FDTableTabelaFixakg_km: TFloatField;
    FDTableTabelaFixaicms18: TFloatField;
    FDTableTabelaFixaicms12: TFloatField;
    FDTableTabelaFixaicms7: TFloatField;
    dsTabelaFixa: TDataSource;
    FdTableItensicms: TStringField;
    FdTablePedidosvrcomissao: TFloatField;
    FdTableItensliq2: TFloatField;
    FdTableItensliq3: TFloatField;
    FdTableItensTotalDesc: TSingleField;
    FdTableItensTotalItens: TSingleField;
    FdTablePedidostotalbrutodesconto: TSingleField;
    FdTbImportacaomarcado: TStringField;
    FDTransaction1: TFDTransaction;
    procedure FdTableItensCalcFields(DataSet: TDataSet);
    procedure FdTableItensAfterPost(DataSet: TDataSet);
    procedure FDSchemaAdapterAfterApplyUpdate(Sender: TObject);
    procedure FDTableClienteBeforePost(DataSet: TDataSet);
    procedure FdTablePedidosCalcFields(DataSet: TDataSet);
    procedure FdTablePedidosNewRecord(DataSet: TDataSet);
    procedure FdTableItensBeforePost(DataSet: TDataSet);
    procedure FdTbImportacaomarcadoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  DMRaito: TDMRaito;
implementation
{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}
procedure TDMRaito.FDSchemaAdapterAfterApplyUpdate(Sender: TObject);
begin
  DMRaito.FdTablePedidos.CommitUpdates();
  DMRaito.FdTableItens.CommitUpdates();
end;
procedure TDMRaito.FDTableClienteBeforePost(DataSet: TDataSet);
begin
//gravar master antes. mm
//DMRaito.FDTableCliente.Edit;
//DMRaito.FDTableCliente.Post;
end;
procedure TDMRaito.FdTableItensAfterPost(DataSet: TDataSet);
var
totaldesconto, totalgeraldesconto, total, totalBruto: Double;
  begin
//   if DMRaito.FdTableItens.FieldByName('qtd').AsFloat < 1  then
//     begin
//      ShowMessage('O preenchimento da Quantidade(>=1) é obrigatório. !');
//      Abort;
//     end;


      // calculo do total do pedido
      DMRaito.FdTableItens.DisableControls;
      DMRaito.FdTableItens.First;
      total:= 0;
      totalBruto:= 0;
      while not DMRaito.FdTableItens.Eof do
      begin
      total:= total + DMRaito.FdTableItensTotalItens.Value;
      DMRaito.FdTableItens.Next;

      end;
      DMRaito.FdTablePedidos.Edit;
      DMRaito.FdTablePedidosTotalBruto.Value:= total;
      DMRaito.FdTablePedidos.Post;
      DMRaito.FdTableItens.EnableControls;

      // calculo do totalgeral de descontos do pedido
      DMRaito.FdTableItens.DisableControls;
      DMRaito.FdTableItens.First;
      totaldesconto:= 0;
      totalgeraldesconto:= 0;
      while not DMRaito.FdTableItens.Eof do
      begin
      totaldesconto:= totaldesconto + DMRaito.FdTableItensTotalDesc.Value;
      DMRaito.FdTableItens.Next;

      end;
      DMRaito.FdTablePedidos.Edit;
      DMRaito.FdTablePedidostotalbrutodesconto.Value:= totaldesconto;
      DMRaito.FdTablePedidos.Post;
      DMRaito.FdTableItens.EnableControls;





  end;
procedure TDMRaito.FdTableItensBeforePost(DataSet: TDataSet);
begin
// if DMRaito.FdTableItens.FieldByName('qtd').AsFloat < 1  then
//     begin
//      ShowMessage('O preenchimento da Quantidade(>=1) é obrigatório !');
//      Abort;
//     end;
end;

procedure TDMRaito.FdTableItensCalcFields(DataSet: TDataSet);
begin
//DMRaito.FdTableItens.Edit;
//cálculo liq1
DMRaito.FdTableItensliq1.Value:=
((DMRaito.FdTableItensVrUnit.Value * DMRaito.FdTableItensp1.Value) /100) * DMRaito.FdTableItensqtd.Value;

//cálculo liq2
DMRaito.FdTableItensliq2.Value:=
((DMRaito.FdTableItensVrUnit.Value * DMRaito.FdTableItensp2.Value) /100) * DMRaito.FdTableItensqtd.Value;

//cálculo liq3
DMRaito.FdTableItensliq3.Value:=
((DMRaito.FdTableItensVrUnit.Value * DMRaito.FdTableItensp3.Value) /100) * DMRaito.FdTableItensqtd.Value;

//cálculo TotalDesc
DMRaito.FdTableItensTotalDesc.Value:=
(DMRaito.FdTableItensliq1.Value + DMRaito.FdTableItensliq2.Value + DMRaito.FdTableItensliq3.Value);


//cálculo TotalItens
DMRaito.FdTableItensTotalItens.Value :=
((DMRaito.FdTableItensVrUnit.Value * DMRaito.FdTableItensqtd.Value) - DMRaito.FdTableItensTotalDesc.Value);
end;

procedure TDMRaito.FdTablePedidosCalcFields(DataSet: TDataSet);
begin
   DMRaito.FdTablePedidosvrcomissao.Value:=
   (DMRaito.FdTablePedidoscomissao.Value * DMRaito.FdTablePedidostotalbruto.Value) /100;
end;

procedure TDMRaito.FdTablePedidosNewRecord(DataSet: TDataSet);
//  var cont_reg:integer;
begin
//    with DMRaito.FdTablePedidos do
//    try
//    Open;
//    DMRaito.FdTablePedidos.Edit;
//    DMRaito.FdTablePedidosPedidoId.AsInteger:= Fields[0].AsInteger;
//    cont_reg:=DMRaito.FdTablePedidos.RecNo;
//    finally
//    Close;
//    end;
//Quando o trigger criar o registro o número dele será aramazenado em cont_reg.
//Após, abra sua tabela, dê um Refresh e digite o seguinte:
//DMRaito.FdTablePedidos:=cont_reg;

end;

procedure TDMRaito.FdTbImportacaomarcadoGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
Text := EmptyStr;
end;

end.
