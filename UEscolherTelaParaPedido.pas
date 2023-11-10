unit UEscolherTelaParaPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmEscolherTelaParaPedidos = class(TForm)
    btnFechar: TButton;
    btnListaProdutosNormal: TButton;
    btnListaProdutosFabrica: TButton;
    procedure btnFecharClick(Sender: TObject);
    procedure btnListaProdutosNormalClick(Sender: TObject);
    procedure btnListaProdutosFabricaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEscolherTelaParaPedidos: TfrmEscolherTelaParaPedidos;

implementation

{$R *.dfm}

uses UBuscarProdutoParaEmissaoDePedido, UPesquisarProdutos;

procedure TfrmEscolherTelaParaPedidos.btnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TfrmEscolherTelaParaPedidos.btnListaProdutosFabricaClick(
  Sender: TObject);
begin
 try
 application.CreateForm(TfrmBuscarProdutoParaPedido, frmBuscarProdutoParaPedido);
 frmBuscarProdutoParaPedido.ShowModal;
 finally
 frmBuscarProdutoParaPedido.Free;
 end;
 Close;
end;

procedure TfrmEscolherTelaParaPedidos.btnListaProdutosNormalClick(
  Sender: TObject);
begin
try
 application.CreateForm(TFrmPesquisarProdutos, FrmPesquisarProdutos);
 FrmPesquisarProdutos.ShowModal;
 finally
 FrmPesquisarProdutos.Free;
 end;
 Close;
end;

end.
