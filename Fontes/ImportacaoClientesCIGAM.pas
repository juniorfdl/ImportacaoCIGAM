{****************************************************************************************
 *                                                                                      *
 *  Rotina.........: ImportacaoClientesCIGAM                                            *
 *  Data Criação...: 28/06/2017                                                         *
 *  Criado Por.....: Gerson                                                             *
 *  Objetivo.......: Fazer a impoirtação dos Clientes do ERP da CIGAM                   *
 *                                                                                      *
 *  Data Alteração :                                                                    *
 *  Alterado Por...:                                                                    *
 *                                                                                      *
 ****************************************************************************************}

unit ImportacaoClientesCIGAM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, DB, ADODB, Provider,
  DBClient, DBCtrls, Mask, Grids, DBGrids, xmldom, Xmlxform, XSBuiltIns,
  JvExStdCtrls, JvEdit, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, JvExExtCtrls, JvBevel, XMLIntf,
  msxmldom, XMLDoc, InvokeRegistry, WSDLIntf, SOAPPasInv, SOAPHTTPPasInv,
  Rio, SOAPHTTPClient, MidasLib, ComObj;

type
  Tfrm_ImportaClientesCIGAM = class(TForm)
    pb: TProgressBar;
    StatusBar1: TStatusBar;
    conexaoSGR: TADOConnection;
    qrUpdateCliente: TADOQuery;
    qrInsertCompra: TADOQuery;
    qrInsertCompraItem: TADOQuery;
    qrPesquisaCli: TADOQuery;
    tblParametros: TADOTable;
    tblParametrosCODIGO: TIntegerField;
    tblParametrosQTD_HISTORICO_CLI: TIntegerField;
    tblParametrosVALIDA_CPF_CNPJ: TStringField;
    tblParametrosAGENDA_FERIADO: TStringField;
    tblParametrosAGENDA_SABADO: TStringField;
    tblParametrosAGENDA_DOMINGO: TStringField;
    tblParametrosINATIVOS_RECENTES: TIntegerField;
    tblParametrosINATIVOS_ANTIGOS: TIntegerField;
    tblParametrosCODIGO_ERP: TStringField;
    tblParametrosTEMPO_MAX_RECEPTIVO: TTimeField;
    tblParametrosINTERVALO_CHAMADAS: TIntegerField;
    tblParametrosULTIMO_CODIGO_CLI: TIntegerField;
    tblParametrosFILA: TStringField;
    tblParametrosMETODO_GRAVACAO: TStringField;
    tblParametrosLOCAL_GRAVACAO: TStringField;
    tblParametrosEXCEDEUNEGATIVOS: TIntegerField;
    tblParametrosORDERBY: TMemoField;
    tblParametrosSEQUENCIADEORDENACAO: TStringField;
    tblParametrosCONTADOR_FINALIZAR: TIntegerField;
    tblParametrosASTERISK_SERVER: TStringField;
    tblParametrosASTERISK_PROXY: TStringField;
    tblParametrosASTERISK_PORTA: TIntegerField;
    tblParametrosATUALIZACAO_HORA: TTimeField;
    tblParametrosATUALIZACAO_TODODIA: TStringField;
    tblParametrosDESLIGA_COMPUTADOR: TStringField;
    tblParametrosFUSO_HORARIO: TStringField;
    tblParametrosINCLUI_CLIENTE_CAMP_PRINC_IMP: TStringField;
    tblParametrosRAZAO: TStringField;
    tblParametrosFANTASIA: TStringField;
    tblParametrosCNPJ: TStringField;
    tblParametrosENDERECO: TStringField;
    tblParametrosBAIRRO: TStringField;
    tblParametrosCIDADE: TStringField;
    tblParametrosCEP: TStringField;
    tblParametrosESTADO: TStringField;
    tblParametrosTELEFONE: TStringField;
    tblParametrosEMAIL: TStringField;
    tblParametrosUNIDADE: TStringField;
    tblParametrosCONTATO: TStringField;
    tblParametrosEMAIL_CONTATO: TStringField;
    tblParametrosCARGO_CONTATO: TStringField;
    tblParametrosTEL_CONTATO: TStringField;
    tblParametrosSALDO: TStringField;
    tblParametrosPOTENCIAL: TStringField;
    tblParametrosSEGMENTO: TStringField;
    tblParametrosIMP_POR_CPFNCPJ_CLIENTE: TStringField;
    tblParametrosIMPORTAR_CLIENTES: TStringField;
    tblParametrosIMPORTAR_COMPRAS: TStringField;
    tblParametrosIMPORTAR_CLIENTE_EXISTENTE: TStringField;
    dsParametros: TDataSource;
    dsCompra: TDataSource;
    qrCompra: TADOQuery;
    qrComprasItens: TADOQuery;
    dsComprasItens: TDataSource;
    dsConfig: TDataSource;
    cdsConfig: TClientDataSet;
    cdsConfigSTRINGCONEXAO: TStringField;
    cdsConfigQUEBRAR_ARQUIVO: TStringField;
    cdsConfigCLIENTE_SQL: TMemoField;
    cdsConfigCOMPRA_SQL: TMemoField;
    cdsConfigCOMPRA_IT_SQL: TMemoField;
    cdsConfigATUALIZACAO_HORA: TTimeField;
    cdsConfigATUALIZACAO_TODODIA: TStringField;
    cdsConfigDESLIGA_COMPUTADOR: TStringField;
    cdsConfigATUALIZACAO_DATAULTCOMPRA: TStringField;
    cdsConfigVALIDA_CNPJ: TStringField;
    cdsConfigVALIDA_ERP: TStringField;
    cdsConfigLIMPA_COMPRAS: TStringField;
    cdsConfigIMPORTAR_CLIENTES: TStringField;
    cdsConfigIMPORTAR_COMPRAS: TStringField;
    cdsConfigIMPORTAR_CLIENTE_EXISTENTE: TStringField;
    pgc: TPageControl;
    tsImportacao: TTabSheet;
    tsLog: TTabSheet;
    log: TMemo;
    tsParametros: TTabSheet;
    grpCampos: TGroupBox;
    chkRAZAO: TDBCheckBox;
    chkFantasia: TDBCheckBox;
    chkRAZAO2: TDBCheckBox;
    chkRAZAO3: TDBCheckBox;
    chkRAZAO4: TDBCheckBox;
    chkRAZAO5: TDBCheckBox;
    chkRAZAO6: TDBCheckBox;
    chkRAZAO7: TDBCheckBox;
    chkRAZAO8: TDBCheckBox;
    chkRAZAO9: TDBCheckBox;
    chkRAZAO10: TDBCheckBox;
    chkRAZAO11: TDBCheckBox;
    chkRAZAO12: TDBCheckBox;
    chkRAZAO13: TDBCheckBox;
    chkRAZAO14: TDBCheckBox;
    chkRAZAO15: TDBCheckBox;
    chkRAZAO16: TDBCheckBox;
    chkRAZAO17: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    chkIncluiClienteCampanha: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    cds_ImportaCIGAM: TClientDataSet;
    dscds_ImportaCIGAM: TDataSource;
    xmltp_ImportaCIGAM: TXMLTransformProvider;
    cds_ImportaCIGAMcodigoEmpresa: TStringField;
    cds_ImportaCIGAMnomeCompleto: TStringField;
    cds_ImportaCIGAMcontato: TStringField;
    cds_ImportaCIGAMfone: TStringField;
    cds_ImportaCIGAMfaxFone: TStringField;
    cds_ImportaCIGAMendereco: TStringField;
    cds_ImportaCIGAMbairro: TStringField;
    cds_ImportaCIGAMmunicipio: TStringField;
    cds_ImportaCIGAMuf: TStringField;
    cds_ImportaCIGAMcep: TStringField;
    cds_ImportaCIGAMcnpjCpf: TStringField;
    cds_ImportaCIGAMinscrito: TStringField;
    cds_ImportaCIGAMinscricao: TStringField;
    cds_ImportaCIGAMconceito: TStringField;
    cds_ImportaCIGAMcodigoDivisao: TStringField;
    cds_ImportaCIGAMdataNascimento: TStringField;
    cds_ImportaCIGAMultimoMovimento: TStringField;
    cds_ImportaCIGAMcadastro: TStringField;
    cds_ImportaCIGAMcodigoIndicacao: TStringField;
    cds_ImportaCIGAMcodigoRepresentante: TStringField;
    cds_ImportaCIGAMpercentualComissaoBaixa: TStringField;
    cds_ImportaCIGAMcontabilCliente: TStringField;
    cds_ImportaCIGAMcodigoResponsavel: TStringField;
    cds_ImportaCIGAMfantasia: TStringField;
    cds_ImportaCIGAMpessoa: TStringField;
    cds_ImportaCIGAMcodigoContabilFornecedor: TStringField;
    cds_ImportaCIGAMcodigoCondicaoPagamento: TStringField;
    cds_ImportaCIGAMcodigoTipoPagamento: TStringField;
    cds_ImportaCIGAMcodigoTipoOperacao: TStringField;
    cds_ImportaCIGAMirrfAcumulado: TStringField;
    cds_ImportaCIGAMtipoEmpresa: TStringField;
    cds_ImportaCIGAMatividade: TStringField;
    cds_ImportaCIGAMfuncionarios: TStringField;
    cds_ImportaCIGAMfaturamento: TStringField;
    cds_ImportaCIGAMlimiteCredito: TStringField;
    cds_ImportaCIGAMcodigoMercado: TStringField;
    cds_ImportaCIGAMcodigoUsuarioModificacao: TStringField;
    cds_ImportaCIGAMenviarCarta: TStringField;
    cds_ImportaCIGAMtabelaPrecos: TStringField;
    cds_ImportaCIGAMagendaInterna: TStringField;
    cds_ImportaCIGAMcodigoPais: TStringField;
    cds_ImportaCIGAMcodigoCentralizadora: TStringField;
    cds_ImportaCIGAMatrasoMedio: TStringField;
    cds_ImportaCIGAMnumero: TStringField;
    cds_ImportaCIGAMcomplemento: TStringField;
    cds_ImportaCIGAMinscricaoMunicipal: TStringField;
    cds_ImportaCIGAMsuframa: TStringField;
    cds_ImportaCIGAMtipoFrete: TStringField;
    cds_ImportaCIGAMpercentualIndenizacao: TStringField;
    cds_ImportaCIGAMpercDescontoSugestaoItens: TStringField;
    cds_ImportaCIGAMpercentualDesconto2: TStringField;
    cds_ImportaCIGAMjurosPadrao: TStringField;
    cds_ImportaCIGAMultimaAtualizacao: TStringField;
    cds_ImportaCIGAMcodigoUnidadeNegocio: TStringField;
    cds_ImportaCIGAMportadorPadrao: TStringField;
    cds_ImportaCIGAMativo: TStringField;
    cds_ImportaCIGAMsessao: TStringField;
    cds_ImportaCIGAMcodigoContabilAdiantamentoCli: TStringField;
    cds_ImportaCIGAMcodigoContabilAdiantamentoForn: TStringField;
    cds_ImportaCIGAMcodigoCentroArmazenagem: TStringField;
    cds_ImportaCIGAMcodigoIndiceCredito: TStringField;
    cds_ImportaCIGAMcodigoUsuarioCriacao: TStringField;
    cds_ImportaCIGAMdataModificacao: TStringField;
    cds_ImportaCIGAMcodigoRegiaoEntrega: TStringField;
    cds_ImportaCIGAMdataValidadeCredito: TStringField;
    cds_ImportaCIGAMCd_setor: TStringField;
    cds_ImportaCIGAMcodigoRegimeTriburario: TStringField;
    cds_ImportaCIGAMultimaConsultaCredito: TStringField;
    cds_ImportaCIGAMvalidadeCobrancaAdmin: TStringField;
    cds_ImportaCIGAMultimaVenda: TStringField;
    cds_ImportaCIGAMprefixoCnae: TStringField;
    cds_ImportaCIGAMbasePrazoDiferenciado: TStringField;
    cds_ImportaCIGAMpossuiRetencaoIss: TStringField;
    cds_ImportaCIGAMcodigoCentroArmazenagemMatAlte: TStringField;
    cds_ImportaCIGAMfiltroDataDirf: TStringField;
    cds_ImportaCIGAMtipoImovel: TStringField;
    cds_ImportaCIGAMlistarIss: TStringField;
    cds_ImportaCIGAMdiaVencimento: TStringField;
    cds_ImportaCIGAMlimiteFaturamento: TStringField;
    cds_ImportaCIGAMgrauRelacionamento: TStringField;
    cds_ImportaCIGAMsufixoCnae: TStringField;
    cds_ImportaCIGAMtoleranciaVencimento: TStringField;
    cds_ImportaCIGAMnivelCredito: TStringField;
    cds_ImportaCIGAMlistarDirf: TStringField;
    cds_ImportaCIGAMconveniada: TStringField;
    cds_ImportaCIGAMcreditoLiberado: TStringField;
    cds_ImportaCIGAMpercentualFrete: TStringField;
    cds_ImportaCIGAMcodigoEan: TStringField;
    cds_ImportaCIGAMpercentualAcrescimoLimite: TStringField;
    cds_ImportaCIGAMpercentualAcrescimoPreco: TStringField;
    cds_ImportaCIGAMutilizaPrazoDiferenciado: TStringField;
    cds_ImportaCIGAMtgPadraoNfs: TStringField;
    cds_ImportaCIGAMlimiteCreditoMensal: TStringField;
    cds_ImportaCIGAMoptanteSimples: TStringField;
    cds_ImportaCIGAMUsrempr1: TStringField;
    cds_ImportaCIGAMUsrempr2: TStringField;
    cds_ImportaCIGAMcnaeServico: TStringField;
    cds_ImportaCIGAMUsrempr4: TStringField;
    cds_ImportaCIGAMvalorFrete: TStringField;
    grp6: TGroupBox;
    lbAtualizacaoHora: TLabel;
    lbAtualizacaoDia: TLabel;
    lbDataUltCOmpra: TLabel;
    edAtualizacaoHora: TDBEdit;
    cbAtualizacaoDia: TComboBox;
    dbchkDesligaComputador: TDBCheckBox;
    chkValidaCNPJ: TDBCheckBox;
    chkValidaERP: TDBCheckBox;
    cbDataUltCOmpra: TComboBox;
    chkLimpaBanco: TDBCheckBox;
    cds_NF: TClientDataSet;
    dscds_NF: TDataSource;
    Label17: TLabel;
    xmltp_NF: TXMLTransformProvider;
    cds_NF_Itens: TClientDataSet;
    dscds_NF_Itens: TDataSource;
    cds_MAT: TClientDataSet;
    dscds_MAT: TDataSource;
    xmltp_MAT: TXMLTransformProvider;
    cds_MATcodigoMaterial: TStringField;
    cds_MATcodigoGrupo: TStringField;
    cds_MATcodigoSubGrupo: TStringField;
    cds_MATcentroControle: TStringField;
    cds_MATdescricao: TStringField;
    cds_MATcodigoUnidadeMedida: TStringField;
    cds_MATquantidadeRelacaoPaiFilho: TStringField;
    cds_MATpercentualPis: TStringField;
    cds_MATpercentualCofins: TStringField;
    cds_MATpercentualPisRetencao: TStringField;
    cds_MATpercentualCofinsRetencao: TStringField;
    cds_MATquantidadeRefComposicaoGeral: TStringField;
    cds_MATprecoCusto: TStringField;
    cds_MATrevisaoEngenharia: TStringField;
    cds_MATpercentualCsll: TStringField;
    cds_MATpercentualIcmsSinief: TStringField;
    cds_MATcodigoContaGerencial: TStringField;
    cds_MATpeso: TStringField;
    cds_MATpercentualMedioIcms: TStringField;
    cds_MATpercentualIrrf: TStringField;
    cds_MATpercentualIpi: TStringField;
    cds_MATpercentualFrete: TStringField;
    cds_MATpercentualEmbalagem: TStringField;
    cds_MATpercentualComissao: TStringField;
    cds_MATpercentualReajuste: TStringField;
    cds_MATcodigoFiscal: TStringField;
    cds_MATdataUltimaRevisao: TStringField;
    cds_MATdataReajuste: TStringField;
    cds_MATcodigoFabricante: TStringField;
    cds_MATcodigoFabrica: TStringField;
    cds_MATreferencia: TStringField;
    cds_MATcodigoReduzido: TStringField;
    cds_MATprecoStPisCofins: TStringField;
    cds_MATconversorCompra: TStringField;
    cds_MATencargosFinanceiros: TStringField;
    cds_MATvalorFrete: TStringField;
    cds_MATaplicacao: TStringField;
    cds_MATcodigoEspecif1: TStringField;
    cds_MATcodigoEspecif2: TStringField;
    cds_MATcodigoEspecif3: TStringField;
    cds_MATcodigoEspecif4: TStringField;
    cds_MATcodigoEspecif5: TStringField;
    cds_MATcodigoEspecif6: TStringField;
    cds_MATpercentualRoyaltie: TStringField;
    cds_MATpercentualImpostoImportacao: TStringField;
    cds_MATdataCadastro: TStringField;
    cds_MATgarantiaCompra: TStringField;
    cds_MATgarantiaVenda: TStringField;
    cds_MATregraCusteio: TStringField;
    cds_MATregraIpi: TStringField;
    cds_MATsufixoContabil: TStringField;
    cds_MATcodigoContabil: TStringField;
    cds_MATlocalizacao: TStringField;
    cds_MATtipo: TStringField;
    cds_MATvolume: TStringField;
    cds_MATorigemMercadoria: TStringField;
    cds_MATcontabilPrincipalInvSped: TStringField;
    cds_MATprecoPauta: TStringField;
    cds_MATpercIcmsPisCofisImportacao: TStringField;
    cds_MATconversorVenda: TStringField;
    cds_MATcodigoUnidadeCompra: TStringField;
    cds_MATcodigoUnidadeVenda: TStringField;
    cds_MATpesoEmbalagem: TStringField;
    cds_MATpercentualInss: TStringField;
    cds_MATvalorIpi: TStringField;
    cds_MATcodigoUnidadeNegocio: TStringField;
    cds_MATsessao: TStringField;
    cds_MATcodigoUsuarioModificacao: TStringField;
    cds_MATcodigoUsuarioCriacao: TStringField;
    cds_MATdataModificacao: TStringField;
    cds_MATdataLiberaColecao: TStringField;
    cds_MATdataLiberaEsqueleto: TStringField;
    cds_MATconfiguracaoReposicao: TStringField;
    cds_MATconfiguracao: TStringField;
    cds_MATcodigoCentroArmazenagemPadrao: TStringField;
    cds_MATtabPrecosEstruturaComercial: TStringField;
    cds_MATutilizaGrade: TStringField;
    cds_MATtipoFormacaoPrecos: TStringField;
    cds_MATclassificacaoAbc: TStringField;
    cds_MATqualidadeProduto: TStringField;
    cds_MATmanterPedidoNf: TStringField;
    cds_MATzerarSaldo: TStringField;
    cds_MATcodigoTributario: TStringField;
    cds_MATusuarioUltRevisaoEngenharia: TStringField;
    cds_MATtipoBaixaOp: TStringField;
    cds_MATestruturaComercial: TStringField;
    cds_MATcontrolaNumeroSerie: TStringField;
    cds_MATcriarProdutoClienteNaVenda: TStringField;
    cds_MATordemExibicao: TStringField;
    cds_MATquestionarioAfericaoGa: TStringField;
    cds_MATusrmate1: TStringField;
    cds_MATusrmate2: TStringField;
    cds_MATusrmate3: TStringField;
    cds_MATusrmate4: TStringField;
    cds_MATusrmate5: TStringField;
    cds_MATexisteImagem: TStringField;
    cds_MATexisteDocumento: TStringField;
    cds_MAT_ESPECIF1: TClientDataSet;
    dscds_MAT_ESPECIF1: TDataSource;
    xmltp_MAT_ESPECIF1: TXMLTransformProvider;
    cds_MAT_ESPECIF1codigoEspecif1: TStringField;
    cds_MAT_ESPECIF1codigoGrupo: TStringField;
    cds_MAT_ESPECIF1codigoSubGrupo: TStringField;
    cds_MAT_ESPECIF1descricao: TStringField;
    cds_MAT_ESPECIF1formaCodigo: TStringField;
    cds_MAT_ESPECIF1formaDescricao: TStringField;
    cds_MAT_ESPECIF1indenpendente: TStringField;
    cds_MAT_ESPECIF1controlaEstoque: TStringField;
    cds_MAT_ESPECIF1codigoUsuarioModificacao: TStringField;
    cds_MAT_ESPECIF1codigoUsuarioCriacao: TStringField;
    cds_MAT_ESPECIF1dataModificacao: TStringField;
    cds_MAT_ESPECIF1mascara: TStringField;
    cds_MAT_ESPECIF1codigoSubGrupoFiltro: TStringField;
    cds_MAT_ESPECIF1usresp11: TStringField;
    cds_MAT_ESPECIF1usresp12: TStringField;
    cds_MAT_ESPECIF1usresp13: TStringField;
    dscds_MATRIZ: TDataSource;
    dscds_FILIAIS: TDataSource;
    cds_MATRIZ: TClientDataSet;
    cds_MATRIZID_CENTRALIZADORA: TStringField;
    cds_MATRIZID_CLIENTE: TStringField;
    cds_MATRIZDATA_ULTIMA_COMPRA: TDateField;
    cds_FILIAIS: TClientDataSet;
    cds_FILIAISID_CLIENTE: TStringField;
    cds_FILIAISID_CENTRALIZADORA: TStringField;
    qry_BuscaCompra: TADOQuery;
    dsqry_BuscaCompra: TDataSource;
    rg_Tipo_Servidor: TRadioGroup;
    grdClientes: TDBGrid;
    Panel1: TPanel;
    gbx_Par_Consulta: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    JvBevel1: TJvBevel;
    JvBevel2: TJvBevel;
    Label5: TLabel;
    Label6: TLabel;
    JvBevel3: TJvBevel;
    Label7: TLabel;
    jvdted_Data_Inicial_Pesq: TJvDatePickerEdit;
    jvdted_Data_Final_Pesq: TJvDatePickerEdit;
    msked_Codigo_Inicial: TMaskEdit;
    msked_Codigo_Final: TMaskEdit;
    jved_Divisao_Inicial: TJvEdit;
    jved_Divisao_Final: TJvEdit;
    jvEd_PIN: TJvEdit;
    Label9: TLabel;
    Label10: TLabel;
    jvdted_Data_NF_Inicial_Pesq: TJvDatePickerEdit;
    jvdted_Data_NF_Final_Pesq: TJvDatePickerEdit;
    JvBevel4: TJvBevel;
    pnl2: TPanel;
    lb1: TLabel;
    lbClienteTotal: TLabel;
    lb2: TLabel;
    lbTotalClientes: TLabel;
    lb_Processo: TLabel;
    btnImportar: TBitBtn;
    btnTrayIcon: TBitBtn;
    btn_Carrega_XML: TBitBtn;
    Panel2: TPanel;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    cds_NFunidadeNegocio: TStringField;
    cds_NFnf: TStringField;
    cds_NFserie: TStringField;
    cds_NFtipoOperacao: TStringField;
    cds_NFCFOP: TStringField;
    cds_NFdataEmissao: TStringField;
    cds_NFviaTransporte: TStringField;
    cds_NFdocumentoFiscal: TStringField;
    cds_NFcliente: TStringField;
    cds_NFcobranca: TStringField;
    cds_NFrepresentante: TStringField;
    cds_NFbaseICMS: TStringField;
    cds_NFvalorICMS: TStringField;
    cds_NFbaseIPI: TStringField;
    cds_NFvalorIPI: TStringField;
    cds_NFincidenciaPIS: TStringField;
    cds_NFincidenciaCOFINS: TStringField;
    cds_NFtotalMercadorias: TStringField;
    cds_NFtotalNF: TStringField;
    cds_NFtransportadora: TStringField;
    cds_NFconsignatario: TStringField;
    cds_NFmarca: TStringField;
    cds_NFvolume: TStringField;
    cds_NFquantidade: TStringField;
    cds_NFespecie: TStringField;
    cds_NFpesoLiquido: TStringField;
    cds_NFpesoBruto: TStringField;
    cds_NFconta: TStringField;
    cds_NFportador: TStringField;
    cds_NFfatura: TStringField;
    cds_NFcobrarPauta: TStringField;
    cds_NFremessa: TStringField;
    cds_NFpedido: TStringField;
    cds_NFdataSaida: TStringField;
    cds_NFhoraSaida: TStringField;
    cds_NFgerouLancamentos: TStringField;
    cds_NFitemsNaNota: TStringField;
    cds_NFtipoFrete: TStringField;
    cds_NFuf: TStringField;
    cds_NFpercentualComissao: TStringField;
    cds_NFplaca: TStringField;
    cds_NFespecieNota: TStringField;
    cds_NFincidenciaISS: TStringField;
    cds_NFateNota: TStringField;
    cds_NFtotalFaturado: TStringField;
    cds_NFsubstitutoTributario: TStringField;
    cds_NFnotaReferencia: TStringField;
    cds_NFbaseSubstituicaoTributaria: TStringField;
    cds_NFvalorSubstituicaoTributaria: TStringField;
    cds_NFcondicaoPagamento: TStringField;
    cds_NFcomplementoFatura: TStringField;
    cds_NFcontabilizado: TStringField;
    cds_NFfaturaAglutinada: TStringField;
    cds_NFgerouINSS: TStringField;
    cds_NFserieReferencia: TStringField;
    cds_NFcodigoMunicipio: TStringField;
    cds_NFquantidadeTotal: TStringField;
    cds_NFimpressa: TStringField;
    cds_NFdeclaracaoImportacao: TStringField;
    cds_NFindiceIndexador: TStringField;
    cds_NFbaseIRRF: TStringField;
    cds_NFmodeloCupom: TStringField;
    cds_NFnumeroControleFormulario: TStringField;
    cds_NFromaneio: TStringField;
    cds_NFufPlacaTransportador: TStringField;
    cds_NFcodigoCancelamento: TStringField;
    cds_NFcodigoDevolucao: TStringField;
    cds_NFordemCompra: TStringField;
    cds_NFprojeto: TStringField;
    cds_NFmodeloFormulario: TStringField;
    cds_NFordemDeCompraGerada: TStringField;
    cds_NFtotalItensServico: TStringField;
    cds_NFusrnota1: TStringField;
    cds_NFchaveNFe: TStringField;
    cds_NFnumeroProtocolo: TStringField;
    cds_NFnumeroLote: TStringField;
    cds_NFgerouPedidoConsignacao: TStringField;
    cds_NFincluiSubstituicaoTributaria: TStringField;
    cds_NFlistarLivros: TStringField;
    cds_NFtipoNota: TStringField;
    cds_NFclassificacaoDocumento: TStringField;
    cds_NFmercado: TStringField;
    cds_NFgrade: TStringField;
    cds_NFincidenciaContribSocial: TStringField;
    cds_NFfolhaLivroSaida: TStringField;
    cds_NFtgConversaoUnidades: TStringField;
    cds_NFfornecedor: TStringField;
    cds_NFvolumeAtualizado: TStringField;
    cds_NFordemEnderecoCobranca: TStringField;
    cds_NFordemEnderecoEntrega: TStringField;
    cds_NFforma: TStringField;
    cds_NFtipoFreteConsignatario: TStringField;
    cds_NFconferido: TStringField;
    cds_NFnumeroLivroSaida: TStringField;
    cds_NFusuarioAutorizado: TStringField;
    cds_NFentregMercAposFatur: TStringField;
    cds_NFstatus: TStringField;
    cds_NFitemNf: TDataSetField;
    cds_NFparcelaNf: TDataSetField;
    cds_NF_Parc: TClientDataSet;
    cds_NF_Parcvencimento: TStringField;
    cds_NF_ParcvalorParcela: TStringField;
    cds_NF_ParcnossoNumero: TStringField;
    cds_NF_ParccodigoCaixa: TStringField;
    cds_NF_ParcturnoSequencial: TStringField;
    cds_NF_ParcsessaoCaixa: TStringField;
    cds_NF_Itensmovimento: TStringField;
    cds_NF_ItenstipoOperacao1: TStringField;
    cds_NF_ItensdataMovimento: TStringField;
    cds_NF_ItenscodigoMaterial: TStringField;
    cds_NF_Itensespecif1: TStringField;
    cds_NF_Itensespecif2: TStringField;
    cds_NF_ItenscentroArmazenagem: TStringField;
    cds_NF_Itensgrade1: TStringField;
    cds_NF_Itensquantidade1: TStringField;
    cds_NF_ItensprecoUnitario: TStringField;
    cds_NF_Itensdescricao: TStringField;
    cds_NF_Itensdocumento: TStringField;
    cds_NF_Itensempresa: TStringField;
    cds_NF_ItenscontaGerencial: TStringField;
    cds_NF_ItenstipoDocumento: TStringField;
    cds_NF_ItenstabelaPreco: TStringField;
    cds_NF_ItensincidenciaISS1: TStringField;
    cds_NF_ItenstipoNota1: TStringField;
    cds_NF_ItensbaseICMS1: TStringField;
    cds_NF_ItensbaseIPI1: TStringField;
    cds_NF_Itensserie1: TStringField;
    cds_NF_ItensunidadeNegocio: TStringField;
    cds_NF_Itensnf: TStringField;
    cds_NF_Itensserie2: TStringField;
    cds_NF_ItenstipoOperacao2: TStringField;
    cds_NF_ItensCFOP1: TStringField;
    cds_NF_ItensdataEmissao: TStringField;
    cds_NF_ItensviaTransporte: TStringField;
    cds_NF_ItensdocumentoFiscal: TStringField;
    cds_NF_Itenscliente: TStringField;
    cds_NF_Itenscobranca: TStringField;
    cds_NF_Itensrepresentante1: TStringField;
    cds_NF_ItensbaseICMS2: TStringField;
    cds_NF_ItensvalorICMS1: TStringField;
    cds_NF_ItensbaseIPI2: TStringField;
    cds_NF_ItensvalorIPI1: TStringField;
    cds_NF_ItensincidenciaPIS1: TStringField;
    cds_NF_ItensincidenciaCOFINS1: TStringField;
    cds_NF_ItenstotalMercadorias: TStringField;
    cds_NF_ItenstotalNF: TStringField;
    cds_NF_Itenstransportadora: TStringField;
    cds_NF_Itensconsignatario: TStringField;
    cds_NF_Itensmarca: TStringField;
    cds_NF_Itensvolume: TStringField;
    cds_NF_Itensquantidade2: TStringField;
    cds_NF_Itensespecie: TStringField;
    cds_NF_ItenspesoLiquido: TStringField;
    cds_NF_ItenspesoBruto: TStringField;
    cds_NF_Itensconta: TStringField;
    cds_NF_Itensportador: TStringField;
    cds_NF_Itensfatura: TStringField;
    cds_NF_ItenscobrarPauta: TStringField;
    cds_NF_Itensremessa: TStringField;
    cds_NF_Itenspedido: TStringField;
    cds_NF_ItensdataSaida: TStringField;
    cds_NF_ItenshoraSaida: TStringField;
    cds_NF_ItensgerouLancamentos: TStringField;
    cds_NF_ItensitemsNaNota: TStringField;
    cds_NF_ItenstipoFrete: TStringField;
    cds_NF_Itensuf: TStringField;
    cds_NF_ItenspercentualComissao1: TStringField;
    cds_NF_Itensplaca: TStringField;
    cds_NF_ItensespecieNota: TStringField;
    cds_NF_ItensincidenciaISS2: TStringField;
    cds_NF_ItensateNota: TStringField;
    cds_NF_ItenstotalFaturado: TStringField;
    cds_NF_ItenssubstitutoTributario: TStringField;
    cds_NF_ItensnotaReferencia: TStringField;
    cds_NF_ItensbaseSubstituicaoTributaria: TStringField;
    cds_NF_ItensvalorSubstituicaoTributaria: TStringField;
    cds_NF_ItenscondicaoPagamento: TStringField;
    cds_NF_ItenscomplementoFatura: TStringField;
    cds_NF_Itenscontabilizado: TStringField;
    cds_NF_ItensfaturaAglutinada: TStringField;
    cds_NF_ItensgerouINSS: TStringField;
    cds_NF_ItensserieReferencia: TStringField;
    cds_NF_ItenscodigoMunicipio: TStringField;
    cds_NF_ItensquantidadeTotal: TStringField;
    cds_NF_Itensimpressa: TStringField;
    cds_NF_ItensdeclaracaoImportacao: TStringField;
    cds_NF_ItensindiceIndexador: TStringField;
    cds_NF_ItensbaseIRRF1: TStringField;
    cds_NF_ItensmodeloCupom: TStringField;
    cds_NF_ItensnumeroControleFormulario: TStringField;
    cds_NF_Itensromaneio: TStringField;
    cds_NF_ItensufPlacaTransportador: TStringField;
    cds_NF_ItenscodigoCancelamento: TStringField;
    cds_NF_ItenscodigoDevolucao: TStringField;
    cds_NF_ItensordemCompra: TStringField;
    cds_NF_Itensprojeto: TStringField;
    cds_NF_ItensmodeloFormulario: TStringField;
    cds_NF_ItensordemDeCompraGerada: TStringField;
    cds_NF_ItenstotalItensServico: TStringField;
    cds_NF_Itensusrnota1: TStringField;
    cds_NF_ItenschaveNFe: TStringField;
    cds_NF_ItensnumeroProtocolo: TStringField;
    cds_NF_ItensnumeroLote: TStringField;
    cds_NF_ItensgerouPedidoConsignacao: TStringField;
    cds_NF_ItensincluiSubstituicaoTributaria: TStringField;
    cds_NF_ItenslistarLivros: TStringField;
    cds_NF_ItenstipoNota2: TStringField;
    cds_NF_ItensclassificacaoDocumento: TStringField;
    cds_NF_Itensmercado: TStringField;
    cds_NF_Itensgrade2: TStringField;
    cds_NF_ItensincidenciaContribSocial1: TStringField;
    cds_NF_ItensfolhaLivroSaida: TStringField;
    cds_NF_ItenstgConversaoUnidades: TStringField;
    cds_NF_Itensfornecedor: TStringField;
    cds_NF_ItensvolumeAtualizado: TStringField;
    cds_NF_ItensordemEnderecoCobranca: TStringField;
    cds_NF_ItensordemEnderecoEntrega: TStringField;
    cds_NF_Itensforma: TStringField;
    cds_NF_ItenstipoFreteConsignatario: TStringField;
    cds_NF_Itensconferido: TStringField;
    cds_NF_ItensnumeroLivroSaida: TStringField;
    cds_NF_ItensusuarioAutorizado: TStringField;
    cds_NF_ItensentregMercAposFatur: TStringField;
    cds_NF_Itensstatus: TStringField;
    cds_NF_ItensCFOP2: TStringField;
    cds_NF_ItenspercentualICMS: TStringField;
    cds_NF_ItensbasePIS: TStringField;
    cds_NF_ItensvalorPIS: TStringField;
    cds_NF_ItensbaseCOFINS: TStringField;
    cds_NF_ItensvalorCOFINS: TStringField;
    cds_NF_ItenscodigoTipoDocumento: TStringField;
    cds_NF_ItensretencaoInformada: TStringField;
    cds_NF_ItenscomplementoIncidIPI: TStringField;
    cds_NF_ItensICMSPresumido: TStringField;
    cds_NF_ItensCSTPIS: TStringField;
    cds_NF_ItensCSTCOFINS: TStringField;
    cds_NF_ItenscodBaseCreditoPisCofinsEntrad: TStringField;
    cds_NF_ItenssequenciaNota: TStringField;
    cds_NF_ItensvalorContabil: TStringField;
    cds_NF_ItensincidenciaIPI: TStringField;
    cds_NF_ItensincidenciaICMS: TStringField;
    cds_NF_ItensincidenciaPIS2: TStringField;
    cds_NF_ItensincidenciaCOFINS2: TStringField;
    cds_NF_ItensincidenciaICMSEntrada: TStringField;
    cds_NF_ItenscomplementoIncidenciaICMS: TStringField;
    cds_NF_ItensincidenciaContribSocial2: TStringField;
    cds_NF_ItenspercentualIPI: TStringField;
    cds_NF_ItenspercentualDesconto: TStringField;
    cds_NF_ItensvalorICMS2: TStringField;
    cds_NF_ItensvalorIPI2: TStringField;
    cds_NF_ItenspercentualComissao2: TStringField;
    cds_NF_ItensbaseSubstituicao: TStringField;
    cds_NF_ItenspercentualSubstituicao: TStringField;
    cds_NF_ItenspercentualPIS: TStringField;
    cds_NF_ItenspercentualICMSSubstituicao: TStringField;
    cds_NF_ItenspercentualCOFINS: TStringField;
    cds_NF_ItenstransfCentroArmaz: TStringField;
    cds_NF_Itensestorno: TStringField;
    cds_NF_ItenspedidoOc: TStringField;
    cds_NF_Itensindice: TStringField;
    cds_NF_Itensordenacao: TStringField;
    cds_NF_ItenstransfUnNegocio: TStringField;
    cds_NF_Itenscontrato: TStringField;
    cds_NF_Itenscontabil: TStringField;
    cds_NF_ItenscodigoRetorno: TStringField;
    cds_NF_Itenscontabilidade: TStringField;
    cds_NF_ItensexcecaoNCM: TStringField;
    cds_NF_ItensetiquetaHex: TStringField;
    cds_NF_Itensinspecao: TStringField;
    cds_NF_ItensclassePedidoExclusivo4: TStringField;
    cds_NF_ItenssaidaSemSaldo: TStringField;
    cds_NF_Itensusrmovi2: TStringField;
    cds_NF_ItensvalorSubstituicao: TStringField;
    cds_NF_ItensprecoTotalCusto: TStringField;
    cds_NF_ItenssequenciaDia: TStringField;
    cds_NF_ItenssequenciaPedidoOC: TStringField;
    cds_NF_ItenssequenciaDiaPedidoOC: TStringField;
    cds_NF_ItensbaseICMSComIPI: TStringField;
    cds_NF_ItensclienteFornecedor: TStringField;
    cds_NF_ItensespecieNF: TStringField;
    cds_NF_ItenssequenciaNF: TStringField;
    cds_NF_Itensrepresentante2: TStringField;
    cds_NF_ItensvalorBaseComissao: TStringField;
    cds_NF_ItenspercentualComissao3: TStringField;
    cds_NF_ItenstipoBaseComissao: TStringField;
    cds_NF_ItenspercComissaoOrigRepresentante: TStringField;
    cds_NF_Itensorigem: TStringField;
    cds_NF_ItensbaseIRRF2: TStringField;
    cds_NF_ItensbaseINSS: TStringField;
    cds_NF_ItensparcelaNf: TDataSetField;
    qrUpdateClienteCOD_ERP: TStringField;
    qrUpdateClienteRAZAO: TStringField;
    qrUpdateClienteFANTASIA: TStringField;
    qrUpdateClienteCPF_CNPJ: TStringField;
    qrUpdateClienteEND_RUA: TStringField;
    qrUpdateClienteCIDADE: TStringField;
    qrUpdateClienteBAIRRO: TStringField;
    qrUpdateClienteESTADO: TStringField;
    qrUpdateClienteCEP: TStringField;
    qrUpdateClienteAREA1: TIntegerField;
    qrUpdateClienteFONE1: TStringField;
    qrUpdateClienteEMAIL: TStringField;
    qrUpdateClienteOPERADOR: TIntegerField;
    qrUpdateClienteCOD_UNIDADE: TIntegerField;
    qrUpdateClienteSALDO_DISPONIVEL: TFloatField;
    qrUpdateClientePOTENCIAL: TFloatField;
    qrUpdateClienteDATA_ULT_COMPRA: TDateField;
    qrUpdateClienteSEGMENTO: TIntegerField;
    qrUpdateClienteIE_RG: TStringField;
    qrUpdateClienteCODIGO: TAutoIncField;
    HTTPRIO1: THTTPRIO;
    HTTPRIO2: THTTPRIO;
    HTTPRIO3: THTTPRIO;
    HTTPRIO4: THTTPRIO;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btn_Carrega_XMLClick(Sender: TObject);
    procedure btnImportarClick(Sender: TObject);
    procedure btnTrayIconClick(Sender: TObject);
    procedure pgcChange(Sender: TObject);
    procedure bbtn_Importa_MatrizClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure rg_Tipo_ServidorClick(Sender: TObject);
    procedure cbAtualizacaoDiaChange(Sender: TObject);
    procedure cbDataUltCOmpraChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure HTTPRIO1BeforeExecute(const MethodName: String;
      var SOAPRequest: WideString);
    procedure HTTPRIO2BeforeExecute(const MethodName: String;
      var SOAPRequest: WideString);
    procedure HTTPRIO3BeforeExecute(const MethodName: String;
      var SOAPRequest: WideString);
  private
    { Private declarations }

    dtData_Compras: TDateTime;

    bolCarga_Inicial: Boolean;

    intID_TIPO_NF: SmallInt;

    pArquivoConexao, pCaminhoPrograma, pATUALIZACAO_HORA, pATUALIZACAO_TODODIA, pDESLIGA_COMPUTADOR: string;

    function conectar(StringConexao: string): Boolean;
    function insertOrUpdateCliente(COD_ERP, RAZAO, FANTASIA, CPF_CNPJ, END_RUA, CIDADE, BAIRRO, ESTADO, CEP, FONE1, EMAIL, OPERADOR,
      COD_UNIDADE, SALDO_DISPONIVEL, POTENCIAL, DATA_ULT_COMPRA, SEGMENTO, IE_RG: string): string;
    function existeCliente(CLIENTE, CPF_CNPJ: string): Boolean;
    function retornaCampo(campo: string): string;
    function CalculaCnpjCpf(Numero: string): Boolean;
    function RetornaUnidade(Valor: string): string;
    function RetornaSegmento(Valor: string): string;
    function RetornaOperador(Valor: string): string;
    function insertCompra(CLIENTE, Data, Valor, DESCRICAO, FORMA_PGTO: string): string;
    procedure insertCompraItem(NOTA, CODPROD, DESCRICAO, Qtd, UN_MEDIDA, VALOR_UN, DESCONTO: string);
    procedure atualizaParametros;
    function retornaSoNumero(Valor: string): string;
    procedure AlteraDataUltimaCompra;
    procedure showMessageDesenv(texto: string);
    procedure organizaCampanhas;
    procedure insereListaFones;
    procedure limpaComprasItensCompras;
      // procedure RepoeLigacoesFidelizadas;
    function refidelizaCotados: Boolean;
    procedure organizaAtualizacao;
    function GetFileVersion(const FileName: string): string;
    function vazio(texto: string): Boolean;
    procedure AtualizaDataCompra;
    function ExecSql(xsql: string; Tipo: Integer = 0): TADOQuery;
    function BuscarCondPagamento(pin, valor: WideString): string;
    procedure GetXmlEnvio(MethodName: String; SOAPRequest: WideString);
  public
    { Public declarations }

    sintTotal_Parametros: SmallInt;

    intTotal_Registros: Integer;

//------------------------------------------------------------------------------

    dtxs_DataInicial,
      dtxs_DataFinal: TXSDateTime;

    dtxs_DataInicialNF,
      dtxs_DataFinalNF: TXSDateTime;

//------------------------------------------------------------------------------

    aNF, aCLIENTE, strCodigoCliente: string;
    cont, intCodigoCliente: Integer;

    strDESCRICAO: string;

    wMemoXML, wMemoNF_XML, wMemoMAT_XML, wMemoMAT_ESPEC1: TXMLDocument;

    strNomeXml,
      strNomeXmlMat,
      strDescMat,
      strParametros,
      strDescMatEspecif: string;

//------------------------------------------------------------------------------

    procedure ExecutaFormShow;

    function Grava_Matriz(parStrID_CENTRALIZADORA, parStrID_CLIENTE, parStrDATA_ULTIMA_COMPRA: string): Boolean;
    function Grava_Filial(parStrID_CLIENTE, parStrID_CENTRALIZADORA: string): Boolean;
    function CARREGA_XML_CIGAM: Boolean;
    function Grava_Compras(parStraCLIENTE, parStrID_CENTRAL, parStrID_CLIENTE_ERP: string): Boolean;

  end;

var
  frm_ImportaClientesCIGAM: Tfrm_ImportaClientesCIGAM;

implementation

uses PadStrUtils, PadUtils, uwsCadastroEmpresasCIGAM,
  uwsCadastroNotaFiscalCIGAM, uwsCadastroEspecif1, uwsCadastroMateriais,
  uwsCadastroCondPagtoCIGAM;

{$R *.dfm}

//---------------------------------------------------------------------------------------

procedure Tfrm_ImportaClientesCIGAM.FormCreate(Sender: TObject);
var

  NomeXml: string;

begin

  if (ParamCount > 0) then
    NomeXml := ParamStr(1)
  else
    NomeXml := 'CFG' + StringReplace(ExtractFileName(Application.ExeName), '.exe', '', [rfIgnoreCase]) + '.xml';

  pArquivoConexao := NomeXml;


  pCaminhoPrograma := ExtractFilePath(Application.ExeName);
  conexaoSGR.Connected := False;

  try

    conexaoSGR.ConnectionString := 'Provider=MSDASQL.1;Persist Security Info=False;Data Source=crm_sgr';
    conexaoSGR.Connected := True;

  except

    on e: Exception do
    begin

      ShowMessage('Problema ao conectar com o SGR' + #13 + e.ClassName + #13 + e.Message);
      Application.Terminate;

    end;

  end;

  StatusBar1.Panels[0].Text := GetFileVersion(Application.ExeName);

end;

//---------------------------------------------------------------------------------------

procedure Tfrm_ImportaClientesCIGAM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  if tblParametros.State in [dsedit, dsinsert] then
    tblParametros.Post;

  try

    cdsConfig.Post;

  finally

    DeleteFile(pCaminhoPrograma + pArquivoConexao);
    cdsConfig.SaveToFile(pCaminhoPrograma + pArquivoConexao, dfXML);

  end;

  if wMemoXML <> nil then
    FreeAndNil(wMemoXML);

  if wMemoMAT_XML <> nil then
    FreeAndNil(wMemoMAT_XML);

  if wMemoMAT_ESPEC1 <> nil then
    FreeAndNil(wMemoMAT_ESPEC1);

  Application.Terminate;

end;

//---------------------------------------------------------------------------------------

procedure Tfrm_ImportaClientesCIGAM.FormShow(Sender: TObject);
begin

  ExecutaFormShow;

end;

//---------------------------------------------------------------------------------------

procedure Tfrm_ImportaClientesCIGAM.btnSalvarClick(Sender: TObject);
begin

  try

    cdsConfig.Post;

  finally

    DeleteFile(pCaminhoPrograma + pArquivoConexao);

    cdsConfig.SaveToFile(pCaminhoPrograma + pArquivoConexao, dfXML);

  end;

  try

    cdsConfig.Close;

    cdsConfig.LoadFromFile(pCaminhoPrograma + pArquivoConexao);

    cdsConfig.Open;

    atualizaParametros;

    cdsConfig.Edit;

  except

    on e: Exception do
    begin

      ShowMessage('Problema ao abrir os parametros' + #13 + e.ClassName + #13 + e.Message);

      Abort;

    end;

  end;

end;

//---------------------------------------------------------------------------------------

procedure Tfrm_ImportaClientesCIGAM.ExecutaFormShow;
var

  wDia, wMes, wAno: Word;

begin

  pgc.ActivePage := tsImportacao;

  cdsConfig.Close;

  if FileExists(pCaminhoPrograma + pArquivoConexao) then
  begin

    cdsConfig.LoadFromFile(pCaminhoPrograma + pArquivoConexao);
    cdsConfig.Open;
    cdsConfig.Edit;

  end
  else
  begin

    cdsConfig.CreateDataSet;
    cdsConfig.Append;

    cdsConfigATUALIZACAO_TODODIA.AsString := '8';
    cdsConfigDESLIGA_COMPUTADOR.AsString := 'N';
    cdsConfigATUALIZACAO_DATAULTCOMPRA.AsString := '0';
    cdsConfigVALIDA_CNPJ.AsString := 'S';
    cdsConfigVALIDA_ERP.AsString := 'S';
    cdsConfigLIMPA_COMPRAS.AsString := 'N';

  end;

  atualizaParametros;

  cbAtualizacaoDia.ItemIndex := cdsConfigATUALIZACAO_TODODIA.AsInteger;
  cbDataUltCOmpra.ItemIndex := cdsConfigATUALIZACAO_DATAULTCOMPRA.AsInteger;

  tblParametros.Open;

  if cdsConfigIMPORTAR_CLIENTES.IsNull then
    cdsConfigIMPORTAR_CLIENTES.Value := tblParametrosIMPORTAR_CLIENTES.Value;

  if cdsConfigIMPORTAR_COMPRAS.IsNull then
    cdsConfigIMPORTAR_COMPRAS.Value := tblParametrosIMPORTAR_COMPRAS.Value;

  if cdsConfigIMPORTAR_CLIENTE_EXISTENTE.IsNull then
    cdsConfigIMPORTAR_CLIENTE_EXISTENTE.Value := tblParametrosIMPORTAR_CLIENTE_EXISTENTE.Value;

//------------------------------------------------------------------------------

  jvEd_PIN.Text := '001';
  msked_Codigo_Inicial.Text := '0';
  msked_Codigo_Final.Text := '0';
  jved_Divisao_Inicial.Text := '1D';
  jved_Divisao_Final.Text := '1E';
  lb_Processo.Caption := '';
  rg_Tipo_Servidor.ItemIndex := 1;
  intServer_EMP := rg_Tipo_Servidor.ItemIndex;
  intServer_ESPECIF1 := rg_Tipo_Servidor.ItemIndex;
  intServer_MAT := rg_Tipo_Servidor.ItemIndex;
  intServer_NF := rg_Tipo_Servidor.ItemIndex;

  if sintTotal_Parametros > 0 then
  begin

    if ParamStr(1) = 'ATUALIZACAO' then
    begin

      jvdted_Data_Inicial_Pesq.Date := Now - 30;
      jvdted_Data_Final_Pesq.Date := Now;
      jvdted_Data_NF_Inicial_Pesq.Date := Now - 30;
      jvdted_Data_NF_Final_Pesq.Date := Now;
      bolCarga_Inicial := False;

    end
    else
      if ParamStr(1) = 'INICIAL' then
      begin

        wDia := 01;
        wMes := 01;
        wAno := 1900;
        jvdted_Data_Inicial_Pesq.Date := EncodeDate(wAno, wMes, wDia);
        jvdted_Data_Final_Pesq.Date := Now;
        jvdted_Data_NF_Inicial_Pesq.Date := EncodeDate(wAno, wMes, wDia);
        jvdted_Data_NF_Final_Pesq.Date := Now;
        bolCarga_Inicial := True;

        if jvdted_Data_Inicial_Pesq.Date > jvdted_Data_Final_Pesq.Date then
          jvdted_Data_Inicial_Pesq.Date := jvdted_Data_Final_Pesq.Date;

      end;

  end
  else
  begin

    jvdted_Data_Inicial_Pesq.Date := Now;
    jvdted_Data_Final_Pesq.Date := Now;
    jvdted_Data_NF_Inicial_Pesq.Date := Now;
    jvdted_Data_NF_Final_Pesq.Date := Now;
    bolCarga_Inicial := True;

    if jvdted_Data_Inicial_Pesq.Date > jvdted_Data_Final_Pesq.Date then
      jvdted_Data_Inicial_Pesq.Date := jvdted_Data_Final_Pesq.Date;

  end;

end;

//---------------------------------------------------------------------------------------
//         ***  CARREGA OS DADOS DO XML PROVENIENTE DO WEBSERVICE DA CIGAM  ***
//---------------------------------------------------------------------------------------

procedure Tfrm_ImportaClientesCIGAM.btn_Carrega_XMLClick(Sender: TObject);
begin

  if cds_ImportaCIGAM.Active then
    cds_ImportaCIGAM.Close;

  if Trim(jvEd_PIN.Text) = '' then
  begin

    MessageDlg('Você Deve Informar o Número do PIN Para Esta Consulta.', mtWarning, [mbOK], 0);
    jvEd_PIN.Text := '001';

    jvEd_PIN.SetFocus;

    Exit;

  end;

  if jvdted_Data_Inicial_Pesq.Date > jvdted_Data_Final_Pesq.Date then
  begin

    MessageDlg('A Data Final de Pesquisa Deve Ser Maior ou Igual a Data Inicial da Pesquisa.', mtWarning, [mbOK], 0);
    jvdted_Data_Inicial_Pesq.Date := Now;
    jvdted_Data_Final_Pesq.Date := Now;

    jvdted_Data_Inicial_Pesq.SetFocus;

    Exit;

  end;

  if Trim(msked_Codigo_Inicial.Text) = '' then
    msked_Codigo_Inicial.Text := '0';

  if Trim(msked_Codigo_Final.Text) = '' then
    msked_Codigo_Final.Text := '0';

  if Trim(jved_Divisao_Inicial.Text) = '' then
    jved_Divisao_Inicial.Text := '1D';

  if Trim(jved_Divisao_Final.Text) = '' then
    jved_Divisao_Final.Text := '1E';

  dtxs_DataInicial := DateTimeToXSDateTime(jvdted_Data_Inicial_Pesq.Date);
  dtxs_DataFinal := DateTimeToXSDateTime(jvdted_Data_Final_Pesq.Date);

  Screen.Cursor := crHourGlass;
  try

    if ParamCount = 0 then
      lb_Processo.Caption := '***  GERANDO ARQUIVO XML DOS CLIENTES CIGAM'
    else
      lb_Processo.Caption := '';

//----------------------------------------------

    CARREGA_XML_CIGAM;

//----------------------------------------------

    if (sintTotal_Parametros > 0) and (intTotal_Registros > 0) then
      btnImportar.Click;

  finally
    Screen.Cursor := crDefault;
  end;

  lb_Processo.Caption := '';

end;

//---------------------------------------------------------------------------------------
//                   ***  ALTERAR A DATA DA ÚLTIMA COMPRA  ***
//---------------------------------------------------------------------------------------

procedure Tfrm_ImportaClientesCIGAM.AlteraDataUltimaCompra;
begin

  with TADOQuery.Create(Self) do
  try

    Connection := conexaoSGR;

    SQL.Add('UPDATE ');
    SQL.Add('	clientes cli');
    SQL.Add('SET cli.DATA_ULT_COMPRA = ');
    SQL.Add('   (');
    SQL.Add('	SELECT');
    SQL.Add('		MAX(c.DATA)');
    SQL.Add('	FROM');
    SQL.Add('		compras c');
    SQL.Add('	WHERE');
    SQL.Add('		c.CLIENTE = cli.CODIGO');
    SQL.Add('   )');

    ExecSQL; // ATUALIZA DATA ULTIMA COMPRA PELO ARQUIVO DE COMPRAS

  finally

    Free;

  end;

end;

//---------------------------------------------------------------------------------------
//                      ***  ATUALIZAR A DATA ADA COMPRA  ***
//---------------------------------------------------------------------------------------

procedure Tfrm_ImportaClientesCIGAM.AtualizaDataCompra;
begin

  with TADOQuery.Create(nil) do
  try

    Connection := conexaoSGR;

    SQL.Add('UPDATE clientes');
    SQL.Add('SET DATA_ULT_COMPRA = NULL');
    SQL.Add('WHERE DATA_ULT_COMPRA = ''0001-01-01''');

    ExecSQL;

  finally

    Free;

  end;

end;

//---------------------------------------------------------------------------------------
//                         ***  ATUALIZAR OS PARÂMETROS  ***
//---------------------------------------------------------------------------------------

procedure Tfrm_ImportaClientesCIGAM.atualizaParametros;
begin

  pATUALIZACAO_HORA := cdsConfigATUALIZACAO_HORA.AsString;
  pATUALIZACAO_TODODIA := cdsConfigATUALIZACAO_TODODIA.AsString;
  pDESLIGA_COMPUTADOR := cdsConfigDESLIGA_COMPUTADOR.AsString;

end;

//---------------------------------------------------------------------------------------
//                      ***  CALCULAR O CNPJ OU O CPF  ***
//---------------------------------------------------------------------------------------

function Tfrm_ImportaClientesCIGAM.CalculaCnpjCpf(Numero: string): Boolean;
var

  i, d, b, Digito: byte;
  Soma: Integer;
  CNPJ: Boolean;
  DgPass, DgCalc: string;

  function ApenasNumerosStr(pStr: string): string;
  var

    i: Integer;

  begin

    Result := '';

    for i := 1 to Length(pStr) do
      if (pStr[i] in ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0']) then
        Result := Result + pStr[i];

  end;

  function IIf(pCond: Boolean; pTrue, pFalse: Variant): Variant;
  begin

    if pCond then
      Result := pTrue
    else
      Result := pFalse;

  end;

begin

  if vazio(Numero) then
  begin

    Result := True;
    Exit;

  end;

  Result := False;
  Numero := ApenasNumerosStr(Numero);

   // Caso o número não seja 11 (CPF) ou 14 (CNPJ), aborta
  case Length(Numero) of

    11: CNPJ := False;
    14: CNPJ := True;

  else
    Exit;
  end;

   // Separa o número do digito

  DgCalc := '';
  DgPass := Copy(Numero, Length(Numero) - 1, 2);
  Numero := Copy(Numero, 1, Length(Numero) - 2);

   // Calcula o digito 1 e 2

  for d := 1 to 2 do
  begin

    b := IIf(d = 1, 2, 3); // byTE
    Soma := IIf(d = 1, 0, STRTOINTDEF(DgCalc, 0) * 2);

    for i := Length(Numero) downto 1 do
    begin

      Soma := Soma + (Ord(Numero[i]) - Ord('0')) * b;

      Inc(b);

      if (b > 9) and CNPJ then
        b := 2;

    end;

    Digito := 11 - Soma mod 11;

    if Digito >= 10 then
      Digito := 0;

    DgCalc := DgCalc + Chr(Digito + Ord('0'));

  end;

  Result := DgCalc = DgPass;

end;

//---------------------------------------------------------------------------------------
//                  ***  FAZ A CONEXÃO COM O BANCO DE DADOS  ***
//---------------------------------------------------------------------------------------

function Tfrm_ImportaClientesCIGAM.conectar(StringConexao: string): Boolean;
begin

  Result := True;

end;

//---------------------------------------------------------------------------------------
//                   ***  EXECUTA A STRING DE COMANDOS SQL  ***
//---------------------------------------------------------------------------------------

function Tfrm_ImportaClientesCIGAM.ExecSql(xsql: string; Tipo: Integer): TADOQuery;
begin

  try

    if tipo = 0 then
    begin

      Result := TADOQuery.Create(nil);

      Result.Connection := conexaoSGR;

      Result.SQL.Text := xsql;

      Result.Open;

    end
    else
    begin

      conexaoSGR.Execute(xsql);

      Result := nil;

    end;

  except

    on e: exception do
      log.Lines.Add('Erro sql: ' + xsql + ' - ' + e.Message);

  end;

end;

//---------------------------------------------------------------------------------------
//               ***  VERIFICA SE O CLIENTE JÁ EXISTE NO CADASTRO  ***
//---------------------------------------------------------------------------------------

function Tfrm_ImportaClientesCIGAM.existeCliente(CLIENTE, CPF_CNPJ: string): Boolean;
var

  qryCli: TADOQuery;

begin

//  with TADOQuery.Create(nil) do
  try

    qryCli := TADOQuery.Create(nil);

    qryCli.Connection := conexaoSGR;

    qryCli.SQL.Clear;
    qryCli.SQL.Add('SELECT CODIGO ');
    qryCli.SQL.Add('  FROM Clientes ');

    if tblParametrosIMP_POR_CPFNCPJ_CLIENTE.AsString = 'S' then
    begin

      if not vazio(CPF_CNPJ) then
      begin

        qryCli.SQL.Add(' WHERE CPF_CNPJ = ' + QuotedStr(trim(CPF_CNPJ)));

//        qryCli.Parameters[0].Value := trim(CPF_CNPJ);

      end;

    end
    else
    begin

      qryCli.SQL.Add(' WHERE COD_ERP = ' + QuotedStr(trim(CLIENTE)));

//      qryCli.Parameters[0].Value := trim(CLIENTE);

    end;

    qryCli.Open;

    Result := not (qryCli.IsEmpty);

    intCodigoCliente := qryCli.Fields.Fields[0].AsInteger; //fieldbyname('CODIGO').AsInteger;

  finally

    FreeAndNil(qryCli);

  end;

end;

//---------------------------------------------------------------------------------------
//                    ***  BUSCA A VERSÃO ATUAL DO EXECUTÁVEL  ***
//---------------------------------------------------------------------------------------

function Tfrm_ImportaClientesCIGAM.GetFileVersion(const FileName: string): string;
var

  Major, Minor, Release, Build: Integer;
  Zero: DWORD; // set to 0 by GetFileVersionInfoSize
  VersionInfoSize: DWORD;
  PVersionData: pointer;
  PFixedFileInfo: PVSFixedFileInfo;
  FixedFileInfoLength: UINT;

begin

  Result := '0';
  Major := 0;
  Minor := 0;
  Release := 0;
  Build := 0;
  VersionInfoSize := GetFileVersionInfoSize(pChar(FileName), Zero);

  if VersionInfoSize = 0 then
    Exit;

  PVersionData := AllocMem(VersionInfoSize);

  try

    if GetFileVersionInfo(pChar(FileName), 0, VersionInfoSize, PVersionData) = False then
      Exit;

    if VerQueryValue(PVersionData, '', pointer(PFixedFileInfo), FixedFileInfoLength) = False then
      Exit;

    Major := PFixedFileInfo^.dwFileVersionMS shr 16;
    Minor := PFixedFileInfo^.dwFileVersionMS and $FFFF;
    Release := PFixedFileInfo^.dwFileVersionLS shr 16;
    Build := PFixedFileInfo^.dwFileVersionLS and $FFFF;

  finally

    FreeMem(PVersionData);

  end;

  if (Major or Minor or Release or Build) <> 0 then
    Result := 'Versão: ' + IntToStr(Major) + '.' + IntToStr(Minor) + '.' + IntToStr(Release) + '.' + IntToStr(Build);

end;

//---------------------------------------------------------------------------------------
//                      ***  INSERIR A LISTA DE FUNÇÕES  ***
//---------------------------------------------------------------------------------------

procedure Tfrm_ImportaClientesCIGAM.insereListaFones;
begin

  try

    conexaoSGR.Execute('CALL PR_INSERE_FONES_CAMPANHAS()');

  except

    on e: Exception do
    begin

      log.Lines.Add('Problemas ao inserir lista de fones' + #13 + e.ClassName + #13 + e.Message + #13);

    end;

  end;

end;

//---------------------------------------------------------------------------------------
//                    ***  INDERIR COMPRA DO CLIENTE  ***
//---------------------------------------------------------------------------------------

function Tfrm_ImportaClientesCIGAM.insertCompra(CLIENTE, Data, Valor,
  DESCRICAO, FORMA_PGTO: string): string;
var
  xValor: string;

begin

  Result := '';

  with qrInsertCompra do
  try
    if Trim(Valor) = '' then
      Valor := '0.00';

    xValor := StringReplace(Valor, ',', '.', []);

    Close;

    Parameters[0].Value := trim(CLIENTE);
    Parameters[1].Value := trim(Data);
    Parameters[2].Value := IIf(trim(xValor) = '', 0, trim(xValor)); 
    Parameters[3].Value := trim(DESCRICAO);
    Parameters[4].Value := trim(FORMA_PGTO);

    ExecSQL;

    with TADOQuery.Create(nil) do
    try

      Connection := conexaoSGR;

      SQL.Add('SELECT MAX(CODIGO) FROM compras WHERE CLIENTE = ' + QuotedStr(CLIENTE));

      Open;

      Result := Fields[0].AsString;

    finally
      Free;
    end;

  except

    on e: Exception do
    begin

      if (E is EOleException) then
        MessageDlg('Registro => ' + CLIENTE + ' - NF -> ' + DESCRICAO + ' - ' + Valor, mtWarning, [mbOK], 0);

      log.Lines.Add('Problemas ao inserir compras -> ' + #13 + e.ClassName + #13 + e.Message + #13);

    end;

  end;

end;

//---------------------------------------------------------------------------------------
//                    ***  INSERIR AS COMPRAS DO ITEM  ***
//---------------------------------------------------------------------------------------

procedure Tfrm_ImportaClientesCIGAM.insertCompraItem(NOTA, CODPROD,
  DESCRICAO, Qtd, UN_MEDIDA, VALOR_UN, DESCONTO: string);
var
  xQtd, xVALOR_UN, xDESCONTO: string;

begin

  with qrInsertCompraItem do
  try
    xQtd := StringReplace(Qtd, ',', '.', []);
    xVALOR_UN := StringReplace(VALOR_UN, ',', '.', []);
    xDESCONTO := StringReplace(DESCONTO, ',', '.', []);

    Close;
    Parameters[0].Value := trim(NOTA);
    Parameters[1].Value := trim(CODPROD);
    Parameters[2].Value := trim(DESCRICAO);
    Parameters[3].Value := IIf(trim(xQtd) = '', 0, trim(xQtd));
    Parameters[5].Value := IIf(trim(xVALOR_UN) = '', 0, trim(xVALOR_UN));
    Parameters[6].Value := IIf(trim(xDESCONTO) = '', 0, trim(xDESCONTO));
    ExecSQL;
  except

    on e: Exception do
    begin
      log.Lines.Add('Problemas ao inserir itens' + #13 + e.ClassName + #13 + e.Message + #13);
    end;

  end;

end;

//---------------------------------------------------------------------------------------
//                   ***  ICLUI/ALTERA UM CLIENTE NO CADASTRO  ***
//---------------------------------------------------------------------------------------

function Tfrm_ImportaClientesCIGAM.insertOrUpdateCliente
  (
  COD_ERP, RAZAO, FANTASIA, CPF_CNPJ, END_RUA, CIDADE, BAIRRO, ESTADO, CEP,
  FONE1, EMAIL, OPERADOR, COD_UNIDADE, SALDO_DISPONIVEL, POTENCIAL,
  DATA_ULT_COMPRA, SEGMENTO, IE_RG: string): string;
var
  AREA1: string;
  Query2: TADOQuery;
  CodigoGrupo: Integer;
begin

  Result := '';

  qrPesquisaCli.Close;
  qrPesquisaCli.Parameters[0].Value := COD_ERP;
  qrPesquisaCli.Open;

  if (cdsConfigIMPORTAR_CLIENTES.AsString = 'N') then
  begin
    Result := retornaCampo('CODIGO');
    Exit;
  end;

  if (intCodigoCliente > 0) and (cdsConfigIMPORTAR_CLIENTE_EXISTENTE.AsString <> 'S') then
  begin
    Result := retornaCampo('CODIGO');
    Exit;
  end;

   // razao
  if intCodigoCliente > 0 then
    if tblParametrosRAZAO.AsString <> 'S' then
      RAZAO := '';

  if vazio(RAZAO) then
  begin

    RAZAO := qrPesquisaCli.FieldByName('RAZAO').AsString;

    log.Lines.Add(cds_ImportaCIGAM.Fields[0].AsString + ', ' +
      cds_ImportaCIGAM.Fields[1].AsString + ', ' +
      cds_ImportaCIGAM.Fields[2].AsString + ', ' +
      cds_ImportaCIGAM.Fields[3].AsString + ', ' +
      cds_ImportaCIGAM.Fields[4].AsString + ', ' +
      cds_ImportaCIGAM.Fields[5].AsString + ', ' +
      cds_ImportaCIGAM.Fields[6].AsString + ', ' +
      cds_ImportaCIGAM.Fields[7].AsString + ', ' +
      cds_ImportaCIGAM.Fields[8].AsString + ', ' +
      cds_ImportaCIGAM.Fields[9].AsString + ', ' +
      cds_ImportaCIGAM.Fields[10].AsString + ', ' +
      cds_ImportaCIGAM.Fields[11].AsString + ', ' +
      cds_ImportaCIGAM.Fields[12].AsString + ', ' +
      cds_ImportaCIGAM.Fields[13].AsString + ', ' +
      cds_ImportaCIGAM.Fields[14].AsString + ', ' +
      cds_ImportaCIGAM.Fields[15].AsString + ', ' +
      cds_ImportaCIGAM.Fields[16].AsString);

    log.Lines.Add(' RAZÃO Inválida, foram mantidos os valores originais para este campo' + #13);
  end;

   // fantasia
  if intCodigoCliente > 0 then
    if tblParametrosFANTASIA.AsString <> 'S' then
      FANTASIA := '';

  if vazio(FANTASIA) then
  begin

      // FANTASIA := retornaCampo('FANTASIA');
    FANTASIA := qrPesquisaCli.FieldByName('FANTASIA').AsString;

    log.Lines.Add(cds_ImportaCIGAM.Fields[0].AsString + ', ' +
      cds_ImportaCIGAM.Fields[1].AsString + ', ' +
      cds_ImportaCIGAM.Fields[2].AsString + ', ' +
      cds_ImportaCIGAM.Fields[3].AsString + ', ' +
      cds_ImportaCIGAM.Fields[4].AsString + ', ' +
      cds_ImportaCIGAM.Fields[5].AsString + ', ' +
      cds_ImportaCIGAM.Fields[6].AsString + ', ' +
      cds_ImportaCIGAM.Fields[7].AsString + ', ' +
      cds_ImportaCIGAM.Fields[8].AsString + ', ' +
      cds_ImportaCIGAM.Fields[9].AsString + ', ' +
      cds_ImportaCIGAM.Fields[10].AsString + ', ' +
      cds_ImportaCIGAM.Fields[11].AsString + ', ' +
      cds_ImportaCIGAM.Fields[12].AsString + ', ' +
      cds_ImportaCIGAM.Fields[13].AsString + ', ' +
      cds_ImportaCIGAM.Fields[14].AsString + ', ' +
      cds_ImportaCIGAM.Fields[15].AsString + ', ' +
      cds_ImportaCIGAM.Fields[16].AsString);

    log.Lines.Add('FANTASIA Inválida, foram mantidos os valores originais para este campo' + #13);

  end;

  if intCodigoCliente > 0 then
    IE_RG := qrPesquisaCli.FieldByName('IE_RG').AsString;

  if intCodigoCliente > 0 then
    if tblParametrosENDERECO.AsString <> 'S' then
      END_RUA := qrPesquisaCli.FieldByName('END_RUA').AsString;

  if intCodigoCliente > 0 then
    if tblParametrosBAIRRO.AsString <> 'S' then
      BAIRRO := qrPesquisaCli.FieldByName('BAIRRO').AsString;

  if intCodigoCliente > 0 then
    if tblParametrosCIDADE.AsString <> 'S' then
      CIDADE := qrPesquisaCli.FieldByName('CIDADE').AsString;

  if intCodigoCliente > 0 then
    if tblParametrosCEP.AsString <> 'S' then
      CEP := qrPesquisaCli.FieldByName('CEP').AsString;

  if intCodigoCliente > 0 then
    if tblParametrosESTADO.AsString <> 'S' then
      ESTADO := qrPesquisaCli.FieldByName('ESTADO').AsString;

  if intCodigoCliente > 0 then
    if tblParametrosEMAIL.AsString <> 'S' then
      EMAIL := qrPesquisaCli.FieldByName('EMAIL').AsString;

   // fone
  if (intCodigoCliente > 0) and (tblParametrosTELEFONE.AsString <> 'S') then
    FONE1 := qrPesquisaCli.FieldByName('FONE1').AsString
  else
    FONE1 := retornaSoNumero(FONE1);

   // showMessageDesenv('Area: ' + AREA1 + ' Fone: ' + FONE1);
  if Length(AREA1 + FONE1) < 10 then
  begin
      // FONE1 := retornaCampo('CONCAT(AREA1,FONE1)');
    FONE1 := qrPesquisaCli.FieldByName('FONE1').AsString;

    log.Lines.Add(cds_ImportaCIGAM.Fields[0].AsString + ', ' +
      cds_ImportaCIGAM.Fields[1].AsString + ', ' +
      cds_ImportaCIGAM.Fields[2].AsString + ', ' +
      cds_ImportaCIGAM.Fields[3].AsString + ', ' +
      cds_ImportaCIGAM.Fields[4].AsString + ', ' +
      cds_ImportaCIGAM.Fields[5].AsString + ', ' +
      cds_ImportaCIGAM.Fields[6].AsString + ', ' +
      cds_ImportaCIGAM.Fields[7].AsString + ', ' +
      cds_ImportaCIGAM.Fields[8].AsString + ', ' +
      cds_ImportaCIGAM.Fields[9].AsString + ', ' +
      cds_ImportaCIGAM.Fields[10].AsString + ', ' +
      cds_ImportaCIGAM.Fields[11].AsString + ', ' +
      cds_ImportaCIGAM.Fields[12].AsString + ', ' +
      cds_ImportaCIGAM.Fields[13].AsString + ', ' +
      cds_ImportaCIGAM.Fields[14].AsString + ', ' +
      cds_ImportaCIGAM.Fields[15].AsString + ', ' +
      cds_ImportaCIGAM.Fields[16].AsString);

    log.Lines.Add('TELEFONE Inválido, foram mantidos os valores originais para este campo' + #13);

  end;

  AREA1 := Copy(FONE1, 1, 2);
  FONE1 := Copy(FONE1, 3, Length(FONE1));

  if intCodigoCliente > 0 then
    if tblParametrosCNPJ.AsString <> 'S' then
      CPF_CNPJ := qrPesquisaCli.FieldByName('CPF_CNPJ').AsString;

  if cdsConfigVALIDA_CNPJ.AsString = 'S' then
  begin

    if not CalculaCnpjCpf(CPF_CNPJ) then
    begin

      CPF_CNPJ := qrPesquisaCli.FieldByName('CPF_CNPJ').AsString;

      log.Lines.Add(cds_ImportaCIGAM.Fields[0].AsString + ', ' +
        cds_ImportaCIGAM.Fields[1].AsString + ', ' +
        cds_ImportaCIGAM.Fields[2].AsString + ', ' +
        cds_ImportaCIGAM.Fields[3].AsString + ', ' +
        cds_ImportaCIGAM.Fields[4].AsString + ', ' +
        cds_ImportaCIGAM.Fields[5].AsString + ', ' +
        cds_ImportaCIGAM.Fields[6].AsString + ', ' +
        cds_ImportaCIGAM.Fields[7].AsString + ', ' +
        cds_ImportaCIGAM.Fields[8].AsString + ', ' +
        cds_ImportaCIGAM.Fields[9].AsString + ', ' +
        cds_ImportaCIGAM.Fields[10].AsString + ', ' +
        cds_ImportaCIGAM.Fields[11].AsString + ', ' +
        cds_ImportaCIGAM.Fields[12].AsString + ', ' +
        cds_ImportaCIGAM.Fields[13].AsString + ', ' +
        cds_ImportaCIGAM.Fields[14].AsString + ', ' +
        cds_ImportaCIGAM.Fields[15].AsString + ', ' +
        cds_ImportaCIGAM.Fields[16].AsString);

      log.Lines.Add('CPF/CNPJ Inválido, foram mantidos os valores originais para este campo' + #13);

    end;

  end;

  COD_UNIDADE := RetornaUnidade(qrPesquisaCli.FieldByName('SEGMENTO').AsString);

  if intCodigoCliente > 0 then
  begin

    if tblParametrosSEGMENTO.AsString <> 'S' then
      SEGMENTO := qrPesquisaCli.FieldByName('SEGMENTO').AsString
    else
      SEGMENTO := RetornaSegmento(SEGMENTO);

  end
  else
    SEGMENTO := RetornaSegmento(SEGMENTO);

   // showMessageDesenv('SEGMENTO: ' + SEGMENTO);

  OPERADOR := RetornaOperador(OPERADOR);
   // showMessageDesenv('OPERADOR: ' + OPERADOR);

  if intCodigoCliente > 0 then
    if tblParametrosSALDO.AsString <> 'S' then
      SALDO_DISPONIVEL := FloatToStr(qrPesquisaCli.FieldByName('SALDO_DISPONIVEL').AsFloat);

  SALDO_DISPONIVEL := FloatToStr(StrToFloatDef(SALDO_DISPONIVEL, 0));

   // showMessageDesenv('ULT. COMPRA: ' + DATA_ULT_COMPRA);

  if (DATA_ULT_COMPRA = 'null') or (DATA_ULT_COMPRA = '0001-01-01') then
    DATA_ULT_COMPRA := '0000-00-00';

  if vazio(SALDO_DISPONIVEL) then
    SALDO_DISPONIVEL := '0';

  if intCodigoCliente > 0 then
    if tblParametrosPOTENCIAL.AsString <> 'S' then
      POTENCIAL := qrPesquisaCli.FieldByName('POTENCIAL').AsString;

  if intCodigoCliente > 0 then
    if vazio(POTENCIAL) then
      POTENCIAL := '0';

  showMessageDesenv(COD_ERP + #13 + RAZAO + #13 + FANTASIA + #13 + CPF_CNPJ + #13 + END_RUA + #13 + CIDADE + #13 + BAIRRO + #13 + ESTADO + #13 + CEP + #13 +
    AREA1 + #13 + FONE1 + #13 + EMAIL + #13 + OPERADOR + #13 + COD_UNIDADE + #13 + SALDO_DISPONIVEL + #13 + POTENCIAL + #13 + DATA_ULT_COMPRA + #13 +
    SEGMENTO + #13 + IE_RG);

  begin
  //-----------------------------------------------------------
  //-->>  ALTERA UM REGISTRO JÁ EXISTENTE NA TABELA DE CLIENTES
  //-----------------------------------------------------------

    qrUpdateCliente.Close;
    qrUpdateCliente.Parameters[0].Value := intCodigoCliente;
    qrUpdateCliente.Open;

    if not qrUpdateCliente.IsEmpty then
    begin
      try
        qrUpdateCliente.Edit;
        qrUpdateClienteCOD_ERP.Value := trim(COD_ERP);
        qrUpdateClienteRAZAO.Value := trim(RAZAO);
        qrUpdateClienteFANTASIA.Value := trim(FANTASIA);
        qrUpdateClienteCPF_CNPJ.Value := trim(CPF_CNPJ);
        qrUpdateClienteEND_RUA.Value := trim(END_RUA);
        qrUpdateClienteCIDADE.Value := trim(CIDADE);
        qrUpdateClienteBAIRRO.Value := trim(BAIRRO);
        qrUpdateClienteESTADO.Value := trim(ESTADO);
        qrUpdateClienteCEP.Value := trim(CEP);
        qrUpdateClienteAREA1.AsString := trim(AREA1);
        qrUpdateClienteFONE1.Value := trim(FONE1);
        qrUpdateClienteEMAIL.Value := trim(EMAIL);
        qrUpdateClienteOPERADOR.AsString := trim(OPERADOR);
        qrUpdateClienteCOD_UNIDADE.AsString := trim(COD_UNIDADE);
        qrUpdateClienteSALDO_DISPONIVEL.AsString := trim(SALDO_DISPONIVEL);
        qrUpdateClientePOTENCIAL.AsString := trim(POTENCIAL);

        if (DATA_ULT_COMPRA = '0000-00-00') or (DATA_ULT_COMPRA = '0001-01-01') then
          qrUpdateClienteDATA_ULT_COMPRA.clear
        else
          qrUpdateClienteDATA_ULT_COMPRA.AsDateTime := StrToDate(DATA_ULT_COMPRA);

        qrUpdateClienteSEGMENTO.AsString := trim(SEGMENTO);
        qrUpdateClienteIE_RG.Value := IE_RG;
        qrUpdateCliente.Post;
      except
        on e: Exception do
        begin

          log.Lines.Add('Problema ao alterar cliente ' + #13 + e.ClassName + #13 + e.Message);

          log.Lines.Add(cds_ImportaCIGAM.Fields[0].AsString + ', ' +
            cds_ImportaCIGAM.Fields[1].AsString + ', ' +
            cds_ImportaCIGAM.Fields[2].AsString + ', ' +
            cds_ImportaCIGAM.Fields[3].AsString + ', ' +
            cds_ImportaCIGAM.Fields[4].AsString + ', ' +
            cds_ImportaCIGAM.Fields[5].AsString + ', ' +
            cds_ImportaCIGAM.Fields[6].AsString + ', ' +
            cds_ImportaCIGAM.Fields[7].AsString + ', ' +
            cds_ImportaCIGAM.Fields[8].AsString + ', ' +
            cds_ImportaCIGAM.Fields[9].AsString + ', ' +
            cds_ImportaCIGAM.Fields[10].AsString + ', ' +
            cds_ImportaCIGAM.Fields[11].AsString + ', ' +
            cds_ImportaCIGAM.Fields[12].AsString + ', ' +
            cds_ImportaCIGAM.Fields[13].AsString + ', ' +
            cds_ImportaCIGAM.Fields[14].AsString + ', ' +
            cds_ImportaCIGAM.Fields[15].AsString + ', ' +
            cds_ImportaCIGAM.Fields[16].AsString + #13);

        end;

      end;

    end
    else
    begin

    //-----------------------------------------------------
    //-->>  INSERE UM NOVO REGISTRO NA TABELA DE CLIENTES
    //-----------------------------------------------------

      try
        qrUpdateCliente.Insert;
        qrUpdateClienteCOD_ERP.Value := trim(COD_ERP);
        qrUpdateClienteRAZAO.Value := trim(RAZAO);
        qrUpdateClienteFANTASIA.Value := trim(FANTASIA);
        qrUpdateClienteCPF_CNPJ.Value := trim(CPF_CNPJ);
        qrUpdateClienteEND_RUA.Value := trim(END_RUA);
        qrUpdateClienteCIDADE.Value := trim(CIDADE);
        qrUpdateClienteBAIRRO.Value := trim(BAIRRO);
        qrUpdateClienteESTADO.Value := trim(ESTADO);
        qrUpdateClienteCEP.Value := trim(CEP);
        qrUpdateClienteAREA1.AsString := trim(AREA1);
        qrUpdateClienteFONE1.Value := trim(FONE1);
        qrUpdateClienteEMAIL.Value := trim(EMAIL);
        qrUpdateClienteOPERADOR.AsString := trim(OPERADOR);
        qrUpdateClienteCOD_UNIDADE.AsString := trim(COD_UNIDADE);
        qrUpdateClienteSALDO_DISPONIVEL.AsString := trim(SALDO_DISPONIVEL);
        qrUpdateClientePOTENCIAL.AsString := trim(POTENCIAL);

        if (DATA_ULT_COMPRA = '0000-00-00') or (DATA_ULT_COMPRA = '0001-01-01') then
          qrUpdateClienteDATA_ULT_COMPRA.Clear
        else
          qrUpdateClienteDATA_ULT_COMPRA.AsDateTime := StrToDate(DATA_ULT_COMPRA);

        qrUpdateClienteSEGMENTO.AsString := trim(SEGMENTO);
        qrUpdateClienteIE_RG.Value := IE_RG;
        qrUpdateCliente.Post;
      except

        on e: Exception do
        begin

          log.Lines.Add('Problema ao inserir cliente ' + #13 + e.ClassName + #13 + e.Message);

          log.Lines.Add(cds_ImportaCIGAM.Fields[0].AsString + ', ' +
            cds_ImportaCIGAM.Fields[1].AsString + ', ' +
            cds_ImportaCIGAM.Fields[2].AsString + ', ' +
            cds_ImportaCIGAM.Fields[3].AsString + ', ' +
            cds_ImportaCIGAM.Fields[4].AsString + ', ' +
            cds_ImportaCIGAM.Fields[5].AsString + ', ' +
            cds_ImportaCIGAM.Fields[6].AsString + ', ' +
            cds_ImportaCIGAM.Fields[7].AsString + ', ' +
            cds_ImportaCIGAM.Fields[8].AsString + ', ' +
            cds_ImportaCIGAM.Fields[9].AsString + ', ' +
            cds_ImportaCIGAM.Fields[10].AsString + ', ' +
            cds_ImportaCIGAM.Fields[11].AsString + ', ' +
            cds_ImportaCIGAM.Fields[12].AsString + ', ' +
            cds_ImportaCIGAM.Fields[13].AsString + ', ' +
            cds_ImportaCIGAM.Fields[14].AsString + ', ' +
            cds_ImportaCIGAM.Fields[15].AsString + ', ' +
            cds_ImportaCIGAM.Fields[16].AsString);

        end;

      end;

    end;

    Result := retornaCampo('CODIGO');

    if (cds_ImportaCIGAM.FindField('AREA_DESCRICAO') <> nil) then
    begin

      if cds_ImportaCIGAM.fieldbyname('AREA_DESCRICAO').AsString <> '' then
      begin

        with TADOQuery.Create(nil) do
        try

          Connection := conexaoSGR;

          SQL.Text := ' SELECT CODIGO FROM grupos WHERE DESCRICAO = ' + QuotedStr(cds_ImportaCIGAM.fieldbyname('AREA_DESCRICAO').AsString);

          Open;

          CodigoGrupo := FieldByName('CODIGO').AsInteger;

          Close;

        finally

          Free;

        end;

        if CodigoGrupo = 0 then
        begin

          with TADOQuery.Create(nil) do
          try

            Connection := conexaoSGR;

            SQL.Text := ' SELECT max(CODIGO) as CODIGO FROM grupos ';

            Open;

            CodigoGrupo := FieldByName('CODIGO').AsInteger + 1;

            Close;

            SQL.Text := 'INSERT INTO grupos values(' + IntToStr(CodigoGrupo) + ',' + QuotedStr(cds_ImportaCIGAM.fieldbyname('AREA_DESCRICAO').AsString) + ')';

            ExecSQL;

          finally

            Free;

          end;

        end;

      end;

      if CodigoGrupo > 0 then
      begin

        with TADOQuery.Create(nil) do
        try

          Connection := conexaoSGR;

          SQL.Text := ' update clientes set GRUPO = ' + IntToStr(CodigoGrupo) + ' where CODIGO = ' + Result;

          ExecSQL;

        finally

          Free;

        end;

      end;

    end;

    if (Result <> '') and (trim(OPERADOR) <> '') then
    begin

      Query2 := TADOQuery.Create(nil);

      Query2.Connection := conexaoSGR;

      try

        with Query2 do
        begin

          Close;

          SQL.Clear;

          SQL.Add('UPDATE campanhas_clientes SET OPERADOR = ' + trim(OPERADOR) + ' WHERE CLIENTE = ' + Result + ' AND CONCLUIDO = "NAO" AND OPERADOR <> -2 AND COALESCE(FIDELIZA,'''') <> ''S'' ');

          showMessageDesenv(SQL.Text);

          ExecSQL;

        end;

      finally

        FreeAndNil(Query2);

      end;

      if intCodigoCliente > 0 then
      begin

      //------------------------------------------------------------------------
      //             ***  INCLUI O CLIENTE EM CAMPANHA  ***
      //------------------------------------------------------------------------

        if tblParametrosINCLUI_CLIENTE_CAMP_PRINC_IMP.AsString = 'S' then
        begin

          FONE1 := AREA1 + FONE1;
          Query2 := TADOQuery.Create(nil);

          try

            Query2.Connection := conexaoSGR;

            try

              Query2.SQL.Clear;

              Query2.SQL.Add('INSERT IGNORE INTO campanhas_clientes (CLIENTE, CAMPANHA, CONCLUIDO, DT_AGENDAMENTO, OPERADOR, FONE1, AGENDA) VALUES');

              Query2.SQL.Add('(' + Result + ', 1 , ''NAO'', NOW(), ' + trim(OPERADOR) + ', ' + QuotedStr(trim(FONE1)) + ', 0 )');

              showMessageDesenv(Query2.SQL.Text);

              Query2.ExecSQL;

            except

            end;

          finally

            FreeAndNil(Query2);

          end;

        end;

      end;

    end;

  end;

end;

//---------------------------------------------------------------------------------------
//                    ***  EXCLUIR AS COMPRAS DE UM ITEM  ***
//---------------------------------------------------------------------------------------

procedure Tfrm_ImportaClientesCIGAM.limpaComprasItensCompras;
begin

  with TADOQuery.Create(nil) do
  try

    Connection := conexaoSGR;
    SQL.Add('DELETE FROM itens_compra');
    ExecSQL;
    SQL.Clear;
    SQL.Add('DELETE FROM compras');
    ExecSQL;

  finally

    Free;

  end;

end;

//---------------------------------------------------------------------------------------
//                         ***  ORGANIZA AS ATUALIZAÇÕES  ***
//---------------------------------------------------------------------------------------

procedure Tfrm_ImportaClientesCIGAM.organizaAtualizacao;
begin

  try

    conexaoSGR.Execute('CALL PR_ORGANIZA_ATUALIZACAO()');

  except

    on e: Exception do
    begin

      log.Lines.Add('Problemas ao organizar campanhas' + #13 + e.ClassName + #13 + e.Message + #13);

    end;

  end;

end;

//---------------------------------------------------------------------------------------
//                   ***  ORGANIZA AS CAMPANHAS DO CLIENTE  ***
//---------------------------------------------------------------------------------------

procedure Tfrm_ImportaClientesCIGAM.organizaCampanhas;
begin

  try

    conexaoSGR.Execute('CALL PR_ORGANIZA_CAMPANHAS()');

  except

    on e: Exception do
    begin

      log.Lines.Add('Problemas ao organizar campanhas' + #13 + e.ClassName + #13 + e.Message + #13);

    end;

  end;

end;

//---------------------------------------------------------------------------------------
//                       ***  REFIDELIZAR OS COTADOS  ***
//---------------------------------------------------------------------------------------

function Tfrm_ImportaClientesCIGAM.refidelizaCotados: Boolean;
var

  query, Query2: TADOQuery;

  function GetTransferenciaClientes(Cliente: integer): string;
  begin

    with ExecSql(' SELECT a.DATA_HORA FROM transferencia_clientes a INNER JOIN '
      + ' transferencia_clientes_itens b ON a.CODIGO = b.CODIGO WHERE b.CLIENTE = ' + IntToStr(Cliente)
      + ' ORDER BY a.DATA_HORA DESC LIMIT 1 ') do
    begin

      if IsEmpty then
        result := 'NULL'
      else
        result := QuotedStr(FormatDateTime('yyyy-mm-dd HH:NN:SS', FieldByName('DATA_HORA').AsDateTime));

      Free;

    end;

  end;

begin

  if ExecSql(' SELECT CARTEIRA_FIXA_OPERADOR FROM parametros ').FieldByName('CARTEIRA_FIXA_OPERADOR').AsString = 'S' then exit;

  try

    query := TADOQuery.Create(nil);
    query.Connection := conexaoSGR;

    Query2 := TADOQuery.Create(nil);
    Query2.Connection := conexaoSGR;

    Query.SQL.Clear;

    Query.SQL.ADD('SELECT');
    Query.SQL.ADD('	cli.CODIGO          ');
    Query.SQL.ADD('FROM                   ');
    Query.SQL.ADD('	clientes cli,       ');
    Query.SQL.ADD('	campanhas_clientes cc, ');
    Query.SQL.ADD('	resultados r        ');
    Query.SQL.ADD('WHERE                  ');
    Query.SQL.ADD('	cc.CLIENTE = cli.CODIGO  ');
    Query.SQL.ADD('	AND r.FIDELIZARCOTACAO = "SIM" ');
    Query.SQL.ADD('	AND cli.OPERADOR <> -2   ');
    Query.SQL.ADD('	AND r.CODIGO = cc.RESULTADO ');
    Query.SQL.ADD('GROUP BY        ');
    Query.SQL.ADD('	cli.CODIGO    ');

    Query.Open;

    while not Query.Eof do
    begin

      Query2.Close;
      Query2.SQL.Clear;

      Query2.SQL.Text := 'CALL PR_REPOE_LIGACOES_FIDELIZADAS(' + Query.Fields[0].AsString
        + ',9999,' + GetTransferenciaClientes(Query.Fields[0].AsInteger) + ')';

      try

        Query2.ExecSQL;

      except

        on E: Exception do
        begin

          log.Lines.Add('Importar RepoeLigacoesFidelizadas' + #13 + e.Message);

        end;

      end;

      Query.Next;

    end;

    Result := True;

  finally

    FreeAndNil(query);
    FreeAndNil(Query2);

  end;

end;

//---------------------------------------------------------------------------------------
//                               ***  RETORNA CAMPO  ***
//---------------------------------------------------------------------------------------

function Tfrm_ImportaClientesCIGAM.retornaCampo(campo: string): string;
begin

  with TADOQuery.Create(nil) do
  try

    Connection := conexaoSGR;

    SQL.Add('SELECT ' + campo);
    SQL.Add('  FROM vw_clientes');
    SQL.Add(' WHERE COD_ERP = ' + QuotedStr(cds_ImportaCIGAM.Fields[0].AsString));

    Open;

    Result := Fields[0].AsString;

  finally

    Free;

  end;

end;

//---------------------------------------------------------------------------------------
//                        ***  RETORNA OPERADOR  ***
//---------------------------------------------------------------------------------------

function Tfrm_ImportaClientesCIGAM.RetornaOperador(Valor: string): string;
begin

  if vazio(Valor) then
    Result := '0'
  else
    with TADOQuery.Create(nil) do
    try

      Connection := conexaoSGR;

      SQL.Text := 'SELECT CODIGO FROM operadores WHERE CODIGO_ERP = ' + QuotedStr(trim(Valor));

      Open;

      if IsEmpty then
        Result := '-2'
      else
        Result := Fields[0].AsString;

    finally

      Free;

    end;

end;

//---------------------------------------------------------------------------------------
//                              ***  RETORNA SEGMENTO  ***
//---------------------------------------------------------------------------------------

function Tfrm_ImportaClientesCIGAM.RetornaSegmento(Valor: string): string;
begin

  Result := Valor;
  {with TADOQuery.Create(nil) do
  try

    Connection := conexaoSGR;
    SQL.Text := 'SELECT CODIGO FROM segmentos WHERE NOME = ' + QuotedStr(trim(Valor));

    Open;

    if IsEmpty then
    begin

      Close;

      SQL.Text := 'INSERT INTO segmentos (NOME) VALUES (' + QuotedStr(trim(Valor)) + ')';

      ExecSQL;

      Close;

      SQL.Text := 'SELECT MAX(CODIGO) FROM segmentos';

      Open;

    end;

    Result := Fields[0].AsString;

  finally

    Free;

  end;}

end;

//---------------------------------------------------------------------------------------
//                        ***  RETORNA SOMENTE NÚMEROS  ***
//---------------------------------------------------------------------------------------

function Tfrm_ImportaClientesCIGAM.retornaSoNumero(Valor: string): string;
var

  i: Integer;

begin // retorna somente numeros

  for i := 1 to Length(Valor) do
    if (Valor[i] in ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']) then
      Result := Result + Valor[i];

  if Length(Result) = 11 then
    Result := Copy(Result, 2, 10)

end;

//---------------------------------------------------------------------------------------
//                            ***  RETORNA UNIDADE  ***
//---------------------------------------------------------------------------------------

function Tfrm_ImportaClientesCIGAM.RetornaUnidade(Valor: string): string;
begin

  if tblParametrosUNIDADE.AsString = 'S' then
  begin

    with TADOQuery.Create(nil) do
    try

      Connection := conexaoSGR;
      SQL.Text := 'select COD_UNIDADE from segmentos where CODIGO = ' + IntToStr(StrToIntDef(Valor, 0));

      Open;

      if IsEmpty then
      begin

        close;

        SQL.Text := 'SELECT COD_UNIDADE FROM clientes WHERE COD_ERP = :COD_ERP';

        Parameters[0].Value := cds_ImportaCIGAM.Fields[0].AsString;

        Open;

      end;

      if IsEmpty then
        Result := '1'
      else
        Result := Fields[0].AsString;

      close;

    finally

      Free;

    end;
  end
  else
  begin

    with TADOQuery.Create(nil) do
    try

      Connection := conexaoSGR;

      SQL.Text := 'SELECT COD_UNIDADE FROM clientes WHERE COD_ERP = ' + QuotedStr(cds_ImportaCIGAM.Fields[0].AsString);

      Open;

      if IsEmpty then
        Result := '1'
      else
        Result := Fields[0].AsString;

      close;

    finally

      Free;

    end;

  end;

end;

//---------------------------------------------------------------------------------------
//               ***  MOSTRAR UMA MENSAGEM PARA O DESENVOLVIMENTO  ***
//---------------------------------------------------------------------------------------

procedure Tfrm_ImportaClientesCIGAM.showMessageDesenv(texto: string);
begin

  if FileExists(pCaminhoPrograma + 'desenvolvimento.cfg') then
    ShowMessage(texto);

end;

//---------------------------------------------------------------------------------------
//                     ***  VERIFICA SE O CAMPO ESTÁ VAZIO  ***
//---------------------------------------------------------------------------------------

function Tfrm_ImportaClientesCIGAM.vazio(texto: string): Boolean;
begin

  Result := (Length(trim(texto)) = 0);

end;

//---------------------------------------------------------------------------------------
//        ***  IMPORTAR OS DADOS DO CLIENTDATASET PARA A TABELA DE CLIENTES  ***
//---------------------------------------------------------------------------------------

procedure Tfrm_ImportaClientesCIGAM.btnImportarClick(Sender: TObject);
begin

  if intTotal_Registros = 0 then
    Exit;

  try

    Application.ProcessMessages;

    cds_MATRIZ.Close;
    cds_MATRIZ.CreateDataSet;

    cds_FILIAIS.Close;
    cds_FILIAIS.CreateDataSet;

    try

      cdsConfig.Post;
      cdsConfig.Edit;

    except

    end;

    btnImportar.Enabled := False;
    btn_Carrega_XML.Enabled := False;
    pb.Position := 0;
    cont := 0;
    pgc.ActivePage := tsLog;
    strDescMat := '';
    aCLIENTE := '';

    if ParamCount = 0 then
      lb_Processo.Caption := '***  IMPORTANDO OS CLIENTES DO XML'
    else
      lb_Processo.Caption := '';

    try

      log.Lines.Clear;

      log.Lines.Add('Atualização iniciada em: ' + DateTimeToStr(now) + #13 + #13);
      log.Lines.Add('INÍCIO IMPORTAÇÃO CLIENTES... ' + #13 + #13);

    except

      on e: Exception do
      begin

        ShowMessage('Problemas ao abrir clientes' + #13 + e.ClassName + #13 + e.Message);

        btnImportar.Enabled := True;
        btn_Carrega_XML.Enabled := True;
        lb_Processo.Caption := '';

        Abort;

      end;

    end;

    Screen.Cursor := crHourGlass;
    try

      cds_ImportaCIGAM.First;

      if ParamStr(1) = 'ATUALIZACAO' then
      begin

        cds_ImportaCIGAM.Filtered := False;
        cds_ImportaCIGAM.Filter := '(codigoDivisao = ' + QuotedStr('1D') + ') OR ' +
          '(codigoDivisao = ' + QuotedStr('1E') + ')';
        cds_ImportaCIGAM.Filtered := True;

      end
      else
      begin

        cds_ImportaCIGAM.Filtered := False;
        cds_ImportaCIGAM.Filter := '';

      end;

      cds_ImportaCIGAM.First;

      if cds_ImportaCIGAM.IsEmpty then
      begin

        btnImportar.Enabled := True;
        btn_Carrega_XML.Enabled := True;
        lb_Processo.Caption := '';

        cds_ImportaCIGAM.Filtered := False;
        cds_ImportaCIGAM.Filter := '';

        Exit;

      end;

      if cdsConfigLIMPA_COMPRAS.AsString = 'S' then
        limpaComprasItensCompras;

      pb.Max := cds_ImportaCIGAM.RecordCount;
      lbTotalClientes.Caption := IntToStr(pb.Max);

      cds_ImportaCIGAM.DisableControls;

      cds_ImportaCIGAM.First;

  //----------------------------------------------------------------------------
  //        ****  LE O CLIENTDATASET PARA IMPORTAR OS CLIENTES  ****
  //----------------------------------------------------------------------------

      while not (cds_ImportaCIGAM.eof) do
      begin

    //--------------------------------------------------------------------------

    //->   //-->  SE NÃO FOR DA DIVISÃO 1D ou 1E O PROGRAMA IGNORA O REGISTRO

        if (cds_ImportaCIGAMcodigoDivisao.Value <> '1D') and
          (cds_ImportaCIGAMcodigoDivisao.Value <> '1E') then
        begin

          cds_ImportaCIGAM.Next;

          Continue;

        end;

    //--------------------------------------------------------------------------
    //--->>    *** SE O CÓDIGO NÃO FOR DA MTRIZ, NÃO IMPORTAR O CADASTRO DO
    //             CLIENTE PARA O SGR
    //--------------------------------------------------------------------------
{
      if cds_ImportaCIGAMcodigoCentralizadora.Value <> cds_ImportaCIGAMcodigoEmpresa.Value then
      begin

        cds_ImportaCIGAM.Next;

        Continue;

      end;
}
    //--------------------------------------------------------------------------

        if vazio(cds_ImportaCIGAM.FieldByName('codigoEmpresa').AsString) and (cdsConfigVALIDA_ERP.AsString = 'S') then
        begin

          log.Lines.Add(cds_ImportaCIGAM.FieldByName('codigoEmpresa').AsString +
            cds_ImportaCIGAM.FieldByName('nomeCompleto').AsString +
            cds_ImportaCIGAM.FieldByName('fantasia').AsString +
            cds_ImportaCIGAM.FieldByName('cnpjCpf').AsString +
            cds_ImportaCIGAM.FieldByName('endereco').AsString +
            cds_ImportaCIGAM.FieldByName('municipio').AsString +
            cds_ImportaCIGAM.FieldByName('bairro').AsString +
            cds_ImportaCIGAM.FieldByName('uf').AsString +
            cds_ImportaCIGAM.FieldByName('cep').AsString +
            cds_ImportaCIGAM.FieldByName('fone').AsString +
            '' +
            cds_ImportaCIGAM.FieldByName('codigoRepresentante').AsString +
            '' +
            cds_ImportaCIGAM.FieldByName('faturamento').AsString +
            cds_ImportaCIGAM.FieldByName('codigoDivisao').AsString +
            cds_ImportaCIGAM.FieldByName('ultimaVenda').AsString +
            ' CÓDIGO ERP INVÁLIDO' + #13);

        end
        else
        begin

          existeCliente(cds_ImportaCIGAM.FieldByName('codigoCentralizadora').AsString, cds_ImportaCIGAM.FieldByName('cnpjCpf').AsString);

          aCLIENTE := insertOrUpdateCliente(
            cds_ImportaCIGAM.FieldByName('codigoCentralizadora').AsString, //->  0-CÓDIGO CENTRALIZADORA (ERP)
            cds_ImportaCIGAM.FieldByName('nomeCompleto').AsString, //->  1-RAZÃO SOCIAL
            cds_ImportaCIGAM.FieldByName('fantasia').AsString, //->  2-NOME FANTASIA
            cds_ImportaCIGAM.FieldByName('cnpjCpf').AsString, //->  3-CNPJ/CPF
            cds_ImportaCIGAM.FieldByName('endereco').AsString
            + iif(cds_ImportaCIGAMnumero.AsString <> '', ' ' + cds_ImportaCIGAMnumero.AsString, '')
            + iif(cds_ImportaCIGAMcomplemento.AsString <> '', ' ' + cds_ImportaCIGAMcomplemento.AsString, ''), //->  4-ENDEREÇO
            cds_ImportaCIGAM.FieldByName('municipio').AsString, //->  5-CIDADE
            cds_ImportaCIGAM.FieldByName('bairro').AsString, //->  6-BAIRRO
            cds_ImportaCIGAM.FieldByName('uf').AsString, //->  7-ESTADO
            cds_ImportaCIGAM.FieldByName('cep').AsString, //->  8-CEP
            cds_ImportaCIGAM.FieldByName('fone').AsString, //->  9-FONE1
            '', //-> 10-EMAIL
            cds_ImportaCIGAMcodigoResponsavel.AsString, //-> 11-OPERADOR
            '', //-> 12-UNIDADE
            '0.00', //-> 13-SALDO DISPONÍVEL
            '', //-> 14-POTENCIAL
            cds_ImportaCIGAM.FieldByName('ultimaVenda').AsString, //-> 15-DATA ÚLTIMA COMPRA
            cds_ImportaCIGAMatividade.AsString, //-> 16-SEGMENTO
            cds_ImportaCIGAMinscricao.AsString); //-> IE_RG
        end;


    //--------------------------------------------------------------------------
    //         ***  GRAVA O CÓDIGO DA CENTRALIZADORA DO CLIENTE  ***
    //--------------------------------------------------------------------------

        Grava_Matriz(cds_ImportaCIGAMcodigoCentralizadora.Value, aCLIENTE, cds_ImportaCIGAMultimaVenda.Value);

    //--------------------------------------------------------------------------

        Inc(cont);

        lbClienteTotal.Caption := IntToStr(cont);

        cds_ImportaCIGAM.Next;

        pb.Position := pb.Position + 1;

        Application.ProcessMessages;

      end;

  //--------------------------------------------------------------------------
  //               ***  GRAVA DOS DADOS DAS FILIAIS  ***
  //--------------------------------------------------------------------------

      pb.Position := 0;
      cont := 0;
      lbClienteTotal.Caption := '000000';

      log.Lines.Add('CLIENTES IMPORTADOS COM SUCESSO EM...  ' + DateTimeToStr(Now) + #13 + #13);
      log.Lines.Add('GRAVANDO DADOS DAS FILIAIS... ' + #13 + #13);

      if ParamCount = 0 then
        lb_Processo.Caption := '***  GERANDO OS DADOS DAS FILIAIS'
      else
        lb_Processo.Caption := '';

      cds_ImportaCIGAM.First;

      while not (cds_ImportaCIGAM.Eof) do
      begin

        Grava_Filial(cds_ImportaCIGAMcodigoEmpresa.Value, cds_ImportaCIGAMcodigoCentralizadora.Value);

        cds_ImportaCIGAM.Next;

        Inc(cont);

        lbClienteTotal.Caption := IntToStr(cont);

        pb.Position := pb.Position + 1;

        Application.ProcessMessages;

      end;

      log.Lines.Add('DADOS DAS FILIAIS GERADO COM SUCESSO EM... ' + DateTimeToStr(Now) + #13 + #13);

      cds_ImportaCIGAM.First;

  //----------------------------------------------------------------------------
  //              ***  ATUALIZA O COMPRAS NO CADASTRO   ***
  //----------------------------------------------------------------------------

      pb.Position := 0;

      cds_FILIAIS.First;

      if (cdsConfigIMPORTAR_COMPRAS.AsString = 'S') then
      begin

        cont := 1;
        lbClienteTotal.Caption := IntToStr(cont);
        lbTotalClientes.Caption := IntToStr(cds_FILIAIS.RecordCount);

        log.Lines.Add('ATUALIZANDO COMPRA EM... ' + DateTimeToStr(Now) + #13 + #13);

        if ParamCount = 0 then
          lb_Processo.Caption := '***  ATUALIZANDO O COMPRAS'
        else
          lb_Processo.Caption := '';

        while not (cds_FILIAIS.Eof) do
        begin

          if not (cds_MATRIZ.Locate('ID_CENTRALIZADORA', cds_FILIAISID_CENTRALIZADORA.Value, [])) then
          begin

            cds_FILIAIS.Next;

            Inc(cont);

            lbClienteTotal.Caption := IntToStr(cont);

            pb.Position := pb.Position + 1;

            Application.ProcessMessages;

            Continue;

          end;

          Grava_Compras(cds_MATRIZID_CLIENTE.Value, cds_FILIAISID_CENTRALIZADORA.Value, cds_FILIAISID_CLIENTE.Value);

          Inc(cont);

          lbClienteTotal.Caption := IntToStr(cont);

          pb.Position := pb.Position + 1;

          Application.ProcessMessages;

          cds_FILIAIS.Next;

        end;

      end;

  //----------------------------------------------------------------------------

      log.Lines.Add('COMPRAS GERADAS COM SUCESSO EM... ' + DateTimeToStr(Now) + #13 + #13);

      if ParamCount = 0 then
        lb_Processo.Caption := '***  INSERINDO LISTA DE TELEFONES'
      else
        lb_Processo.Caption := '';

      insereListaFones;

  //----------------------------------------------------------------------------

      with TADOQuery.Create(nil) do
      try

        Connection := conexaoSGR;

        try

          Close;
          SQL.Text := 'DELETE FROM itens_compra WHERE NOT EXISTS (SELECT c.CODIGO FROM compras c WHERE c.CODIGO = NOTA ) OR NOTA IS NULL';
          ExecSQL; // DELETA ITENS QUE NÃO EXISTAM NA TABELA DE COMPRAS

        except

          on e: Exception do
          begin

            log.Lines.Add('Problemas ao DELETA ITENS QUE NÃO EXISTAM NA TABELA DE COMPRAS' + #13 + e.ClassName + #13 + e.Message + #13);

          end;

        end;

        try

          Close;

          SQL.Text := 'DELETE FROM compras WHERE NOT EXISTS (SELECT c.CODIGO FROM clientes c WHERE c.CODIGO = CLIENTE )';

          ExecSQL; // DELETA COMPRAS QUE NÃO EXISTAM NA TABELA DE CLIENTES

        except

          on e: Exception do
          begin

            log.Lines.Add('Problemas ao DELETA COMPRAS QUE NÃO EXISTAM NA TABELA DE CLIENTES' + #13 + e.ClassName + #13 + e.Message + #13);

          end;

        end;

      finally

        Free;

      end;

  //--------------------------------------------------------------------------

      if cdsConfigIMPORTAR_COMPRAS.AsString = 'S' then
      begin

        if (cdsConfigATUALIZACAO_DATAULTCOMPRA.AsInteger = 0) then
        begin

          with TADOQuery.Create(nil) do
          try

            Connection := conexaoSGR;

            SQL.Clear;

            SQL.Add('CALL PR_ATUALIZA_DT_ULT_COMPRA_CLI');

            showMessageDesenv('PR_ATUALIZA_DT_ULT_COMPRA_CLI');

            ExecSQL;

            Free;

          except

            on e: Exception do
            begin

              log.Lines.Add(e.ClassName + ' ' + e.Message + #13);

              Free;

            end;

          end;

        end
        else
        begin

          showMessageDesenv('AlteraDataUltimaCompra');

          if ParamCount = 0 then
            lb_Processo.Caption := '***  ALTERANDO DATA DA ÚLTIMA COMPRA'
          else
            lb_Processo.Caption := '';

          AlteraDataUltimaCompra;

          showMessageDesenv('organizaCampanhas');

          if ParamCount = 0 then
            lb_Processo.Caption := '***  ORGANIZANDO CAMPANHAS'
          else
            lb_Processo.Caption := '';

          organizaCampanhas;

        end;

        showMessageDesenv('organizaAtualizacao');

        if ParamCount = 0 then
          lb_Processo.Caption := '***  ORGANIZANDO ATUALIZAÇÃO'
        else
          lb_Processo.Caption := '';

        organizaAtualizacao;

        showMessageDesenv('AtualizaDataCompra');

        if ParamCount = 0 then
          lb_Processo.Caption := '***  ATUALIZANDO DATA DA COMPRA'
        else
          lb_Processo.Caption := '';

        AtualizaDataCompra;

        showMessageDesenv('refidelizaCotados');

        if ParamCount = 0 then
          lb_Processo.Caption := '***  REFIDELINADO COTADOS'
        else
          lb_Processo.Caption := '';

        refidelizaCotados;

      end;

  //--------------------------------------------------------------------------

      try

        conexaoSGR.Execute(' UPDATE clientes a SET POTENCIAL = COALESCE((select AVG(VALOR) AS VALOR from compras ' +
          ' WHERE CLIENTE = a.CODIGO AND OPERADOR IS NULL) ,0) where a.POTENCIAL <= 0 ');
      except

        on E: Exception do
        begin

          log.Lines.Add(' update POTENCIAL cliente ' + #13 + e.ClassName + #13 + e.Message);

        end;

      end;

  //--------------------------------------------------------------------------
  //               ***  GRAVA O LOGO DO PROCESSAMENTO  ***
  //--------------------------------------------------------------------------

      log.Lines.Add('ATUALIZAÇÃO FINALIZADA EM... ' + DateTimeToStr(now));

      if not (vazio(log.Text)) then
        log.Lines.SaveToFile(pCaminhoPrograma + 'ErrosImportacao' + FormatDateTime('ddmmyy', date) + '.txt');

  //--------------------------------------------------------------------------

      cds_ImportaCIGAM.enableControls;

      cds_ImportaCIGAM.Close;

      btn_Carrega_XML.Enabled := True;
      btnImportar.Enabled := True;
      lb_Processo.Caption := '';

    finally

      if tblParametros.State in [dsedit, dsinsert] then
        tblParametros.Post;

    end;

    pb.Position := 0;
    cont := 0;
    lb_Processo.Caption := '';
  finally
    Screen.Cursor := crDefault;
  end;

end;

procedure Tfrm_ImportaClientesCIGAM.btnTrayIconClick(Sender: TObject);
begin

  frm_ImportaClientesCIGAM.Hide;

end;

procedure Tfrm_ImportaClientesCIGAM.pgcChange(Sender: TObject);
var

  intTOTAL_REG: Integer;

begin

  if pgc.ActivePageIndex = 0 then
  begin

    if cds_ImportaCIGAM.Active then
      intTOTAL_REG := cds_ImportaCIGAM.RecordCount
    else
      intTOTAL_REG := 0;

    if intTOTAL_REG = 0 then
    begin

      jvEd_PIN.Text := '001';
      jvdted_Data_Inicial_Pesq.Date := Now;
      jvdted_Data_NF_Final_Pesq.Date := Now;
      jvdted_Data_Final_Pesq.Date := Now;
      jvdted_Data_NF_Inicial_Pesq.Date := Now;
      msked_Codigo_Inicial.Text := '0';
      msked_Codigo_Final.Text := '0';
      jved_Divisao_Inicial.Text := '1D';
      jved_Divisao_Final.Text := '1E';

      if cds_ImportaCIGAM.Active then
        cds_ImportaCIGAM.Close;

    end;

  end;

end;

(******************************************************************************
 *                                                                            *
 *  Function .......: Grava_Filial                                            *
 *  Objetivo .......: Gravar os Dados das FILIAIS no ClientDataSet            *
 *                                                                            *
 *  Parâmetros .....: parStrID_CENTRALIZADORA -> Código da Centralizadora     *
 *                    parStrID_CLIENTE        -> Código do Cliente            *
 *                                                                            *
 *  Data Criação ...: 05/08/2017                                              *
 *                                                                            *
 ******************************************************************************)

function Tfrm_ImportaClientesCIGAM.Grava_Filial(parStrID_CLIENTE,
  parStrID_CENTRALIZADORA: string): Boolean;
begin

  Result := False;

  try

    if not (cds_FILIAIS.Active) then
      cds_FILIAIS.Open;

    if not (cds_FILIAIS.Locate('ID_CLIENTE', parStrID_CLIENTE, [])) then
    begin

      cds_FILIAIS.Append;

      cds_FILIAISID_CENTRALIZADORA.Value := parStrID_CENTRALIZADORA;
      cds_FILIAISID_CLIENTE.Value := parStrID_CLIENTE;

      cds_FILIAIS.Post;

      Result := True;

    end;

  except

    on E: Exception do
    begin

      MessageDlg('Erro -> ' + E.ClassName + ' - ' + E.Message, mtWarning, [mbOK], 0);

    end;

  end;


end;

(******************************************************************************
 *                                                                            *
 *  Function .......: Grava_Matriz                                            *
 *  Objetivo .......: Gravar os Dados da Matriz no ClientDataSet              *
 *                                                                            *
 *  Parâmetros .....: parStrID_CENTRALIZADORA -> Código da Centralizadora     *
 *                    parStrID_CLIENTE        -> Código do Cliente            *
 *                    parDtDATA_ULTIMA_COMPRA -> Data da ùltima Compra        *
 *                                                                            *
 *  Data Criação ...: 05/08/2017                                              *
 *                                                                            *
 ******************************************************************************)

function Tfrm_ImportaClientesCIGAM.Grava_Matriz(parStrID_CENTRALIZADORA,
  parStrID_CLIENTE, parStrDATA_ULTIMA_COMPRA: string): Boolean;
begin

  Result := False;

  try

    if not (cds_MATRIZ.Active) then
      cds_MATRIZ.Open;

    if not (cds_MATRIZ.Locate('ID_CENTRALIZADORA', parStrID_CENTRALIZADORA, [])) then
    begin

      cds_MATRIZ.Append;

      cds_MATRIZID_CLIENTE.Value := parStrID_CLIENTE;
      cds_MATRIZID_CENTRALIZADORA.Value := parStrID_CENTRALIZADORA;

      if Trim(parStrDATA_ULTIMA_COMPRA) = 'null' then
        cds_MATRIZDATA_ULTIMA_COMPRA.Clear
      else
        cds_MATRIZDATA_ULTIMA_COMPRA.Value := StrToDate(parStrDATA_ULTIMA_COMPRA);

      cds_MATRIZ.Post;

      Result := True;

    end
    else
    begin

      if Trim(parStrDATA_ULTIMA_COMPRA) <> 'null' then
      begin

        if StrToDate(parStrDATA_ULTIMA_COMPRA) > cds_MATRIZDATA_ULTIMA_COMPRA.Value then
        begin

          cds_MATRIZ.Edit;

          cds_MATRIZDATA_ULTIMA_COMPRA.Value := StrToDate(parStrDATA_ULTIMA_COMPRA);

          cds_MATRIZ.Post;

        end;

      end;

      Result := True;

    end;

  except

    on E: Exception do
    begin

      if ParamCount = 0 then
        MessageDlg('Erro -> ' + E.ClassName + ' - ' + E.Message, mtWarning, [mbOK], 0);

    end;

  end;

end;

(******************************************************************************
 *                                                                            *
 *  Function .......: CARREGA_XML_CIGAM                                       *
 *  Objetivo .......: Carregar os Dados do CIGAM Via XML                      *
 *                                                                            *
 *  Data Criação ...: 05/08/2017                                              *
 *                                                                            *
 ******************************************************************************)

function Tfrm_ImportaClientesCIGAM.CARREGA_XML_CIGAM: Boolean;
begin

//------------------------------------------------------------------------------
//             ***  NOME DO ARQUIVO XML COM OS DADOS DO CIGAM  ***
//------------------------------------------------------------------------------

  strNomeXml := pCaminhoPrograma + 'ImportaClientesCIGAM.XML';

//------------------------------------------------------------------------------

  xmltp_ImportaCIGAM.XMLDataFile := strNomeXml;

  cds_ImportaCIGAM.Open;
  cds_ImportaCIGAM.EmptyDataSet;
  cds_ImportaCIGAM.Close;

//------------------------------------------------------------------------------
//     ***  CARREGA OS DADOS DAS EMPRESAS DO WEBSERVICE DA CIGAM  ***
//------------------------------------------------------------------------------

  try

    intTotal_Registros := 0;

    Application.ProcessMessages;

    wMemoXML := TXMLDocument.Create(Self);

    wMemoXML.XML.Clear;

    try

      if (ParamStr(1) = 'INICIAL') or (ParamCount = 0) then
      begin                     
        wMemoXML.XML.Add('<?xml version="1.0" encoding="ISO-8859-1" ?>');
        wMemoXML.XML.Add(GetIntegradorEmpresasXmlSoap(false, '', HTTPRIO1).ListarEmpresas(jvEd_PIN.Text,
          IIf(AllTrim(msked_Codigo_Inicial.Text) = '0', '', AllTrim(StrPadZero(msked_Codigo_Inicial.Text, 6))),
          IIf(AllTrim(msked_Codigo_Final.Text) = '0', '', AllTrim(StrPadZero(msked_Codigo_Final.Text, 6))),
          '',
          '',
          '',
          '',
          '',
          jved_Divisao_Inicial.Text,
          jved_Divisao_Final.Text,
          '',
          '',
          '',
          '',
          '',
          '',
          '',
          dtxs_DataInicial,
          '',
          dtxs_DataFinal,
          ''));

      end
      else
        if ParamStr(1) = 'ATUALIZACAO' then
        begin

          wMemoXML.XML.Add('<?xml version="1.0" encoding="ISO-8859-1" ?>');
          wMemoXML.XML.Add(GetIntegradorEmpresasXmlSoap(false, '', HTTPRIO1).ListarModificacoes(jvEd_PIN.Text,
            dtxs_DataInicial,
            '',
            dtxs_DataFinal,
            ''));

        end;

    //--------------------------------------------------------------------------

      if Pos('exception', wMemoXML.XML.Text) > 0 then
      begin

        if sintTotal_Parametros = 0 then
          MessageDlg('Sem Registros Para Atualização.', mtWarning, [mbOK], 0);

        cds_ImportaCIGAM.Close;

        Application.ProcessMessages;

        Screen.Cursor := crDefault;

        cds_MATRIZ.Close;
        cds_FILIAIS.Close;

        Exit;

      end;

    //---------------------------------------------
    //-->>  GRAVA O ARQUIVO MEMO NO FORMATO XML.
    //---------------------------------------------

      strNomeXml := pCaminhoPrograma + 'ImportaClientesCIGAM.XML';

      if FileExists(strNomeXml) then
        if not (DeleteFile(strNomeXml)) then
          RenameFile(strNomeXml, strNomeXml + '.Old');

      wMemoXML.XML.SaveToFile(strNomeXml);

    //----------------------------------------------------
    //-->>  CARREGA O XML SALVO NO XMLtransformProvider
    //----------------------------------------------------

      xmltp_ImportaCIGAM.XMLDataFile := strNomeXml;

    //--------------------------------------------------------------------------

      cds_ImportaCIGAM.Close;
      cds_ImportaCIGAM.Open;
      cds_ImportaCIGAM.First;

      lbTotalClientes.Caption := IntToStr(cds_ImportaCIGAM.RecordCount);
      intTotal_Registros := cds_ImportaCIGAM.RecordCount;

      Application.ProcessMessages;

      Screen.Cursor := crDefault;

    except

      on E: Exception do
      begin

        cds_ImportaCIGAM.Close;

        Application.ProcessMessages;

        Screen.Cursor := crDefault;

        if ParamCount = 0 then
        begin

          MessageDlg('Ocorreu o Seguinte Erro -> ' + E.ClassName + ' - ' +
            E.Message, mtWarning, [mbOK], 0);

        end;

        Screen.Cursor := crDefault;

      end;

    end;

  finally

    Screen.Cursor := crDefault;
    FreeAndNil(wMemoXML);

  end;

end;

procedure Tfrm_ImportaClientesCIGAM.bbtn_Importa_MatrizClick(Sender: TObject);
begin


end;

(******************************************************************************
 *                                                                            *
 *  Function .......: Grava_Compras                                           *
 *  Objetivo .......: Gravar as Compras do Cliente no Bando do SGR            *
 *                                                                            *
 *  Parâmetros .....: parStraCLIENTE       -> Código do Cliente no SGR        *
 *                    parStrID_CENTRAL     -> Código do Cliente Centralizador *
 *                    parCDS_CLIENTE       -> ClientDataSet Com os Dados      *
 *                                            Cliente                         *
 *                    parStrID_CLIENTE_ERP -> Código do Cliente no ERP        *
 *                                                                            *
 *  Data Criação ...: 06/08/2017                                              *
 *                                                                            *
 ******************************************************************************)

function Tfrm_ImportaClientesCIGAM.Grava_Compras(parStraCLIENTE,
  parStrID_CENTRAL, parStrID_CLIENTE_ERP: string): Boolean;
var
  xmlnota: WideString;
begin

  Result := False;
  strDESCRICAO := '';

  if Trim(parStrID_CENTRAL) = '' then
    Exit;

  if Trim(parStraCLIENTE) = '' then
    Exit;

  try
    cds_NF_Itens.Close;
    cds_NF.Close;

    wMemoNF_XML := TXMLDocument.Create(Self);
    wMemoNF_XML.XML.Clear;
    //wMemoNF_XML.LoadFromFile(pCaminhoPrograma + 'ImportaComprasCIGAM.XML');

    dtxs_DataInicialNF := DateTimeToXSDateTime(jvdted_Data_NF_Inicial_Pesq.Date);
    dtxs_DataFinalNF := DateTimeToXSDateTime(jvdted_Data_NF_Final_Pesq.Date);

    //
    //ShowMessage('ant compra');
    xmlnota := GetIntegradorNotaFiscalXmlSoap(false,'', HTTPRIO2).ListarNotasFiscais(jvEd_PIN.Text, 0, '', '', '', StrPadZero(parStrID_CLIENTE_ERP, 6), '', '', '',
    dtxs_DataInicialNF, dtxs_DataFinalNF);
    //ShowMessage('pos compra');
    showMessageDesenv(xmlnota);
    xmlnota := StringReplace(xmlnota, 'utf-8', 'ISO-8859-1', []);
    showMessageDesenv(xmlnota);
    wMemoNF_XML.XML.Clear;
    wMemoNF_XML.XML.Text := xmlnota;

  //------------------------------------------------------------------

    if Pos('exception', wMemoNF_XML.XML.Text) = 0 then
    begin

    //-->>  GRAVA O ARQUIVO MEMO NO FORMATO XML.

      strNomeXml := pCaminhoPrograma + 'ImportaComprasCIGAM.xml';

      if FileExists(strNomeXml) then
        if not (DeleteFile(strNomeXml)) then
          RenameFile(strNomeXml, strNomeXml + '.Old');

      wMemoNF_XML.XML.SaveToFile(strNomeXml);

    //-->>  CARREGA O XML SALVO NO XMLtransformProvider

      xmltp_NF.XMLDataFile := strNomeXml;

    //-------------------------------------------------------------------------

      cds_NF.Close;
      cds_NF.Open;
      cds_NF.First;

      //cds_NF_Itens.Close;
      //cds_NF_Itens.Open;
      //cds_NF_Itens.First;

      showMessageDesenv('Nro Nf: ' + cds_NFnf.AsString + ' Qtde Itens: ' + IntToStr(cds_NF_Itens.RecordCount));

      Application.ProcessMessages;

    //---------------------------------------------------------------------
    //        ***  ATUALIZA NO COMPRAS OS ITENS DA COMPRA   ***
    //---------------------------------------------------------------------

      cds_NF.First;

    //----------------------------------------------------------------------
    // 0- COMPRA
    // 1- CLIENTE
    // 2- DATA
    // 3- VALOR
    // 4- DESCRICAO(coloquei o codigo da compra)
    // 5- FORMA_PGTO
    //----------------------------------------------------------------------
      //ShowMessage('Qtd Nota' + IntToStr(cds_NF.RecordCount));

      while not (cds_NF.Eof) do
      begin
        //ShowMessage('Nro Nf: ' + cds_NFnf.AsString + ' Qtde Itens: ' + IntToStr(cds_NF_Itens.RecordCount));
        strDESCRICAO := cds_NFnf.Value + ' - ' + parStrID_CLIENTE_ERP;

        qry_BuscaCompra.Close;
        qry_BuscaCompra.SQL.Clear;
        qry_BuscaCompra.SQL.Add('SELECT DESCRICAO');
        qry_BuscaCompra.SQL.Add('  FROM compras');
        qry_BuscaCompra.SQL.Add(' WHERE DESCRICAO = ' + QuotedStr(strDESCRICAO));
        qry_BuscaCompra.Open;

        if (qry_BuscaCompra.IsEmpty) and (uppercase(cds_NFtipoNota.AsString) <> 'D') then
        begin
          aNF := insertCompra(parStraCLIENTE,
            FormatDateTime('yyyy-mm-dd', StrToDate(cds_NFdataEmissao.Value)),
            cds_NFtotalNF.Value,
            strDESCRICAO,
            BuscarCondPagamento(jvEd_PIN.Text, cds_NFcondicaoPagamento.Value)
            );

          cds_NF_Itens.First;
          while not (cds_NF_Itens.Eof) do
          begin
            wMemoMAT_XML := TXMLDocument.Create(Self);
            wMemoMAT_ESPEC1 := TXMLDocument.Create(Self);
            wMemoMAT_XML.XML.Clear;
            wMemoMAT_ESPEC1.XML.Clear;

            if not vazio(aNF) then
            begin
              wMemoMAT_XML.XML.Add('<?xml version="1.0" encoding="ISO-8859-1" ?>');
              wMemoMAT_XML.XML.Add(GetIntegradorMateriaisXmlSoap(false,'', HTTPRIO3).ListarIndividual('001', cds_NF_ItenscodigoMaterial.Value));

              if Pos('exception', wMemoMAT_XML.XML.Text) = 0 then
              begin
                strNomeXmlMat := pCaminhoPrograma + 'ConsultaMaterial.xml';
                wMemoMAT_XML.XML.SaveToFile(strNomeXmlMat);
                xmltp_MAT.XMLDataFile := strNomeXmlMat;
              end;

              cds_MAT.Close;
              cds_MAT.Open;
              cds_MAT.First;

              if cds_MAT.Locate('codigoMaterial', VarArrayOf([cds_NF_ItenscodigoMaterial.Value]), []) then
              begin
                if Copy(cds_MATdescricao.Value, 1, 1) = '_' then
                  strDescMat := RemoveCaracter(cds_MATdescricao.Value, '_')
                else
                  strDescMat := cds_MATdescricao.Value;
              end
              else
                strDescMat := '';

              wMemoMAT_ESPEC1.XML.Add('<?xml version="1.0" encoding="ISO-8859-1" ?>');
              wMemoMAT_ESPEC1.XML.Add(GetIntegradorEspecif1XmlSoap(false,'', HTTPRIO4).ListarIndividual('001', cds_NF_Itensespecif1.Value, '', ''));

              if Pos('exception', wMemoMAT_ESPEC1.XML.Text) = 0 then
              begin
                strDescMatEspecif := pCaminhoPrograma + 'ConsultaMatEspecifico1.xml';
                wMemoMAT_ESPEC1.XML.SaveToFile(strDescMatEspecif);
                xmltp_MAT_ESPECIF1.XMLDataFile := strDescMatEspecif;
              end;

              cds_MAT_ESPECIF1.Close;
              cds_MAT_ESPECIF1.Open;
              cds_MAT_ESPECIF1.First;

              if cds_MAT_ESPECIF1.Locate('codigoEspecif1', VarArrayOf([cds_NF_Itensespecif1.Value]), []) then
              begin
                if Trim(strDescMat) = '' then
                  strDescMat := cds_MAT_ESPECIF1descricao.Value
                else
                  strDescMat := strDescMat + ' ' + cds_MAT_ESPECIF1descricao.Value;
              end;

              insertCompraItem(aNF,
                iif(cds_MATreferencia.AsString <> '', cds_NF_Itensmovimento.Value + cds_MATreferencia.AsString, cds_NF_Itensmovimento.Value + cds_NF_ItenscodigoMaterial.Value),
                strDescMat,
                cds_NF_Itensquantidade1.Value,
                '',
                cds_NF_ItensprecoUnitario.Value,
                '0,00');
            end;
            cds_NF_Itens.Next;
          end;
          Application.ProcessMessages;
        end;
        cds_NF.Next;
      end;
    end;

    Result := True;

  except

    on e: Exception do
    begin

      log.Lines.Add('Problemas ao abrir compras ' + #13 + e.ClassName + #13 + e.Message + #13 + parStrID_CENTRAL + #13);

      Result := False;

    end;

  end;

  FreeAndNil(wMemoMAT_XML);
  FreeAndNil(wMemoMAT_ESPEC1);
  FreeAndNil(wMemoNF_XML);

  Result := True;

end;

procedure Tfrm_ImportaClientesCIGAM.FormActivate(Sender: TObject);
begin

//------------------------------------------------------------------------------
//    ***  SÓ ATIVAR ESTA PARTE DO CÓDIGO SE FOR TESTAR O XML BAIXADO  ***
//------------------------------------------------------------------------------

 { if not (cds_ImportaCIGAM.Active) then
  begin

    Screen.Cursor := crHourGlass;
    try
      lb_Processo.Caption := '***  ABRINDO XML EXISTENTE DOS CLIENTES LOCAL...';

      Application.ProcessMessages;

      cds_ImportaCIGAM.Close;
      cds_ImportaCIGAM.Open;
      cds_ImportaCIGAM.First;

      intTotal_Registros := cds_ImportaCIGAM.RecordCount;
      lbTotalClientes.Caption := IntToStr(cds_ImportaCIGAM.RecordCount);

      lb_Processo.Caption := '';

    finally
      Screen.Cursor := crDefault;
    end;

  end;  }

end;

procedure Tfrm_ImportaClientesCIGAM.rg_Tipo_ServidorClick(Sender: TObject);
begin

  intServer_EMP := rg_Tipo_Servidor.ItemIndex;
  intServer_ESPECIF1 := rg_Tipo_Servidor.ItemIndex;
  intServer_MAT := rg_Tipo_Servidor.ItemIndex;
  intServer_NF := rg_Tipo_Servidor.ItemIndex;

end;

procedure Tfrm_ImportaClientesCIGAM.cbAtualizacaoDiaChange(Sender: TObject);
begin

  cdsConfigATUALIZACAO_TODODIA.AsInteger := cbAtualizacaoDia.ItemIndex;

end;

procedure Tfrm_ImportaClientesCIGAM.cbDataUltCOmpraChange(Sender: TObject);
begin

  cdsConfigATUALIZACAO_DATAULTCOMPRA.AsInteger := cbDataUltCOmpra.ItemIndex;

end;

function Tfrm_ImportaClientesCIGAM.BuscarCondPagamento(pin,
  valor: WideString): string;
var
  retorno: WideString;
  posicao: integer;
begin
  //'  <descricao> dagfuhadgfusgdjsdg  </descricao>   dsfsafs';
  retorno := GetIntegradorCondicaoPagamentoXmlSoap(false,'', HTTPRIO4).ListarCondicaoPagamento(pin, valor);
  //ShowMessage('Valor Cond: ' + valor);
  //ShowMessage(retorno);
  result := '';
  Posicao := pos('<descricao>', LowerCase(retorno));

  if Posicao > 0 then
  begin
    retorno := copy(retorno, posicao + 11, 100);
    Posicao := pos('</descricao>', LowerCase(retorno));
    Result := trim(copy(retorno, 1, posicao - 1));
    //ShowMessage(Result);
  end;

  if Result = '' then
    log.Lines.Add('CondPagamento: ' + valor + ' não localizado ');

end;

procedure Tfrm_ImportaClientesCIGAM.SpeedButton1Click(Sender: TObject);
var
  Valor: string;
begin
  //InputQuery('Valor', 'Valor', valor);
  //ShowMessage(BuscarCondPagamento(jvEd_PIN.Text, Valor));

  Grava_Compras('342', '44343', '324234')
end;

procedure Tfrm_ImportaClientesCIGAM.HTTPRIO1BeforeExecute(
  const MethodName: String; var SOAPRequest: WideString);
begin
  GetXmlEnvio(MethodName, SOAPRequest);
end;

procedure Tfrm_ImportaClientesCIGAM.HTTPRIO2BeforeExecute(
  const MethodName: String; var SOAPRequest: WideString);
begin
  GetXmlEnvio(MethodName, SOAPRequest);
end;

procedure Tfrm_ImportaClientesCIGAM.GetXmlEnvio(MethodName: String;
  SOAPRequest: WideString);
var
  sTmp: TStringList;
  Caminho:string;
begin
  try
    Caminho := ExtractFilePath(Application.ExeName)+'XmlEnvioCigam\';

    if DirectoryExists(Caminho) then
    begin
      Caminho := Caminho + MethodName+StringReplace(StringReplace(DateTimeToStr(Now),'/','',[rfReplaceAll]), ':','',[rfReplaceAll]) +'.xml';
      sTmp:=TStringList.Create;
      sTmp.Text := SOAPRequest;
      sTmp.SaveToFile(Caminho);
    end;
  except
    on e: Exception do
      ShowMessage(e.Message);
  end;
end;

procedure Tfrm_ImportaClientesCIGAM.HTTPRIO3BeforeExecute(
  const MethodName: String; var SOAPRequest: WideString);
begin
  GetXmlEnvio(MethodName, SOAPRequest);
  
end;

end.

