object frmCadastroClientes: TfrmCadastroClientes
  Left = 0
  Top = 0
  Caption = 'Cadastro de Clientes'
  ClientHeight = 662
  ClientWidth = 1183
  Color = clGradientInactiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 17
  object pnlContainer: TPanel
    Left = 8
    Top = 605
    Width = 761
    Height = 49
    Color = clTeal
    ParentBackground = False
    TabOrder = 0
    object pnlConfirma: TPanel
      Left = 107
      Top = 8
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
      Left = 64
      Top = 7
      Width = 673
      Height = 33
      TabOrder = 0
      object btnNovo: TSpeedButton
        Left = 171
        Top = 4
        Width = 69
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
        Width = 87
        Height = 25
        Hint = 'Pesquisa Clientes'
        Caption = 'Pesquisa'
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
        OnClick = btnPesquisaClick
      end
      object btn1: TBitBtn
        Left = 568
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
        DataSource = DMRaito.dsCliente
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
    Width = 1161
    Height = 591
    Enabled = False
    TabOrder = 1
    object lbl: TLabel
      Left = 8
      Top = 8
      Width = 70
      Height = 17
      Caption = 'nomecliente'
      FocusControl = dbedtnomecliente
    end
    object lbl2: TLabel
      Left = 343
      Top = 8
      Width = 38
      Height = 17
      Caption = 'regiao'
      FocusControl = dbedtregiao
    end
    object lbl1: TLabel
      Left = 1040
      Top = 8
      Width = 77
      Height = 17
      Caption = 'datacadastro'
      FocusControl = dbedtdatacadastro
    end
    object lbl3: TLabel
      Left = 8
      Top = 56
      Width = 55
      Height = 17
      Caption = 'endereco'
      FocusControl = dbedtendereco
    end
    object lbl4: TLabel
      Left = 471
      Top = 56
      Width = 36
      Height = 17
      Caption = 'bairro'
      FocusControl = dbedtbairro
    end
    object lbl5: TLabel
      Left = 713
      Top = 56
      Width = 48
      Height = 17
      Caption = 'idcliente'
      FocusControl = dbedtidcliente
      Visible = False
    end
    object lbl6: TLabel
      Left = 8
      Top = 103
      Width = 39
      Height = 17
      Caption = 'cidade'
      FocusControl = dbedtcidade
    end
    object lbl7: TLabel
      Left = 343
      Top = 103
      Width = 40
      Height = 17
      Caption = 'estado'
    end
    object lbl8: TLabel
      Left = 397
      Top = 103
      Width = 21
      Height = 17
      Caption = 'cep'
      FocusControl = dbedtcep
    end
    object lbl9: TLabel
      Left = 128
      Top = 150
      Width = 24
      Height = 17
      Caption = 'cnpj'
      FocusControl = dbedtcnpj
    end
    object lbl10: TLabel
      Left = 271
      Top = 151
      Width = 71
      Height = 17
      Caption = 'inscestadual'
      FocusControl = dbedtinscestadual
    end
    object Label1: TLabel
      Left = 8
      Top = 150
      Width = 18
      Height = 17
      Caption = 'cpf'
      FocusControl = DBEditcpf
    end
    object Label2: TLabel
      Left = 471
      Top = 9
      Width = 91
      Height = 17
      Caption = 'Transportadora'
      FocusControl = DBEdit1
    end
    object dbedtnomecliente: TDBEdit
      Left = 8
      Top = 24
      Width = 329
      Height = 25
      CharCase = ecUpperCase
      DataField = 'nomecliente'
      DataSource = DMRaito.dsCliente
      TabOrder = 0
      OnExit = dbedtnomeclienteExit
    end
    object dbedtregiao: TDBEdit
      Left = 343
      Top = 24
      Width = 122
      Height = 25
      DataField = 'regiao'
      DataSource = DMRaito.dsCliente
      TabOrder = 1
    end
    object dbedtdatacadastro: TDBEdit
      Left = 1040
      Top = 24
      Width = 97
      Height = 25
      DataField = 'datacadastro'
      DataSource = DMRaito.dsCliente
      ReadOnly = True
      TabOrder = 2
    end
    object dbedtendereco: TDBEdit
      Left = 8
      Top = 72
      Width = 457
      Height = 25
      DataField = 'endereco'
      DataSource = DMRaito.dsCliente
      TabOrder = 3
    end
    object dbedtbairro: TDBEdit
      Left = 471
      Top = 72
      Width = 194
      Height = 25
      DataField = 'bairro'
      DataSource = DMRaito.dsCliente
      TabOrder = 4
    end
    object dbedtidcliente: TDBEdit
      Left = 713
      Top = 72
      Width = 48
      Height = 25
      DataField = 'idcliente'
      DataSource = DMRaito.dsCliente
      TabOrder = 5
    end
    object dbedtcidade: TDBEdit
      Left = 8
      Top = 119
      Width = 329
      Height = 25
      DataField = 'cidade'
      DataSource = DMRaito.dsCliente
      TabOrder = 6
    end
    object dbedtcep: TDBEdit
      Left = 397
      Top = 119
      Width = 97
      Height = 25
      DataField = 'cep'
      DataSource = DMRaito.dsCliente
      MaxLength = 9
      TabOrder = 7
    end
    object dbedtcnpj: TDBEdit
      Left = 128
      Top = 167
      Width = 135
      Height = 25
      DataField = 'cnpj'
      DataSource = DMRaito.dsCliente
      MaxLength = 18
      TabOrder = 8
      OnExit = dbedtcnpjExit
    end
    object dbedtinscestadual: TDBEdit
      Left = 271
      Top = 167
      Width = 137
      Height = 25
      DataField = 'inscestadual'
      DataSource = DMRaito.dsCliente
      TabOrder = 9
    end
    object DBEditcpf: TDBEdit
      Left = 8
      Top = 167
      Width = 113
      Height = 25
      DataField = 'cpf'
      DataSource = DMRaito.dsCliente
      MaxLength = 14
      TabOrder = 10
      OnExit = DBEditcpfExit
    end
    object DBEdit1: TDBEdit
      Left = 471
      Top = 25
      Width = 528
      Height = 25
      DataField = 'transportadora'
      DataSource = DMRaito.dsCliente
      TabOrder = 11
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 201
      Width = 991
      Height = 376
      Caption = '  Contatos  '
      Color = clMoneyGreen
      ParentBackground = False
      ParentColor = False
      TabOrder = 12
      object Label3: TLabel
        Left = 5
        Top = 19
        Width = 21
        Height = 17
        Caption = 'tel1'
        FocusControl = DBEdit2
      end
      object Label4: TLabel
        Left = 112
        Top = 19
        Width = 21
        Height = 17
        Caption = 'tel2'
        FocusControl = DBEdit3
      end
      object Label5: TLabel
        Left = 219
        Top = 19
        Width = 21
        Height = 17
        Caption = 'tel3'
        FocusControl = DBEdit4
      end
      object Label6: TLabel
        Left = 326
        Top = 19
        Width = 21
        Height = 17
        Caption = 'tel4'
        FocusControl = DBEdit5
      end
      object Label7: TLabel
        Left = 433
        Top = 19
        Width = 17
        Height = 17
        Caption = 'fax'
        FocusControl = DBEdit6
      end
      object Label8: TLabel
        Left = 5
        Top = 64
        Width = 23
        Height = 17
        Caption = 'cel1'
        FocusControl = DBEdit7
      end
      object Label11: TLabel
        Left = 112
        Top = 66
        Width = 23
        Height = 17
        Caption = 'cel2'
        FocusControl = DBEdit10
      end
      object Label12: TLabel
        Left = 219
        Top = 66
        Width = 23
        Height = 17
        Caption = 'cel3'
        FocusControl = DBEdit11
      end
      object Label13: TLabel
        Left = 323
        Top = 67
        Width = 31
        Height = 17
        Caption = 'radio'
        FocusControl = DBEdit12
      end
      object Label20: TLabel
        Left = 471
        Top = 66
        Width = 42
        Height = 17
        Caption = 'idradio'
        FocusControl = DBEdit19
      end
      object Label21: TLabel
        Left = 5
        Top = 112
        Width = 24
        Height = 17
        Caption = 'msn'
        FocusControl = DBEdit20
      end
      object Label22: TLabel
        Left = 266
        Top = 113
        Width = 30
        Height = 17
        Caption = 'skipe'
        FocusControl = DBEdit21
      end
      object Label14: TLabel
        Left = 527
        Top = 113
        Width = 51
        Height = 17
        Caption = 'contato1'
        FocusControl = DBEdit13
      end
      object Label15: TLabel
        Left = 696
        Top = 112
        Width = 51
        Height = 17
        Caption = 'contato2'
        FocusControl = DBEdit14
      end
      object Label17: TLabel
        Left = 5
        Top = 155
        Width = 31
        Height = 17
        Caption = 'email'
        FocusControl = DBEdit16
      end
      object Label18: TLabel
        Left = 297
        Top = 155
        Width = 49
        Height = 17
        Caption = 'emailnfe'
        FocusControl = DBEdit17
      end
      object Label9: TLabel
        Left = 589
        Top = 156
        Width = 20
        Height = 17
        Caption = 'site'
        FocusControl = DBEdit8
      end
      object Label10: TLabel
        Left = 5
        Top = 200
        Width = 36
        Height = 17
        Caption = 'twitter'
        FocusControl = DBEdit9
      end
      object Label16: TLabel
        Left = 5
        Top = 248
        Width = 30
        Height = 17
        Caption = 'OBS.:'
      end
      object DBEdit2: TDBEdit
        Left = 5
        Top = 36
        Width = 101
        Height = 25
        DataField = 'tel1'
        DataSource = DMRaito.dsCliente
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 112
        Top = 35
        Width = 101
        Height = 25
        DataField = 'tel2'
        DataSource = DMRaito.dsCliente
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 219
        Top = 35
        Width = 101
        Height = 25
        DataField = 'tel3'
        DataSource = DMRaito.dsCliente
        TabOrder = 2
      end
      object DBEdit5: TDBEdit
        Left = 326
        Top = 35
        Width = 101
        Height = 25
        DataField = 'tel4'
        DataSource = DMRaito.dsCliente
        TabOrder = 3
      end
      object DBEdit6: TDBEdit
        Left = 433
        Top = 35
        Width = 101
        Height = 25
        DataField = 'fax'
        DataSource = DMRaito.dsCliente
        TabOrder = 4
      end
      object DBEdit7: TDBEdit
        Left = 5
        Top = 80
        Width = 101
        Height = 25
        DataField = 'cel1'
        DataSource = DMRaito.dsCliente
        TabOrder = 5
      end
      object DBEdit10: TDBEdit
        Left = 112
        Top = 82
        Width = 101
        Height = 25
        DataField = 'cel2'
        DataSource = DMRaito.dsCliente
        TabOrder = 6
      end
      object DBEdit11: TDBEdit
        Left = 219
        Top = 82
        Width = 99
        Height = 25
        DataField = 'cel3'
        DataSource = DMRaito.dsCliente
        TabOrder = 7
      end
      object DBEdit12: TDBEdit
        Left = 323
        Top = 83
        Width = 142
        Height = 25
        DataField = 'radio'
        DataSource = DMRaito.dsCliente
        TabOrder = 8
      end
      object DBEdit19: TDBEdit
        Left = 471
        Top = 82
        Width = 142
        Height = 25
        DataField = 'idradio'
        DataSource = DMRaito.dsCliente
        TabOrder = 9
      end
      object DBEdit20: TDBEdit
        Left = 5
        Top = 128
        Width = 255
        Height = 25
        DataField = 'msn'
        DataSource = DMRaito.dsCliente
        TabOrder = 10
      end
      object DBEdit21: TDBEdit
        Left = 266
        Top = 129
        Width = 255
        Height = 25
        DataField = 'skipe'
        DataSource = DMRaito.dsCliente
        TabOrder = 11
      end
      object DBEdit13: TDBEdit
        Left = 527
        Top = 129
        Width = 163
        Height = 25
        DataField = 'contato1'
        DataSource = DMRaito.dsCliente
        TabOrder = 12
      end
      object DBEdit14: TDBEdit
        Left = 696
        Top = 128
        Width = 163
        Height = 25
        DataField = 'contato2'
        DataSource = DMRaito.dsCliente
        TabOrder = 13
      end
      object DBEdit16: TDBEdit
        Left = 5
        Top = 171
        Width = 286
        Height = 25
        DataField = 'email'
        DataSource = DMRaito.dsCliente
        TabOrder = 14
      end
      object DBEdit17: TDBEdit
        Left = 297
        Top = 173
        Width = 286
        Height = 25
        DataField = 'emailnfe'
        DataSource = DMRaito.dsCliente
        TabOrder = 15
      end
      object DBEdit8: TDBEdit
        Left = 589
        Top = 172
        Width = 270
        Height = 25
        DataField = 'site'
        DataSource = DMRaito.dsCliente
        TabOrder = 16
      end
      object DBEdit9: TDBEdit
        Left = 5
        Top = 216
        Width = 286
        Height = 25
        DataField = 'twitter'
        DataSource = DMRaito.dsCliente
        TabOrder = 17
      end
      object DBMemo1: TDBMemo
        Left = 5
        Top = 268
        Width = 854
        Height = 93
        ScrollBars = ssBoth
        TabOrder = 18
      end
    end
    object DBComboBox1: TDBComboBox
      Left = 343
      Top = 120
      Width = 48
      Height = 25
      DataField = 'estado'
      DataSource = DMRaito.dsCliente
      Items.Strings = (
        'AC'
        'AL'
        'AM'
        'AP'
        'BA'
        'CE'
        'DF'
        'ES'
        'GO'
        'MA'
        'MG'
        'MS'
        'MT'
        'PA'
        'PB'
        'PE'
        'PI'
        'PR'
        'RJ'
        'RN'
        'RO'
        'RR'
        'RS'
        'SC'
        'SE'
        'SP'
        'TO')
      TabOrder = 13
    end
  end
end
