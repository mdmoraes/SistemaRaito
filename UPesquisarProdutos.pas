unit UPesquisarProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, Data.DB;

type
  TFrmPesquisarProdutos = class(TForm)
    grp1: TGroupBox;
    edt1: TEdit;
    pnl1: TPanel;
    dbgrd1: TDBGrid;
    btnFechar: TBitBtn;
    grp2: TGroupBox;
    rbCodigo: TRadioButton;
    rbDescricao: TRadioButton;
    dsConsultaProduto: TDataSource;
    GroupBox1: TGroupBox;
    rb18: TRadioButton;
    rb12: TRadioButton;
    rb7: TRadioButton;
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure rbCodigoClick(Sender: TObject);
    procedure rbDescricaoClick(Sender: TObject);
    procedure edt1Change(Sender: TObject);
    procedure dbgrd1Enter(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure dbgrd1DblClick(Sender: TObject);
  private
    procedure CopiarProdutos;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesquisarProdutos: TFrmPesquisarProdutos;

implementation

uses UDMRaito, UPedido;

{$R *.dfm}

procedure TFrmPesquisarProdutos.FormShow(Sender: TObject);
begin
  edt1.SetFocus;
end;

procedure TFrmPesquisarProdutos.btnFecharClick(Sender: TObject);
begin
    close;
end;

procedure TFrmPesquisarProdutos.rbCodigoClick(Sender: TObject);
begin
    DMRaito.FdTableCadastroProdutos.IndexName:= ('ICodigoProduto');
    edt1.SetFocus;
end;

procedure TFrmPesquisarProdutos.rbDescricaoClick(Sender: TObject);
begin
    DMRaito.FdTableCadastroProdutos.IndexName:= ('IDescricao');
    edt1.SetFocus;
end;

procedure TFrmPesquisarProdutos.dbgrd1CellClick(Column: TColumn);
begin
//CopiarProdutos();
end;

procedure TFrmPesquisarProdutos.dbgrd1DblClick(Sender: TObject);
begin
CopiarProdutos();
end;

procedure TFrmPesquisarProdutos.CopiarProdutos;
begin

  if rb18.Checked = False or rb12.Checked = False or rb7.Checked = False then
  begin
    ShowMessage('� necess�rio escolher um ICMS !');
    Abort;
  end;


  DMRaito.FdTableItens.Edit;

  DMRaito.FdTableItens.Append;
  frmPedido.dbgrdItens.Columns.Items[2].Field.Text := dbgrd1.Columns.Items[0].Field.Text;
  frmPedido.dbgrdItens.Columns.Items[3].Field.Text := dbgrd1.Columns.Items[1].Field.Text;
  frmPedido.dbgrdItens.Columns.Items[4].Field.Text := dbgrd1.Columns.Items[2].Field.Text;
  frmPedido.dbgrdItens.Columns.Items[5].Field.Text := dbgrd1.Columns.Items[3].Field.Text;
  frmPedido.dbgrdItens.Columns.Items[7].Field.Text := dbgrd1.Columns.Items[4].Field.Text;

 //testar a escolha do ICMS
  if rb18.Checked = true then
  frmPedido.dbgrdItens.Columns.Items[12].Field.Text := '18';

  if rb12.Checked = true then
  frmPedido.dbgrdItens.Columns.Items[12].Field.Text := '12';

  if rb7.Checked = true then
  frmPedido.dbgrdItens.Columns.Items[12].Field.Text := '7';

  frmPedido.dbgrdItens.SelectedIndex := 6;
  btnFechar.Click;
end;

procedure TFrmPesquisarProdutos.dbgrd1Enter(Sender: TObject);
begin
//CopiarProdutos();


end;

procedure TFrmPesquisarProdutos.edt1Change(Sender: TObject);
begin
    DMRaito.FdTableCadastroProdutos.FindNearest([edt1.Text]);
end;

end.
