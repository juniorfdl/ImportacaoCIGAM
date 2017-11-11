// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://200.248.132.66:81/webservice/cigam/Integrador/CadastroMateriais.integrador.asmx?WSDL
// WSDL-1   : http://srvou-cx-ven01:81/webservice/cigam/Integrador/CadastroMateriais.integrador.asmx?WSDL
// Encoding : utf-8
// Version  : 1.0
// (24/07/2017 08:57:54 - 1.33.2.5)
// ************************************************************************ //

unit uwsCadastroMateriais;

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
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"
  // !:float           - "http://www.w3.org/2001/XMLSchema"
  // !:int             - "http://www.w3.org/2001/XMLSchema"
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"


  // ************************************************************************ //
  // Namespace : http://webservices.cigam.com/
  // soapAction: http://webservices.cigam.com/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // binding   : IntegradorMateriaisXmlSoap
  // service   : IntegradorMateriaisXml
  // port      : IntegradorMateriaisXmlSoap
  // URL       : http://200.248.132.66:81/webservice/cigam/Integrador/CadastroMateriais.integrador.asmx
  // URL-1     : http://srvou-cx-ven01:81/webservice/cigam/Integrador/CadastroMateriais.integrador.asmx
  // ************************************************************************ //
  IntegradorMateriaisXmlSoap = interface(IInvokable)
  ['{4A5235D0-6C5F-FEFE-CBFE-6FBD48999EB5}']
    function  Cadastrar(const pin: WideString; const statusRegistro: WideString; const codigoGrupo: WideString; const codigoSubGrupo: WideString; const codigoMaterial: WideString; const descricao: WideString; const tipo: WideString; const codigoUnidadeNegocio: WideString; const codigoUnidadeMedida: WideString; const utilizaGrade: WideString;
                        const grade: WideString; const controlaNumeroSerie: Boolean; const estruturaComercial: Boolean; const contabilPrincipalInvSped: Single; const codigoReduzido: Integer; const codigoFiscal: Integer; const referencia: WideString; const tabPrecosEstruturaComercial: WideString; const manterPedidoNf: WideString
                        ): WideString; stdcall;
    function  ListarPendentes(const pin: WideString; const statusRegistro: WideString; const acao: WideString): WideString; stdcall;
    function  ListarId(const pin: WideString): WideString; stdcall;
    function  ListarIndividual(const pin: WideString; const codigoMaterial: WideString): WideString; stdcall;
    function  ListarMateriais(const pin: WideString; const codigoMaterialInicial: WideString; const codigoMaterialFinal: WideString; const codigoGrupoInicial: WideString; const codigoGrupoFinal: WideString; const codigoSubGrupoInicial: WideString; const codigoSubGrupoFinal: WideString; const tipoInicial: WideString; const tipoFinal: WideString; const codigoUnidadeNegocioInicial: WideString; 
                              const codigoUnidadeNegocioFinal: WideString; const codigoUnidadeMedidaInicial: WideString; const codigoUnidadeMedidaFinal: WideString; const utilizaGradeInicial: WideString; const utilizaGradeFinal: WideString; const controlaNumeroSerie: WideString; const estruturaComercial: WideString; const dataInicial: TXSDateTime; const horaInicial: WideString; 
                              const dataFinal: TXSDateTime; const horaFinal: WideString): WideString; stdcall;
    function  ListarModificacoes(const pin: WideString; const dataInicial: TXSDateTime; const horaInicial: WideString; const dataFinal: TXSDateTime; const horaFinal: WideString): WideString; stdcall;
    function  LiberarPendentes(const pin: WideString; const id: Integer): WideString; stdcall;
    function  ListarEstoqueOnLine(const pin: WideString; const codigoMaterialInicial: WideString; const codigoMaterialFinal: WideString; const codigoCentroArmazenagemInicial: WideString; const codigoCentroArmazenagemFinal: WideString; const codigoEspecif1: WideString; const codigoEspecif2: WideString; const codigoEspecif3: WideString; const numeracao: WideString; const lote: WideString; 
                                  const tipoResposta: WideString): WideString; stdcall;
    function  ListarEstoqueOnLinePelaValidade(const pin: WideString; const codigoMaterialInicial: WideString; const codigoMaterialFinal: WideString; const codigoCentroArmazenagemInicial: WideString; const codigoCentroArmazenagemFinal: WideString; const codigoEspecif1: WideString; const codigoEspecif2: WideString; const codigoEspecif3: WideString; const numeracao: WideString; const lote: WideString; 
                                              const dataValidadeInicial: TXSDateTime; const dataValidadeFinal: TXSDateTime; const tipoResposta: WideString): WideString; stdcall;
    function  ListarValidadeLote(const pin: WideString; const codigoMaterialInicial: WideString; const codigoMaterialFinal: WideString; const codigoCentroArmazenagemInicial: WideString; const codigoCentroArmazenagemFinal: WideString; const codigoEspecif1: WideString; const codigoEspecif2: WideString; const codigoEspecif3: WideString; const numeracao: WideString; const lote: WideString; 
                                 const dataValidadeInicial: TXSDateTime; const dataValidadeFinal: TXSDateTime; const tipoResposta: WideString): WideString; stdcall;
    function  ListarMateriaisPaginada(const pin: WideString; const camposRetorno: WideString; const filtro: WideString; const pagina: WideString; const quantidadeRegistros: WideString): WideString; stdcall;
    function  ListarDisponibilidadeUnidadeNegocio(const pin: WideString; const codigoMaterial: WideString; const codigoEspecif1: WideString; const codigoEspecif2: WideString; const codigoEspecif3: WideString; const numeracao: WideString; const codigoUnidadeNegocio: WideString): WideString; stdcall;
    function  ListarItensConferencia(const pin: WideString; const dtInicial: TXSDateTime; const dtFinal: TXSDateTime): WideString; stdcall;
    function  ListarItensSeparacao(const pin: WideString; const dtInicial: TXSDateTime; const dtFinal: TXSDateTime): WideString; stdcall;
    function  ListarItensFaturamento(const pin: WideString; const dtInicial: TXSDateTime; const dtFinal: TXSDateTime): WideString; stdcall;
    function  Excluir(const pin: WideString; const codigoMaterial: WideString): WideString; stdcall;
    function  Listar(const pin: WideString; const codigoMaterialInicial: WideString; const codigoMaterialFinal: WideString; const codigoGrupoInicial: WideString; const codigoGrupoFinal: WideString; const codigoSubGrupoInicial: WideString; const codigoSubGrupoFinal: WideString): WideString; stdcall;
    function  ListarCodigoBarrasItensConferencia(const pin: WideString; const dataInicial: TXSDateTime; const dataFinal: TXSDateTime): WideString; stdcall;
    function  ListarCodigoBarrasItensFaturamento(const pin: WideString; const dataInicial: TXSDateTime; const dataFinal: TXSDateTime): WideString; stdcall;
    function  ListarCodigoBarrasItensSeparacao(const pin: WideString; const dataInicial: TXSDateTime; const dataFinal: TXSDateTime): WideString; stdcall;
  end;

function GetIntegradorMateriaisXmlSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): IntegradorMateriaisXmlSoap;


implementation

uses PadStrUtils;

function GetIntegradorMateriaisXmlSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): IntegradorMateriaisXmlSoap;
const

//srvou-cx-ven01:81

  defWSDL_Externo = 'http://200.248.132.66:81/webservice/cigam/Integrador/CadastroMateriais.integrador.asmx?WSDL';
  defURL_Externo  = 'http://200.248.132.66:81/webservice/cigam/Integrador/CadastroMateriais.integrador.asmx';

  defWSDL_Interno = 'http://srvou-cx-ven01:81/webservice/cigam/Integrador/CadastroMateriais.integrador.asmx?WSDL';
  defURL_Interno  = 'http://srvou-cx-ven01:81/webservice/cigam/Integrador/CadastroMateriais.integrador.asmx';

  defSvc  = 'IntegradorMateriaisXml';
  defPrt  = 'IntegradorMateriaisXmlSoap';

var

  RIO: THTTPRIO;

begin

  Result := nil;

  if (Addr = '') then
  begin

    if intServer_MAT = 0 then
    begin

      if UseWSDL then
        Addr := defWSDL_Externo
      else
        Addr := defURL_Externo;

    end
    else
      if intServer_MAT = 1 then
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

    Result := (RIO as IntegradorMateriaisXmlSoap);

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
  InvRegistry.RegisterInterface(TypeInfo(IntegradorMateriaisXmlSoap), 'http://webservices.cigam.com/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(IntegradorMateriaisXmlSoap), 'http://webservices.cigam.com/%operationName%');

end.