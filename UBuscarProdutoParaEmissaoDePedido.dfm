object frmBuscarProdutoParaPedido: TfrmBuscarProdutoParaPedido
  Left = 0
  Top = 0
  Caption = 'Buscar Produto para emiss'#227'o de Pedido'
  ClientHeight = 612
  ClientWidth = 1188
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object btnCopiarItensSelecionados: TSpeedButton
    Left = 464
    Top = 32
    Width = 209
    Height = 33
    Hint = 'Copia os itens selecionados para a tela de Itens do pedido'
    CustomHint = frmPedido.BalloonHint1
    Caption = 'Copiar itens selecionados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333330B7FFF
      FFB0333333777F3333773333330B7FFFFFB0333333777F3333773333330B7FFF
      FFB0333333777F3333773333330B7FFFFFB03FFFFF777FFFFF77000000000077
      007077777777777777770FFFFFFFF00077B07F33333337FFFF770FFFFFFFF000
      7BB07F3FF3FFF77FF7770F00F000F00090077F77377737777F770FFFFFFFF039
      99337F3FFFF3F7F777FF0F0000F0F09999937F7777373777777F0FFFFFFFF999
      99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
      99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
      93337FFFF7737777733300000033333333337777773333333333}
    NumGlyphs = 2
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = btnCopiarItensSelecionadosClick
  end
  object gridItens: TJvDBGrid
    Left = 8
    Top = 99
    Width = 1172
    Height = 454
    DataSource = DMRaito.dsImportacao
    DrawingStyle = gdsGradient
    GradientEndColor = clMoneyGreen
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnDblClick = gridItensDblClick
    MultiSelect = True
    AlternateRowColor = clMoneyGreen
    AlternateRowFontColor = clBlack
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 19
    TitleRowHeight = 21
    Columns = <
      item
        Expanded = False
        FieldName = 'codigo'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 142
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descricao'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 465
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'grupo'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 145
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'icms18'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'icms12'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'icms7'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 74
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 995
    Top = 8
    Width = 185
    Height = 57
    Caption = 'Escolha o ICMS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object rb18: TRadioButton
      Left = 8
      Top = 24
      Width = 41
      Height = 17
      Caption = '18'
      TabOrder = 0
    end
    object rb12: TRadioButton
      Left = 69
      Top = 24
      Width = 41
      Height = 17
      Caption = '12'
      TabOrder = 1
    end
    object rb7: TRadioButton
      Left = 130
      Top = 24
      Width = 39
      Height = 17
      Caption = '7'
      TabOrder = 2
    end
  end
  object GroupBoxPesquisa: TGroupBox
    Left = 8
    Top = 8
    Width = 353
    Height = 82
    Caption = ' Pesquisar  '
    Color = 13959039
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    object SpeedButton1: TSpeedButton
      Left = 282
      Top = 35
      Width = 42
      Height = 22
      Hint = 'Limpa pesquisa'
      Caption = 'Limpar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object rbCodigo: TRadioButton
      Left = 8
      Top = 21
      Width = 85
      Height = 17
      Caption = 'Por C'#243'digo'
      TabOrder = 0
      OnClick = rbCodigoClick
    end
    object rbDescricao: TRadioButton
      Left = 8
      Top = 52
      Width = 97
      Height = 17
      Caption = 'Por Descri'#231#227'o'
      TabOrder = 1
      OnClick = rbDescricaoClick
    end
    object edPesquisar: TEdit
      Left = 108
      Top = 34
      Width = 170
      Height = 23
      TabOrder = 2
      OnChange = edPesquisarChange
    end
  end
  object btnFechar: TButton
    Left = 544
    Top = 571
    Width = 75
    Height = 25
    Caption = 'Fechar'
    Default = True
    TabOrder = 3
    OnClick = btnFecharClick
  end
end
