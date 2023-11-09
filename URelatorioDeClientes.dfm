object frmRelatorioDeClientes: TfrmRelatorioDeClientes
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de Clientes'
  ClientHeight = 762
  ClientWidth = 850
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Scaled = False
  TextHeight = 15
  object QRepRelClientes: TQuickRep
    Left = 8
    Top = 8
    Width = 794
    Height = 697
    ShowingPreview = False
    DataSet = FDTableRelatorioDeCliente
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Continuous = False
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.MemoryLimit = 1000000
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PreviewWidth = 500
    PreviewHeight = 500
    PrevShowThumbs = False
    PrevShowSearch = False
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stPDF
    PreviewLeft = 0
    PreviewTop = 0
    object QRBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 40
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabel1: TQRLabel
        Left = 8
        Top = 8
        Width = 121
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          21.166666666666670000
          320.145833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Relat'#243'rio de Clientes'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 118
      Width = 718
      Height = 27
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        71.437500000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 8
        Top = 6
        Width = 41
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          15.875000000000000000
          108.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = FDTableRelatorioDeCliente
        DataField = 'nomecliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 6
      end
      object QRDBText2: TQRDBText
        Left = 296
        Top = 6
        Width = 32
        Height = 17
        Size.Values = (
          44.979166666666670000
          783.166666666666700000
          15.875000000000000000
          84.666666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = FDTableRelatorioDeCliente
        DataField = 'endereco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 6
      end
      object QRDBText3: TQRDBText
        Left = 584
        Top = 8
        Width = 44
        Height = 17
        Size.Values = (
          44.979166666666670000
          1545.166666666667000000
          21.166666666666670000
          116.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = FDTableRelatorioDeCliente
        DataField = 'datacadastro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 6
      end
    end
    object QRBand3: TQRBand
      Left = 38
      Top = 78
      Width = 718
      Height = 40
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRLabel2: TQRLabel
        Left = 16
        Top = 16
        Width = 44
        Height = 17
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          42.333333333333330000
          116.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'NOME:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 296
        Top = 17
        Width = 78
        Height = 17
        Size.Values = (
          44.979166666666670000
          783.166666666666700000
          44.979166666666670000
          206.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'ENDERE'#199'O:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 584
        Top = 17
        Width = 114
        Height = 17
        Size.Values = (
          44.979166666666670000
          1545.166666666667000000
          44.979166666666670000
          301.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DATA CADASTRO:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
    end
  end
  object dsRelatorioDeCliente: TDataSource
    DataSet = FDTableRelatorioDeCliente
    Left = 552
    Top = 288
  end
  object FDTableRelatorioDeCliente: TFDTable
    Active = True
    IndexFieldNames = 'idcliente'
    Connection = DMRaito.FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'dbratio.cadastroclientes'
    Left = 400
    Top = 288
    object FDTableRelatorioDeClienteidcliente: TFDAutoIncField
      FieldName = 'idcliente'
      Origin = 'idcliente'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDTableRelatorioDeClientenomecliente: TStringField
      FieldName = 'nomecliente'
      Origin = 'nomecliente'
      Required = True
      Size = 70
    end
    object FDTableRelatorioDeClienteregiao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'regiao'
      Origin = 'regiao'
      Size = 25
    end
    object FDTableRelatorioDeClientedatacadastro: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'datacadastro'
      Origin = 'datacadastro'
      EditMask = '!99/99/0000;1;_'
    end
    object FDTableRelatorioDeClienteendereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 80
    end
    object FDTableRelatorioDeClientebairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 30
    end
    object FDTableRelatorioDeClientecidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 30
    end
    object FDTableRelatorioDeClienteestado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'estado'
      Origin = 'estado'
      Size = 2
    end
    object FDTableRelatorioDeClientecep: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cep'
      Origin = 'cep'
      Size = 10
    end
    object FDTableRelatorioDeClientetel1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tel1'
      Origin = 'tel1'
      Size = 15
    end
    object FDTableRelatorioDeClientetel2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tel2'
      Origin = 'tel2'
      Size = 15
    end
    object FDTableRelatorioDeClientetel3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tel3'
      Origin = 'tel3'
      Size = 15
    end
    object FDTableRelatorioDeClientetel4: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tel4'
      Origin = 'tel4'
      Size = 15
    end
    object FDTableRelatorioDeClientefax: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fax'
      Origin = 'fax'
      Size = 15
    end
    object FDTableRelatorioDeClientecel1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cel1'
      Origin = 'cel1'
      Size = 15
    end
    object FDTableRelatorioDeClientecel2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cel2'
      Origin = 'cel2'
      Size = 15
    end
    object FDTableRelatorioDeClientecel3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cel3'
      Origin = 'cel3'
      Size = 15
    end
    object FDTableRelatorioDeClienteradio: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'radio'
      Origin = 'radio'
    end
    object FDTableRelatorioDeClienteidradio: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'idradio'
      Origin = 'idradio'
    end
    object FDTableRelatorioDeClientemsn: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'msn'
      Origin = 'msn'
      Size = 60
    end
    object FDTableRelatorioDeClienteskipe: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'skipe'
      Origin = 'skipe'
      Size = 60
    end
    object FDTableRelatorioDeClientecontato1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'contato1'
      Origin = 'contato1'
      Size = 30
    end
    object FDTableRelatorioDeClientecontato2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'contato2'
      Origin = 'contato2'
      Size = 30
    end
    object FDTableRelatorioDeClienteemail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'email'
      Origin = 'email'
      Size = 50
    end
    object FDTableRelatorioDeClienteemailnfe: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'emailnfe'
      Origin = 'emailnfe'
      Size = 50
    end
    object FDTableRelatorioDeClientesite: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'site'
      Origin = 'site'
      Size = 50
    end
    object FDTableRelatorioDeClienteobs: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'obs'
      Origin = 'obs'
      BlobType = ftMemo
    end
    object FDTableRelatorioDeClientecnpj: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cnpj'
      Origin = 'cnpj'
      Size = 25
    end
    object FDTableRelatorioDeClienteinscestadual: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'inscestadual'
      Origin = 'inscestadual'
    end
    object FDTableRelatorioDeClientetwitter: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'twitter'
      Origin = 'twitter'
      Size = 40
    end
    object FDTableRelatorioDeClientetransportadora: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'transportadora'
      Origin = 'transportadora'
      Size = 60
    end
    object FDTableRelatorioDeClienteteltransportadora: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'teltransportadora'
      Origin = 'teltransportadora'
      Size = 15
    end
    object FDTableRelatorioDeClientecpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf'
      Origin = 'cpf'
      Size = 15
    end
  end
end
