object frm_ImportaClientesCIGAM: Tfrm_ImportaClientesCIGAM
  Left = 399
  Top = 134
  Width = 928
  Height = 562
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'in.Pulse - Importa'#231#227'o dos Clientes e Compras da Base do CIGAM'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  ShowHint = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label17: TLabel
    Left = 452
    Top = 70
    Width = 93
    Height = 30
    Caption = 'Data da Emiss'#227'o'#13#10'Das Notas Fiscais.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object pb: TProgressBar
    Left = 0
    Top = 487
    Width = 912
    Height = 17
    Align = alBottom
    TabOrder = 0
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 504
    Width = 912
    Height = 19
    Panels = <
      item
        Text = 'Vers'#227'o'
        Width = 200
      end
      item
        Alignment = taRightJustify
        Text = 'Infotec Solution Provider       '
        Width = 50
      end>
  end
  object pgc: TPageControl
    Left = 0
    Top = 0
    Width = 912
    Height = 416
    ActivePage = tsImportacao
    Align = alClient
    TabHeight = 25
    TabOrder = 2
    OnChange = pgcChange
    object tsImportacao: TTabSheet
      Caption = '&1.Importa'#231#227'o'
      object grdClientes: TDBGrid
        Left = 0
        Top = 74
        Width = 904
        Height = 307
        Align = alClient
        Ctl3D = False
        DataSource = dscds_ImportaCIGAM
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'codigoEmpresa'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomeCompleto'
            Width = 284
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'contato'
            Width = 125
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fone'
            Width = 93
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'faxFone'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'endereco'
            Width = 246
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'bairro'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'municipio'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'uf'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cep'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cnpjCpf'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'inscrito'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'inscricao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'conceito'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codigoDivisao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dataNascimento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ultimoMovimento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cadastro'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codigoIndicacao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codigoRepresentante'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'percentualComissaoBaixa'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'contabilCliente'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codigoResponsavel'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fantasia'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pessoa'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codigoContabilFornecedor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codigoCondicaoPagamento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codigoTipoPagamento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codigoTipoOperacao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'irrfAcumulado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tipoEmpresa'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'atividade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'funcionarios'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'faturamento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'limiteCredito'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codigoMercado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codigoUsuarioModificacao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'enviarCarta'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tabelaPrecos'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'agendaInterna'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codigoPais'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codigoCentralizadora'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'atrasoMedio'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'numero'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'complemento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'inscricaoMunicipal'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'suframa'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tipoFrete'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'percentualIndenizacao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'percDescontoSugestaoItens'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'percentualDesconto2'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'jurosPadrao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ultimaAtualizacao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codigoUnidadeNegocio'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'portadorPadrao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ativo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sessao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codigoContabilAdiantamentoCli'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codigoContabilAdiantamentoForn'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codigoCentroArmazenagem'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codigoIndiceCredito'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codigoUsuarioCriacao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dataModificacao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codigoRegiaoEntrega'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dataValidadeCredito'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cd_setor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codigoRegimeTriburario'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ultimaConsultaCredito'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'validadeCobrancaAdmin'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ultimaVenda'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'prefixoCnae'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'basePrazoDiferenciado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'possuiRetencaoIss'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codigoCentroArmazenagemMatAlte'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'filtroDataDirf'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tipoImovel'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'listarIss'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'diaVencimento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'limiteFaturamento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'grauRelacionamento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sufixoCnae'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'toleranciaVencimento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nivelCredito'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'listarDirf'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'conveniada'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'creditoLiberado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'percentualFrete'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codigoEan'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'percentualAcrescimoLimite'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'percentualAcrescimoPreco'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'utilizaPrazoDiferenciado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tgPadraoNfs'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'limiteCreditoMensal'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'optanteSimples'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Usrempr1'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Usrempr2'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cnaeServico'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Usrempr4'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valorFrete'
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 68
        Width = 904
        Height = 6
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 1
      end
      object gbx_Par_Consulta: TGroupBox
        Left = 0
        Top = 0
        Width = 904
        Height = 68
        Align = alTop
        Caption = ' Par'#226'metros de Consulta no CIGAM:  '
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        object Label1: TLabel
          Left = 231
          Top = 19
          Width = 96
          Height = 13
          Alignment = taRightJustify
          Caption = 'Data Clientes Inicial:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 236
          Top = 43
          Width = 91
          Height = 13
          Alignment = taRightJustify
          Caption = 'Data Clientes Final:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 645
          Top = 20
          Width = 74
          Height = 13
          Alignment = taRightJustify
          Caption = 'Empresa Inicial:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 650
          Top = 42
          Width = 69
          Height = 13
          Alignment = taRightJustify
          Caption = 'Empresa Final:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object JvBevel1: TJvBevel
          Left = 426
          Top = 6
          Width = 9
          Height = 62
          Shape = bsLeftLine
          Style = bsCustomStyle
          Edges = [beLeft]
          Inner = bvRaised
        end
        object JvBevel2: TJvBevel
          Left = 777
          Top = 6
          Width = 8
          Height = 61
          Shape = bsLeftLine
          Style = bsCustomStyle
          Edges = [beLeft]
          Inner = bvRaised
        end
        object Label5: TLabel
          Left = 782
          Top = 19
          Width = 68
          Height = 13
          Alignment = taRightJustify
          Caption = 'Divis'#227'o Inicial:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 787
          Top = 41
          Width = 63
          Height = 13
          Alignment = taRightJustify
          Caption = 'Divis'#227'o Final:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object JvBevel3: TJvBevel
          Left = 224
          Top = 6
          Width = 9
          Height = 62
          Shape = bsLeftLine
          Style = bsCustomStyle
          Edges = [beLeft]
          Inner = bvRaised
        end
        object Label7: TLabel
          Left = 7
          Top = 33
          Width = 36
          Height = 13
          Alignment = taRightJustify
          Caption = 'N'#186' PIN:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 432
          Top = 19
          Width = 100
          Height = 13
          Alignment = taRightJustify
          Caption = 'Data Compras Inicial:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 437
          Top = 43
          Width = 95
          Height = 13
          Alignment = taRightJustify
          Caption = 'Data Compras Final:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object JvBevel4: TJvBevel
          Left = 634
          Top = 6
          Width = 9
          Height = 62
          Shape = bsLeftLine
          Style = bsCustomStyle
          Edges = [beLeft]
          Inner = bvRaised
        end
        object jvdted_Data_Inicial_Pesq: TJvDatePickerEdit
          Left = 330
          Top = 15
          Width = 89
          Height = 21
          AllowNoDate = True
          ButtonFlat = True
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object jvdted_Data_Final_Pesq: TJvDatePickerEdit
          Left = 330
          Top = 39
          Width = 89
          Height = 21
          AllowNoDate = True
          ButtonFlat = True
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object msked_Codigo_Inicial: TMaskEdit
          Left = 722
          Top = 16
          Width = 45
          Height = 19
          AutoSize = False
          EditMask = '999999;0; '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 6
          ParentFont = False
          TabOrder = 5
          Text = '0'
        end
        object msked_Codigo_Final: TMaskEdit
          Left = 722
          Top = 38
          Width = 45
          Height = 19
          AutoSize = False
          EditMask = '999999;0; '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 6
          ParentFont = False
          TabOrder = 6
          Text = '0'
        end
        object jved_Divisao_Inicial: TJvEdit
          Left = 853
          Top = 16
          Width = 41
          Height = 19
          Hint = 'I'
          Flat = True
          ParentFlat = False
          Alignment = taCenter
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 2
          ParentFont = False
          TabOrder = 7
          Text = '1D'
        end
        object jved_Divisao_Final: TJvEdit
          Left = 853
          Top = 38
          Width = 41
          Height = 19
          Flat = True
          ParentFlat = False
          Alignment = taCenter
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 2
          ParentFont = False
          TabOrder = 8
          Text = '1D'
        end
        object jvEd_PIN: TJvEdit
          Left = 46
          Top = 30
          Width = 163
          Height = 19
          Flat = True
          ParentFlat = False
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 20
          ParentFont = False
          TabOrder = 0
          Text = '001'
        end
        object jvdted_Data_NF_Inicial_Pesq: TJvDatePickerEdit
          Left = 537
          Top = 15
          Width = 88
          Height = 21
          AllowNoDate = True
          ButtonFlat = True
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object jvdted_Data_NF_Final_Pesq: TJvDatePickerEdit
          Left = 537
          Top = 39
          Width = 88
          Height = 21
          AllowNoDate = True
          ButtonFlat = True
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
      end
    end
    object tsLog: TTabSheet
      Caption = '&2.Log'
      ImageIndex = 4
      object log: TMemo
        Left = 0
        Top = 0
        Width = 904
        Height = 381
        Align = alClient
        Ctl3D = False
        ParentCtl3D = False
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object tsParametros: TTabSheet
      Caption = '&3.Parametros'
      ImageIndex = 6
      object grpCampos: TGroupBox
        Left = 5
        Top = 5
        Width = 316
        Height = 141
        Caption = ' Atualizar campos:  '
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object chkRAZAO: TDBCheckBox
          Left = 10
          Top = 26
          Width = 105
          Height = 17
          Caption = 'Raz'#227'o Social'
          DataField = 'RAZAO'
          DataSource = dsParametros
          TabOrder = 0
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object chkFantasia: TDBCheckBox
          Left = 10
          Top = 42
          Width = 105
          Height = 17
          Caption = 'Fantasia'
          DataField = 'FANTASIA'
          DataSource = dsParametros
          TabOrder = 1
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object chkRAZAO2: TDBCheckBox
          Left = 10
          Top = 58
          Width = 105
          Height = 17
          Caption = 'CNPJ'
          DataField = 'CNPJ'
          DataSource = dsParametros
          TabOrder = 2
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object chkRAZAO3: TDBCheckBox
          Left = 10
          Top = 74
          Width = 105
          Height = 17
          Caption = 'Endere'#231'o'
          DataField = 'ENDERECO'
          DataSource = dsParametros
          TabOrder = 3
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object chkRAZAO4: TDBCheckBox
          Left = 10
          Top = 90
          Width = 105
          Height = 17
          Caption = 'Bairro'
          DataField = 'BAIRRO'
          DataSource = dsParametros
          TabOrder = 4
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object chkRAZAO5: TDBCheckBox
          Left = 10
          Top = 106
          Width = 105
          Height = 17
          Caption = 'Cidade'
          DataField = 'CIDADE'
          DataSource = dsParametros
          TabOrder = 5
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object chkRAZAO6: TDBCheckBox
          Left = 114
          Top = 26
          Width = 105
          Height = 17
          Caption = 'CEP'
          DataField = 'CEP'
          DataSource = dsParametros
          TabOrder = 6
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object chkRAZAO7: TDBCheckBox
          Left = 114
          Top = 42
          Width = 105
          Height = 17
          Caption = 'Estado'
          DataField = 'ESTADO'
          DataSource = dsParametros
          TabOrder = 7
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object chkRAZAO8: TDBCheckBox
          Left = 114
          Top = 58
          Width = 105
          Height = 17
          Caption = 'Telefone'
          DataField = 'TELEFONE'
          DataSource = dsParametros
          TabOrder = 8
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object chkRAZAO9: TDBCheckBox
          Left = 114
          Top = 74
          Width = 105
          Height = 17
          Caption = 'E-mail'
          DataField = 'EMAIL'
          DataSource = dsParametros
          TabOrder = 9
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object chkRAZAO10: TDBCheckBox
          Left = 114
          Top = 90
          Width = 105
          Height = 17
          Caption = 'Unidade'
          DataField = 'UNIDADE'
          DataSource = dsParametros
          TabOrder = 10
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object chkRAZAO11: TDBCheckBox
          Left = 114
          Top = 106
          Width = 105
          Height = 17
          Caption = 'Segmento'
          DataField = 'SEGMENTO'
          DataSource = dsParametros
          TabOrder = 11
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object chkRAZAO12: TDBCheckBox
          Left = 195
          Top = 26
          Width = 105
          Height = 17
          Caption = 'Contato'
          DataField = 'CONTATO'
          DataSource = dsParametros
          TabOrder = 12
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object chkRAZAO13: TDBCheckBox
          Left = 195
          Top = 42
          Width = 105
          Height = 17
          Caption = 'E-mail contato'
          DataField = 'EMAIL_CONTATO'
          DataSource = dsParametros
          TabOrder = 13
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object chkRAZAO14: TDBCheckBox
          Left = 195
          Top = 58
          Width = 105
          Height = 17
          Caption = 'Cargo contato'
          DataField = 'CARGO_CONTATO'
          DataSource = dsParametros
          TabOrder = 14
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object chkRAZAO15: TDBCheckBox
          Left = 195
          Top = 74
          Width = 105
          Height = 17
          Caption = 'Telefone contato'
          DataField = 'TEL_CONTATO'
          DataSource = dsParametros
          TabOrder = 15
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object chkRAZAO16: TDBCheckBox
          Left = 195
          Top = 90
          Width = 105
          Height = 17
          Caption = 'Saldo'
          DataField = 'SALDO'
          DataSource = dsParametros
          TabOrder = 16
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object chkRAZAO17: TDBCheckBox
          Left = 195
          Top = 106
          Width = 105
          Height = 17
          Caption = 'Potencial'
          DataField = 'POTENCIAL'
          DataSource = dsParametros
          TabOrder = 17
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
      object DBCheckBox1: TDBCheckBox
        Left = 5
        Top = 150
        Width = 236
        Height = 17
        Caption = 'Consistir exist'#234'ncia do cliente pelo CPF/CNPJ'
        DataField = 'IMP_POR_CPFNCPJ_CLIENTE'
        DataSource = dsParametros
        TabOrder = 1
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object chkIncluiClienteCampanha: TDBCheckBox
        Left = 5
        Top = 167
        Width = 219
        Height = 17
        Caption = 'Inclu'#237' cliente na campanha principal'
        DataField = 'INCLUI_CLIENTE_CAMP_PRINC_IMP'
        DataSource = dsParametros
        TabOrder = 2
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox2: TDBCheckBox
        Left = 334
        Top = 9
        Width = 219
        Height = 17
        Caption = 'Importar Clientes'
        Ctl3D = True
        DataField = 'IMPORTAR_CLIENTES'
        DataSource = dsConfig
        ParentCtl3D = False
        TabOrder = 3
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox3: TDBCheckBox
        Left = 334
        Top = 25
        Width = 219
        Height = 17
        Caption = 'Importar Compras'
        DataField = 'IMPORTAR_COMPRAS'
        DataSource = dsConfig
        TabOrder = 4
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox5: TDBCheckBox
        Left = 334
        Top = 41
        Width = 219
        Height = 17
        Caption = 'Importar Clientes Existentes'
        DataField = 'IMPORTAR_CLIENTE_EXISTENTE'
        DataSource = dsConfig
        TabOrder = 5
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object grp6: TGroupBox
        Left = 4
        Top = 193
        Width = 521
        Height = 113
        Caption = ' Configura'#231#227'o para atualiza'#231#227'o autom'#225'tica:  '
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 6
        object lbAtualizacaoHora: TLabel
          Left = 139
          Top = 56
          Width = 26
          Height = 13
          Alignment = taRightJustify
          Caption = 'Hora:'
          FocusControl = edAtualizacaoHora
        end
        object lbAtualizacaoDia: TLabel
          Left = 69
          Top = 32
          Width = 96
          Height = 13
          Alignment = taRightJustify
          Caption = 'Dias de atualiza'#231#227'o:'
        end
        object lbDataUltCOmpra: TLabel
          Left = 9
          Top = 79
          Width = 157
          Height = 13
          Alignment = taRightJustify
          Caption = 'Atualizar data '#218'ltima Compra Por:'
        end
        object edAtualizacaoHora: TDBEdit
          Left = 168
          Top = 52
          Width = 55
          Height = 21
          Ctl3D = True
          DataField = 'ATUALIZACAO_HORA'
          DataSource = dsConfig
          ParentCtl3D = False
          TabOrder = 1
        end
        object cbAtualizacaoDia: TComboBox
          Left = 168
          Top = 29
          Width = 106
          Height = 21
          Ctl3D = True
          ItemHeight = 13
          ParentCtl3D = False
          TabOrder = 0
          OnChange = cbAtualizacaoDiaChange
          Items.Strings = (
            '0.Todos'
            '1.Domingo'
            '2.Segunda-feira'
            '3.Ter'#231'a-feira'
            '4.Quarta-feira'
            '5.Quinta-feira'
            '6.Sexta-feira'
            '7.S'#225'bado'
            '8.Nenhum')
        end
        object dbchkDesligaComputador: TDBCheckBox
          Left = 294
          Top = 28
          Width = 203
          Height = 17
          Caption = 'Desligar computador ap'#243's atualiza'#231#227'o'
          Ctl3D = True
          DataField = 'DESLIGA_COMPUTADOR'
          DataSource = dsConfig
          ParentCtl3D = False
          TabOrder = 3
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object chkValidaCNPJ: TDBCheckBox
          Left = 294
          Top = 45
          Width = 203
          Height = 17
          Caption = 'Validar CNPJ'
          Ctl3D = True
          DataField = 'VALIDA_CNPJ'
          DataSource = dsConfig
          ParentCtl3D = False
          TabOrder = 4
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object chkValidaERP: TDBCheckBox
          Left = 294
          Top = 62
          Width = 203
          Height = 17
          Caption = 'Validar ERP'
          Ctl3D = True
          DataField = 'VALIDA_ERP'
          DataSource = dsConfig
          ParentCtl3D = False
          TabOrder = 5
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object cbDataUltCOmpra: TComboBox
          Left = 168
          Top = 75
          Width = 106
          Height = 21
          Ctl3D = True
          ItemHeight = 13
          ParentCtl3D = False
          TabOrder = 2
          OnChange = cbDataUltCOmpraChange
          Items.Strings = (
            '0.Cliente'
            '1.Compra')
        end
        object chkLimpaBanco: TDBCheckBox
          Left = 294
          Top = 79
          Width = 203
          Height = 17
          Caption = 'Limpa Compras'
          Ctl3D = True
          DataField = 'LIMPA_COMPRAS'
          DataSource = dsConfig
          ParentCtl3D = False
          TabOrder = 6
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
      object rg_Tipo_Servidor: TRadioGroup
        Left = 333
        Top = 64
        Width = 100
        Height = 81
        Caption = ' Usar Servidor:  '
        Ctl3D = False
        ItemIndex = 1
        Items.Strings = (
          'Externo'
          'Interno')
        ParentCtl3D = False
        TabOrder = 7
        OnClick = rg_Tipo_ServidorClick
      end
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 422
    Width = 912
    Height = 59
    Align = alBottom
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 3
    DesignSize = (
      910
      57)
    object lb1: TLabel
      Left = 5
      Top = 18
      Width = 48
      Height = 15
      Caption = 'Clientes:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbClienteTotal: TLabel
      Left = 56
      Top = 19
      Width = 42
      Height = 15
      Alignment = taRightJustify
      Caption = '000000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb2: TLabel
      Left = 100
      Top = 19
      Width = 6
      Height = 15
      Caption = '/'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbTotalClientes: TLabel
      Left = 107
      Top = 19
      Width = 42
      Height = 15
      Caption = '000000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb_Processo: TLabel
      Left = 182
      Top = 20
      Width = 91
      Height = 15
      Caption = 'PROCESSANDO...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object SpeedButton1: TSpeedButton
      Left = 376
      Top = 24
      Width = 105
      Height = 22
      Caption = 'Teste Cond'
      Visible = False
      OnClick = SpeedButton1Click
    end
    object btnImportar: TBitBtn
      Left = 671
      Top = 9
      Width = 100
      Height = 40
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Importar'
      TabOrder = 0
      OnClick = btnImportarClick
      Glyph.Data = {
        D60E0000424DD60E000000000000360000002800000034000000180000000100
        180000000000A00E0000C30E0000C30E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBDAB9EBDAB9EBDAB9EB
        DAB9EBDAB9EBDAB9EBDAB9EBDAB9EBDAB9EBDAB9EBDAB9EBDAB9EBDAB9EBDAB9
        EBDAB9EBDAB9EBDAB9F7F1E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFCFCFD0CFCFD0CFCFD0CFCFD0CFCFD0CFCFD0CFCFD0CFCFD0CFCFD0CF
        CFD0CFCFD0CFCFD0CFCFD0CFCFD0CFCFD0CFCFD0CFCFD0EDEDEDFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCA9D44CA9D44CA9D44CA9D44CA9D
        44CA9D44CA9D44CA9D44CA9D44CA9D44CA9D44CA9D44CA9D44CA9D44CA9D44CA
        9D44CA9D44EBDAB9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        8080828080828080828080828080828080828080828080828080828080828080
        82808082808082808082808082808082808082CFCFD0FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFCA9D44D4B066F2E6D0F2E6D0F2E6D0F2E6D0
        F2E6D0F2E6D0F2E6D0F2E6D0F2E6D0F2E6D0F2E6D0F2E6D0F2E6D0E3CB9CCA9D
        44EBDAB9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80808298
        989ADFDFE0DFDFE0DFDFE0DFDFE0DFDFE0DFDFE0DFDFE0DFDFE0DFDFE0DFDFE0
        DFDFE0DFDFE0DFDFE0BCBCBD808082CFCFD0FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFCA9D44D8B673FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBDAB9CA9D44EBDAB9
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808082A0A0A2FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFCFCFD0808082CFCFD0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFCA9D44D8B673FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFEFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808082A0A0A2FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFCA9D44D8B673FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFC
        DDC187F8F3E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFE6D1A7808082A0A0A2FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFDFDFDAEAEAFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3C3C4CA9D
        44D8B673FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFAF6D8B776CA9D44F8
        F3E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF2E6D0D5B169808082A0A0A2FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFF9F9F9A2A2A3808082EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFE09A9A9CCA9D44D8B673
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF6EDD3AE63CA9D44CA9D44F8F3E8FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF9F3E2
        C896CB9F47E6D1A7808082A0A0A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3
        969698808082808082EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF7F7F7B8B8B9828284C3C3C4CA9D44D8B673FFFFFFFF
        FFFFFFFFFFFFFFFFF7F0E2D0A858CA9D44CA9D44CA9D44D2AC60DEC28AE7D4AD
        EEE0C4F2E6D0F7F0E2F8F3E8F7F0E2F2E6D0EAD8B6DCBD82CDA24DCA9D44CDA2
        4DFBF7F0808082A0A0A2FFFFFFFFFFFFFFFFFFFFFFFFEBEBEB8E8E9080808280
        8082808082949496B0B0B1C7C7C8D7D7D8DFDFE0EBEBEBEFEFEFEBEBEBDFDFE0
        CDCDCEAAAAAB868688808082868688F5F5F5CA9D44D8B673FFFFFFFFFFFFFFFF
        FFF2E8D3CDA24DCA9D44CA9D44CA9D44CA9D44CA9D44CA9D44CA9D44CA9D44CA
        9D44CA9D44CA9D44CA9D44CA9D44CA9D44CA9D44CA9D44CA9D44EAD8B6FFFFFF
        808082A0A0A2FFFFFFFFFFFFFFFFFFE1E1E18686888080828080828080828080
        8280808280808280808280808280808280808280808280808280808280808280
        8082808082808082CDCDCEFFFFFFCA9D44D8B673FFFFFFFFFFFFECDDBECB9F47
        CA9D44CA9D44CA9D44CA9D44CA9D44CA9D44CA9D44CA9D44CA9D44CA9D44CA9D
        44CA9D44CA9D44CA9D44CA9D44CA9D44CA9D44E2C896FFFFFFFFFFFF808082A0
        A0A2FFFFFFFFFFFFD3D3D4828284808082808082808082808082808082808082
        8080828080828080828080828080828080828080828080828080828080828080
        82B8B8B9FFFFFFFFFFFFCA9D44D8B673FFFFFFFFFFFFEDDFC1CB9F47CA9D44CA
        9D44CA9D44CA9D44CA9D44CA9D44CA9D44CA9D44CA9D44CA9D44CA9D44CA9D44
        CA9D44CA9D44CA9D44CB9F47E7D2AAFFFFFFFFFFFFFFFFFF808082A0A0A2FFFF
        FFFFFFFFD5D5D682828480808280808280808280808280808280808280808280
        8082808082808082808082808082808082808082808082828284C5C5C6FFFFFF
        FFFFFFFFFFFFCA9D44D8B673FFFFFFFFFFFFFFFFFFEDDFC1CB9F47CA9D44CA9D
        44CA9D44CA9D44CA9D44CA9D44CA9D44CA9D44CA9D44CA9D44CA9D44CA9D44CA
        9D44DBBC7FF5ECDCFFFFFFFFFFFFFFFFFFFFFFFF808082A0A0A2FFFFFFFFFFFF
        FFFFFFD5D5D68282848080828080828080828080828080828080828080828080
        82808082808082808082808082808082A8A8A9E7E7E7FFFFFFFFFFFFFFFFFFFF
        FFFFCA9D44D8B673FFFFFFFFFFFFFFFFFFFFFFFFEDDFC1CB9F47CA9D44CA9D44
        CA9D44CA9D44CA9D44CA9D44CA9D44CA9D44CB9F47D6B36CE3CB9CF5ECDCFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808082A0A0A2FFFFFFFFFFFFFFFFFFFF
        FFFFD5D5D6828284808082808082808082808082808082808082808082808082
        8282849C9C9EBCBCBDE7E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCA9D
        44D8B673FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDDFC1CB9F47CA9D44CA9D44DD
        BF85E4CEA1E8D5B0EBDAB9F2E6D0FCF9F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF808082A0A0A2FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFD5D5D6828284808082808082ACACADBFBFC0C9C9CACFCFD0DFDFE0F7F7F7FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCA9D44D8B673
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDDFC1CB9F47CA9D44F8F3E8FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF808082A0A0A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        D5D5D6828284808082EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCA9D44D8B673FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDDFC1CB9F47F8F3E8FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF808082A0A0A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5
        D5D6828284EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCA9D44D8B673FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDDFC1F9F4EAFFFFFFFFFFFFFFFFFFFC
        FAF6F8F3E8FCFAF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        808082A0A0A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5D5
        D6F1F1F1FFFFFFFFFFFFFFFFFFF9F9F9EFEFEFF9F9F9FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFCA9D44D8B673FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBDAB9CA9D
        44EBDAB9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808082A0
        A0A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFCFCFD0808082CFCFD0FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFCA9D44D2AC60EBDAB9EBDAB9EBDAB9EBDAB9EBDAB9EB
        DAB9EBDAB9EBDAB9EBDAB9EBDAB9EBDAB9EBDAB9EBDAB9DFC48DCA9D44EBDAB9
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808082949496CFCF
        D0CFCFD0CFCFD0CFCFD0CFCFD0CFCFD0CFCFD0CFCFD0CFCFD0CFCFD0CFCFD0CF
        CFD0CFCFD0B2B2B3808082CFCFD0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFCA9D44CA9D44CA9D44CA9D44CA9D44CA9D44CA9D44CA9D44CA9D
        44CA9D44CA9D44CA9D44CA9D44CA9D44CA9D44CA9D44CA9D44EBDAB9FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808082808082808082808082
        8080828080828080828080828080828080828080828080828080828080828080
        82808082808082CFCFD0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFEBDAB9EBDAB9EBDAB9EBDAB9EBDAB9EBDAB9EBDAB9EBDAB9EBDAB9EBDAB9
        EBDAB9EBDAB9EBDAB9EBDAB9EBDAB9EBDAB9EBDAB9F7F1E5FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFD0CFCFD0CFCFD0CFCFD0CFCFD0CF
        CFD0CFCFD0CFCFD0CFCFD0CFCFD0CFCFD0CFCFD0CFCFD0CFCFD0CFCFD0CFCFD0
        CFCFD0EDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      NumGlyphs = 2
    end
    object btnTrayIcon: TBitBtn
      Left = 776
      Top = 9
      Width = 121
      Height = 40
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Minimizar em '#13#10'segundo plano'
      TabOrder = 1
      WordWrap = True
      OnClick = btnTrayIconClick
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000191919FF191919FF191919FF0000000000000000191919FF191919FF1919
        19FF0000000000000000191919FF191919FF191919FF00000000000000001919
        19FF191919FF191919FF0000000000000000191919FF191919FF191919FF0000
        000000000000191919FF191919FF191919FF0000000000000000010101030000
        0000666666FF0808085500000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000020202060000
        0000E6E6E6FF666666FF0E0E0E8D000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000030303091919
        19FFFFFFFFFFFFFFFFFF999999FF131313C60303031C00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000191919FF00000000030303091919
        19FFFFFFFFFFFFFFFFFFFFFFFFFFA1A1A1D31A1A1ACC08080855000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000191919FF00000000030303081919
        19FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6E6FF373737D00E0E0E8D0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000191919FF00000000020202070000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A7A7AE01A1A
        1ACC0303031C0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000020202060000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7B7
        B7E9262626D90808085500000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000020202061919
        19FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE6E6E6FF4A4A4AE31B1B1BB4000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000191919FF00000000020202061919
        19FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF9F9F9FEC202020EC0303031C00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000191919FF00000000020202061919
        19FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6E6FF292929F51B1B1B68000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000191919FF00000000020202060000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5D5D5DF62D2D2DC60000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000010101040000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2B2B2FF2626
        26F20303031C0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000010101021919
        19FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6
        E6FF303030FC2E2E2E7B00000000000000000000000000000000000000000000
        000000000000000000000000000000000000191919FF00000000010101021919
        19FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF666666FF404040D90303031C0000000000000000000000000000
        000000000000000000000000000000000000191919FF00000000010101021919
        19FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFB2B2B2FF464646F93131316400000000000000000000
        000000000000000000000000000000000000191919FF00000000010101040000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6E6FF4C4C4CFF5A5A5AC0000000000000
        0000000000000000000000000000000000000000000000000000010101040000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FF525252EC1D1D
        1D36000000000000000000000000000000000000000000000000010101041919
        19FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2B2B2FF4C4C
        4CFF5E5E5E91000000000000000000000000191919FF00000000010101041919
        19FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6
        E6FF4C4C4CFF999999FF0000000000000000191919FF00000000020201041919
        19FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF808080FF666666FF0303031C191919FF00000000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFB2B2B2FF666666FF000000000000000003020104B278
        3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
        3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
        3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
        3EFFB3783EFFB3783EFFB3783EFFB3783EFFB2783EFF0000000001010102B378
        3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
        3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
        3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
        3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFF0000000000000000B378
        3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
        3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
        3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
        3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFF0000000000000000B378
        3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
        3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
        3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
        3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFF00000000000000009363
        33D2B3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
        3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
        3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
        3EFFB3783EFFB3783EFFB3783EFFB3783EFF936333D200000000000000000000
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
        0000000000000000000000000000000000000000000000000000}
    end
    object btn_Carrega_XML: TBitBtn
      Left = 566
      Top = 9
      Width = 100
      Height = 40
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = 'Carregar'#13#10'XML'
      TabOrder = 2
      OnClick = btn_Carrega_XMLClick
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFCFCFBE6E6E6DFDFDFDEDEDEDEDEDEDEDEDEDEDEDEDEDE
        DEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEE4E4E4F8
        F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3A2937697856296835F96835F
        96836096836096835F96835F96836096835F96835F96835F96836096835F9683
        5F9685629E8E70D4D2D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F0C39740EC
        DEC2EBDDC1ECDDC1EBDDC1ECDDC1EBDDC1EBDDC1EBDDC1ECDDC1EBDDC1EBDDC1
        ECDDC1EBDDC1EBDDC1ECDEC1D0AE6BBEBAB2FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFF1F1F0C69B46FFFFFFFFFEFEFFFFFEEADDCFF4EEE7FFFFFEFFFFFEDFCCB8FF
        FFFFFFFFFEFFFFFEE0CCB8FFFFFEFFFEFEFFFFFFD9BC83BCB8AFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF1F1F1C69A45FEFEFEFEFEFCFFFFFDEADDCFF5EEE7FEFE
        FCFEFEFDE0CDB7FFFFFEFEFEFCFEFEFEE0CDB7FEFEFDFEFEFCFFFFFED8BB83BC
        B8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1C69B45EFE4D9E0CBB3E0CBB5
        DDC5ACDFC9B1E0CBB5E0CBB6DAC2A7E1CCB6E0CBB5E1CCB6DAC2A7E0CBB6E0CB
        B3E7D7C6D8BC83BCB8AFFEFEFEFCFCFCFCFCFCFCFCFCFCFCFCECECECC69A43FF
        FEFAFFFEF5FFFEF7EADDCAF5EEE2FFFEF6FFFEF8E0CCB2FFFFF9FFFEF6FFFEF9
        E0CCB3FFFEF8FFFEF5FFFEF8D9BC83BCB8AFF2F2F2D9D9D9D3D3D3D3D3D3D3D3
        D3CBCBCBC69E4DFEFDF7FEFCEFFFFDF1E8DBC7F3EDDEFEFCF0FEFDF3E0CAAFFF
        FEF5FEFBF1FEFEF4E0CBB0FEFDF3FEFBF0FFFDF4D8BB83BCB8AFC7C7C79C9C9B
        989897989896989896989898B0A998BCBCBABBBBB6BBBCB7B6B4AEB9B8B4BEBD
        B9D3C6B3DBBF9EE0CAAEDFC8ABE0CAADDABF9FE0C9ADDEC8A9E6D5BED8BC83BC
        B8AFBCBCBCD6D6D5FFFFFEFFFFFEFEFEFEFEFEFEFFFFFEFEFEFEFEFEFEFFFFFE
        FEFEFEFFFFFFE9E9E9D3D3CCE1CAABFFFCEDFFFAEAFFFCEDE0C9AAFFFBECFFF9
        E9FFFBEED9BC83BCB8AFBCBCBCD5D5D4FDFDFDFDFDFCFCFCFCFCFCFCFDFDFDFC
        FDFDFCFDFDFDFDFCFCFCFCFDFDFDE8E8E9D2D3C9E0C8A8FFFAE8FEF7E4FEFAE8
        E0C7A7FEF9E7FEF7E4FFF9EAD8BB83BCB8AFBCBCBCD5D5D4FCFCFCFDFDFDFDFE
        FEFCFEFEFDFEFEFEFEFEFDFEFEFEFEFEFDFDFDFCFCFCE9E9E9C5BAA7DBBD97E0
        C7A5DFC6A3E0C7A5DABC96E0C7A4DFC5A1E7D2B7D9BC83BCB8AFBCBCBCD5D5D4
        FBFBFBA0A1A2BCB8B2D9B77BBF7D06A48616B9A04FD9D2C896989AE6E6E6E8E9
        E9D2D2C6E0C7A2FFF8E1FEF5DFFEF8E1DFC6A1FEF7E0FEF5DDFFF7E5D8BB83BC
        B8AFBCBCBCD6D6D5BEBDBDAAAAABDDC59ABF9B30ADB34446CC6D6FA73CD5AD6B
        C3C4C6A2A2A2E8E9E9D3D2C4E0C69FFFF6DCFEF4D9FEF6DCE0C49EFEF6DCFEF3
        D8FFF6E1D8BC83BCB8AFBCBCBCD6D6D5777778F4F5F5D8B87FCEC1725BE39C3A
        D67FABB44EC7953CF4F2EF747575E9EAE9CAB9A2E0BB8CE9C698E9C596E8C699
        DEBC91E6C79EE8C496ECD1ADD9BC83BCB8AFBCBCBCD6D6D5A4A2A2BEBEC0D8BD
        8BE6CA9B9EF9DA5FE5A7A8D294CCA153D2D2D48F8E8FEBEAE97FBBD3C5BD9E55
        CAFF59CAFF53CDFFD6A45A98A27158C7EF7AD4FFDABC83BDB8AFBCBCBCD5D5D4
        F1F0F0919293C3BCAFD6B579D2B980C3BB7BCBAB64D5C9B497999AD4D3D3EBE9
        E87EB9D2C4BB9A55C7FF5ACAFE7DAD9FDEA649E7B15A9CA06D7AD7FFD9BC83BD
        B9B0BCBCBCD5D5D4F2F2F2DEDEDEDFE0E1E9E4DBE1D4BFE3D6C2E5DDCDE8EAEB
        D8D9D8ECECEBEAE9E9BECDD3EFEDE5D3F0FFB9BD9FD4A44DEDB762ECB762E7AF
        56B3A76FDABE86C1BDB4BCBCBCD5D5D4EFEEEDEBEAE9EBEAE9EBEAEAEBEBEBEA
        EAEAECEBEBEFEFEEEFEFEEEFEEEDEAEAECA5916CC09D57C49B4BCE9E43E4BD77
        EFC886ECC178E7C17FDBB060C59E4FF6F2E8BCBCBCD5D5D4EDECEBE8E8E7E8E7
        E6E8E7E6E8E8E7E7E7E6F4F3F3E0E0DFD2D2D1D1D1D0EAEBECA4A4A5F7F7F7E3
        E1DDA39477A67D28F1CB8CF0C989C39437B4A585EEE7D5FFFFFFBCBCBCD5D6D4
        EBEAE9E6E5E4E6E5E4E6E5E4E6E5E4E5E4E3F8F8F7BCBCBAD9D9D8E2E2E1DEDF
        E0AAABABE0E0E0CACACAC4C4C49E7D3DECBD6EEFC683C5963BF2F2F1FFFFFFFF
        FFFFBCBCBCD6D6D4E9E8E8E2E1E1E2E1E2E2E1E2E2E1E2E2E1E0F7F7F7B6B5B4
        F0EFEFE0E0E0D7D6D1F7F7F6AD9666C4902CC0881ED79D38E7B159EDCA8EC59B
        45FAFAFAFFFFFFFFFFFFBFBFBFD6D6D5F3F2F2F0EFEFEFEFEEEFEFEEF0EFEFEF
        EFEEFBFAFADADAD9DFDFDED9D8D4FEFEFEF9F9F9A48547F4CC8EECBD71EDC27B
        E9C27ED1A859DDCAA3FEFEFEFFFFFFFFFFFFEAE9E9C0C0BEC1C1C0C1C1BFC1C1
        BFC1C1BFC1C1BFC1C1BFC1C1BFC3C3C1DFDFDCFCFBFBFFFFFFFEFDFDCEB583C6
        973CC59639C59639C69A42DDC9A2FAF8F3FFFFFFFFFFFFFFFFFF}
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 416
    Width = 912
    Height = 6
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 4
  end
  object Panel3: TPanel
    Left = 0
    Top = 481
    Width = 912
    Height = 6
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 5
  end
  object conexaoSGR: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=crm_s' +
      'gr;'
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 170
    Top = 374
  end
  object qrUpdateCliente: TADOQuery
    Connection = conexaoSGR
    Parameters = <
      item
        Name = 'CODIGO'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 2
        Precision = 255
        Size = 255
        Value = Null
      end>
    SQL.Strings = (
      'select'
      ' CODIGO, '
      ' COD_ERP,'
      ' RAZAO,'
      ' FANTASIA,'
      ' CPF_CNPJ,'
      ' END_RUA,'
      ' CIDADE,'
      ' BAIRRO,'
      ' ESTADO,'
      ' CEP ,'
      ' AREA1,'
      ' FONE1,'
      ' EMAIL,'
      ' OPERADOR,'
      ' COD_UNIDADE,'
      ' SALDO_DISPONIVEL,'
      ' POTENCIAL,'
      ' DATA_ULT_COMPRA,'
      ' SEGMENTO,'
      ' IE_RG'
      'from clientes'
      'WHERE  CODIGO = :CODIGO')
    Left = 201
    Top = 375
    object qrUpdateClienteCOD_ERP: TStringField
      FieldName = 'COD_ERP'
      Size = 10
    end
    object qrUpdateClienteRAZAO: TStringField
      FieldName = 'RAZAO'
      Size = 100
    end
    object qrUpdateClienteFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 60
    end
    object qrUpdateClienteCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Size = 16
    end
    object qrUpdateClienteEND_RUA: TStringField
      FieldName = 'END_RUA'
      Size = 100
    end
    object qrUpdateClienteCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 60
    end
    object qrUpdateClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object qrUpdateClienteESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object qrUpdateClienteCEP: TStringField
      FieldName = 'CEP'
      Size = 15
    end
    object qrUpdateClienteAREA1: TIntegerField
      FieldName = 'AREA1'
    end
    object qrUpdateClienteFONE1: TStringField
      FieldName = 'FONE1'
      Size = 12
    end
    object qrUpdateClienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 150
    end
    object qrUpdateClienteOPERADOR: TIntegerField
      FieldName = 'OPERADOR'
    end
    object qrUpdateClienteCOD_UNIDADE: TIntegerField
      FieldName = 'COD_UNIDADE'
    end
    object qrUpdateClienteSALDO_DISPONIVEL: TFloatField
      FieldName = 'SALDO_DISPONIVEL'
    end
    object qrUpdateClientePOTENCIAL: TFloatField
      FieldName = 'POTENCIAL'
    end
    object qrUpdateClienteDATA_ULT_COMPRA: TDateField
      FieldName = 'DATA_ULT_COMPRA'
    end
    object qrUpdateClienteSEGMENTO: TIntegerField
      FieldName = 'SEGMENTO'
    end
    object qrUpdateClienteIE_RG: TStringField
      FieldName = 'IE_RG'
    end
    object qrUpdateClienteCODIGO: TAutoIncField
      FieldName = 'CODIGO'
      ReadOnly = True
    end
  end
  object qrInsertCompra: TADOQuery
    Connection = conexaoSGR
    Parameters = <
      item
        Name = 'CLIENTE'
        DataType = ftString
        Size = -1
        Value = ''
      end
      item
        Name = 'DATA'
        DataType = ftString
        Size = -1
        Value = ''
      end
      item
        Name = 'VALOR'
        DataType = ftString
        Size = -1
        Value = ''
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = -1
        Value = ''
      end
      item
        Name = 'FORMA_PGTO'
        DataType = ftString
        Size = -1
        Value = ''
      end>
    SQL.Strings = (
      'INSERT INTO compras '
      '(CLIENTE, DATA, VALOR, DESCRICAO, FORMA_PGTO)'
      'VALUES'
      '(:CLIENTE, :DATA, :VALOR, :DESCRICAO, :FORMA_PGTO)')
    Left = 297
    Top = 375
  end
  object qrInsertCompraItem: TADOQuery
    Connection = conexaoSGR
    Parameters = <
      item
        Name = 'NOTA'
        DataType = ftString
        Size = -1
        Value = ''
      end
      item
        Name = 'CODPROD'
        DataType = ftString
        Size = -1
        Value = ''
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = -1
        Value = ''
      end
      item
        Name = 'QDT'
        DataType = ftString
        Size = -1
        Value = ''
      end
      item
        Name = 'UN_MEDIDA'
        DataType = ftString
        Size = -1
        Value = ''
      end
      item
        Name = 'VALOR_UN'
        DataType = ftString
        Size = -1
        Value = ''
      end
      item
        Name = 'DESCONTO'
        DataType = ftString
        Size = -1
        Value = ''
      end>
    SQL.Strings = (
      'INSERT INTO itens_compra '
      '(NOTA, CODPROD, DESCRICAO, QDT, UN_MEDIDA, VALOR_UN, DESCONTO)'
      'VALUES'
      
        '(:NOTA, :CODPROD, :DESCRICAO, :QDT, :UN_MEDIDA, :VALOR_UN, :DESC' +
        'ONTO)')
    Left = 329
    Top = 375
  end
  object qrPesquisaCli: TADOQuery
    Connection = conexaoSGR
    Parameters = <
      item
        Name = 'CODIGO'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 2
        Precision = 255
        Size = 255
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'#9'RAZAO, '
      #9'FANTASIA, '
      #9'CONCAT(AREA1, FONE1) AS FONE1, '
      #9'CPF_CNPJ,'
      #9'END_RUA,'
      #9'BAIRRO,'
      #9'CIDADE,'
      #9'CEP,'
      #9'ESTADO,'
      #9'EMAIL,'
      #9'SEGMENTO,'
      '                SALDO_DISPONIVEL,'
      #9'POTENCIAL,'
      '               IE_RG'#9
      'FROM '#9'clientes'
      'WHERE'#9'COD_ERP = :CODIGO')
    Left = 361
    Top = 375
  end
  object tblParametros: TADOTable
    Connection = conexaoSGR
    CursorType = ctStatic
    TableName = 'parametros'
    Left = 579
    Top = 375
    object tblParametrosCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object tblParametrosQTD_HISTORICO_CLI: TIntegerField
      FieldName = 'QTD_HISTORICO_CLI'
    end
    object tblParametrosVALIDA_CPF_CNPJ: TStringField
      FieldName = 'VALIDA_CPF_CNPJ'
      FixedChar = True
      Size = 3
    end
    object tblParametrosAGENDA_FERIADO: TStringField
      FieldName = 'AGENDA_FERIADO'
      FixedChar = True
      Size = 3
    end
    object tblParametrosAGENDA_SABADO: TStringField
      FieldName = 'AGENDA_SABADO'
      FixedChar = True
      Size = 3
    end
    object tblParametrosAGENDA_DOMINGO: TStringField
      FieldName = 'AGENDA_DOMINGO'
      FixedChar = True
      Size = 3
    end
    object tblParametrosINATIVOS_RECENTES: TIntegerField
      FieldName = 'INATIVOS_RECENTES'
    end
    object tblParametrosINATIVOS_ANTIGOS: TIntegerField
      FieldName = 'INATIVOS_ANTIGOS'
    end
    object tblParametrosCODIGO_ERP: TStringField
      FieldName = 'CODIGO_ERP'
      FixedChar = True
      Size = 3
    end
    object tblParametrosTEMPO_MAX_RECEPTIVO: TTimeField
      FieldName = 'TEMPO_MAX_RECEPTIVO'
    end
    object tblParametrosINTERVALO_CHAMADAS: TIntegerField
      FieldName = 'INTERVALO_CHAMADAS'
    end
    object tblParametrosULTIMO_CODIGO_CLI: TIntegerField
      FieldName = 'ULTIMO_CODIGO_CLI'
    end
    object tblParametrosFILA: TStringField
      FieldName = 'FILA'
      Size = 25
    end
    object tblParametrosMETODO_GRAVACAO: TStringField
      FieldName = 'METODO_GRAVACAO'
      FixedChar = True
      Size = 23
    end
    object tblParametrosLOCAL_GRAVACAO: TStringField
      FieldName = 'LOCAL_GRAVACAO'
      Size = 255
    end
    object tblParametrosEXCEDEUNEGATIVOS: TIntegerField
      FieldName = 'EXCEDEUNEGATIVOS'
    end
    object tblParametrosORDERBY: TMemoField
      FieldName = 'ORDERBY'
      BlobType = ftMemo
    end
    object tblParametrosSEQUENCIADEORDENACAO: TStringField
      FieldName = 'SEQUENCIADEORDENACAO'
      Size = 255
    end
    object tblParametrosCONTADOR_FINALIZAR: TIntegerField
      FieldName = 'CONTADOR_FINALIZAR'
    end
    object tblParametrosASTERISK_SERVER: TStringField
      FieldName = 'ASTERISK_SERVER'
      Size = 255
    end
    object tblParametrosASTERISK_PROXY: TStringField
      FieldName = 'ASTERISK_PROXY'
      Size = 255
    end
    object tblParametrosASTERISK_PORTA: TIntegerField
      FieldName = 'ASTERISK_PORTA'
    end
    object tblParametrosATUALIZACAO_HORA: TTimeField
      FieldName = 'ATUALIZACAO_HORA'
      EditMask = '!90:00:00;1;_'
    end
    object tblParametrosATUALIZACAO_TODODIA: TStringField
      FieldName = 'ATUALIZACAO_TODODIA'
      Size = 1
    end
    object tblParametrosDESLIGA_COMPUTADOR: TStringField
      FieldName = 'DESLIGA_COMPUTADOR'
      Size = 1
    end
    object tblParametrosFUSO_HORARIO: TStringField
      FieldName = 'FUSO_HORARIO'
      FixedChar = True
      Size = 1
    end
    object tblParametrosINCLUI_CLIENTE_CAMP_PRINC_IMP: TStringField
      FieldName = 'INCLUI_CLIENTE_CAMP_PRINC_IMP'
      Size = 1
    end
    object tblParametrosRAZAO: TStringField
      FieldName = 'RAZAO'
      FixedChar = True
      Size = 1
    end
    object tblParametrosFANTASIA: TStringField
      FieldName = 'FANTASIA'
      FixedChar = True
      Size = 1
    end
    object tblParametrosCNPJ: TStringField
      FieldName = 'CNPJ'
      FixedChar = True
      Size = 1
    end
    object tblParametrosENDERECO: TStringField
      FieldName = 'ENDERECO'
      FixedChar = True
      Size = 1
    end
    object tblParametrosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      FixedChar = True
      Size = 1
    end
    object tblParametrosCIDADE: TStringField
      FieldName = 'CIDADE'
      FixedChar = True
      Size = 1
    end
    object tblParametrosCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 1
    end
    object tblParametrosESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 1
    end
    object tblParametrosTELEFONE: TStringField
      FieldName = 'TELEFONE'
      FixedChar = True
      Size = 1
    end
    object tblParametrosEMAIL: TStringField
      FieldName = 'EMAIL'
      FixedChar = True
      Size = 1
    end
    object tblParametrosUNIDADE: TStringField
      FieldName = 'UNIDADE'
      FixedChar = True
      Size = 1
    end
    object tblParametrosCONTATO: TStringField
      FieldName = 'CONTATO'
      FixedChar = True
      Size = 1
    end
    object tblParametrosEMAIL_CONTATO: TStringField
      FieldName = 'EMAIL_CONTATO'
      FixedChar = True
      Size = 1
    end
    object tblParametrosCARGO_CONTATO: TStringField
      FieldName = 'CARGO_CONTATO'
      FixedChar = True
      Size = 1
    end
    object tblParametrosTEL_CONTATO: TStringField
      FieldName = 'TEL_CONTATO'
      FixedChar = True
      Size = 1
    end
    object tblParametrosSALDO: TStringField
      FieldName = 'SALDO'
      FixedChar = True
      Size = 1
    end
    object tblParametrosPOTENCIAL: TStringField
      FieldName = 'POTENCIAL'
      FixedChar = True
      Size = 1
    end
    object tblParametrosSEGMENTO: TStringField
      FieldName = 'SEGMENTO'
      FixedChar = True
      Size = 1
    end
    object tblParametrosIMP_POR_CPFNCPJ_CLIENTE: TStringField
      FieldName = 'IMP_POR_CPFNCPJ_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object tblParametrosIMPORTAR_CLIENTES: TStringField
      FieldName = 'IMPORTAR_CLIENTES'
      FixedChar = True
      Size = 1
    end
    object tblParametrosIMPORTAR_COMPRAS: TStringField
      FieldName = 'IMPORTAR_COMPRAS'
      FixedChar = True
      Size = 1
    end
    object tblParametrosIMPORTAR_CLIENTE_EXISTENTE: TStringField
      FieldName = 'IMPORTAR_CLIENTE_EXISTENTE'
      FixedChar = True
      Size = 1
    end
  end
  object dsParametros: TDataSource
    DataSet = tblParametros
    Left = 607
    Top = 375
  end
  object dsCompra: TDataSource
    DataSet = qrCompra
    Left = 420
    Top = 375
  end
  object qrCompra: TADOQuery
    CommandTimeout = 90
    ParamCheck = False
    Parameters = <>
    Prepared = True
    Left = 392
    Top = 375
  end
  object qrComprasItens: TADOQuery
    CommandTimeout = 90
    ParamCheck = False
    Parameters = <>
    Prepared = True
    Left = 456
    Top = 375
  end
  object dsComprasItens: TDataSource
    DataSet = qrComprasItens
    Left = 484
    Top = 375
  end
  object dsConfig: TDataSource
    DataSet = cdsConfig
    Left = 549
    Top = 375
  end
  object cdsConfig: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 520
    Top = 375
    object cdsConfigSTRINGCONEXAO: TStringField
      DisplayWidth = 1000
      FieldName = 'STRINGCONEXAO'
      Size = 1000
    end
    object cdsConfigQUEBRAR_ARQUIVO: TStringField
      FieldName = 'QUEBRAR_ARQUIVO'
      Size = 1
    end
    object cdsConfigCLIENTE_SQL: TMemoField
      FieldName = 'CLIENTE_SQL'
      BlobType = ftMemo
      Size = 2000
    end
    object cdsConfigCOMPRA_SQL: TMemoField
      FieldName = 'COMPRA_SQL'
      BlobType = ftMemo
      Size = 2000
    end
    object cdsConfigCOMPRA_IT_SQL: TMemoField
      FieldName = 'COMPRA_IT_SQL'
      BlobType = ftMemo
      Size = 2000
    end
    object cdsConfigATUALIZACAO_HORA: TTimeField
      FieldName = 'ATUALIZACAO_HORA'
    end
    object cdsConfigATUALIZACAO_TODODIA: TStringField
      FieldName = 'ATUALIZACAO_TODODIA'
      Size = 1
    end
    object cdsConfigDESLIGA_COMPUTADOR: TStringField
      FieldName = 'DESLIGA_COMPUTADOR'
      Size = 1
    end
    object cdsConfigATUALIZACAO_DATAULTCOMPRA: TStringField
      FieldName = 'ATUALIZACAO_DATAULTCOMPRA'
      Size = 1
    end
    object cdsConfigVALIDA_CNPJ: TStringField
      FieldName = 'VALIDA_CNPJ'
      Size = 1
    end
    object cdsConfigVALIDA_ERP: TStringField
      FieldName = 'VALIDA_ERP'
      Size = 1
    end
    object cdsConfigLIMPA_COMPRAS: TStringField
      FieldName = 'LIMPA_COMPRAS'
      Size = 1
    end
    object cdsConfigIMPORTAR_CLIENTES: TStringField
      FieldName = 'IMPORTAR_CLIENTES'
      FixedChar = True
      Size = 1
    end
    object cdsConfigIMPORTAR_COMPRAS: TStringField
      FieldName = 'IMPORTAR_COMPRAS'
      FixedChar = True
      Size = 1
    end
    object cdsConfigIMPORTAR_CLIENTE_EXISTENTE: TStringField
      FieldName = 'IMPORTAR_CLIENTE_EXISTENTE'
      FixedChar = True
      Size = 1
    end
  end
  object cds_ImportaCIGAM: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'xmltp_ImportaCIGAM'
    Left = 685
    Top = 283
    object cds_ImportaCIGAMcodigoEmpresa: TStringField
      FieldName = 'codigoEmpresa'
      Size = 6
    end
    object cds_ImportaCIGAMnomeCompleto: TStringField
      FieldName = 'nomeCompleto'
      Size = 60
    end
    object cds_ImportaCIGAMcontato: TStringField
      FieldName = 'contato'
      Size = 30
    end
    object cds_ImportaCIGAMfone: TStringField
      FieldName = 'fone'
      Size = 19
    end
    object cds_ImportaCIGAMfaxFone: TStringField
      FieldName = 'faxFone'
    end
    object cds_ImportaCIGAMendereco: TStringField
      FieldName = 'endereco'
      Size = 40
    end
    object cds_ImportaCIGAMbairro: TStringField
      FieldName = 'bairro'
    end
    object cds_ImportaCIGAMmunicipio: TStringField
      FieldName = 'municipio'
      Size = 29
    end
    object cds_ImportaCIGAMuf: TStringField
      FieldName = 'uf'
      Size = 2
    end
    object cds_ImportaCIGAMcep: TStringField
      FieldName = 'cep'
      Size = 8
    end
    object cds_ImportaCIGAMcnpjCpf: TStringField
      FieldName = 'cnpjCpf'
      Size = 14
    end
    object cds_ImportaCIGAMinscrito: TStringField
      FieldName = 'inscrito'
      Size = 5
    end
    object cds_ImportaCIGAMinscricao: TStringField
      FieldName = 'inscricao'
    end
    object cds_ImportaCIGAMconceito: TStringField
      FieldName = 'conceito'
      Size = 32
    end
    object cds_ImportaCIGAMcodigoDivisao: TStringField
      FieldName = 'codigoDivisao'
      Size = 2
    end
    object cds_ImportaCIGAMdataNascimento: TStringField
      FieldName = 'dataNascimento'
      Size = 10
    end
    object cds_ImportaCIGAMultimoMovimento: TStringField
      FieldName = 'ultimoMovimento'
      Size = 10
    end
    object cds_ImportaCIGAMcadastro: TStringField
      FieldName = 'cadastro'
      Size = 10
    end
    object cds_ImportaCIGAMcodigoIndicacao: TStringField
      FieldName = 'codigoIndicacao'
      Size = 32
    end
    object cds_ImportaCIGAMcodigoRepresentante: TStringField
      FieldName = 'codigoRepresentante'
      Size = 32
    end
    object cds_ImportaCIGAMpercentualComissaoBaixa: TStringField
      FieldName = 'percentualComissaoBaixa'
      Size = 2
    end
    object cds_ImportaCIGAMcontabilCliente: TStringField
      FieldName = 'contabilCliente'
      Size = 3
    end
    object cds_ImportaCIGAMcodigoResponsavel: TStringField
      FieldName = 'codigoResponsavel'
      Size = 32
    end
    object cds_ImportaCIGAMfantasia: TStringField
      FieldName = 'fantasia'
    end
    object cds_ImportaCIGAMpessoa: TStringField
      FieldName = 'pessoa'
      Size = 5
    end
    object cds_ImportaCIGAMcodigoContabilFornecedor: TStringField
      FieldName = 'codigoContabilFornecedor'
      Size = 4
    end
    object cds_ImportaCIGAMcodigoCondicaoPagamento: TStringField
      FieldName = 'codigoCondicaoPagamento'
      Size = 32
    end
    object cds_ImportaCIGAMcodigoTipoPagamento: TStringField
      FieldName = 'codigoTipoPagamento'
      Size = 32
    end
    object cds_ImportaCIGAMcodigoTipoOperacao: TStringField
      FieldName = 'codigoTipoOperacao'
      Size = 32
    end
    object cds_ImportaCIGAMirrfAcumulado: TStringField
      FieldName = 'irrfAcumulado'
      Size = 1
    end
    object cds_ImportaCIGAMtipoEmpresa: TStringField
      FieldName = 'tipoEmpresa'
      Size = 32
    end
    object cds_ImportaCIGAMatividade: TStringField
      FieldName = 'atividade'
      Size = 3
    end
    object cds_ImportaCIGAMfuncionarios: TStringField
      FieldName = 'funcionarios'
      Size = 1
    end
    object cds_ImportaCIGAMfaturamento: TStringField
      FieldName = 'faturamento'
      Size = 1
    end
    object cds_ImportaCIGAMlimiteCredito: TStringField
      FieldName = 'limiteCredito'
      Size = 5
    end
    object cds_ImportaCIGAMcodigoMercado: TStringField
      FieldName = 'codigoMercado'
      Size = 32
    end
    object cds_ImportaCIGAMcodigoUsuarioModificacao: TStringField
      FieldName = 'codigoUsuarioModificacao'
      Size = 3
    end
    object cds_ImportaCIGAMenviarCarta: TStringField
      FieldName = 'enviarCarta'
      Size = 1
    end
    object cds_ImportaCIGAMtabelaPrecos: TStringField
      FieldName = 'tabelaPrecos'
      Size = 32
    end
    object cds_ImportaCIGAMagendaInterna: TStringField
      FieldName = 'agendaInterna'
      Size = 6
    end
    object cds_ImportaCIGAMcodigoPais: TStringField
      FieldName = 'codigoPais'
      Size = 3
    end
    object cds_ImportaCIGAMcodigoCentralizadora: TStringField
      FieldName = 'codigoCentralizadora'
      Size = 6
    end
    object cds_ImportaCIGAMatrasoMedio: TStringField
      FieldName = 'atrasoMedio'
      Size = 1
    end
    object cds_ImportaCIGAMnumero: TStringField
      FieldName = 'numero'
      Size = 10
    end
    object cds_ImportaCIGAMcomplemento: TStringField
      FieldName = 'complemento'
      Size = 32
    end
    object cds_ImportaCIGAMinscricaoMunicipal: TStringField
      FieldName = 'inscricaoMunicipal'
      Size = 32
    end
    object cds_ImportaCIGAMsuframa: TStringField
      FieldName = 'suframa'
      Size = 32
    end
    object cds_ImportaCIGAMtipoFrete: TStringField
      FieldName = 'tipoFrete'
      Size = 32
    end
    object cds_ImportaCIGAMpercentualIndenizacao: TStringField
      FieldName = 'percentualIndenizacao'
      Size = 2
    end
    object cds_ImportaCIGAMpercDescontoSugestaoItens: TStringField
      FieldName = 'percDescontoSugestaoItens'
      Size = 1
    end
    object cds_ImportaCIGAMpercentualDesconto2: TStringField
      FieldName = 'percentualDesconto2'
      Size = 1
    end
    object cds_ImportaCIGAMjurosPadrao: TStringField
      FieldName = 'jurosPadrao'
      Size = 1
    end
    object cds_ImportaCIGAMultimaAtualizacao: TStringField
      FieldName = 'ultimaAtualizacao'
      Size = 10
    end
    object cds_ImportaCIGAMcodigoUnidadeNegocio: TStringField
      FieldName = 'codigoUnidadeNegocio'
      Size = 1
    end
    object cds_ImportaCIGAMportadorPadrao: TStringField
      FieldName = 'portadorPadrao'
      Size = 32
    end
    object cds_ImportaCIGAMativo: TStringField
      FieldName = 'ativo'
      Size = 5
    end
    object cds_ImportaCIGAMsessao: TStringField
      FieldName = 'sessao'
      Size = 6
    end
    object cds_ImportaCIGAMcodigoContabilAdiantamentoCli: TStringField
      FieldName = 'codigoContabilAdiantamentoCli'
      Size = 4
    end
    object cds_ImportaCIGAMcodigoContabilAdiantamentoForn: TStringField
      FieldName = 'codigoContabilAdiantamentoForn'
      Size = 3
    end
    object cds_ImportaCIGAMcodigoCentroArmazenagem: TStringField
      FieldName = 'codigoCentroArmazenagem'
      Size = 32
    end
    object cds_ImportaCIGAMcodigoIndiceCredito: TStringField
      FieldName = 'codigoIndiceCredito'
      Size = 32
    end
    object cds_ImportaCIGAMcodigoUsuarioCriacao: TStringField
      FieldName = 'codigoUsuarioCriacao'
      Size = 3
    end
    object cds_ImportaCIGAMdataModificacao: TStringField
      FieldName = 'dataModificacao'
      Size = 10
    end
    object cds_ImportaCIGAMcodigoRegiaoEntrega: TStringField
      FieldName = 'codigoRegiaoEntrega'
      Size = 32
    end
    object cds_ImportaCIGAMdataValidadeCredito: TStringField
      FieldName = 'dataValidadeCredito'
      Size = 10
    end
    object cds_ImportaCIGAMCd_setor: TStringField
      FieldName = 'Cd_setor'
      Size = 32
    end
    object cds_ImportaCIGAMcodigoRegimeTriburario: TStringField
      FieldName = 'codigoRegimeTriburario'
      Size = 32
    end
    object cds_ImportaCIGAMultimaConsultaCredito: TStringField
      FieldName = 'ultimaConsultaCredito'
      Size = 4
    end
    object cds_ImportaCIGAMvalidadeCobrancaAdmin: TStringField
      FieldName = 'validadeCobrancaAdmin'
      Size = 4
    end
    object cds_ImportaCIGAMultimaVenda: TStringField
      FieldName = 'ultimaVenda'
      Size = 10
    end
    object cds_ImportaCIGAMprefixoCnae: TStringField
      FieldName = 'prefixoCnae'
      Size = 32
    end
    object cds_ImportaCIGAMbasePrazoDiferenciado: TStringField
      FieldName = 'basePrazoDiferenciado'
      Size = 1
    end
    object cds_ImportaCIGAMpossuiRetencaoIss: TStringField
      FieldName = 'possuiRetencaoIss'
      Size = 1
    end
    object cds_ImportaCIGAMcodigoCentroArmazenagemMatAlte: TStringField
      FieldName = 'codigoCentroArmazenagemMatAlte'
      Size = 32
    end
    object cds_ImportaCIGAMfiltroDataDirf: TStringField
      FieldName = 'filtroDataDirf'
      Size = 32
    end
    object cds_ImportaCIGAMtipoImovel: TStringField
      FieldName = 'tipoImovel'
      Size = 32
    end
    object cds_ImportaCIGAMlistarIss: TStringField
      FieldName = 'listarIss'
      Size = 32
    end
    object cds_ImportaCIGAMdiaVencimento: TStringField
      FieldName = 'diaVencimento'
      Size = 2
    end
    object cds_ImportaCIGAMlimiteFaturamento: TStringField
      FieldName = 'limiteFaturamento'
      Size = 2
    end
    object cds_ImportaCIGAMgrauRelacionamento: TStringField
      FieldName = 'grauRelacionamento'
      Size = 32
    end
    object cds_ImportaCIGAMsufixoCnae: TStringField
      FieldName = 'sufixoCnae'
      Size = 32
    end
    object cds_ImportaCIGAMtoleranciaVencimento: TStringField
      FieldName = 'toleranciaVencimento'
      Size = 32
    end
    object cds_ImportaCIGAMnivelCredito: TStringField
      FieldName = 'nivelCredito'
      Size = 32
    end
    object cds_ImportaCIGAMlistarDirf: TStringField
      FieldName = 'listarDirf'
      Size = 5
    end
    object cds_ImportaCIGAMconveniada: TStringField
      FieldName = 'conveniada'
      Size = 5
    end
    object cds_ImportaCIGAMcreditoLiberado: TStringField
      FieldName = 'creditoLiberado'
      Size = 5
    end
    object cds_ImportaCIGAMpercentualFrete: TStringField
      FieldName = 'percentualFrete'
      Size = 1
    end
    object cds_ImportaCIGAMcodigoEan: TStringField
      FieldName = 'codigoEan'
      Size = 1
    end
    object cds_ImportaCIGAMpercentualAcrescimoLimite: TStringField
      FieldName = 'percentualAcrescimoLimite'
      Size = 2
    end
    object cds_ImportaCIGAMpercentualAcrescimoPreco: TStringField
      FieldName = 'percentualAcrescimoPreco'
      Size = 1
    end
    object cds_ImportaCIGAMutilizaPrazoDiferenciado: TStringField
      FieldName = 'utilizaPrazoDiferenciado'
      Size = 1
    end
    object cds_ImportaCIGAMtgPadraoNfs: TStringField
      FieldName = 'tgPadraoNfs'
      Size = 3
    end
    object cds_ImportaCIGAMlimiteCreditoMensal: TStringField
      FieldName = 'limiteCreditoMensal'
      Size = 1
    end
    object cds_ImportaCIGAMoptanteSimples: TStringField
      FieldName = 'optanteSimples'
      Size = 1
    end
    object cds_ImportaCIGAMUsrempr1: TStringField
      FieldName = 'Usrempr1'
      Size = 6
    end
    object cds_ImportaCIGAMUsrempr2: TStringField
      FieldName = 'Usrempr2'
      Size = 32
    end
    object cds_ImportaCIGAMcnaeServico: TStringField
      FieldName = 'cnaeServico'
      Size = 32
    end
    object cds_ImportaCIGAMUsrempr4: TStringField
      FieldName = 'Usrempr4'
      Size = 4
    end
    object cds_ImportaCIGAMvalorFrete: TStringField
      FieldName = 'valorFrete'
      Size = 1
    end
  end
  object dscds_ImportaCIGAM: TDataSource
    AutoEdit = False
    DataSet = cds_ImportaCIGAM
    Left = 715
    Top = 283
  end
  object xmltp_ImportaCIGAM: TXMLTransformProvider
    TransformRead.TransformationFile = 'C:\SGR\ImportacaoCIGAM\wsCadastraCliente.xtr'
    XMLDataFile = 'C:\SGR\ImportacaoCIGAM\ImportaClientesCIGAM.xml'
    Left = 745
    Top = 282
  end
  object cds_NF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'xmltp_NF'
    Left = 685
    Top = 314
    object cds_NFunidadeNegocio: TStringField
      FieldName = 'unidadeNegocio'
      Size = 3
    end
    object cds_NFnf: TStringField
      FieldName = 'nf'
      Size = 6
    end
    object cds_NFserie: TStringField
      FieldName = 'serie'
      Size = 5
    end
    object cds_NFtipoOperacao: TStringField
      FieldName = 'tipoOperacao'
      Size = 5
    end
    object cds_NFCFOP: TStringField
      FieldName = 'CFOP'
      Size = 6
    end
    object cds_NFdataEmissao: TStringField
      FieldName = 'dataEmissao'
      Size = 10
    end
    object cds_NFviaTransporte: TStringField
      FieldName = 'viaTransporte'
      Size = 1
    end
    object cds_NFdocumentoFiscal: TStringField
      FieldName = 'documentoFiscal'
      Size = 5
    end
    object cds_NFcliente: TStringField
      FieldName = 'cliente'
      Size = 6
    end
    object cds_NFcobranca: TStringField
      FieldName = 'cobranca'
      Size = 6
    end
    object cds_NFrepresentante: TStringField
      FieldName = 'representante'
      Size = 6
    end
    object cds_NFbaseICMS: TStringField
      FieldName = 'baseICMS'
      Size = 7
    end
    object cds_NFvalorICMS: TStringField
      FieldName = 'valorICMS'
      Size = 6
    end
    object cds_NFbaseIPI: TStringField
      FieldName = 'baseIPI'
      Size = 7
    end
    object cds_NFvalorIPI: TStringField
      FieldName = 'valorIPI'
      Size = 6
    end
    object cds_NFincidenciaPIS: TStringField
      FieldName = 'incidenciaPIS'
      Size = 32
    end
    object cds_NFincidenciaCOFINS: TStringField
      FieldName = 'incidenciaCOFINS'
      Size = 32
    end
    object cds_NFtotalMercadorias: TStringField
      FieldName = 'totalMercadorias'
      Size = 7
    end
    object cds_NFtotalNF: TStringField
      FieldName = 'totalNF'
      Size = 7
    end
    object cds_NFtransportadora: TStringField
      FieldName = 'transportadora'
      Size = 6
    end
    object cds_NFconsignatario: TStringField
      FieldName = 'consignatario'
      Size = 32
    end
    object cds_NFmarca: TStringField
      FieldName = 'marca'
      Size = 32
    end
    object cds_NFvolume: TStringField
      FieldName = 'volume'
      Size = 15
    end
    object cds_NFquantidade: TStringField
      FieldName = 'quantidade'
      Size = 6
    end
    object cds_NFespecie: TStringField
      FieldName = 'especie'
      Size = 16
    end
    object cds_NFpesoLiquido: TStringField
      FieldName = 'pesoLiquido'
      Size = 6
    end
    object cds_NFpesoBruto: TStringField
      FieldName = 'pesoBruto'
      Size = 8
    end
    object cds_NFconta: TStringField
      FieldName = 'conta'
      Size = 6
    end
    object cds_NFportador: TStringField
      FieldName = 'portador'
      Size = 3
    end
    object cds_NFfatura: TStringField
      FieldName = 'fatura'
      Size = 6
    end
    object cds_NFcobrarPauta: TStringField
      FieldName = 'cobrarPauta'
      Size = 32
    end
    object cds_NFremessa: TStringField
      FieldName = 'remessa'
      Size = 32
    end
    object cds_NFpedido: TStringField
      FieldName = 'pedido'
      Size = 12
    end
    object cds_NFdataSaida: TStringField
      FieldName = 'dataSaida'
      Size = 10
    end
    object cds_NFhoraSaida: TStringField
      FieldName = 'horaSaida'
      Size = 8
    end
    object cds_NFgerouLancamentos: TStringField
      FieldName = 'gerouLancamentos'
      Size = 4
    end
    object cds_NFitemsNaNota: TStringField
      FieldName = 'itemsNaNota'
      Size = 2
    end
    object cds_NFtipoFrete: TStringField
      FieldName = 'tipoFrete'
      Size = 1
    end
    object cds_NFuf: TStringField
      FieldName = 'uf'
      Size = 2
    end
    object cds_NFpercentualComissao: TStringField
      FieldName = 'percentualComissao'
      Size = 2
    end
    object cds_NFplaca: TStringField
      FieldName = 'placa'
      Size = 32
    end
    object cds_NFespecieNota: TStringField
      FieldName = 'especieNota'
      Size = 1
    end
    object cds_NFincidenciaISS: TStringField
      FieldName = 'incidenciaISS'
      Size = 1
    end
    object cds_NFateNota: TStringField
      FieldName = 'ateNota'
      Size = 1
    end
    object cds_NFtotalFaturado: TStringField
      FieldName = 'totalFaturado'
      Size = 7
    end
    object cds_NFsubstitutoTributario: TStringField
      FieldName = 'substitutoTributario'
      Size = 32
    end
    object cds_NFnotaReferencia: TStringField
      FieldName = 'notaReferencia'
      Size = 1
    end
    object cds_NFbaseSubstituicaoTributaria: TStringField
      FieldName = 'baseSubstituicaoTributaria'
      Size = 6
    end
    object cds_NFvalorSubstituicaoTributaria: TStringField
      FieldName = 'valorSubstituicaoTributaria'
      Size = 5
    end
    object cds_NFcondicaoPagamento: TStringField
      FieldName = 'condicaoPagamento'
      Size = 3
    end
    object cds_NFcomplementoFatura: TStringField
      FieldName = 'complementoFatura'
      Size = 32
    end
    object cds_NFcontabilizado: TStringField
      FieldName = 'contabilizado'
      Size = 32
    end
    object cds_NFfaturaAglutinada: TStringField
      FieldName = 'faturaAglutinada'
      Size = 32
    end
    object cds_NFgerouINSS: TStringField
      FieldName = 'gerouINSS'
      Size = 32
    end
    object cds_NFserieReferencia: TStringField
      FieldName = 'serieReferencia'
      Size = 32
    end
    object cds_NFcodigoMunicipio: TStringField
      FieldName = 'codigoMunicipio'
      Size = 32
    end
    object cds_NFquantidadeTotal: TStringField
      FieldName = 'quantidadeTotal'
      Size = 2
    end
    object cds_NFimpressa: TStringField
      FieldName = 'impressa'
      Size = 4
    end
    object cds_NFdeclaracaoImportacao: TStringField
      FieldName = 'declaracaoImportacao'
      Size = 32
    end
    object cds_NFindiceIndexador: TStringField
      FieldName = 'indiceIndexador'
      Size = 32
    end
    object cds_NFbaseIRRF: TStringField
      FieldName = 'baseIRRF'
      Size = 7
    end
    object cds_NFmodeloCupom: TStringField
      FieldName = 'modeloCupom'
      Size = 32
    end
    object cds_NFnumeroControleFormulario: TStringField
      FieldName = 'numeroControleFormulario'
      Size = 32
    end
    object cds_NFromaneio: TStringField
      FieldName = 'romaneio'
      Size = 1
    end
    object cds_NFufPlacaTransportador: TStringField
      FieldName = 'ufPlacaTransportador'
      Size = 32
    end
    object cds_NFcodigoCancelamento: TStringField
      FieldName = 'codigoCancelamento'
      Size = 32
    end
    object cds_NFcodigoDevolucao: TStringField
      FieldName = 'codigoDevolucao'
      Size = 32
    end
    object cds_NFordemCompra: TStringField
      FieldName = 'ordemCompra'
      Size = 32
    end
    object cds_NFprojeto: TStringField
      FieldName = 'projeto'
      Size = 32
    end
    object cds_NFmodeloFormulario: TStringField
      FieldName = 'modeloFormulario'
      Size = 2
    end
    object cds_NFordemDeCompraGerada: TStringField
      FieldName = 'ordemDeCompraGerada'
      Size = 32
    end
    object cds_NFtotalItensServico: TStringField
      FieldName = 'totalItensServico'
      Size = 1
    end
    object cds_NFusrnota1: TStringField
      FieldName = 'usrnota1'
      Size = 32
    end
    object cds_NFchaveNFe: TStringField
      FieldName = 'chaveNFe'
      Size = 9
    end
    object cds_NFnumeroProtocolo: TStringField
      FieldName = 'numeroProtocolo'
      Size = 15
    end
    object cds_NFnumeroLote: TStringField
      FieldName = 'numeroLote'
      Size = 15
    end
    object cds_NFgerouPedidoConsignacao: TStringField
      FieldName = 'gerouPedidoConsignacao'
      Size = 32
    end
    object cds_NFincluiSubstituicaoTributaria: TStringField
      FieldName = 'incluiSubstituicaoTributaria'
      Size = 32
    end
    object cds_NFlistarLivros: TStringField
      FieldName = 'listarLivros'
      Size = 1
    end
    object cds_NFtipoNota: TStringField
      FieldName = 'tipoNota'
      Size = 1
    end
    object cds_NFclassificacaoDocumento: TStringField
      FieldName = 'classificacaoDocumento'
      Size = 32
    end
    object cds_NFmercado: TStringField
      FieldName = 'mercado'
      Size = 32
    end
    object cds_NFgrade: TStringField
      FieldName = 'grade'
      Size = 32
    end
    object cds_NFincidenciaContribSocial: TStringField
      FieldName = 'incidenciaContribSocial'
      Size = 32
    end
    object cds_NFfolhaLivroSaida: TStringField
      FieldName = 'folhaLivroSaida'
      Size = 32
    end
    object cds_NFtgConversaoUnidades: TStringField
      FieldName = 'tgConversaoUnidades'
      Size = 6
    end
    object cds_NFfornecedor: TStringField
      FieldName = 'fornecedor'
      Size = 32
    end
    object cds_NFvolumeAtualizado: TStringField
      FieldName = 'volumeAtualizado'
      Size = 6
    end
    object cds_NFordemEnderecoCobranca: TStringField
      FieldName = 'ordemEnderecoCobranca'
      Size = 32
    end
    object cds_NFordemEnderecoEntrega: TStringField
      FieldName = 'ordemEnderecoEntrega'
      Size = 32
    end
    object cds_NFforma: TStringField
      FieldName = 'forma'
      Size = 1
    end
    object cds_NFtipoFreteConsignatario: TStringField
      FieldName = 'tipoFreteConsignatario'
      Size = 32
    end
    object cds_NFconferido: TStringField
      FieldName = 'conferido'
      Size = 32
    end
    object cds_NFnumeroLivroSaida: TStringField
      FieldName = 'numeroLivroSaida'
      Size = 32
    end
    object cds_NFusuarioAutorizado: TStringField
      FieldName = 'usuarioAutorizado'
      Size = 3
    end
    object cds_NFentregMercAposFatur: TStringField
      FieldName = 'entregMercAposFatur'
      Size = 32
    end
    object cds_NFstatus: TStringField
      FieldName = 'status'
      Size = 1
    end
    object cds_NFitemNf: TDataSetField
      FieldName = 'itemNf'
      UnNamed = True
    end
    object cds_NFparcelaNf: TDataSetField
      FieldName = 'parcelaNf'
      UnNamed = True
    end
  end
  object dscds_NF: TDataSource
    AutoEdit = False
    DataSet = cds_NF
    Left = 717
    Top = 314
  end
  object xmltp_NF: TXMLTransformProvider
    TransformRead.TransformationFile = 'C:\SGR\ImportacaoCIGAM\wsImportaNF_CIGAM.xtr'
    XMLDataFile = 'C:\SGR\ImportacaoCIGAM\ImportaComprasCIGAM.xml'
    Left = 747
    Top = 314
  end
  object cds_NF_Itens: TClientDataSet
    Aggregates = <>
    DataSetField = cds_NFitemNf
    FieldDefs = <
      item
        Name = 'movimento'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'tipoOperacao1'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'dataMovimento'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'codigoMaterial'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'especif1'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'especif2'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'centroArmazenagem'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'grade1'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'quantidade1'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'precoUnitario'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'descricao'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'documento'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'empresa'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'contaGerencial'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'tipoDocumento'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'tabelaPreco'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'incidenciaISS1'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'tipoNota1'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'baseICMS1'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 7
      end
      item
        Name = 'baseIPI1'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 7
      end
      item
        Name = 'serie1'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'unidadeNegocio'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'nf'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'serie2'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'tipoOperacao2'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'CFOP1'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'dataEmissao'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'viaTransporte'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'documentoFiscal'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'cliente'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'cobranca'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'representante1'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'baseICMS2'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 7
      end
      item
        Name = 'valorICMS1'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'baseIPI2'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 7
      end
      item
        Name = 'valorIPI1'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'incidenciaPIS1'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'incidenciaCOFINS1'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'totalMercadorias'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 7
      end
      item
        Name = 'totalNF'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 7
      end
      item
        Name = 'transportadora'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'consignatario'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'marca'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'volume'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 15
      end
      item
        Name = 'quantidade2'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'especie'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 16
      end
      item
        Name = 'pesoLiquido'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'pesoBruto'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'conta'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'portador'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'fatura'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'cobrarPauta'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'remessa'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'pedido'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 12
      end
      item
        Name = 'dataSaida'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'horaSaida'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'gerouLancamentos'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'itemsNaNota'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'tipoFrete'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'uf'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'percentualComissao1'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'placa'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'especieNota'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'incidenciaISS2'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ateNota'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'totalFaturado'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 7
      end
      item
        Name = 'substitutoTributario'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'notaReferencia'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'baseSubstituicaoTributaria'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'valorSubstituicaoTributaria'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'condicaoPagamento'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'complementoFatura'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'contabilizado'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'faturaAglutinada'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'gerouINSS'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'serieReferencia'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'codigoMunicipio'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'quantidadeTotal'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'impressa'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'declaracaoImportacao'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'indiceIndexador'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'baseIRRF1'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 7
      end
      item
        Name = 'modeloCupom'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'numeroControleFormulario'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'romaneio'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ufPlacaTransportador'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'codigoCancelamento'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'codigoDevolucao'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'ordemCompra'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'projeto'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'modeloFormulario'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'ordemDeCompraGerada'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'totalItensServico'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'usrnota1'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'chaveNFe'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 9
      end
      item
        Name = 'numeroProtocolo'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 15
      end
      item
        Name = 'numeroLote'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 15
      end
      item
        Name = 'gerouPedidoConsignacao'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'incluiSubstituicaoTributaria'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'listarLivros'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'tipoNota2'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'classificacaoDocumento'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'mercado'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'grade2'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'incidenciaContribSocial1'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'folhaLivroSaida'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'tgConversaoUnidades'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'fornecedor'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'volumeAtualizado'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'ordemEnderecoCobranca'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'ordemEnderecoEntrega'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'forma'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'tipoFreteConsignatario'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'conferido'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'numeroLivroSaida'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'usuarioAutorizado'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'entregMercAposFatur'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'status'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CFOP2'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'percentualICMS'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'basePIS'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'valorPIS'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'baseCOFINS'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'valorCOFINS'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'codigoTipoDocumento'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'retencaoInformada'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'complementoIncidIPI'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ICMSPresumido'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CSTPIS'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CSTCOFINS'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'codBaseCreditoPisCofinsEntrad'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'sequenciaNota'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'valorContabil'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'incidenciaIPI'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'incidenciaICMS'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'incidenciaPIS2'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'incidenciaCOFINS2'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'incidenciaICMSEntrada'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'complementoIncidenciaICMS'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'incidenciaContribSocial2'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'percentualIPI'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'percentualDesconto'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 7
      end
      item
        Name = 'valorICMS2'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'valorIPI2'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'percentualComissao2'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'baseSubstituicao'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'percentualSubstituicao'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'percentualPIS'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'percentualICMSSubstituicao'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'percentualCOFINS'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'transfCentroArmaz'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'estorno'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'pedidoOc'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 12
      end
      item
        Name = 'indice'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'ordenacao'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'transfUnNegocio'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'contrato'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'contabil'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'codigoRetorno'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'contabilidade'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'excecaoNCM'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'etiquetaHex'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'inspecao'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'classePedidoExclusivo4'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'saidaSemSaldo'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'usrmovi2'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'valorSubstituicao'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'precoTotalCusto'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'sequenciaDia'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'sequenciaPedidoOC'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'sequenciaDiaPedidoOC'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'baseICMSComIPI'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'clienteFornecedor'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'especieNF'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'sequenciaNF'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'representante2'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'valorBaseComissao'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'percentualComissao3'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'tipoBaseComissao'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'percComissaoOrigRepresentante'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'origem'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'baseIRRF2'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 7
      end
      item
        Name = 'baseINSS'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'parcelaNf'
        Attributes = [faUnNamed]
        DataType = ftDataSet
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 685
    Top = 349
    object cds_NF_Itensmovimento: TStringField
      FieldName = 'movimento'
      Size = 8
    end
    object cds_NF_ItenstipoOperacao1: TStringField
      FieldName = 'tipoOperacao1'
      Size = 5
    end
    object cds_NF_ItensdataMovimento: TStringField
      FieldName = 'dataMovimento'
      Size = 10
    end
    object cds_NF_ItenscodigoMaterial: TStringField
      FieldName = 'codigoMaterial'
    end
    object cds_NF_Itensespecif1: TStringField
      FieldName = 'especif1'
      Size = 6
    end
    object cds_NF_Itensespecif2: TStringField
      FieldName = 'especif2'
      Size = 32
    end
    object cds_NF_ItenscentroArmazenagem: TStringField
      FieldName = 'centroArmazenagem'
      Size = 4
    end
    object cds_NF_Itensgrade1: TStringField
      FieldName = 'grade1'
      Size = 32
    end
    object cds_NF_Itensquantidade1: TStringField
      FieldName = 'quantidade1'
      Size = 6
    end
    object cds_NF_ItensprecoUnitario: TStringField
      FieldName = 'precoUnitario'
      Size = 5
    end
    object cds_NF_Itensdescricao: TStringField
      FieldName = 'descricao'
      Size = 32
    end
    object cds_NF_Itensdocumento: TStringField
      FieldName = 'documento'
      Size = 32
    end
    object cds_NF_Itensempresa: TStringField
      FieldName = 'empresa'
      Size = 6
    end
    object cds_NF_ItenscontaGerencial: TStringField
      FieldName = 'contaGerencial'
      Size = 32
    end
    object cds_NF_ItenstipoDocumento: TStringField
      FieldName = 'tipoDocumento'
      Size = 5
    end
    object cds_NF_ItenstabelaPreco: TStringField
      FieldName = 'tabelaPreco'
      Size = 6
    end
    object cds_NF_ItensincidenciaISS1: TStringField
      FieldName = 'incidenciaISS1'
      Size = 1
    end
    object cds_NF_ItenstipoNota1: TStringField
      FieldName = 'tipoNota1'
      Size = 1
    end
    object cds_NF_ItensbaseICMS1: TStringField
      FieldName = 'baseICMS1'
      Size = 7
    end
    object cds_NF_ItensbaseIPI1: TStringField
      FieldName = 'baseIPI1'
      Size = 7
    end
    object cds_NF_Itensserie1: TStringField
      FieldName = 'serie1'
      Size = 5
    end
    object cds_NF_ItensunidadeNegocio: TStringField
      FieldName = 'unidadeNegocio'
      Size = 3
    end
    object cds_NF_Itensnf: TStringField
      FieldName = 'nf'
      Size = 6
    end
    object cds_NF_Itensserie2: TStringField
      FieldName = 'serie2'
      Size = 5
    end
    object cds_NF_ItenstipoOperacao2: TStringField
      FieldName = 'tipoOperacao2'
      Size = 5
    end
    object cds_NF_ItensCFOP1: TStringField
      FieldName = 'CFOP1'
      Size = 6
    end
    object cds_NF_ItensdataEmissao: TStringField
      FieldName = 'dataEmissao'
      Size = 10
    end
    object cds_NF_ItensviaTransporte: TStringField
      FieldName = 'viaTransporte'
      Size = 1
    end
    object cds_NF_ItensdocumentoFiscal: TStringField
      FieldName = 'documentoFiscal'
      Size = 5
    end
    object cds_NF_Itenscliente: TStringField
      FieldName = 'cliente'
      Size = 6
    end
    object cds_NF_Itenscobranca: TStringField
      FieldName = 'cobranca'
      Size = 6
    end
    object cds_NF_Itensrepresentante1: TStringField
      FieldName = 'representante1'
      Size = 6
    end
    object cds_NF_ItensbaseICMS2: TStringField
      FieldName = 'baseICMS2'
      Size = 7
    end
    object cds_NF_ItensvalorICMS1: TStringField
      FieldName = 'valorICMS1'
      Size = 6
    end
    object cds_NF_ItensbaseIPI2: TStringField
      FieldName = 'baseIPI2'
      Size = 7
    end
    object cds_NF_ItensvalorIPI1: TStringField
      FieldName = 'valorIPI1'
      Size = 6
    end
    object cds_NF_ItensincidenciaPIS1: TStringField
      FieldName = 'incidenciaPIS1'
      Size = 32
    end
    object cds_NF_ItensincidenciaCOFINS1: TStringField
      FieldName = 'incidenciaCOFINS1'
      Size = 32
    end
    object cds_NF_ItenstotalMercadorias: TStringField
      FieldName = 'totalMercadorias'
      Size = 7
    end
    object cds_NF_ItenstotalNF: TStringField
      FieldName = 'totalNF'
      Size = 7
    end
    object cds_NF_Itenstransportadora: TStringField
      FieldName = 'transportadora'
      Size = 6
    end
    object cds_NF_Itensconsignatario: TStringField
      FieldName = 'consignatario'
      Size = 32
    end
    object cds_NF_Itensmarca: TStringField
      FieldName = 'marca'
      Size = 32
    end
    object cds_NF_Itensvolume: TStringField
      FieldName = 'volume'
      Size = 15
    end
    object cds_NF_Itensquantidade2: TStringField
      FieldName = 'quantidade2'
      Size = 6
    end
    object cds_NF_Itensespecie: TStringField
      FieldName = 'especie'
      Size = 16
    end
    object cds_NF_ItenspesoLiquido: TStringField
      FieldName = 'pesoLiquido'
      Size = 6
    end
    object cds_NF_ItenspesoBruto: TStringField
      FieldName = 'pesoBruto'
      Size = 8
    end
    object cds_NF_Itensconta: TStringField
      FieldName = 'conta'
      Size = 6
    end
    object cds_NF_Itensportador: TStringField
      FieldName = 'portador'
      Size = 3
    end
    object cds_NF_Itensfatura: TStringField
      FieldName = 'fatura'
      Size = 6
    end
    object cds_NF_ItenscobrarPauta: TStringField
      FieldName = 'cobrarPauta'
      Size = 32
    end
    object cds_NF_Itensremessa: TStringField
      FieldName = 'remessa'
      Size = 32
    end
    object cds_NF_Itenspedido: TStringField
      FieldName = 'pedido'
      Size = 12
    end
    object cds_NF_ItensdataSaida: TStringField
      FieldName = 'dataSaida'
      Size = 10
    end
    object cds_NF_ItenshoraSaida: TStringField
      FieldName = 'horaSaida'
      Size = 8
    end
    object cds_NF_ItensgerouLancamentos: TStringField
      FieldName = 'gerouLancamentos'
      Size = 4
    end
    object cds_NF_ItensitemsNaNota: TStringField
      FieldName = 'itemsNaNota'
      Size = 2
    end
    object cds_NF_ItenstipoFrete: TStringField
      FieldName = 'tipoFrete'
      Size = 1
    end
    object cds_NF_Itensuf: TStringField
      FieldName = 'uf'
      Size = 2
    end
    object cds_NF_ItenspercentualComissao1: TStringField
      FieldName = 'percentualComissao1'
      Size = 2
    end
    object cds_NF_Itensplaca: TStringField
      FieldName = 'placa'
      Size = 32
    end
    object cds_NF_ItensespecieNota: TStringField
      FieldName = 'especieNota'
      Size = 1
    end
    object cds_NF_ItensincidenciaISS2: TStringField
      FieldName = 'incidenciaISS2'
      Size = 1
    end
    object cds_NF_ItensateNota: TStringField
      FieldName = 'ateNota'
      Size = 1
    end
    object cds_NF_ItenstotalFaturado: TStringField
      FieldName = 'totalFaturado'
      Size = 7
    end
    object cds_NF_ItenssubstitutoTributario: TStringField
      FieldName = 'substitutoTributario'
      Size = 32
    end
    object cds_NF_ItensnotaReferencia: TStringField
      FieldName = 'notaReferencia'
      Size = 1
    end
    object cds_NF_ItensbaseSubstituicaoTributaria: TStringField
      FieldName = 'baseSubstituicaoTributaria'
      Size = 6
    end
    object cds_NF_ItensvalorSubstituicaoTributaria: TStringField
      FieldName = 'valorSubstituicaoTributaria'
      Size = 5
    end
    object cds_NF_ItenscondicaoPagamento: TStringField
      FieldName = 'condicaoPagamento'
      Size = 3
    end
    object cds_NF_ItenscomplementoFatura: TStringField
      FieldName = 'complementoFatura'
      Size = 32
    end
    object cds_NF_Itenscontabilizado: TStringField
      FieldName = 'contabilizado'
      Size = 32
    end
    object cds_NF_ItensfaturaAglutinada: TStringField
      FieldName = 'faturaAglutinada'
      Size = 32
    end
    object cds_NF_ItensgerouINSS: TStringField
      FieldName = 'gerouINSS'
      Size = 32
    end
    object cds_NF_ItensserieReferencia: TStringField
      FieldName = 'serieReferencia'
      Size = 32
    end
    object cds_NF_ItenscodigoMunicipio: TStringField
      FieldName = 'codigoMunicipio'
      Size = 32
    end
    object cds_NF_ItensquantidadeTotal: TStringField
      FieldName = 'quantidadeTotal'
      Size = 2
    end
    object cds_NF_Itensimpressa: TStringField
      FieldName = 'impressa'
      Size = 4
    end
    object cds_NF_ItensdeclaracaoImportacao: TStringField
      FieldName = 'declaracaoImportacao'
      Size = 32
    end
    object cds_NF_ItensindiceIndexador: TStringField
      FieldName = 'indiceIndexador'
      Size = 32
    end
    object cds_NF_ItensbaseIRRF1: TStringField
      FieldName = 'baseIRRF1'
      Size = 7
    end
    object cds_NF_ItensmodeloCupom: TStringField
      FieldName = 'modeloCupom'
      Size = 32
    end
    object cds_NF_ItensnumeroControleFormulario: TStringField
      FieldName = 'numeroControleFormulario'
      Size = 32
    end
    object cds_NF_Itensromaneio: TStringField
      FieldName = 'romaneio'
      Size = 1
    end
    object cds_NF_ItensufPlacaTransportador: TStringField
      FieldName = 'ufPlacaTransportador'
      Size = 32
    end
    object cds_NF_ItenscodigoCancelamento: TStringField
      FieldName = 'codigoCancelamento'
      Size = 32
    end
    object cds_NF_ItenscodigoDevolucao: TStringField
      FieldName = 'codigoDevolucao'
      Size = 32
    end
    object cds_NF_ItensordemCompra: TStringField
      FieldName = 'ordemCompra'
      Size = 32
    end
    object cds_NF_Itensprojeto: TStringField
      FieldName = 'projeto'
      Size = 32
    end
    object cds_NF_ItensmodeloFormulario: TStringField
      FieldName = 'modeloFormulario'
      Size = 2
    end
    object cds_NF_ItensordemDeCompraGerada: TStringField
      FieldName = 'ordemDeCompraGerada'
      Size = 32
    end
    object cds_NF_ItenstotalItensServico: TStringField
      FieldName = 'totalItensServico'
      Size = 1
    end
    object cds_NF_Itensusrnota1: TStringField
      FieldName = 'usrnota1'
      Size = 32
    end
    object cds_NF_ItenschaveNFe: TStringField
      FieldName = 'chaveNFe'
      Size = 9
    end
    object cds_NF_ItensnumeroProtocolo: TStringField
      FieldName = 'numeroProtocolo'
      Size = 15
    end
    object cds_NF_ItensnumeroLote: TStringField
      FieldName = 'numeroLote'
      Size = 15
    end
    object cds_NF_ItensgerouPedidoConsignacao: TStringField
      FieldName = 'gerouPedidoConsignacao'
      Size = 32
    end
    object cds_NF_ItensincluiSubstituicaoTributaria: TStringField
      FieldName = 'incluiSubstituicaoTributaria'
      Size = 32
    end
    object cds_NF_ItenslistarLivros: TStringField
      FieldName = 'listarLivros'
      Size = 1
    end
    object cds_NF_ItenstipoNota2: TStringField
      FieldName = 'tipoNota2'
      Size = 1
    end
    object cds_NF_ItensclassificacaoDocumento: TStringField
      FieldName = 'classificacaoDocumento'
      Size = 32
    end
    object cds_NF_Itensmercado: TStringField
      FieldName = 'mercado'
      Size = 32
    end
    object cds_NF_Itensgrade2: TStringField
      FieldName = 'grade2'
      Size = 32
    end
    object cds_NF_ItensincidenciaContribSocial1: TStringField
      FieldName = 'incidenciaContribSocial1'
      Size = 32
    end
    object cds_NF_ItensfolhaLivroSaida: TStringField
      FieldName = 'folhaLivroSaida'
      Size = 32
    end
    object cds_NF_ItenstgConversaoUnidades: TStringField
      FieldName = 'tgConversaoUnidades'
      Size = 6
    end
    object cds_NF_Itensfornecedor: TStringField
      FieldName = 'fornecedor'
      Size = 32
    end
    object cds_NF_ItensvolumeAtualizado: TStringField
      FieldName = 'volumeAtualizado'
      Size = 6
    end
    object cds_NF_ItensordemEnderecoCobranca: TStringField
      FieldName = 'ordemEnderecoCobranca'
      Size = 32
    end
    object cds_NF_ItensordemEnderecoEntrega: TStringField
      FieldName = 'ordemEnderecoEntrega'
      Size = 32
    end
    object cds_NF_Itensforma: TStringField
      FieldName = 'forma'
      Size = 1
    end
    object cds_NF_ItenstipoFreteConsignatario: TStringField
      FieldName = 'tipoFreteConsignatario'
      Size = 32
    end
    object cds_NF_Itensconferido: TStringField
      FieldName = 'conferido'
      Size = 32
    end
    object cds_NF_ItensnumeroLivroSaida: TStringField
      FieldName = 'numeroLivroSaida'
      Size = 32
    end
    object cds_NF_ItensusuarioAutorizado: TStringField
      FieldName = 'usuarioAutorizado'
      Size = 3
    end
    object cds_NF_ItensentregMercAposFatur: TStringField
      FieldName = 'entregMercAposFatur'
      Size = 32
    end
    object cds_NF_Itensstatus: TStringField
      FieldName = 'status'
      Size = 1
    end
    object cds_NF_ItensCFOP2: TStringField
      FieldName = 'CFOP2'
      Size = 6
    end
    object cds_NF_ItenspercentualICMS: TStringField
      FieldName = 'percentualICMS'
      Size = 2
    end
    object cds_NF_ItensbasePIS: TStringField
      FieldName = 'basePIS'
      Size = 6
    end
    object cds_NF_ItensvalorPIS: TStringField
      FieldName = 'valorPIS'
      Size = 4
    end
    object cds_NF_ItensbaseCOFINS: TStringField
      FieldName = 'baseCOFINS'
      Size = 6
    end
    object cds_NF_ItensvalorCOFINS: TStringField
      FieldName = 'valorCOFINS'
      Size = 4
    end
    object cds_NF_ItenscodigoTipoDocumento: TStringField
      FieldName = 'codigoTipoDocumento'
      Size = 32
    end
    object cds_NF_ItensretencaoInformada: TStringField
      FieldName = 'retencaoInformada'
      Size = 32
    end
    object cds_NF_ItenscomplementoIncidIPI: TStringField
      FieldName = 'complementoIncidIPI'
      Size = 1
    end
    object cds_NF_ItensICMSPresumido: TStringField
      FieldName = 'ICMSPresumido'
      Size = 1
    end
    object cds_NF_ItensCSTPIS: TStringField
      FieldName = 'CSTPIS'
      Size = 2
    end
    object cds_NF_ItensCSTCOFINS: TStringField
      FieldName = 'CSTCOFINS'
      Size = 2
    end
    object cds_NF_ItenscodBaseCreditoPisCofinsEntrad: TStringField
      FieldName = 'codBaseCreditoPisCofinsEntrad'
      Size = 32
    end
    object cds_NF_ItenssequenciaNota: TStringField
      FieldName = 'sequenciaNota'
      Size = 2
    end
    object cds_NF_ItensvalorContabil: TStringField
      FieldName = 'valorContabil'
      Size = 6
    end
    object cds_NF_ItensincidenciaIPI: TStringField
      FieldName = 'incidenciaIPI'
      Size = 1
    end
    object cds_NF_ItensincidenciaICMS: TStringField
      FieldName = 'incidenciaICMS'
      Size = 1
    end
    object cds_NF_ItensincidenciaPIS2: TStringField
      FieldName = 'incidenciaPIS2'
      Size = 32
    end
    object cds_NF_ItensincidenciaCOFINS2: TStringField
      FieldName = 'incidenciaCOFINS2'
      Size = 32
    end
    object cds_NF_ItensincidenciaICMSEntrada: TStringField
      FieldName = 'incidenciaICMSEntrada'
      Size = 32
    end
    object cds_NF_ItenscomplementoIncidenciaICMS: TStringField
      FieldName = 'complementoIncidenciaICMS'
      Size = 1
    end
    object cds_NF_ItensincidenciaContribSocial2: TStringField
      FieldName = 'incidenciaContribSocial2'
      Size = 32
    end
    object cds_NF_ItenspercentualIPI: TStringField
      FieldName = 'percentualIPI'
      Size = 2
    end
    object cds_NF_ItenspercentualDesconto: TStringField
      FieldName = 'percentualDesconto'
      Size = 7
    end
    object cds_NF_ItensvalorICMS2: TStringField
      FieldName = 'valorICMS2'
      Size = 6
    end
    object cds_NF_ItensvalorIPI2: TStringField
      FieldName = 'valorIPI2'
      Size = 6
    end
    object cds_NF_ItenspercentualComissao2: TStringField
      FieldName = 'percentualComissao2'
      Size = 2
    end
    object cds_NF_ItensbaseSubstituicao: TStringField
      FieldName = 'baseSubstituicao'
      Size = 6
    end
    object cds_NF_ItenspercentualSubstituicao: TStringField
      FieldName = 'percentualSubstituicao'
      Size = 5
    end
    object cds_NF_ItenspercentualPIS: TStringField
      FieldName = 'percentualPIS'
      Size = 4
    end
    object cds_NF_ItenspercentualICMSSubstituicao: TStringField
      FieldName = 'percentualICMSSubstituicao'
      Size = 2
    end
    object cds_NF_ItenspercentualCOFINS: TStringField
      FieldName = 'percentualCOFINS'
      Size = 1
    end
    object cds_NF_ItenstransfCentroArmaz: TStringField
      FieldName = 'transfCentroArmaz'
      Size = 32
    end
    object cds_NF_Itensestorno: TStringField
      FieldName = 'estorno'
      Size = 32
    end
    object cds_NF_ItenspedidoOc: TStringField
      FieldName = 'pedidoOc'
      Size = 12
    end
    object cds_NF_Itensindice: TStringField
      FieldName = 'indice'
      Size = 32
    end
    object cds_NF_Itensordenacao: TStringField
      FieldName = 'ordenacao'
      Size = 6
    end
    object cds_NF_ItenstransfUnNegocio: TStringField
      FieldName = 'transfUnNegocio'
      Size = 32
    end
    object cds_NF_Itenscontrato: TStringField
      FieldName = 'contrato'
      Size = 32
    end
    object cds_NF_Itenscontabil: TStringField
      FieldName = 'contabil'
      Size = 32
    end
    object cds_NF_ItenscodigoRetorno: TStringField
      FieldName = 'codigoRetorno'
      Size = 32
    end
    object cds_NF_Itenscontabilidade: TStringField
      FieldName = 'contabilidade'
      Size = 32
    end
    object cds_NF_ItensexcecaoNCM: TStringField
      FieldName = 'excecaoNCM'
      Size = 32
    end
    object cds_NF_ItensetiquetaHex: TStringField
      FieldName = 'etiquetaHex'
      Size = 32
    end
    object cds_NF_Itensinspecao: TStringField
      FieldName = 'inspecao'
      Size = 32
    end
    object cds_NF_ItensclassePedidoExclusivo4: TStringField
      FieldName = 'classePedidoExclusivo4'
      Size = 32
    end
    object cds_NF_ItenssaidaSemSaldo: TStringField
      FieldName = 'saidaSemSaldo'
      Size = 32
    end
    object cds_NF_Itensusrmovi2: TStringField
      FieldName = 'usrmovi2'
      Size = 32
    end
    object cds_NF_ItensvalorSubstituicao: TStringField
      FieldName = 'valorSubstituicao'
      Size = 5
    end
    object cds_NF_ItensprecoTotalCusto: TStringField
      FieldName = 'precoTotalCusto'
      Size = 10
    end
    object cds_NF_ItenssequenciaDia: TStringField
      FieldName = 'sequenciaDia'
      Size = 8
    end
    object cds_NF_ItenssequenciaPedidoOC: TStringField
      FieldName = 'sequenciaPedidoOC'
      Size = 2
    end
    object cds_NF_ItenssequenciaDiaPedidoOC: TStringField
      FieldName = 'sequenciaDiaPedidoOC'
      Size = 1
    end
    object cds_NF_ItensbaseICMSComIPI: TStringField
      FieldName = 'baseICMSComIPI'
      Size = 4
    end
    object cds_NF_ItensclienteFornecedor: TStringField
      FieldName = 'clienteFornecedor'
      Size = 6
    end
    object cds_NF_ItensespecieNF: TStringField
      FieldName = 'especieNF'
      Size = 1
    end
    object cds_NF_ItenssequenciaNF: TStringField
      FieldName = 'sequenciaNF'
      Size = 2
    end
    object cds_NF_Itensrepresentante2: TStringField
      FieldName = 'representante2'
      Size = 6
    end
    object cds_NF_ItensvalorBaseComissao: TStringField
      FieldName = 'valorBaseComissao'
      Size = 6
    end
    object cds_NF_ItenspercentualComissao3: TStringField
      FieldName = 'percentualComissao3'
      Size = 2
    end
    object cds_NF_ItenstipoBaseComissao: TStringField
      FieldName = 'tipoBaseComissao'
      Size = 32
    end
    object cds_NF_ItenspercComissaoOrigRepresentante: TStringField
      FieldName = 'percComissaoOrigRepresentante'
      Size = 2
    end
    object cds_NF_Itensorigem: TStringField
      FieldName = 'origem'
      Size = 1
    end
    object cds_NF_ItensbaseIRRF2: TStringField
      FieldName = 'baseIRRF2'
      Size = 7
    end
    object cds_NF_ItensbaseINSS: TStringField
      FieldName = 'baseINSS'
      Size = 6
    end
    object cds_NF_ItensparcelaNf: TDataSetField
      FieldName = 'parcelaNf'
      UnNamed = True
    end
  end
  object dscds_NF_Itens: TDataSource
    AutoEdit = False
    DataSet = cds_NF_Itens
    Left = 717
    Top = 349
  end
  object cds_MAT: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'xmltp_MAT'
    Left = 781
    Top = 282
    object cds_MATcodigoMaterial: TStringField
      FieldName = 'codigoMaterial'
      Size = 9
    end
    object cds_MATcodigoGrupo: TStringField
      FieldName = 'codigoGrupo'
      Size = 2
    end
    object cds_MATcodigoSubGrupo: TStringField
      FieldName = 'codigoSubGrupo'
      Size = 2
    end
    object cds_MATcentroControle: TStringField
      FieldName = 'centroControle'
      Size = 32
    end
    object cds_MATdescricao: TStringField
      FieldName = 'descricao'
      Size = 24
    end
    object cds_MATcodigoUnidadeMedida: TStringField
      FieldName = 'codigoUnidadeMedida'
      Size = 2
    end
    object cds_MATquantidadeRelacaoPaiFilho: TStringField
      FieldName = 'quantidadeRelacaoPaiFilho'
      Size = 1
    end
    object cds_MATpercentualPis: TStringField
      FieldName = 'percentualPis'
      Size = 1
    end
    object cds_MATpercentualCofins: TStringField
      FieldName = 'percentualCofins'
      Size = 1
    end
    object cds_MATpercentualPisRetencao: TStringField
      FieldName = 'percentualPisRetencao'
      Size = 1
    end
    object cds_MATpercentualCofinsRetencao: TStringField
      FieldName = 'percentualCofinsRetencao'
      Size = 1
    end
    object cds_MATquantidadeRefComposicaoGeral: TStringField
      FieldName = 'quantidadeRefComposicaoGeral'
      Size = 1
    end
    object cds_MATprecoCusto: TStringField
      FieldName = 'precoCusto'
      Size = 1
    end
    object cds_MATrevisaoEngenharia: TStringField
      FieldName = 'revisaoEngenharia'
      Size = 2
    end
    object cds_MATpercentualCsll: TStringField
      FieldName = 'percentualCsll'
      Size = 1
    end
    object cds_MATpercentualIcmsSinief: TStringField
      FieldName = 'percentualIcmsSinief'
      Size = 4
    end
    object cds_MATcodigoContaGerencial: TStringField
      FieldName = 'codigoContaGerencial'
      Size = 32
    end
    object cds_MATpeso: TStringField
      FieldName = 'peso'
      Size = 5
    end
    object cds_MATpercentualMedioIcms: TStringField
      FieldName = 'percentualMedioIcms'
      Size = 1
    end
    object cds_MATpercentualIrrf: TStringField
      FieldName = 'percentualIrrf'
      Size = 1
    end
    object cds_MATpercentualIpi: TStringField
      FieldName = 'percentualIpi'
      Size = 2
    end
    object cds_MATpercentualFrete: TStringField
      FieldName = 'percentualFrete'
      Size = 1
    end
    object cds_MATpercentualEmbalagem: TStringField
      FieldName = 'percentualEmbalagem'
      Size = 1
    end
    object cds_MATpercentualComissao: TStringField
      FieldName = 'percentualComissao'
      Size = 1
    end
    object cds_MATpercentualReajuste: TStringField
      FieldName = 'percentualReajuste'
      Size = 1
    end
    object cds_MATcodigoFiscal: TStringField
      FieldName = 'codigoFiscal'
      Size = 8
    end
    object cds_MATdataUltimaRevisao: TStringField
      FieldName = 'dataUltimaRevisao'
      Size = 10
    end
    object cds_MATdataReajuste: TStringField
      FieldName = 'dataReajuste'
      Size = 10
    end
    object cds_MATcodigoFabricante: TStringField
      FieldName = 'codigoFabricante'
      Size = 32
    end
    object cds_MATcodigoFabrica: TStringField
      FieldName = 'codigoFabrica'
      Size = 6
    end
    object cds_MATreferencia: TStringField
      FieldName = 'referencia'
      Size = 6
    end
    object cds_MATcodigoReduzido: TStringField
      FieldName = 'codigoReduzido'
      Size = 3
    end
    object cds_MATprecoStPisCofins: TStringField
      FieldName = 'precoStPisCofins'
      Size = 1
    end
    object cds_MATconversorCompra: TStringField
      FieldName = 'conversorCompra'
      Size = 1
    end
    object cds_MATencargosFinanceiros: TStringField
      FieldName = 'encargosFinanceiros'
      Size = 1
    end
    object cds_MATvalorFrete: TStringField
      FieldName = 'valorFrete'
      Size = 1
    end
    object cds_MATaplicacao: TStringField
      FieldName = 'aplicacao'
      Size = 32
    end
    object cds_MATcodigoEspecif1: TStringField
      FieldName = 'codigoEspecif1'
      Size = 32
    end
    object cds_MATcodigoEspecif2: TStringField
      FieldName = 'codigoEspecif2'
      Size = 32
    end
    object cds_MATcodigoEspecif3: TStringField
      FieldName = 'codigoEspecif3'
      Size = 32
    end
    object cds_MATcodigoEspecif4: TStringField
      FieldName = 'codigoEspecif4'
      Size = 32
    end
    object cds_MATcodigoEspecif5: TStringField
      FieldName = 'codigoEspecif5'
      Size = 32
    end
    object cds_MATcodigoEspecif6: TStringField
      FieldName = 'codigoEspecif6'
      Size = 32
    end
    object cds_MATpercentualRoyaltie: TStringField
      FieldName = 'percentualRoyaltie'
      Size = 1
    end
    object cds_MATpercentualImpostoImportacao: TStringField
      FieldName = 'percentualImpostoImportacao'
      Size = 1
    end
    object cds_MATdataCadastro: TStringField
      FieldName = 'dataCadastro'
      Size = 10
    end
    object cds_MATgarantiaCompra: TStringField
      FieldName = 'garantiaCompra'
      Size = 1
    end
    object cds_MATgarantiaVenda: TStringField
      FieldName = 'garantiaVenda'
      Size = 1
    end
    object cds_MATregraCusteio: TStringField
      FieldName = 'regraCusteio'
      Size = 32
    end
    object cds_MATregraIpi: TStringField
      FieldName = 'regraIpi'
      Size = 32
    end
    object cds_MATsufixoContabil: TStringField
      FieldName = 'sufixoContabil'
      Size = 32
    end
    object cds_MATcodigoContabil: TStringField
      FieldName = 'codigoContabil'
      Size = 32
    end
    object cds_MATlocalizacao: TStringField
      FieldName = 'localizacao'
      Size = 32
    end
    object cds_MATtipo: TStringField
      FieldName = 'tipo'
      Size = 1
    end
    object cds_MATvolume: TStringField
      FieldName = 'volume'
      Size = 10
    end
    object cds_MATorigemMercadoria: TStringField
      FieldName = 'origemMercadoria'
      Size = 1
    end
    object cds_MATcontabilPrincipalInvSped: TStringField
      FieldName = 'contabilPrincipalInvSped'
      Size = 4
    end
    object cds_MATprecoPauta: TStringField
      FieldName = 'precoPauta'
      Size = 1
    end
    object cds_MATpercIcmsPisCofisImportacao: TStringField
      FieldName = 'percIcmsPisCofisImportacao'
      Size = 1
    end
    object cds_MATconversorVenda: TStringField
      FieldName = 'conversorVenda'
      Size = 1
    end
    object cds_MATcodigoUnidadeCompra: TStringField
      FieldName = 'codigoUnidadeCompra'
      Size = 32
    end
    object cds_MATcodigoUnidadeVenda: TStringField
      FieldName = 'codigoUnidadeVenda'
      Size = 32
    end
    object cds_MATpesoEmbalagem: TStringField
      FieldName = 'pesoEmbalagem'
      Size = 6
    end
    object cds_MATpercentualInss: TStringField
      FieldName = 'percentualInss'
      Size = 1
    end
    object cds_MATvalorIpi: TStringField
      FieldName = 'valorIpi'
      Size = 1
    end
    object cds_MATcodigoUnidadeNegocio: TStringField
      FieldName = 'codigoUnidadeNegocio'
      Size = 32
    end
    object cds_MATsessao: TStringField
      FieldName = 'sessao'
      Size = 6
    end
    object cds_MATcodigoUsuarioModificacao: TStringField
      FieldName = 'codigoUsuarioModificacao'
      Size = 3
    end
    object cds_MATcodigoUsuarioCriacao: TStringField
      FieldName = 'codigoUsuarioCriacao'
      Size = 3
    end
    object cds_MATdataModificacao: TStringField
      FieldName = 'dataModificacao'
      Size = 10
    end
    object cds_MATdataLiberaColecao: TStringField
      FieldName = 'dataLiberaColecao'
      Size = 4
    end
    object cds_MATdataLiberaEsqueleto: TStringField
      FieldName = 'dataLiberaEsqueleto'
      Size = 4
    end
    object cds_MATconfiguracaoReposicao: TStringField
      FieldName = 'configuracaoReposicao'
      Size = 32
    end
    object cds_MATconfiguracao: TStringField
      FieldName = 'configuracao'
      Size = 6
    end
    object cds_MATcodigoCentroArmazenagemPadrao: TStringField
      FieldName = 'codigoCentroArmazenagemPadrao'
      Size = 3
    end
    object cds_MATtabPrecosEstruturaComercial: TStringField
      FieldName = 'tabPrecosEstruturaComercial'
      Size = 32
    end
    object cds_MATutilizaGrade: TStringField
      FieldName = 'utilizaGrade'
      Size = 32
    end
    object cds_MATtipoFormacaoPrecos: TStringField
      FieldName = 'tipoFormacaoPrecos'
      Size = 32
    end
    object cds_MATclassificacaoAbc: TStringField
      FieldName = 'classificacaoAbc'
      Size = 32
    end
    object cds_MATqualidadeProduto: TStringField
      FieldName = 'qualidadeProduto'
      Size = 32
    end
    object cds_MATmanterPedidoNf: TStringField
      FieldName = 'manterPedidoNf'
      Size = 2
    end
    object cds_MATzerarSaldo: TStringField
      FieldName = 'zerarSaldo'
      Size = 32
    end
    object cds_MATcodigoTributario: TStringField
      FieldName = 'codigoTributario'
      Size = 32
    end
    object cds_MATusuarioUltRevisaoEngenharia: TStringField
      FieldName = 'usuarioUltRevisaoEngenharia'
      Size = 3
    end
    object cds_MATtipoBaixaOp: TStringField
      FieldName = 'tipoBaixaOp'
      Size = 32
    end
    object cds_MATestruturaComercial: TStringField
      FieldName = 'estruturaComercial'
      Size = 5
    end
    object cds_MATcontrolaNumeroSerie: TStringField
      FieldName = 'controlaNumeroSerie'
      Size = 5
    end
    object cds_MATcriarProdutoClienteNaVenda: TStringField
      FieldName = 'criarProdutoClienteNaVenda'
      Size = 5
    end
    object cds_MATordemExibicao: TStringField
      FieldName = 'ordemExibicao'
      Size = 1
    end
    object cds_MATquestionarioAfericaoGa: TStringField
      FieldName = 'questionarioAfericaoGa'
      Size = 32
    end
    object cds_MATusrmate1: TStringField
      FieldName = 'usrmate1'
      Size = 32
    end
    object cds_MATusrmate2: TStringField
      FieldName = 'usrmate2'
      Size = 32
    end
    object cds_MATusrmate3: TStringField
      FieldName = 'usrmate3'
      Size = 32
    end
    object cds_MATusrmate4: TStringField
      FieldName = 'usrmate4'
      Size = 4
    end
    object cds_MATusrmate5: TStringField
      FieldName = 'usrmate5'
      Size = 1
    end
    object cds_MATexisteImagem: TStringField
      FieldName = 'existeImagem'
      Size = 5
    end
    object cds_MATexisteDocumento: TStringField
      FieldName = 'existeDocumento'
      Size = 5
    end
  end
  object dscds_MAT: TDataSource
    AutoEdit = False
    DataSet = cds_MAT
    Left = 811
    Top = 282
  end
  object xmltp_MAT: TXMLTransformProvider
    TransformRead.TransformationFile = 'C:\SGR\ImportacaoCIGAM\ConsultaMaterial.xtr'
    XMLDataFile = 'C:\SGR\ImportacaoCIGAM\ConsultaMaterialCIGAM.xml'
    Left = 845
    Top = 282
  end
  object cds_MAT_ESPECIF1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'xmltp_MAT_ESPECIF1'
    Left = 781
    Top = 314
    object cds_MAT_ESPECIF1codigoEspecif1: TStringField
      FieldName = 'codigoEspecif1'
      Size = 6
    end
    object cds_MAT_ESPECIF1codigoGrupo: TStringField
      FieldName = 'codigoGrupo'
      Size = 32
    end
    object cds_MAT_ESPECIF1codigoSubGrupo: TStringField
      FieldName = 'codigoSubGrupo'
      Size = 32
    end
    object cds_MAT_ESPECIF1descricao: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object cds_MAT_ESPECIF1formaCodigo: TStringField
      FieldName = 'formaCodigo'
      Size = 5
    end
    object cds_MAT_ESPECIF1formaDescricao: TStringField
      FieldName = 'formaDescricao'
      Size = 5
    end
    object cds_MAT_ESPECIF1indenpendente: TStringField
      FieldName = 'indenpendente'
      Size = 5
    end
    object cds_MAT_ESPECIF1controlaEstoque: TStringField
      FieldName = 'controlaEstoque'
      Size = 5
    end
    object cds_MAT_ESPECIF1codigoUsuarioModificacao: TStringField
      FieldName = 'codigoUsuarioModificacao'
      Size = 32
    end
    object cds_MAT_ESPECIF1codigoUsuarioCriacao: TStringField
      FieldName = 'codigoUsuarioCriacao'
      Size = 32
    end
    object cds_MAT_ESPECIF1dataModificacao: TStringField
      FieldName = 'dataModificacao'
      Size = 4
    end
    object cds_MAT_ESPECIF1mascara: TStringField
      FieldName = 'mascara'
      Size = 32
    end
    object cds_MAT_ESPECIF1codigoSubGrupoFiltro: TStringField
      FieldName = 'codigoSubGrupoFiltro'
      Size = 32
    end
    object cds_MAT_ESPECIF1usresp11: TStringField
      FieldName = 'usresp11'
      Size = 32
    end
    object cds_MAT_ESPECIF1usresp12: TStringField
      FieldName = 'usresp12'
      Size = 1
    end
    object cds_MAT_ESPECIF1usresp13: TStringField
      FieldName = 'usresp13'
      Size = 4
    end
  end
  object dscds_MAT_ESPECIF1: TDataSource
    AutoEdit = False
    DataSet = cds_MAT_ESPECIF1
    Left = 811
    Top = 313
  end
  object xmltp_MAT_ESPECIF1: TXMLTransformProvider
    TransformRead.TransformationFile = 'C:\SGR\ImportacaoCIGAM\ConsultaMatEspecifico1.xtr'
    XMLDataFile = 'C:\SGR\ImportacaoCIGAM\ConsultaMatEspecifico1CIGAM.xml'
    Left = 845
    Top = 314
  end
  object dscds_MATRIZ: TDataSource
    AutoEdit = False
    DataSet = cds_MATRIZ
    Left = 810
    Top = 351
  end
  object dscds_FILIAIS: TDataSource
    AutoEdit = False
    DataSet = cds_FILIAIS
    Left = 811
    Top = 383
  end
  object cds_MATRIZ: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 780
    Top = 351
    object cds_MATRIZID_CENTRALIZADORA: TStringField
      FieldName = 'ID_CENTRALIZADORA'
      Size = 6
    end
    object cds_MATRIZID_CLIENTE: TStringField
      FieldName = 'ID_CLIENTE'
      Size = 6
    end
    object cds_MATRIZDATA_ULTIMA_COMPRA: TDateField
      FieldName = 'DATA_ULTIMA_COMPRA'
    end
  end
  object cds_FILIAIS: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 781
    Top = 383
    object cds_FILIAISID_CLIENTE: TStringField
      FieldName = 'ID_CLIENTE'
      Size = 6
    end
    object cds_FILIAISID_CENTRALIZADORA: TStringField
      FieldName = 'ID_CENTRALIZADORA'
      Size = 6
    end
  end
  object qry_BuscaCompra: TADOQuery
    Connection = conexaoSGR
    CommandTimeout = 90
    ParamCheck = False
    Parameters = <>
    Prepared = True
    Left = 524
    Top = 343
  end
  object dsqry_BuscaCompra: TDataSource
    AutoEdit = False
    DataSet = qry_BuscaCompra
    Left = 556
    Top = 343
  end
  object cds_NF_Parc: TClientDataSet
    Aggregates = <>
    DataSetField = cds_NFparcelaNf
    Params = <>
    Left = 573
    Top = 261
    object cds_NF_Parcvencimento: TStringField
      FieldName = 'vencimento'
      Size = 10
    end
    object cds_NF_ParcvalorParcela: TStringField
      FieldName = 'valorParcela'
      Size = 6
    end
    object cds_NF_ParcnossoNumero: TStringField
      FieldName = 'nossoNumero'
      Size = 32
    end
    object cds_NF_ParccodigoCaixa: TStringField
      FieldName = 'codigoCaixa'
      Size = 32
    end
    object cds_NF_ParcturnoSequencial: TStringField
      FieldName = 'turnoSequencial'
      Size = 32
    end
    object cds_NF_ParcsessaoCaixa: TStringField
      FieldName = 'sessaoCaixa'
      Size = 32
    end
  end
  object HTTPRIO1: THTTPRIO
    OnBeforeExecute = HTTPRIO1BeforeExecute
    HTTPWebNode.Agent = 'Borland SOAP 1.2'
    HTTPWebNode.UseUTF8InHeader = False
    HTTPWebNode.InvokeOptions = [soIgnoreInvalidCerts, soAutoCheckAccessPointViaUDDI]
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 636
    Top = 191
  end
  object HTTPRIO2: THTTPRIO
    OnBeforeExecute = HTTPRIO2BeforeExecute
    HTTPWebNode.Agent = 'Borland SOAP 1.2'
    HTTPWebNode.UseUTF8InHeader = False
    HTTPWebNode.InvokeOptions = [soIgnoreInvalidCerts, soAutoCheckAccessPointViaUDDI]
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 460
    Top = 183
  end
  object HTTPRIO3: THTTPRIO
    OnBeforeExecute = HTTPRIO3BeforeExecute
    HTTPWebNode.Agent = 'Borland SOAP 1.2'
    HTTPWebNode.UseUTF8InHeader = False
    HTTPWebNode.InvokeOptions = [soIgnoreInvalidCerts, soAutoCheckAccessPointViaUDDI]
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 292
    Top = 183
  end
  object HTTPRIO4: THTTPRIO
    OnBeforeExecute = HTTPRIO3BeforeExecute
    HTTPWebNode.Agent = 'Borland SOAP 1.2'
    HTTPWebNode.UseUTF8InHeader = False
    HTTPWebNode.InvokeOptions = [soIgnoreInvalidCerts, soAutoCheckAccessPointViaUDDI]
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 340
    Top = 191
  end
end
