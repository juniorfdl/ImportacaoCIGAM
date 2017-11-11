// ---------------------------------------------------
//
// Rotinas utilitárias diversas
//
// ---------------------------------------------------

unit PadUtils;

interface

uses
  Classes, DB, DBTables, Windows, SysUtils, Bde, Forms, Menus,
  FileCtrl, ShellAPI, Messages, Controls, Registry, Variants;

function DeleteAll(DataSet: TDataSet): Boolean;
function IsKeyViolation(E: EDatabaseError): Boolean;
function RecCount(DataSet: TDataSet): Integer;
function LockTableWrite(DataSet: TTable): Boolean;
function UnLockTableWrite(DataSet: TTable): Boolean;
function CanEditTable(DataSet: TDataSet): Boolean;
//function ExisteRegistro(MemTab: TkbmMemTable; Campos: array of string; Valores: array of Variant): Boolean;
procedure KillTable(Table: TTable);

function RoundFloat(Value: Extended): Extended;
function Exponent(BaseNumber, ToThePowerOf: Extended): Extended;
function IndiceDia(IndiceMes: Extended; DiasMes: Integer): Extended;
function IIf(LExpr: Boolean; TrueResult, FalseResult: Variant): Variant;
function ValidaCGC(CGC: string): Boolean;
function ValidaCIC(CIC: string): Boolean;
function RemoveSeparador(Palavra: string): string;
function RemoveCaracter(Palavra, Caracter: string): string;
function ValidaDigito11(NumCalc: string): Boolean;
function CalculaDigito11(NumCalc: string): string;
function WinPathTmp: string;
function GoMonth(Data: TDateTime; NumMeses: Integer): TDateTime; // equivale a funcao IncMonth do Delphi
function FinalDoMes(Data: TDateTime): TDateTime;
function DigitoReembolso(Codigo: Integer): string;
procedure DeleteRecordAll(DataSet: TDataSet);
procedure CompactaLista(Lista: TStringList);
function AjustaAno(const Ano, Janela: Integer): Integer;
procedure ExcluiArqDir(Diretorio, Arquivo: string); //Exclui arquivo(s) de um determinado diretório
function DeleteFileWithUndo(sFileName: string): boolean;
function Idade(dtNascimento, dtAtual: TDateTime): Integer;
function LoadAPSLibrary(LibName: string): THandle;
//procedure ProcurarCEP(var Endereco, Cidade, Bairro, CEP, UF: string);
function DataUtil(EmpresaCodigo: Integer; UnidadeCodigo: string; dData: tDate): tDate;
procedure SalvaParaArquivo(Str : String; NomeArquivo : String);
procedure RegistraDestinatarioPadrao(const EMail: string);
function Arredondar(Valor: Currency): Currency;
Function AnoBis(dtData: TDate): Boolean;
function DiasNoMes(dtData: TDate): Integer;

const
  MaskCIC = '000.000.000-00;1; ';
  MaskCGC = '00.000.000/0000-00;1; ';
  MaskCEP = '00000-000;1; ';
  APS_CLOSEPROG = WM_USER + $5432;

implementation

uses
  PadStrUtils;

// Grava no registro do Windows (usuário atual) o e-mail
// default de destinário para o preview
procedure RegistraDestinatarioPadrao(const EMail: string);
const
  sEnviarRegKey = '';
var
  oRegistry: TRegistry;
begin
  oRegistry := TRegistry.Create;
  try
    oRegistry.RootKey := HKEY_CURRENT_USER;
    if oRegistry.OpenKey(sEnviarRegKey, True) then
      oRegistry.WriteString('DestinatarioPadrao', EMail);
  finally
    oRegistry.CloseKey;
    oRegistry.Free;
  end;
end;

// Testa se erro é Key Violation

function IsKeyViolation(E: EDatabaseError): Boolean;
begin
  Result := (E is EDBEngineError) and (EDBEngineError(E).Errors[0].ErrorCode = DBIERR_KEYVIOL);
end;

// Verifica se pode entrar em modo edicao

function CanEditTable(DataSet: TDataSet): Boolean;
begin
  Result := True;
  try
    DataSet.Edit;
  except
    on EDatabaseError do
      Result := False;
  end;
end;

// Bloqueia tabela para gravacao

function LockTableWrite(DataSet: TTable): Boolean;
begin
  Result := True;
  try
    DataSet.LockTable(ltWriteLock);
  except
    on EDatabaseError do
      Result := False;
  end;
end;

// Desbloqueia tabela para gravacao

function UnLockTableWrite(DataSet: TTable): Boolean;
begin
  Result := True;
  try
    DataSet.UnLockTable(ltWriteLock);
  except
    on EDatabaseError do
      Result := False;
  end;
end;

// Verifica existência da tabela e a exclui

procedure KillTable(Table: TTable);
begin
  if (Table <> nil) and (Table.Database <> nil) then
  try
    if Table.Active then
      Table.Close;
    if FileExists(Table.Database.Directory + Table.TableName) then
      Table.DeleteTable;
  except;
  end;
end;

// Arredonda um número para 2 casas decimais

function RoundFloat(Value: Extended): Extended;
var

  ResultStr: string;

begin

  try

    ResultStr := FormatFloat('##########.##', Value);

    if (ResultStr = '') or (ResultStr = 'NAN') or (ResultStr = 'INF') or (ResultStr = '-INF') then
      Result := 0
    else
      Result := StrToFloat(ResultStr);

  except

    Result := 0;

  end;

end;

// Calcula Base ^ Expoente

function Exponent(BaseNumber, ToThePowerOf: Extended): Extended;
begin
  Result := Exp(Ln(BaseNumber) * ToThePowerOf);
end;

// Converte índice mensal em diário

function IndiceDia(IndiceMes: Extended; DiasMes: Integer): Extended;
begin
  Result := (Exponent(1 + (IndiceMes / 100), 1 / DiasMes) - 1) * 100;
end;

// Ex: Variant := IIf(A > B, 'A', 'B');

function IIf(LExpr: Boolean; TrueResult, FalseResult: Variant): Variant;
begin
  if LExpr then
    Result := TrueResult
  else
    Result := FalseResult;
end;

// Apaga TODOS os registros do DataSet
// Considera filtros e relacionamentos ativos

function DeleteAll(DataSet: TDataSet): Boolean;
begin
  Result := True;
  with DataSet do
  try
    First;
    while not EOF do
    begin
      Application.processmessages;
      Delete;
    end;
  except
    Result := False;
  end;
end;

// Apaga TODOS os registros do DataSet
// Considera filtros e relacionamentos ativos
// Com tratamento de excessão

procedure DeleteRecordAll(DataSet: TDataSet);
begin
  with DataSet do
  try
    First;
    while not EOF do
      Delete;
  except
    raise;
  end;
end;

function RemoveSeparador(Palavra: string): string;
var
  l, Tam: Integer;

begin
  Result := '';
  Tam := Length(Palavra);
  for l := 1 to Tam do
  begin
    if (Palavra[l] in ['0'..'9']) then
      Result := Result + Palavra[l];
  end;
end;

function RemoveCaracter(Palavra, Caracter: string): string;
var
  l, Tam: Integer;
begin
  Result := '';
  Tam := Length(Palavra);
  for l := 1 to Tam do
    if Palavra[l] <> Caracter then
      Result := Result + Palavra[l];
end;

{$HINTS OFF}

function ValidaCIC(CIC: string): Boolean;
var
  CICdig, numquoc: Integer;
  digito: string;
begin
  CICdig := 0;
  digito := '';
  CIC := RemoveSeparador(CIC);
  if Length(CIC) = 11 then
  begin
    CICdig := (StrToInt(Copy(CIC, 1, 1)) * 10 + StrToInt(Copy(CIC, 2, 1)) * 9 +
      StrToInt(Copy(CIC, 3, 1)) * 8 + StrToInt(Copy(CIC, 4, 1)) * 7 +
      StrToInt(Copy(CIC, 5, 1)) * 6 + StrToInt(Copy(CIC, 6, 1)) * 5 +
      StrToInt(Copy(CIC, 7, 1)) * 4 + StrToInt(Copy(CIC, 8, 1)) * 3 +
      StrToInt(Copy(CIC, 9, 1)) * 2) * 10;
    numquoc := CICdig - Trunc(CICdig / 11) * 11;
    if numquoc > 9 then numquoc := 0;
    digito := IntToStr(numquoc);
    CICdig := (StrToInt(Copy(CIC, 1, 1)) * 11 + StrToInt(Copy(CIC, 2, 1)) * 10 +
      StrToInt(Copy(CIC, 3, 1)) * 9 + StrToInt(Copy(CIC, 4, 1)) * 8 +
      StrToInt(Copy(CIC, 5, 1)) * 7 + StrToInt(Copy(CIC, 6, 1)) * 6 +
      StrToInt(Copy(CIC, 7, 1)) * 5 + StrToInt(Copy(CIC, 8, 1)) * 4 +
      StrToInt(Copy(CIC, 9, 1)) * 3 + StrToInt(Copy(CIC, 10, 1)) * 2) * 10;
    numquoc := CICdig - Trunc(CICdig / 11) * 11;
    if numquoc > 9 then
      numquoc := 0;
    digito := digito + IntToStr(numquoc);
    ValidaCIC := digito = Copy(CIC, 10, 2);
  end
  else
    ValidaCIC := False;
end;

function ValidaCGC(CGC: string): Boolean;
var
  CGCdig, numquoc: Integer;
  digito: string;
begin
  CGCdig := 0;
  digito := '';
  CGC := RemoveSeparador(CGC);
  if Length(CGC) = 14 then
  begin
    CGCdig := (StrToInt(Copy(CGC, 1, 1)) * 5 + StrToInt(Copy(CGC, 2, 1)) * 4 +
      StrToInt(Copy(CGC, 3, 1)) * 3 + StrToInt(Copy(CGC, 4, 1)) * 2 +
      StrToInt(Copy(CGC, 5, 1)) * 9 + StrToInt(Copy(CGC, 6, 1)) * 8 +
      StrToInt(Copy(CGC, 7, 1)) * 7 + StrToInt(Copy(CGC, 8, 1)) * 6 +
      StrToInt(Copy(CGC, 9, 1)) * 5 + StrToInt(Copy(CGC, 10, 1)) * 4 +
      StrToInt(Copy(CGC, 11, 1)) * 3 + StrToInt(Copy(CGC, 12, 1)) * 2) * 10;
    numquoc := CGCdig - Trunc(CGCdig / 11) * 11;
    if numquoc > 9 then numquoc := 0;
    digito := IntToStr(numquoc);
    CGCdig := (StrToInt(Copy(CGC, 1, 1)) * 6 + StrToInt(Copy(CGC, 2, 1)) * 5 +
      StrToInt(Copy(CGC, 3, 1)) * 4 + StrToInt(Copy(CGC, 4, 1)) * 3 +
      StrToInt(Copy(CGC, 5, 1)) * 2 + StrToInt(Copy(CGC, 6, 1)) * 9 +
      StrToInt(Copy(CGC, 7, 1)) * 8 + StrToInt(Copy(CGC, 8, 1)) * 7 +
      StrToInt(Copy(CGC, 9, 1)) * 6 + StrToInt(Copy(CGC, 10, 1)) * 5 +
      StrToInt(Copy(CGC, 11, 1)) * 4 + StrToInt(Copy(CGC, 12, 1)) * 3 +
      StrToInt(Copy(CGC, 13, 1)) * 2) * 10;
    numquoc := CGCdig - Trunc(CGCdig / 11) * 11;
    if numquoc > 9 then numquoc := 0;
    digito := digito + IntToStr(numquoc);
    ValidaCGC := digito = Copy(CGC, 13, 2);
  end
  else
    ValidaCGC := False;
end;
{$HINTS ON}

function ValidaDigito11(NumCalc: string): Boolean;
var
  Tamanho, digito: Integer;
begin
  Tamanho := Length(NumCalc) - 1;
  digito := StrToInt(Copy(NumCalc, Tamanho + 1, 1));
  Result := CalculaDigito11(NumCalc) = IntToStr(digito);
end;

function CalculaDigito11(NumCalc: string): string;
var
  acum, Cont, Tamanho, Indice,
    Digito_Base11, numero: Integer;
begin
  Tamanho := Length(NumCalc) - 1;
  Indice := 2;
  acum := 0;

  for Cont := Tamanho downto 1 do
  begin
    numero := StrToInt(Copy(NumCalc, Cont, 1)) * Indice;
    acum := acum + numero;
    Indice := Indice + 1;
    if Indice > 9 then Indice := 2;
  end;

  Digito_Base11 := 11 - (acum mod 11);
  if Digito_Base11 > 9 then Digito_Base11 := 0;

  Result := IntToStr(Digito_Base11);
end;

function WinPathTmp: string;
var
  c: string;
  I: Integer;
begin
  c := '';
  for I := 1 to 255 do
    c := c + ' ';
  GetTempPath(255, Pchar(c));
  if Trim(c) = '' then
    c := 'c:\';
  WinPathTmp := Trim(c);
end;

function RecCount(DataSet: TDataSet): Integer;
begin
  Result := 0;
  with DataSet do
  begin
    First;
    while not EOF do
    begin
      Inc(Result);
      Next;
    end;
    First;
  end;
end;

//Incrementa ou decrementa o mes em NumMeses

function GoMonth(Data: TDateTime; NumMeses: Integer): TDateTime;
var
  I: Integer;
  Dia, Mes, Ano: Word;
begin
  if NumMeses = 0 then
    Result := Data
  else
  begin
    DecodeDate(Data, Ano, Mes, Dia);
    if NumMeses > 0 then
      for I := 1 to NumMeses do
      begin
        if Mes = 12 then
        begin
          Mes := 1;
          Inc(Ano);
        end
        else
          Inc(Mes);
      end
    else
      for I := -1 downto NumMeses do
      begin
        if Mes = 1 then
        begin
          Mes := 12;
          Dec(Ano);
        end
        else
          Dec(Mes);
      end;
    if (Dia = 31) and (Mes in [4, 6, 9, 11]) then
      Dia := 30
    else
      if (Mes = 2) and (Dia > 28) then
        if Frac(Ano / 4) > 0 then
          Dia := 28
        else
          Dia := 29;
    Result := EncodeDate(Ano, Mes, Dia);
  end;
end;

//Retorna a Data com Último dia do mês

function FinalDoMes(Data: TDateTime): TDateTime;
var
  Dia, Mes, Ano: Word;
begin
  DecodeDate(Data, Ano, Mes, Dia);
  Inc(Mes);
  if Mes = 13 then
  begin
    Mes := 1;
    Inc(Ano);
  end;
  Data := EncodeDate(Ano, Mes, 1);
  Result := Data - 1;
end;

function DigitoReembolso(Codigo: Integer): string;
var
  AuxCodigo: string;
  TotalDigito, Resto: Integer;
begin
  Result := '0';
  AuxCodigo := PadZero(Codigo, 8);
  TotalDigito := (StrToIntDef(Copy(AuxCodigo, 1, 1), 0) * 8) +
    (StrToIntDef(Copy(AuxCodigo, 2, 1), 0) * 6) +
    (StrToIntDef(Copy(AuxCodigo, 3, 1), 0) * 4) +
    (StrToIntDef(Copy(AuxCodigo, 4, 1), 0) * 2);
  TotalDigito := TotalDigito +
    (StrToIntDef(Copy(AuxCodigo, 5, 1), 0) * 3) +
    (StrToIntDef(Copy(AuxCodigo, 6, 1), 0) * 5) +
    (StrToIntDef(Copy(AuxCodigo, 7, 1), 0) * 9) +
    (StrToIntDef(Copy(AuxCodigo, 8, 1), 0) * 7);
  Resto := TotalDigito div 11;
  Resto := Resto * 11;
  if Resto = TotalDigito then
    Result := '5'
  else
  begin
    Result := IntToStr(11 - (TotalDigito - Resto));
    if StrToIntDef(Result, 0) > 9 then
      Result := '0';
  end;
end;

// Testa a existência de um determinado registro em uma Tabela de Memória

{function ExisteRegistro(MemTab: TkbmMemTable; Campos: array of string; Valores: array of Variant): Boolean;
var
  I, Cont: Integer;
begin
  Result := False;
  if MemTab.RecordCount > 0 then
  begin
    MemTab.First;
    while (not Result) and (not MemTab.EOF) do
    begin
      Cont := 0;
      for I := Low(Campos) to High(Campos) do
      begin
        if ((MemTab.FieldByName(Campos[I]).AsString = '') and (VarToStr(Valores[I]) = '')) or
          ((MemTab.FieldByName(Campos[I]).AsString = '') and (VarToStr(Valores[I]) = '0')) or
          (MemTab.FieldByName(Campos[I]).Value = Valores[I]) then
          Inc(Cont);
      end;
      Result := Cont = (High(Campos) - Low(Campos) + 1);
      if not Result then
        MemTab.Next;
    end;
  end;
end; }

// Elimina linhas em branco no final

procedure CompactaLista(Lista: TStringList);
var
  I: Integer;
begin
  if Lista.Count = 0 then Exit;
  for I := Lista.Count - 1 downto 0 do
    if Lista[I] = '' then
      Lista.Delete(I)
    else
      Break;
end;

function AjustaAno(const Ano, Janela: Integer): Integer;
var
  Base, Mes, Dia: Word;
begin
  DecodeDate(Now, Base, Mes, Dia);
  Base := (Base div 100);
  if Ano >= Janela then
    Result := (Base - 1) * 100 + Ano
  else
    Result := Base * 100 + Ano;
end;

procedure ExcluiArqDir(Diretorio, Arquivo: string);
var
  SearchRec: TSearchRec;
  iTerminado: Integer;
begin
  iTerminado := FindFirst(Diretorio + '\' + Arquivo, 0, SearchRec);
  try
    while iTerminado = 0 do
    begin
      DeleteFile(Diretorio + '\' + SearchRec.Name);
      iTerminado := FindNext(SearchRec);
      Application.ProcessMessages;
    end;
  finally
    FindClose(SearchRec);
  end;
end;

function DeleteFileWithUndo(sFileName: string): boolean;
var
  fos: TSHFileOpStruct;
begin
  FillChar(fos, SizeOf(fos), 0);
  with fos do
  begin
    wFunc := FO_DELETE;
    pFrom := PChar(sFileName);
    fFlags := FOF_ALLOWUNDO or FOF_NOCONFIRMATION or FOF_SILENT;
  end;
  Result := (0 = ShFileOperation(fos));
end;

function Idade(dtNascimento, dtAtual: TDateTime): Integer;
var
  wAnoN, wMesN, wDiaN, wAnoA, wMesA, wDiaA: Word;
begin
  DecodeDate(dtNascimento, wAnoN, wMesN, wDiaN);
  DecodeDate(dtAtual, wAnoA, wMesA, wDiaA);
  Result := wAnoA - wAnoN;
  if (not IsLeapYear(wAnoA))
    and (wMesN = 2)
    and (wDiaN = 29) then
  begin
    wMesN := 3;
    wDiaN := 1;
  end;
  if EncodeDate(wAnoA, wMesN, wDiaN) > dtAtual then
    Result := Result - 1;
end;

{procedure ProcurarCEP(var Endereco, Cidade, Bairro, CEP, UF: string);
begin
  try
    Screen.Cursor := crHourglass;
    Application.CreateForm(TfrmBuscarCEP, frmBuscarCEP);
    frmBuscarCEP.sEndereco := Endereco;
    frmBuscarCEP.sCidade := Cidade;
    frmBuscarCEP.sBairro := Bairro;
    frmBuscarCEP.sCEP := CEP;
    frmBuscarCEP.sUF := UF;
    Screen.Cursor := crDefault;
    if frmBuscarCEP.ShowModal = mrOk then
    begin
      Endereco := frmBuscarCEP.sEndereco;
      Cidade := frmBuscarCEP.sCidade;
      Bairro := frmBuscarCEP.sBairro;
      CEP := frmBuscarCEP.sCEP;
      UF := frmBuscarCEP.sUF;
    end;
  finally
    frmBuscarCEP.Free;
    frmBuscarCEP := nil;
    Screen.Cursor := crDefault;
  end;
end;}

function LoadAPSLibrary(LibName: string): THandle;
var
  iPos: Integer;
  sLib, sPath: string;
  Reg: TRegistry;
begin
  sLib := LibName;
  iPos := Pos('_', LibName);
  if iPos > 1 then
    sLib := Copy(LibName, 1, iPos - 1) + '\' + LibName;
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey('\Software\Gvdasa\APS', True) then
      sPath := RemoveCaracter(Reg.ReadString('ExePath'), '"');
    Result := LoadLibrary(PChar(sPath + sLib));
  finally
    Reg.CloseKey;
    Reg.Free;
  end;
end;

function DataUtil(EmpresaCodigo: Integer; UnidadeCodigo: string; dData: tDate): tDate;
var
  bAchou: Boolean;
  tblFeriados: TTable;
begin
  tblFeriados := TTable.Create(nil);
  try
    tblFeriados.DatabaseName := 'Padrao';
    tblFeriados.TableName := 'PadFeriado.DB';
    tblFeriados.Open;
    tblFeriados.IndexFieldNames := 'EmpresaCodigo;UnidadeCodigo;DataFeriado';
    bAchou := False;
    while not bAchou do
    begin
      if (not tblFeriados.FindKey([EmpresaCodigo, UnidadeCodigo, dData])) and
        (DayOfWeek(dData) in [2..6]) then
        bAchou := True
      else
        dData := dData + 1;
    end;
  finally
    tblFeriados.Close;
    tblFeriados.Free;
  end;
  result := dData;
end;

procedure SalvaParaArquivo(Str : String; NomeArquivo : String);
var
  sl : TStringList;
begin
  sl := TStringList.Create;
  try
    sl.Text := Str;
    sl.SaveToFile(NomeArquivo);
  finally
    sl.Free;
  end;
end;

function Arredondar(Valor: Currency): Currency;
var

  sValString: String;

  iPosPonto: Smallint;

begin

  Result := 0;

  sValString := CurrToStr(valor);
  iPosPonto  := Pos(',', sValString);
  sValString := Copy(sValString,1, iPosPonto - 1);

  If iPosPonto = 0 then
    Result := Valor
  else
    Result := StrToCurr(sValString);

end;

//-----------------------------------
//  VE SE O O ANO É BISSESTO
//-----------------------------------

Function AnoBis(dtData: TDate): Boolean;
Var

  wDia,
  wMes,
  wAno: Word;

begin

  Result := False;

  DecodeDate(dtData, wAno, wMes, wDia);

  If (wAno Mod 4 <> 0) then
    Result := False
  else
    If (wAno mod 100 <> 0) then
      Result := True
    else
      If (wAno mod 400 <> 0) then
        Result := False
      else
        Result := True;

end;

//--------------------------------------------------
//   RETORNA OS DIAS EM UM DETERMINADO MES DO ANO
//--------------------------------------------------

function DiasNoMes(dtData: TDate): Integer;
Var

  wDia,
  wMes,
  wAno: Word;

begin

  Result := 30;

  DecodeDate(dtData, wAno, wMes, wDia);

  case wMes of
    1,3,5,7,8,10,12: Result := 31;
    4,6,9,11:        Result := 30;
    2:               If AnoBis(dtData) then
                       Result := 29
                     else
                       Result := 28;
  end;

end;

end.

