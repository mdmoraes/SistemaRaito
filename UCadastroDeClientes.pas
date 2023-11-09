unit UCadastroDeClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Buttons, Vcl.Consts, VCL.TMSFNCTypes, VCL.TMSFNCUtils, VCL.TMSFNCGraphics,
  VCL.TMSFNCGraphicsTypes, VCL.TMSFNCGridCell, VCL.TMSFNCGridOptions,
  VCL.TMSFNCCustomControl, VCL.TMSFNCCustomScrollControl, VCL.TMSFNCGridData,
  VCL.TMSFNCCustomGrid, VCL.TMSFNCGrid, VCL.TMSFNCCustomComponent,
  VCL.TMSFNCGridDatabaseAdapter, Vcl.Grids, Vcl.DBGrids;

type
  TfrmCadastroClientes = class(TForm)
    pnlContainer: TPanel;
    pnlNav: TPanel;
    btnNovo: TSpeedButton;
    btnAlterar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnPesquisa: TSpeedButton;
    btn1: TBitBtn;
    dbnv1: TDBNavigator;
    pnlConfirma: TPanel;
    btnCancelar: TSpeedButton;
    btnGravar: TSpeedButton;
    panelTela: TPanel;
    lbl: TLabel;
    lbl2: TLabel;
    lbl1: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    dbedtnomecliente: TDBEdit;
    dbedtregiao: TDBEdit;
    dbedtdatacadastro: TDBEdit;
    dbedtendereco: TDBEdit;
    dbedtbairro: TDBEdit;
    lbl5: TLabel;
    dbedtidcliente: TDBEdit;
    lbl6: TLabel;
    dbedtcidade: TDBEdit;
    lbl7: TLabel;
    dbedtestado: TDBEdit;
    lbl8: TLabel;
    dbedtcep: TDBEdit;
    lbl9: TLabel;
    dbedtcnpj: TDBEdit;
    lbl10: TLabel;
    dbedtinscestadual: TDBEdit;
    dbgrdContatos: TDBGrid;
    LabelContatos: TLabel;
    Label1: TLabel;
    DBEditcpf: TDBEdit;
    procedure btnNovoClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure dbgrdContatosDblClick(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure dbedtcnpjExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbedtnomeclienteExit(Sender: TObject);
    procedure DBEditcpfExit(Sender: TObject);
    procedure dbgrdContatosColEnter(Sender: TObject);
    procedure dbgrdContatosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgrdContatosColExit(Sender: TObject);
  private
  procedure LimparCache(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroClientes: TfrmCadastroClientes;

implementation

uses UDMRaito, UPesquisarClientes, System.Math, Ucic_cgc;

{$R *.dfm}


function IsValidCNPJ(pCNPJ : string) : Boolean;
var
  v: array[1..2] of Word;
  cnpj: array[1..14] of Byte;
  I: Byte;
begin
  Result := False;

  { Verificando se tem 11 caracteres }
  if Length(pCNPJ) <> 14 then
  begin
    Exit;
  end;

  { Conferindo se todos d�gitos s�o iguais }
  if pCNPJ = StringOfChar('0', 14) then
    Exit;

  if pCNPJ = StringOfChar('1', 14) then
    Exit;

  if pCNPJ = StringOfChar('2', 14) then
    Exit;

  if pCNPJ = StringOfChar('3', 14) then
    Exit;

  if pCNPJ = StringOfChar('4', 14) then
    Exit;

  if pCNPJ = StringOfChar('5', 14) then
    Exit;

  if pCNPJ = StringOfChar('6', 14) then
    Exit;

  if pCNPJ = StringOfChar('7', 14) then
    Exit;

  if pCNPJ = StringOfChar('8', 14) then
    Exit;

  if pCNPJ = StringOfChar('9', 14) then
    Exit;

  try
    for I := 1 to 14 do
      cnpj[i] := StrToInt(pCNPJ[i]);

    //Nota: Calcula o primeiro d�gito de verifica��o.
    v[1] := 5*cnpj[1] + 4*cnpj[2]  + 3*cnpj[3]  + 2*cnpj[4];
    v[1] := v[1] + 9*cnpj[5] + 8*cnpj[6]  + 7*cnpj[7]  + 6*cnpj[8];
    v[1] := v[1] + 5*cnpj[9] + 4*cnpj[10] + 3*cnpj[11] + 2*cnpj[12];
    v[1] := 11 - v[1] mod 11;
    v[1] := IfThen(v[1] >= 10, 0, v[1]);

    //Nota: Calcula o segundo d�gito de verifica��o.
    v[2] := 6*cnpj[1] + 5*cnpj[2]  + 4*cnpj[3]  + 3*cnpj[4];
    v[2] := v[2] + 2*cnpj[5] + 9*cnpj[6]  + 8*cnpj[7]  + 7*cnpj[8];
    v[2] := v[2] + 6*cnpj[9] + 5*cnpj[10] + 4*cnpj[11] + 3*cnpj[12];
    v[2] := v[2] + 2*v[1];
    v[2] := 11 - v[2] mod 11;
    v[2] := IfThen(v[2] >= 10, 0, v[2]);

    //Nota: Verdadeiro se os d�gitos de verifica��o s�o os esperados.
    Result := ((v[1] = cnpj[13]) and (v[2] = cnpj[14]));
  except on E: Exception do
    Result := False;
  end;
end;

procedure TfrmCadastroClientes.btn1Click(Sender: TObject);
begin
Close;
end;

procedure TfrmCadastroClientes.btnAlterarClick(Sender: TObject);
begin
    pnlConfirma.Enabled:= True;
    pnlNav.Visible:= False;
    panelTela.Enabled:= True;
    dbgrdContatos.Enabled:= True;
    DMRaito.FDTableCliente.Edit;
    //panelTela.Enabled:= False;

end;

procedure TfrmCadastroClientes.btnCancelarClick(Sender: TObject);
begin
    pnlConfirma.Enabled:= False;
    pnlNav.Visible:= True;
    panelTela.Enabled:= False;
    DMRaito.FDTableCliente.Cancel;
end;

procedure TfrmCadastroClientes.btnExcluirClick(Sender: TObject);
begin
 if MessageDlg('DESEJA EXCLUIR ESSE REGISTRO ?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    DMRaito.FDTableCliente.Delete;
    ShowMessage('Registro exclu�do com sucesso.!');

  end;
end;

procedure TfrmCadastroClientes.btnGravarClick(Sender: TObject);
begin
    panelTela.Enabled:= True;

    DMRaito.FDTableCliente.Edit;
    DMRaito.FdTableContatoCliente.Edit;

//   if DMRaito.FdTableContatoClienteTipo.Value = 'TELEFONE' then
//   DMRaito.FdTableContatoClienteDescricao.EditMask:= '(00) 0000-0000';
//
//   if DMRaito.FdTableContatoClienteTipo.Value = 'CELULAR' then
//   DMRaito.FdTableContatoClienteDescricao.EditMask:= '(00) 0 0000-0000';

    DMRaito.FDTableCliente.Post;
    DMRaito.FdTableContatoCliente.Post;
    ShowMessage('Registro gravado com sucesso.!');
    pnlConfirma.Enabled:= False;
    pnlNav.Visible:= True;
    panelTela.Enabled:= False;
    DMRaito.FDSchemaAdapter.ApplyUpdates(0);

    DMRaito.FDTableCliente.EmptyDataSet;
    DMRaito.FdTableContatoCliente.EmptyDataSet;

    DMRaito.FDTableCliente.Active:= False;
    DMRaito.FDTableCliente.Active:= True;

    DMRaito.FdTableContatoCliente.Active:= False;
    DMRaito.FdTableContatoCliente.Active:= True;

    //VAI PARA O �LTIMO REGISTRO
    DMRaito.FDTableCliente.IndexName:= 'IdxClienteId';
    DMRaito.FDTableCliente.First;
    DMRaito.FDTableCliente.Last;


end;

procedure TfrmCadastroClientes.btnNovoClick(Sender: TObject);
begin
  pnlConfirma.Enabled:= True;
  pnlNav.Visible:= False;
  panelTela.Enabled:= True;

          DMRaito.FDTableCliente.Edit;
          DMRaito.FDTableCliente.Append;
          DMRaito.FDTableCliente['datacadastro']:= DateToStr(Now);
end;

procedure TfrmCadastroClientes.btnPesquisaClick(Sender: TObject);
begin
    try
    Application.CreateForm(TFrmPesquisarClientes, FrmPesquisarClientes);
    FrmPesquisarClientes.ShowModal;
    finally
    FrmPesquisarClientes.Free;
    end;
end;

procedure TfrmCadastroClientes.DBEditcpfExit(Sender: TObject);
begin
if vercpf(DBEditcpf.Text) = False then
begin
   if MessageDlg('Numero de CPF Inv�lido. Deseja corrigir?',
   mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   DBEditcpf.SetFocus end else
   dbedtcnpj.SetFocus;
end;

procedure TfrmCadastroClientes.dbedtcnpjExit(Sender: TObject);
begin

 if VerCGC(dbedtcnpj.Text) = False then
   begin
   if MessageDlg('Numero de CNPJ Inv�lido. Deseja corrigir?',
   mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   dbedtcnpj.SetFocus end else
   dbedtinscestadual.SetFocus;

end;

procedure TfrmCadastroClientes.dbedtnomeclienteExit(Sender: TObject);
begin
  if DMRaito.FDTableCliente.State in [dsinsert, dsEdit] then
  begin
  DMRaito.FDTableCliente.Post;
  end;
       //   dbedtnomecliente.SetFocus;
end;

procedure TfrmCadastroClientes.dbgrdContatosColEnter(Sender: TObject);
begin
//if DMRaito.FdTableContatoCliente.State in [dsinsert, dsedit] then
//begin
//if dbgrdContatos.Fields[2].Value = 'TELEFONE' then
//   dbgrdContatos.Fields[3].EditMask:= '(00)0000-0000' else
// //  dbgrdContatos.Fields[3].EditMask:= '';
//
// if dbgrdContatos.Fields[2].Value = 'CELULAR' then
//   dbgrdContatos.Fields[3].EditMask:= '(00)00000-0000' else
//end;

end;

procedure TfrmCadastroClientes.dbgrdContatosColExit(Sender: TObject);
begin
//if dbgrdContatos.Columns.Items[2].Field.Text = 'TELEFONE' then
//   dbgrdContatos.Columns.Items[3].Field.Text:= '(99) 9999-9999;0;_';
end;

procedure TfrmCadastroClientes.dbgrdContatosDblClick(Sender: TObject);
begin
//DMRaito.FdTableContatoCliente.Delete;
end;

procedure TfrmCadastroClientes.dbgrdContatosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Key = VK_DELETE
  then begin
       if MessageDlg('Deseja Excluir este Item selecionado ?',mtConfirmation,[mbYes,mbNo],0)=mrYes
       then begin
            DMRaito.FdTableContatoCliente.Delete;
            DMRaito.FdTableContatoCliente.ApplyUpdates(0);
       end;
  end;
end;

procedure TfrmCadastroClientes.FormCreate(Sender: TObject);
begin
DMRaito.FDSchemaAdapter.AfterApplyUpdate := LimparCache;
end;

procedure TfrmCadastroClientes.LimparCache(Sender: TObject);
begin
  DMRaito.FDTableCliente.CommitUpdates();
  DMRaito.FdTableContatoCliente.CommitUpdates();
end;

end.
