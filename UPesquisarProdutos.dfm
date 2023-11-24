object FrmPesquisarProdutos: TFrmPesquisarProdutos
  Left = 702
  Top = 276
  BorderStyle = bsToolWindow
  Caption = 'Pesquisar Produtos '
  ClientHeight = 504
  ClientWidth = 936
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 13
  object btnCopiarItensSelecionados: TSpeedButton
    Left = 499
    Top = 15
    Width = 194
    Height = 33
    Hint = 'Copia os itens selecionados para a tela de Itens do pedido'
    CustomHint = frmPedido.BalloonHint1
    Caption = 'Copiar itens selecionados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
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
  object grp1: TGroupBox
    Left = 3
    Top = 2
    Width = 276
    Height = 53
    Caption = 'Digite as Iniciais do Item para pesquisa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object edt1: TEdit
      Left = 9
      Top = 21
      Width = 159
      Height = 24
      TabOrder = 0
      OnChange = edt1Change
    end
  end
  object pnl1: TPanel
    Left = 3
    Top = 59
    Width = 925
    Height = 364
    TabOrder = 1
    object dbgrd1: TJvDBGrid
      Left = 10
      Top = 2
      Width = 912
      Height = 367
      DataSource = dsConsultaProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      SortMarker = smDown
      MultiSelect = True
      AlternateRowColor = clMoneyGreen
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 19
      TitleRowHeight = 20
      Columns = <
        item
          Expanded = False
          FieldName = 'codigoproduto'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd. Produto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 148
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descricao'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 363
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'grupo'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 162
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'unidade'
          Title.Alignment = taCenter
          Title.Caption = 'Unid.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'icms'
          Title.Alignment = taCenter
          Title.Caption = 'ICMS'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'pvenda'
          Title.Alignment = taCenter
          Title.Caption = 'Vr. Venda'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
  object btnFechar: TBitBtn
    Left = 410
    Top = 452
    Width = 74
    Height = 25
    Caption = '&Fechar'
    Default = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      03333377777777777F333301111111110333337F333333337F33330111111111
      0333337F333333337F333301111111110333337F333333337F33330111111111
      0333337F333333337F333301111111110333337F333333337F33330111111111
      0333337F3333333F7F333301111111B10333337F333333737F33330111111111
      0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
      0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
      0333337F377777337F333301111111110333337F333333337F33330111111111
      0333337FFFFFFFFF7F3333000000000003333377777777777333}
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 2
    TabStop = False
    OnClick = btnFecharClick
  end
  object grp2: TGroupBox
    Left = 290
    Top = 5
    Width = 183
    Height = 44
    Caption = 'Ordenar por:'
    Color = 15138790
    ParentColor = False
    TabOrder = 3
    object rbCodigo: TRadioButton
      Left = 8
      Top = 20
      Width = 76
      Height = 17
      Caption = 'C'#243'digo'
      TabOrder = 0
      OnClick = rbCodigoClick
    end
    object rbDescricao: TRadioButton
      Left = 85
      Top = 19
      Width = 76
      Height = 20
      Caption = 'Descri'#231#227'o'
      TabOrder = 1
      OnClick = rbDescricaoClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 744
    Top = 8
    Width = 168
    Height = 47
    Caption = 'Escolha o ICMS'
    Color = clYellow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 4
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
  object dsConsultaProduto: TDataSource
    DataSet = DMRaito.FdTableCadastroProdutos
    Left = 643
    Top = 339
  end
end
