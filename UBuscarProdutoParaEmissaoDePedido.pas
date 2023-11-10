unit UBuscarProdutoParaEmissaoDePedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.Buttons;

type
  TfrmBuscarProdutoParaPedido = class(TForm)
    gridItens: TJvDBGrid;
    GroupBox1: TGroupBox;
    rb18: TRadioButton;
    rb12: TRadioButton;
    rb7: TRadioButton;
    GroupBoxPesquisa: TGroupBox;
    SpeedButton1: TSpeedButton;
    rbCodigo: TRadioButton;
    rbDescricao: TRadioButton;
    edPesquisar: TEdit;
    btnFechar: TButton;
    procedure btnFecharClick(Sender: TObject);
    procedure gridItensDblClick(Sender: TObject);
    procedure rbCodigoClick(Sender: TObject);
    procedure rbDescricaoClick(Sender: TObject);
    procedure edPesquisarChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBuscarProdutoParaPedido: TfrmBuscarProdutoParaPedido;

implementation

{$R *.dfm}

uses UDMRaito, UPedido;

procedure TfrmBuscarProdutoParaPedido.btnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TfrmBuscarProdutoParaPedido.edPesquisarChange(Sender: TObject);
begin
DMRaito.FdTbImportacao.FindNearest([edPesquisar.Text])
end;

procedure TfrmBuscarProdutoParaPedido.gridItensDblClick(Sender: TObject);
begin
  DMRaito.FdTableItens.Edit;

  DMRaito.FdTableItens.Append;
  frmPedido.dbgrdItens.Columns.Items[2].Field.Text := gridItens.Columns.Items[0].Field.Text;
  frmPedido.dbgrdItens.Columns.Items[3].Field.Text := gridItens.Columns.Items[1].Field.Text;
  frmPedido.dbgrdItens.Columns.Items[4].Field.Text := gridItens.Columns.Items[2].Field.Text;
 // frmPedido.dbgrdItens.Columns.Items[5].Field.Text := gridItens.Columns.Items[3].Field.Text;
//  frmPedido.dbgrdItens.Columns.Items[7].Field.Text := gridItens.Columns.Items[4].Field.Text;

 //testar a escolha do ICMS
  if rb18.Checked = true then
  begin
  frmPedido.dbgrdItens.Columns.Items[12].Field.Text := '18';
  frmPedido.dbgrdItens.Columns.Items[7].Field.Text := gridItens.Columns.Items[11].Field.Text;
  end;

  if rb12.Checked = true then
  begin
  frmPedido.dbgrdItens.Columns.Items[12].Field.Text := '12';
  frmPedido.dbgrdItens.Columns.Items[7].Field.Text := gridItens.Columns.Items[12].Field.Text;
  end;

  if rb7.Checked = true then
  begin
  frmPedido.dbgrdItens.Columns.Items[12].Field.Text := '7';
  frmPedido.dbgrdItens.Columns.Items[7].Field.Text := gridItens.Columns.Items[13].Field.Text;
  end;

  frmPedido.dbgrdItens.SelectedIndex := 6;
  btnFechar.Click;


end;

procedure TfrmBuscarProdutoParaPedido.rbCodigoClick(Sender: TObject);
begin
 if rbCodigo.Checked = true then
    DMRaito.FdTbImportacao.IndexName:= 'idxCodigo';
    edPesquisar.SetFocus;
end;

procedure TfrmBuscarProdutoParaPedido.rbDescricaoClick(Sender: TObject);
begin
    if rbDescricao.Checked = true then
    DMRaito.FdTbImportacao.IndexName:= 'idxDescricao';
    edPesquisar.Clear;
    edPesquisar.SetFocus;
end;

procedure TfrmBuscarProdutoParaPedido.SpeedButton1Click(Sender: TObject);
begin
edPesquisar.Clear;
DMRaito.FdTbImportacao.IndexName:= '';
end;

end.
