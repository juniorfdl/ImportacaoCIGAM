// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://200.248.132.66:81/webservice/cigam/Integrador/CadastroNotaFiscal.integrador.asmx?WSDL
// WSDL-1   : http://srvou-cx-ven01:81/webservice/cigam/Integrador/CadastroNotaFiscal.integrador.asmx?WSDL
// Encoding : utf-8
// Version  : 1.0
// (13/07/2017 10:39:04 - 1.33.2.5)
// ************************************************************************ //

unit uwsCadastroNotaFiscalCIGAM;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

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

  // srvou-cx-ven01:81

  // ************************************************************************ //
  // Namespace : http://webservices.cigam.com/
  // soapAction: http://webservices.cigam.com/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // binding   : IntegradorNotaFiscalXmlSoap
  // service   : IntegradorNotaFiscalXml
  // port      : IntegradorNotaFiscalXmlSoap
  // URL       : http://200.248.132.66:81/webservice/cigam/Integrador/CadastroNotaFiscal.integrador.asmx
  // URL-1     : http://srvou-cx-ven01:81/webservice/cigam/Integrador/CadastroNotaFiscal.integrador.asmx
  // ************************************************************************ //
  IntegradorNotaFiscalXmlSoap = interface(IInvokable)
  ['{92A362A6-A5D8-3B46-7800-70325521E0E5}']
    function  ListarId(const pin: WideString): WideString; stdcall;
    function  ListarPendentes(const pin: WideString; const statusRegistro: WideString; const acao: WideString): WideString; stdcall;
    function  LiberarPendentes(const pin: WideString; const id: Integer; const liberarCorrelatos: Boolean): WideString; stdcall;
    function  ListarNotasFiscais(const pin: WideString; const nf: Integer; const serie: WideString; const codigoUnidadeNegocio: WideString; const tipoOperacao: WideString; const codigoCliente: WideString; const codigoRepresentante: WideString; const tipoNota: WideString; const codigoTransportadora: WideString; const dataEmissaoInicial: TXSDateTime;
                                 const dataEmissaoFinal: TXSDateTime): WideString; stdcall;
    function  ListarNotasFiscaisPaf(const pin: WideString; const nf: Integer; const serie: WideString; const codigoUnidadeNegocio: WideString; const tipoOperacao: WideString; const codigoCliente: WideString; const codigoRepresentante: WideString; const tipoNota: WideString; const codigoTransportadora: WideString; const dataEmissaoInicial: TXSDateTime;
                                    const dataEmissaoFinal: TXSDateTime): WideString; stdcall;
    function  ListasNFsMultiplasFormasPagamento(const pin: WideString; const nf: Integer; const serie: WideString; const codigoUnidadeNegocio: WideString; const tipoOperacao: WideString; const codigoCliente: WideString; const codigoRepresentante: WideString; const tipoNota: WideString; const codigoTransportadora: WideString; const dataEmissaoInicial: TXSDateTime;
                                                const dataEmissaoFinal: TXSDateTime; const exibirInfoPaf: Boolean): WideString; stdcall;
    function  ListarComissoesPorRepresentante(const pin: WideString; const cdRepresentante: WideString; const dtEmissaoInicial: TXSDateTime; const dtEmissaoFinal: TXSDateTime): WideString; stdcall;
    function  CadastrarNotasFiscais(const pin: WideString; const statusRegistro: WideString; const notaFiscalXml: WideString): WideString; stdcall;
  end;

function GetIntegradorNotaFiscalXmlSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): IntegradorNotaFiscalXmlSoap;


implementation

uses PadStrUtils;

function GetIntegradorNotaFiscalXmlSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): IntegradorNotaFiscalXmlSoap;
const

//srvou-cx-ven01:81

  defWSDL_Externo = 'http://200.248.132.66:81/webservice/cigam/Integrador/CadastroNotaFiscal.integrador.asmx?WSDL';
  defURL_Externo  = 'http://200.248.132.66:81/webservice/cigam/Integrador/CadastroNotaFiscal.integrador.asmx';

  defWSDL_Interno = 'http://srvou-cx-ven01:81/webservice/cigam/Integrador/CadastroNotaFiscal.integrador.asmx?WSDL';
  defURL_Interno  = 'http://srvou-cx-ven01:81/webservice/cigam/Integrador/CadastroNotaFiscal.integrador.asmx';

  defSvc  = 'IntegradorNotaFiscalXml';
  defPrt  = 'IntegradorNotaFiscalXmlSoap';

var
  RIO: THTTPRIO;

begin

  Result := nil;

  if (Addr = '') then
  begin

    if intServer_NF = 0 then
    begin

      if UseWSDL then
        Addr := defWSDL_Externo
      else
        Addr := defURL_Externo;

    end
    else
      if intServer_NF = 1 then
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

    Result := (RIO as IntegradorNotaFiscalXmlSoap);

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
  InvRegistry.RegisterInterface(TypeInfo(IntegradorNotaFiscalXmlSoap), 'http://webservices.cigam.com/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(IntegradorNotaFiscalXmlSoap), 'http://webservices.cigam.com/%operationName%');

end.