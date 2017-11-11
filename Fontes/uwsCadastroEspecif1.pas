// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://200.248.132.66:81/webservice/cigam/Integrador/CadastroEspecif1.integrador.asmx?WSDL
// WSDL-1   : http://srvou-cx-ven01:81/webservice/cigam/Integrador/CadastroEspecif1.integrador.asmx?WSDL
// Encoding : utf-8
// Version  : 1.0
// (24/07/2017 14:34:27 - 1.33.2.5)
// ************************************************************************ //

unit uwsCadastroEspecif1;

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
  // binding   : IntegradorEspecif1XmlSoap
  // service   : IntegradorEspecif1Xml
  // port      : IntegradorEspecif1XmlSoap
  // URL       : http://200.248.132.66:81/webservice/cigam/Integrador/CadastroEspecif1.integrador.asmx
  // URL-2     : http://srvou-cx-ven01:81/webservice/cigam/Integrador/CadastroEspecif1.integrador.asmx
  // ************************************************************************ //
  IntegradorEspecif1XmlSoap = interface(IInvokable)
  ['{09AC48F7-1786-E297-F2FA-C48FB61CBF30}']
    function  ListarId(const pin: WideString): WideString; stdcall;
    function  ListarIndividual(const pin: WideString; const codigoEspecif1: WideString; const codigoGrupo: WideString; const codigoSubGrupo: WideString): WideString; stdcall;
    function  ListarModificacoes(const pin: WideString; const dataInicial: TXSDateTime; const horaInicial: WideString; const dataFinal: TXSDateTime; const horaFinal: WideString): WideString; stdcall;
  end;

function GetIntegradorEspecif1XmlSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): IntegradorEspecif1XmlSoap;


implementation

uses PadStrUtils;

function GetIntegradorEspecif1XmlSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): IntegradorEspecif1XmlSoap;
const

  defWSDL_Externo = 'http://200.248.132.66:81/webservice/cigam/Integrador/CadastroEspecif1.integrador.asmx?WSDL';
  defURL_Externo  = 'http://200.248.132.66:81/webservice/cigam/Integrador/CadastroEspecif1.integrador.asmx';

  defWSDL_Interno = 'http://srvou-cx-ven01:81/webservice/cigam/Integrador/CadastroEspecif1.integrador.asmx?WSDL';
  defURL_Interno  = 'http://srvou-cx-ven01:81/webservice/cigam/Integrador/CadastroEspecif1.integrador.asmx';

  defSvc  = 'IntegradorEspecif1Xml';
  defPrt  = 'IntegradorEspecif1XmlSoap';

var

  RIO: THTTPRIO;

begin

  Result := nil;

  if (Addr = '') then
  begin

    if intServer_ESPECIF1 = 0 then
    begin

      if UseWSDL then
        Addr := defWSDL_Externo
      else
        Addr := defURL_Externo;

    end
    else
      if intServer_ESPECIF1 = 1 then
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

    Result := (RIO as IntegradorEspecif1XmlSoap);

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
  InvRegistry.RegisterInterface(TypeInfo(IntegradorEspecif1XmlSoap), 'http://webservices.cigam.com/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(IntegradorEspecif1XmlSoap), 'http://webservices.cigam.com/%operationName%');

end.