// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL-1   : http://200.248.132.66:81/webservice/cigam/Integrador/CadastroEmpresas.integrador.asmx?WSDL
// WSDL     : http://srvou-cx-ven01:81/webservice/cigam/Integrador/CadastroEmpresas.integrador.asmx?WSDL
// Encoding : utf-8
// Version  : 1.0
// (23/06/2017 11:37:23 - 1.33.2.5)
// ************************************************************************ //

unit uwsCadastroEmpresasCIGAM;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns, PadStrUtils;

type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Borland types; however, they could also
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"
  // !:int             - "http://www.w3.org/2001/XMLSchema"
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"
  // !:float           - "http://www.w3.org/2001/XMLSchema"


  // ************************************************************************ //
  // Namespace : http://webservices.cigam.com/
  // soapAction: http://webservices.cigam.com/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // binding   : IntegradorEmpresasXmlSoap
  // service   : IntegradorEmpresasXml
  // port      : IntegradorEmpresasXmlSoap
  // URL-1     : http://200.248.132.66:81/webservice/cigam/Integrador/CadastroEmpresas.integrador.asmx
  // URL       : http://srvou-cx-ven01:81/webservice/cigam/Integrador/CadastroEmpresas.integrador.asmx?
  // ************************************************************************ //
  IntegradorEmpresasXmlSoap = interface(IInvokable)
  ['{DEFF5E48-D521-B30F-21E1-23257AB1B612}']
  
  {  function  Cadastrar(const pin: WideString; const statusRegistro: WideString; const codigoEmpresa: WideString; const nomeCompleto: WideString; const contato: WideString; const fone: WideString; const faxFone: WideString; const endereco: WideString; const bairro: WideString; const municipio: WideString;
                        const uf: WideString; const cep: Integer; const cnpjCpf: WideString; const inscrito: Boolean; const inscricao: WideString; const conceito: WideString; const codigoDivisao: WideString; const dtNascimento: TXSDateTime; const codigoIndicacao: WideString;
                        const codigoRepresentante: WideString; const percentualComissaoBaixa: Single; const contabilCliente: WideString; const codigoResponsavel: WideString; const fantasia: WideString; const pessoa: Boolean; const contabilFornecedor: WideString; const codigoCondicaoPagamento: WideString; const codigoTipoPagamento: WideString;
                        const codigoTipoOperacao: WideString; const irrfAcumulado: Single; const tipoEmpresa: WideString; const atividade: WideString; const funcionarios: Integer; const faturamento: Single; const limiteCredito: Single; const codigoMercado: WideString; const enviarCarta: WideString;
                        const tabelaPrecos: WideString; const agendaInterna: WideString; const codigoPais: WideString; const codigoCentralizadora: WideString; const atrasoMedio: Integer; const numero: WideString; const complemento: WideString; const inscricaoMunicipal: WideString; const suframa: WideString;
                        const tipoFrete: WideString; const percentualIndenizacao: Single; const percDescontoSugestaoItens: Single; const percentualDesconto2: Single; const jurosPadrao: Single; const codigoUnidadeNegocio: WideString; const codigoPortadorPadrao: WideString; const ativo: Boolean; const codigoContabilAdiantamentoCli: WideString;
                        const codigoContabilAdiantamentoForn: WideString; const codigoCentroArmazenagem: WideString; const codigoIndiceCredito: WideString; const codigoRegiaoEntrega: WideString; const dtValidadeCredito: TXSDateTime; const codigoSetor: WideString; const codigoRegimeTributario: WideString; const dtUltimaConsultaCredito: TXSDateTime; const validadeCobrancaAdmin: TXSDateTime;
                        const dtUltimaVenda: TXSDateTime; const prefixoCnae: WideString; const basePrazoDiferenciado: WideString; const possuiRetencaoIss: WideString; const codigoCentroArmazenagemMatAlte: WideString; const filtroDataDirf: WideString; const tipoImovel: WideString; const listarIss: WideString; const diaVencimento: WideString;
                        const limiteFaturamento: WideString; const grauRelacionamento: WideString; const sufixoCnae: WideString; const toleranciaVencimento: WideString; const nivelCredito: WideString; const listarDirf: Boolean; const conveniada: Boolean; const creditoLiberado: Boolean; const percentualFrete: Single;
                        const codigoEan: Single; const percentualAcrescimoLimite: Single; const percentualAcrescimoPreco: Single; const utilizaPrazoDiferenciado: Single; const tgPadraoNfs: Single; const limiteCreditoMensal: Single; const optanteSimples: Single; const Usrempr1: WideString; const Usrempr2: WideString;
                        const cnaeServico: WideString; const Usrempr4: TXSDateTime; const valorFrete: Single): WideString; stdcall;
    }

    function  Excluir(const pin: WideString; const codigoEmpresa: WideString): WideString; stdcall;
    function  ListarIndividual(const pin: WideString; const codigoEmpresa: WideString): WideString; stdcall;
    function  ListarPorCnpjCpf(const pin: WideString; const cnpjCpf: WideString; const listarEndereco: Boolean): WideString; stdcall;
    function  ListarId(const pin: WideString): WideString; stdcall;
    function  ListarModificacoes(const pin: WideString; const dataInicial: TXSDateTime; const horaInicial: WideString; const dataFinal: TXSDateTime; const horaFinal: WideString): WideString; stdcall;
    function  ListarEmpresas(const pin: WideString; const codigoEmpresaInicial: WideString; const codigoEmpresaFinal: WideString; const nomeInicial: WideString; const nomeFinal: WideString; const fantasiaInicial: WideString; const fantasiaFinal: WideString; const pessoa: WideString; const codigoDivisaoinicial: WideString; const codigoDivisaoFinal: WideString;
                             const codigoAtividadeInicial: WideString; const codigoAtividadeFinal: WideString; const cnpjCpfInicial: WideString; const cnpjCpfFinal: WideString; const municipioInicial: WideString; const municipioFinal: WideString; const ativo: WideString; const dataInicial: TXSDateTime; const horaInicial: WideString;
                             const dataFinal: TXSDateTime; const horaFinal: WideString): WideString; stdcall;
    function  ListarEmpresasCompleto(const pin: WideString; const codigoEmpresaInicial: WideString; const codigoEmpresaFinal: WideString; const nomeInicial: WideString; const nomeFinal: WideString; const fantasiaInicial: WideString; const fantasiaFinal: WideString; const pessoa: WideString; const codigoDivisaoinicial: WideString; const codigoDivisaoFinal: WideString;
                                     const codigoAtividadeInicial: WideString; const codigoAtividadeFinal: WideString; const cnpjCpfInicial: WideString; const cnpjCpfFinal: WideString; const municipioInicial: WideString; const municipioFinal: WideString; const ativo: WideString; const dataInicial: TXSDateTime; const horaInicial: WideString;
                                     const dataFinal: TXSDateTime; const horaFinal: WideString; const suprimirNivelFilhoVazio: Boolean): WideString; stdcall;
    function  CadastrarEmpresas(const pin: WideString; const statusRegistro: WideString; const empresasXml: WideString): WideString; stdcall;
    function  ListarPendentes(const pin: WideString; const statusRegistro: WideString; const acao: WideString): WideString; stdcall;
    function  LiberarPendentes(const pin: WideString; const id: Integer; const liberarCorrelatos: Boolean): WideString; stdcall;
    function  ListarEmpresasPorCentralizadora(const pin: WideString; const codigoCentralizadora: WideString): WideString; stdcall;
    function  ListarEmpresasPorRepresentante(const pin: WideString; const codigoRepresentante: WideString; const somenteAtivos: Boolean): WideString; stdcall;
    function  ListarRepresentantesPorEmpresa(const pin: WideString; const codigoEmpresa: WideString; const dataInicial: TXSDateTime; const horaInicial: WideString; const dataFinal: TXSDateTime; const horaFinal: WideString): WideString; stdcall;
    function  ListarTransportadoras(const pin: WideString; const dtInicial: TXSDateTime; const dtFinal: TXSDateTime): WideString; stdcall;
  end;

function GetIntegradorEmpresasXmlSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): IntegradorEmpresasXmlSoap;
           
implementation

//uses PadStrUtils;

{procedure httpRioBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
begin
  SOAPRequest.Position := 0;
  mmRequest.Lines.LoadFromStream(SOAPRequest);
  SOAPRequest.Position := 0;
end; }

function GetIntegradorEmpresasXmlSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): IntegradorEmpresasXmlSoap;
const

  defWSDL_Externo = 'http://200.248.132.66:81/webservice/cigam/Integrador/CadastroEmpresas.integrador.asmx?WSDL';
  defURL_Externo  = 'http://200.248.132.66:81/webservice/cigam/Integrador/CadastroEmpresas.integrador.asmx';

  defWSDL_Interno = 'http://srvou-cx-ven01:81/webservice/cigam/Integrador/CadastroEmpresas.integrador.asmx?WSDL';
  defURL_Interno  = 'http://srvou-cx-ven01:81/webservice/cigam/Integrador/CadastroEmpresas.integrador.asmx';

  defSvc  = 'IntegradorEmpresasXml';
  defPrt  = 'IntegradorEmpresasXmlSoap';

var
  RIO: THTTPRIO;  
begin
  Result := nil;

  if (Addr = '') then
  begin
    if intServer_EMP = 0 then
    begin
      if UseWSDL then
        Addr := defWSDL_Externo
      else
        Addr := defURL_Externo;
    end
    else
      if intServer_EMP = 1 then
      begin
        if UseWSDL then
          Addr := defWSDL_Interno
        else
          Addr := defURL_Interno;
      end;
  end;

  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;     

  try
    Result := (RIO as IntegradorEmpresasXmlSoap);

    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service      := defSvc;
      RIO.Port         := defPrt; 
    end
    else
      RIO.URL := Addr;  
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;

end;


initialization
  InvRegistry.RegisterInterface(TypeInfo(IntegradorEmpresasXmlSoap), 'http://webservices.cigam.com/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(IntegradorEmpresasXmlSoap), 'http://webservices.cigam.com/%operationName%');
end.
