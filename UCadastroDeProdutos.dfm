object frmCadastroDeProdutos: TfrmCadastroDeProdutos
  Left = 0
  Top = 0
  Caption = 'Cadastro de Produtos'
  ClientHeight = 662
  ClientWidth = 1288
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object pnlContainer: TPanel
    Left = 8
    Top = 576
    Width = 1081
    Height = 49
    Color = clTeal
    ParentBackground = False
    TabOrder = 0
    object pnlConfirma: TPanel
      Left = 152
      Top = 9
      Width = 471
      Height = 34
      TabOrder = 1
      object btnCancelar: TSpeedButton
        Left = 42
        Top = 5
        Width = 73
        Height = 25
        Caption = 'Cancelar'
        Glyph.Data = {
          BE060000424DBE06000000000000360400002800000024000000120000000100
          0800000000008802000000000000000000000001000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C0007D654F00B199
          8300000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000D9CCC100A4A0A000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00030303030303
          0303030303030303030303030303030303030303030303030303030303030303
          0303F8F80303030303030303030303030303030303FF03030303030303030303
          0303030303F90101F80303030303F9F80303030303030303F8F8FF0303030303
          03FF03030303030303F9010101F8030303F90101F8030303030303F8FF03F8FF
          030303FFF8F8FF030303030303F901010101F803F901010101F80303030303F8
          FF0303F8FF03FFF80303F8FF030303030303F901010101F80101010101F80303
          030303F8FF030303F8FFF803030303F8FF030303030303F90101010101010101
          F803030303030303F8FF030303F803030303FFF80303030303030303F9010101
          010101F8030303030303030303F8FF030303030303FFF8030303030303030303
          030101010101F80303030303030303030303F8FF0303030303F8030303030303
          0303030303F901010101F8030303030303030303030303F8FF030303F8030303
          0303030303030303F90101010101F8030303030303030303030303F803030303
          F8FF030303030303030303F9010101F8010101F803030303030303030303F803
          03030303F8FF0303030303030303F9010101F803F9010101F803030303030303
          03F8030303F8FF0303F8FF03030303030303F90101F8030303F9010101F80303
          03030303F8FF0303F803F8FF0303F8FF03030303030303F9010303030303F901
          0101030303030303F8FFFFF8030303F8FF0303F8FF0303030303030303030303
          030303F901F903030303030303F8FC0303030303F8FFFFFFF803030303030303
          03030303030303030303030303030303030303030303030303F8F8F803030303
          0303030303030303030303030303030303030303030303030303030303030303
          0303}
        NumGlyphs = 2
        OnClick = btnCancelarClick
      end
      object btnGravar: TSpeedButton
        Left = 359
        Top = 6
        Width = 73
        Height = 25
        Caption = 'Gravar'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333330FFFFF
          FFF03333337F3FFFF3F73333330F0000F0F03333337F777737373333330FFFFF
          FFF033FFFF7FFF33FFF77000000007F00000377777777FF777770BBBBBBBB0F0
          FF037777777777F7F3730B77777BB0F0F0337777777777F7F7330B7FFFFFB0F0
          0333777F333377F77F330B7FFFFFB0009333777F333377777FF30B7FFFFFB039
          9933777F333377F777FF0B7FFFFFB0999993777F33337777777F0B7FFFFFB999
          9999777F3333777777770B7FFFFFB0399933777FFFFF77F777F3070077007039
          99337777777777F777F30B770077B039993377FFFFFF77F777330BB7007BB999
          93337777FF777777733370000000073333333777777773333333}
        NumGlyphs = 2
        OnClick = btnGravarClick
      end
    end
    object pnlNav: TPanel
      Left = 40
      Top = 9
      Width = 983
      Height = 33
      TabOrder = 0
      object btnNovo: TSpeedButton
        Left = 171
        Top = 4
        Width = 73
        Height = 25
        Caption = 'Novo'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          0400000000000001000000000000000000001000000010000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          777777777777777777777770000007777777777FFFFFF77777770000AAAA0777
          7777FFFFAAAAF77777770770000007777777F77FFFFFF7777777077777777777
          7777F7777777777777770777777777779777F77777777777F777077000000779
          7777F77FFFFFF77F77770000AAAA07999999FFFFAAAAF7FFFFFF077000000779
          7777F77FFFFFF77F77770777777777779777F77777777777F777077777777777
          7777F7777777777777770770000007777777F77FFFFFF77777770000AAAA0777
          7777FFFFAAAAF77777770770000007777777F77FFFFFF7777777077777777777
          7777F77777777777777777777777777777777777777777777777}
        NumGlyphs = 2
        OnClick = btnNovoClick
      end
      object btnAlterar: TSpeedButton
        Left = 247
        Top = 4
        Width = 73
        Height = 25
        Caption = 'Alterar'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
          000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
          00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
          F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
          0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
          FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
          FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
          0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
          00333377737FFFFF773333303300000003333337337777777333}
        NumGlyphs = 2
        OnClick = btnAlterarClick
      end
      object btnExcluir: TSpeedButton
        Left = 324
        Top = 3
        Width = 73
        Height = 25
        Caption = 'Excluir'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333FF33333333333330003333333333333777333333333333
          300033FFFFFF3333377739999993333333333777777F3333333F399999933333
          3300377777733333337733333333333333003333333333333377333333333333
          3333333333333333333F333333333333330033333F33333333773333C3333333
          330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
          993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
          333333377F33333333FF3333C333333330003333733333333777333333333333
          3000333333333333377733333333333333333333333333333333}
        NumGlyphs = 2
        OnClick = btnExcluirClick
      end
      object btnPesquisa: TSpeedButton
        Left = 415
        Top = 3
        Width = 154
        Height = 25
        Hint = 'Pesquisa Produtos j'#225'  cadastrados'
        CustomHint = frmPrincipal.BalloonHint1
        Caption = 'Pesquisar Cadastrados'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          0400000000000001000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333300
          3333333333333333FF333333333330EC033333333333333FE7F3330000000ECC
          00333333FFFFFFFE77FF33033330ECC330333333F8888FE7788F330FFF0ECC3F
          30333333F333FE77838F3300003CC3FF30333333FFFF8778338F303E30003FFF
          3033333F8E8FFF83338F0FE3E303FFFF303333F3E8E8F833338F0EFE3E03FFFF
          303333FE3E8EF833338F0FEFE303FFFF303333F3E3E8F833338F30FEF03FFFFF
          3033333F3E3F8333338F330003FFFFFF30333333FFF83333338F330FFFFFFF00
          00333333F3333333FFFF330FFFFFFF3F03333333F333333383F3330FFFFFFF30
          33333333F33333338F3333000000000333333333FFFFFFFFF333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
      end
      object SpeedButton1: TSpeedButton
        Left = 632
        Top = 7
        Width = 158
        Height = 21
        Hint = 'Pesquisar Produtos a serem Cadastrados'
        CustomHint = frmPrincipal.BalloonHint1
        Caption = 'Pesquisar para Cadastro'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          0400000000000001000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333300
          3333333333333333FF333333333330EC033333333333333FE7F3330000000ECC
          00333333FFFFFFFE77FF33033330ECC330333333F8888FE7788F330FFF0ECC3F
          30333333F333FE77838F3300003CC3FF30333333FFFF8778338F303E30003FFF
          3033333F8E8FFF83338F0FE3E303FFFF303333F3E8E8F833338F0EFE3E03FFFF
          303333FE3E8EF833338F0FEFE303FFFF303333F3E3E8F833338F30FEF03FFFFF
          3033333F3E3F8333338F330003FFFFFF30333333FFF83333338F330FFFFFFF00
          00333333F3333333FFFF330FFFFFFF3F03333333F333333383F3330FFFFFFF30
          33333333F33333338F3333000000000333333333FFFFFFFFF333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
      end
      object btn1: TBitBtn
        Left = 888
        Top = 3
        Width = 87
        Height = 23
        Caption = '&Fechar'
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
        TabOrder = 0
        TabStop = False
        OnClick = btn1Click
      end
      object dbnv1: TDBNavigator
        Left = 21
        Top = 8
        Width = 144
        Height = 18
        DataSource = DMRaito.dsCadastroDeProdutos
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Hints.Strings = (
          'Primeiro'
          'Anterior'
          'Pr'#243'ximo'
          #218'ltimo')
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
    end
  end
  object panelTela: TPanel
    Left = 8
    Top = 8
    Width = 1272
    Height = 529
    Enabled = False
    TabOrder = 1
    object lbl: TLabel
      Left = 8
      Top = 8
      Width = 80
      Height = 15
      Caption = 'codigoproduto'
      FocusControl = dbedtcodigoproduto
    end
    object lbl1: TLabel
      Left = 127
      Top = 8
      Width = 47
      Height = 15
      Caption = 'codbarra'
      FocusControl = dbedtcodbarra
    end
    object lbl2: TLabel
      Left = 287
      Top = 8
      Width = 58
      Height = 15
      Caption = 'codauxiliar'
      FocusControl = dbedtcodauxiliar
    end
    object lbl16: TLabel
      Left = 432
      Top = 8
      Width = 53
      Height = 15
      Caption = 'idproduto'
      FocusControl = dbedtidproduto
      Visible = False
    end
    object lbl3: TLabel
      Left = 8
      Top = 56
      Width = 24
      Height = 15
      Caption = 'ncm'
      FocusControl = dbedtncm
    end
    object lbl4: TLabel
      Left = 111
      Top = 56
      Width = 43
      Height = 15
      Caption = 'unidade'
      FocusControl = dbedtunidade
    end
    object lbl5: TLabel
      Left = 160
      Top = 56
      Width = 50
      Height = 15
      Caption = 'descricao'
      FocusControl = dbedtdescricao
    end
    object lbl7: TLabel
      Left = 8
      Top = 96
      Width = 68
      Height = 15
      Caption = 'representada'
      FocusControl = dbedtrepresentada
    end
    object lbl8: TLabel
      Left = 399
      Top = 96
      Width = 13
      Height = 15
      Caption = 'ipi'
      FocusControl = dbedtipi
    end
    object lbl9: TLabel
      Left = 463
      Top = 96
      Width = 20
      Height = 15
      Caption = 'icm'
      FocusControl = dbedticm
    end
    object lbl11: TLabel
      Left = 582
      Top = 96
      Width = 25
      Height = 15
      Caption = 'peso'
      FocusControl = dbedtpeso
    end
    object lbl13: TLabel
      Left = 511
      Top = 96
      Width = 39
      Height = 15
      Caption = 'pvenda'
      FocusControl = dbedtpvenda
    end
    object lbl15: TLabel
      Left = 655
      Top = 53
      Width = 32
      Height = 15
      Caption = 'grupo'
    end
    object lbl151: TLabel
      Left = 873
      Top = 53
      Width = 57
      Height = 15
      CustomHint = frmPrincipal.BalloonHint1
      Caption = 'Sub-grupo'
    end
    object dbedtcodigoproduto: TDBEdit
      Left = 8
      Top = 24
      Width = 113
      Height = 23
      DataField = 'codigoproduto'
      DataSource = DMRaito.dsCadastroDeProdutos
      TabOrder = 0
    end
    object dbedtcodbarra: TDBEdit
      Left = 127
      Top = 24
      Width = 154
      Height = 23
      DataField = 'codbarra'
      DataSource = DMRaito.dsCadastroDeProdutos
      TabOrder = 1
    end
    object dbedtcodauxiliar: TDBEdit
      Left = 287
      Top = 24
      Width = 111
      Height = 23
      DataField = 'codauxiliar'
      DataSource = DMRaito.dsCadastroDeProdutos
      TabOrder = 2
    end
    object dbedtidproduto: TDBEdit
      Left = 432
      Top = 24
      Width = 53
      Height = 23
      DataField = 'idproduto'
      DataSource = DMRaito.dsCadastroDeProdutos
      TabOrder = 3
      Visible = False
    end
    object dbedtncm: TDBEdit
      Left = 8
      Top = 72
      Width = 97
      Height = 23
      DataField = 'ncm'
      DataSource = DMRaito.dsCadastroDeProdutos
      TabOrder = 4
    end
    object dbedtunidade: TDBEdit
      Left = 111
      Top = 72
      Width = 43
      Height = 23
      DataField = 'unidade'
      DataSource = DMRaito.dsCadastroDeProdutos
      TabOrder = 5
    end
    object dbedtdescricao: TDBEdit
      Left = 160
      Top = 72
      Width = 489
      Height = 23
      DataField = 'descricao'
      DataSource = DMRaito.dsCadastroDeProdutos
      TabOrder = 6
    end
    object dbedtrepresentada: TDBEdit
      Left = 8
      Top = 112
      Width = 385
      Height = 23
      DataField = 'representada'
      DataSource = DMRaito.dsCadastroDeProdutos
      TabOrder = 7
    end
    object dbedtipi: TDBEdit
      Left = 399
      Top = 112
      Width = 58
      Height = 23
      DataField = 'ipi'
      DataSource = DMRaito.dsCadastroDeProdutos
      TabOrder = 8
    end
    object dbedticm: TDBEdit
      Left = 463
      Top = 112
      Width = 42
      Height = 23
      DataField = 'icms'
      DataSource = DMRaito.dsCadastroDeProdutos
      TabOrder = 9
    end
    object dbedtpeso: TDBEdit
      Left = 582
      Top = 113
      Width = 57
      Height = 23
      DataField = 'peso'
      DataSource = DMRaito.dsCadastroDeProdutos
      TabOrder = 10
    end
    object dbedtpvenda: TDBEdit
      Left = 511
      Top = 112
      Width = 65
      Height = 23
      DataField = 'pvenda'
      DataSource = DMRaito.dsCadastroDeProdutos
      TabOrder = 11
    end
    object dbcbbgrupo: TDBComboBox
      Left = 655
      Top = 72
      Width = 212
      Height = 23
      DataField = 'grupo'
      DataSource = DMRaito.dsCadastroDeProdutos
      DropDownCount = 12
      TabOrder = 12
    end
    object dbcbbgrupo1: TDBComboBox
      Left = 873
      Top = 74
      Width = 216
      Height = 23
      DataField = 'subgrupo'
      DataSource = DMRaito.dsCadastroDeProdutos
      DropDownCount = 12
      TabOrder = 13
    end
  end
end
