// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : D:\Infotec\12092017\Itens do integrador CIGAM\Itens do integrador CIGAM\ImportacaoCIGAM\XML\cadastroCondpagamento.xml
// Encoding : utf-8
// Version  : 1.0
// (13/09/2017 22:57:27 - 1.33.2.5)
// ************************************************************************ //

unit cadastroCondpagamento;

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
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"


  // ************************************************************************ //
  // Namespace : http://webservices.cigam.com/
  // soapAction: http://webservices.cigam.com/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // binding   : IntegradorCondicaoPagamentoXmlSoap
  // service   : IntegradorCondicaoPagamentoXml
  // port      : IntegradorCondicaoPagamentoXmlSoap
  // URL       : http://srvou-cx-ven01:81/webservice/cigam/Integrador/CadastroCondicaoPagamento.integrador.asmx
  // ************************************************************************ //
  IntegradorCondicaoPagamentoXmlSoap = interface(IInvokable)
  ['{112DF01A-0787-4ACD-7E6B-E4AAEF5843FB}']
    function  ListarId(const pin: WideString): WideString; stdcall;
    function  ListarModificacoes(const pin: WideString; const dataInicial: TXSDateTime; const horaInicial: WideString; const dataFinal: TXSDateTime; const horaFinal: WideString): WideString; stdcall;
    function  ListarIndividual(const pin: WideString; const codigoCondicaoPagamento: WideString): WideString; stdcall;
    function  Listar(const pin: WideString): WideString; stdcall;
    function  ListarCondicaoPagamento(const pin: WideString; const codigoCondicaoPagamento: WideString): WideString; stdcall;
  end;

function GetIntegradorCondicaoPagamentoXmlSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): IntegradorCondicaoPagamentoXmlSoap;


implementation

uses PadStrUtils, PadUtils;

function GetIntegradorCondicaoPagamentoXmlSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): IntegradorCondicaoPagamentoXmlSoap;
const
  defWSDL_Externo = 'http://200.248.132.66:81/webservice/cigam/Integrador/CadastroCondicaoPagamento.integrador.asmx?WSDL';
  defURL_Externo  = 'http://200.248.132.66:81/webservice/cigam/Integrador/CadastroCondicaoPagamento.integrador.asmx';

  defWSDL_Interno = 'http://srvou-cx-ven01:81/webservice/cigam/Integrador/CadastroCondicaoPagamento.integrador.asmx?WSDL';
  defURL_Interno  = 'http://srvou-cx-ven01:81/webservice/cigam/Integrador/CadastroCondicaoPagamento.integrador.asmx';

  defSvc  = 'IntegradorCondicaoPagamentoXml';
  defPrt  = 'IntegradorCondicaoPagamentoXmlSoap';
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

    Result := (RIO as IntegradorCondicaoPagamentoXmlSoap);

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
  InvRegistry.RegisterInterface(TypeInfo(IntegradorCondicaoPagamentoXmlSoap), 'http://webservices.cigam.com/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(IntegradorCondicaoPagamentoXmlSoap), 'http://webservices.cigam.com/%operationName%');

end. 