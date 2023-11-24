unit UBuscarProdutoParaEmissaoDePedido;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.Buttons, Vcl.LabeledDBCtrls,
  Vcl.DBCtrls, SFDBGridInplaceCheckBox, SFDBGrid;
type
  TfrmBuscarProdutoParaPedido = class(TForm)
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
    btnCopiarItensSelecionados: TSpeedButton;
    StringGrid1: TStringGrid;
    gridItens: TJvDBGrid;
    SFDBGridInplaceCheckBox1: TSFDBGridInplaceCheckBox;
    procedure btnFecharClick(Sender: TObject);
    procedure rbCodigoClick(Sender: TObject);
    procedure rbDescricaoClick(Sender: TObject);
    procedure edPesquisarChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnCopiarItensSelecionadosClick(Sender: TObject);
    procedure marcado(Column: TColumn; var IsCheckBoxedColumn: Boolean);
    procedure gridItensDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure gridItensCellClick(Column: TColumn);
    procedure gridItensDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
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


procedure TfrmBuscarProdutoParaPedido.btnCopiarItensSelecionadosClick(
  Sender: TObject);
var i :Integer;

begin
 if rb18.Checked = False or rb12.Checked = False or rb7.Checked = False then
  begin
    ShowMessage('� necess�rio escolher um ICMS !');
    Abort;
  end;

  //if gridItens.Columns.Items[0].Field =  then


  For i := 0 to gridItens.SelectedRows.Count -1 do
  begin
  { GoTo selected record: }
  //if gridItens.

  gridItens.datasource.dataset.Bookmark := gridItens.SelectedRows.Items[i];
  { Do something with i-th selected record }

      DMRaito.FdTableItens.Edit;
      DMRaito.FdTableItens.Append;

      frmPedido.dbgrdItens.Columns.Items[2].Field.Text := gridItens.Columns.Items[1].Field.Text;
      frmPedido.dbgrdItens.Columns.Items[3].Field.Text := gridItens.Columns.Items[2].Field.Text;
      frmPedido.dbgrdItens.Columns.Items[4].Field.Text := gridItens.Columns.Items[3].Field.Text;
     //testar a escolha do ICMS
          if rb18.Checked = true then
          begin
          frmPedido.dbgrdItens.Columns.Items[13].Field.Text := '18';
          frmPedido.dbgrdItens.Columns.Items[7].Field.Text := gridItens.Columns.Items[4].Field.Text;
          end;
          if rb12.Checked = true then
          begin
          frmPedido.dbgrdItens.Columns.Items[13].Field.Text := '12';
          frmPedido.dbgrdItens.Columns.Items[7].Field.Text := gridItens.Columns.Items[5].Field.Text;
          end;
          if rb7.Checked = true then
          begin
          frmPedido.dbgrdItens.Columns.Items[13].Field.Text := '7';
          frmPedido.dbgrdItens.Columns.Items[7].Field.Text := gridItens.Columns.Items[6].Field.Text;
          end;
         // frmPedido.dbgrdItens.SelectedIndex := 6;
         btnFechar.Click;
  end;
end;

procedure TfrmBuscarProdutoParaPedido.btnFecharClick(Sender: TObject);
begin
Close;
end;
procedure TfrmBuscarProdutoParaPedido.edPesquisarChange(Sender: TObject);
begin
DMRaito.FdTbImportacao.FindNearest([edPesquisar.Text])
end;


procedure TfrmBuscarProdutoParaPedido.gridItensCellClick(Column: TColumn);
begin

if Column.Field.FieldName = AnsiLowerCase('marcado') then
  begin
    with gridItens.DataSource.DataSet do
    begin
      edit;
      FieldByName('marcado').Value := not FieldByName('marcado').AsBoolean;
      Post;
    end;
  end;

gridItens.SelectedRows.CurrentRowSelected := not gridItens.SelectedRows.CurrentRowSelected;
end;


procedure TfrmBuscarProdutoParaPedido.gridItensDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
  const IS_CHECK : Array[Boolean] of Integer = (DFCS_BUTTONCHECK, DFCS_BUTTONCHECK or DFCS_CHECKED);

var
  Check : Integer;
  R     : TRect;
begin
  with gridItens do
  begin
    if AnsiLowerCase(Column.FieldName) = 'marcado' then
    begin
      Canvas.FillRect(Rect);
      Check := IS_CHECK[Column.Field.AsBoolean];
      R := Rect;
      InflateRect(R,-2,-2); //aqui manipula o tamanho do checkBox
      DrawFrameControl(Canvas.Handle,rect,DFC_BUTTON,Check)
    end;
  end;
end;

procedure TfrmBuscarProdutoParaPedido.gridItensDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
      if (Field.FieldName = 'marcado') and (not (gdFixed in State)) then
      begin
      // Desenha um campo em branco
      gridItens.Canvas.FillRect(Rect);
      // Testa de a linha est� selecionada ou n�o
      if gridItens.SelectedRows.IndexOf(gridItens.DataSource.DataSet.Bookmark) >= 0 then
      DrawFrameControl(gridItens.Canvas.Handle, Rect, DFC_BUTTON, DFCS_BUTTONCHECK or DFCS_CHECKED) // Desenha o CheckBox desmarcado
      else
      DrawFrameControl(gridItens.Canvas.Handle, Rect, DFC_BUTTON, DFCS_BUTTONCHECK); // Desenha o CheckBox marcado
      end;
end;

procedure TfrmBuscarProdutoParaPedido.marcado(Column: TColumn;
  var IsCheckBoxedColumn: Boolean);
begin
//      DMRaito.FdTbImportacao.Edit;
//    DMRaito.FdTbImportacaomarcado.Value:= 0;
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
