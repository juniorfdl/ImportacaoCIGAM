(* =========================================================================
   Rotinas para tratamento de strings
   ========================================================================= *)

unit PadStrUtils;

interface

uses
  Classes, SysUtils, Windows, Mask;

//function StrOEMToANSI(parStr: string): string;
function SubstituiCaracter(Str: string; Origem, Destino: Char): string;
function RemoveCaracter(Str: string; Caracter: Char): string;
function RemoveExt(TableName: string): string;
function StrAlign(Str: string; Len: Integer; Alignment: TAlignment): string;
function LeftAlign(Str: string; Len: Integer): string;
function LeftPad(Str: string; Len: Integer): string;
function RightAlign(Str: string; Len: Integer): string;
function CenterAlign(Str: string; Len: Integer): string;
function Spaces(Len: Integer): string;
function Zeros(Len: Integer): string;
function TrimLeftZero(Str: string): string;
function AllTrim(Str: string): string;
function AllChrTrim(Str: string; ToKill: Char; TrimSpaces: Boolean): string;
function PadZero(Number, Len: Integer): string;
function StrPadZero(Number: string; Len: Integer): string;
function StrRPadZero(Number: string; Len: Integer): string;
function FloatPadZero(Number: Extended; Len: Integer): string;
function Replicate(Str: string; Times: Integer): string;
function FloatToInt(Number: Extended): Longint;
function TrimStrToInt(Number: string): Longint;
function TrimStrToFloat(Number: string): Extended;
function StrConvAcentos(Str: string): string;
function Capitalize(Str: string): string;
function IsLower(Ch: Char): Boolean;
function IsUpper(Ch: Char): Boolean;
function CharToStr(Ch: Char): string;
function StrBreak(Str, Delimit: string; StringList: TStringList): TStringList;
function StrFlip(Str: string): string;
function FormatFloatFixed(Number: Extended): string;
function XorCrypt(Source: string): string;
function RemoveCaracAcentos(Palavra: string): string;
function ChrReplace(Str: string; ChrAnt, ChrNovo: Char): string;
function DeleteAllSubstr(Substr, Str: string): string;
function LeftAlignChr(Str, Char: string; Len: Integer): string;
function RemoveEspacosDuplos(Str: string): string;
function RemoveEspacosEntreLetras(Str: string): string;
function RemoveEspacosSimplesEntreLetras(Str: string): string;
function CapitalizeAfterSimbol(Str: string): string;
function FormatFloatSemZero(Format: string; Value: Extended): string;
function RemoveCaracInvalidos(Palavra: string): string;
function IntercalaEspacos(Nome: string): string;
function CompletaCEspacos(Palavra: string; Numero: Integer): string;
function CompletaCPontos(Palavra: string; Numero: Integer; Direcao: Char): string;
function TeclaNumerica(Key: Char): Boolean;
function CheckDllName(Dll: string): string;
function StrToBoolean(Str: string): Boolean;
function BooleanToStr(const Bool: Boolean): string;
function BooleanToChar(const Bool: Boolean): string;

//---
function StrReplace(Str, ReplaceThis, WithThis: string): string;
//---

var

  strIP_SERVICO:      string;
  intServer_EMP:      Byte;
  intServer_ESPECIF1: Byte;
  intServer_MAT:      Byte;
  intServer_NF:       Byte;

implementation

uses
  PadUtils;

// Converte de OEM para ANSI -- string até 255 chars
{
function StrOEMToANSI(parStr: string): string;
var

  SZ, SZ2: array[0..255] of Char;

begin

  FillChar(SZ, SizeOf(256), 0);
  StrPCopy(SZ, parStr);
  FillChar(SZ2, SizeOf(256), 0);

  OEMToChar(SZ, SZ2);

  Result := Trim(SZ2);

end;
}
function FormatFloatFixed(Number: Extended): string;
var
  P: Integer;
begin
  Result := FloatToStr(Number);
  if (DateSeparator <> '.') then
  begin
    P := Pos(DecimalSeparator, Result);
    if P > 0 then
      Result[P] := '.';
  end;
end;

function RemoveExt(TableName: string): string;
var
  P: Integer;
begin
  P := Pos('.', TableName);
  if P > 1 then
    Result := Copy(TableName, 1, P - 1)
  else
    Result := TableName;
end;

function StrAlign(Str: string; Len: Integer; Alignment: TAlignment): string;
begin
  case Alignment of
    taLeftJustify: Result := LeftAlign(Str, Len);
    taRightJustify: Result := RightAlign(Str, Len);
    taCenter: Result := CenterAlign(Str, Len);
  end;
end;

function LeftAlign(Str: string; Len: Integer): string;
var
  StrLen: Integer;
begin
  Str := Trim(Str);
  StrLen := Length(Str);
  if Len > StrLen then
    Result := Str + Spaces(Len - StrLen)
  else
    Result := Copy(Str, 1, Len);
end;

function LeftPad(Str: string; Len: Integer): string;
var
  StrLen: Integer;
begin
  StrLen := Length(Str);
  if Len > StrLen then
    Result := Str + Spaces(Len - StrLen)
  else
    Result := Copy(Str, 1, Len);
end;

function LeftAlignChr(Str, Char: string; Len: Integer): string;
var
  StrLen: Integer;
begin
  Str := Trim(Str);
  StrLen := Length(Str);
  if Len > StrLen then
    Result := Str + Replicate(Char, Len - StrLen)
  else
    Result := Copy(Str, 1, Len);
end;

function RightAlign(Str: string; Len: Integer): string;
var
  StrLen: Integer;
begin
  Str := Trim(Str);
  StrLen := Length(Str);
  if Len > StrLen then
    Result := Spaces(Len - StrLen) + Str
  else
    Result := Copy(Str, StrLen - Len, Len);
end;

function CenterAlign(Str: string; Len: Integer): string;
var
  StrLen, NumSpaces: Integer;
begin
  Str := Trim(Str);
  StrLen := Length(Str);
  if Len >= StrLen then
  begin
    NumSpaces := Len - StrLen;
    Result := Spaces(NumSpaces div 2) + Str;
    Result := Result + Spaces(NumSpaces - Length(Result));
  end
  else
    Result := '';
end;

function Spaces(Len: Integer): string;
var
  Count: Integer;
begin
  Result := '';
  for Count := 1 to Len do
    Insert(' ', Result, Count);
end;

function Zeros(Len: Integer): string;
var
  Count: Integer;
begin
  Result := '';
  for Count := 1 to Len do
    Insert('0', Result, Count);
end;

function AllTrim(Str: string): string;
begin

  If Str = ' ' then
    Result := ''
  else
    Result := Str;

  if Length(Result) > 0 then
  begin

    while Result[1] = #32 do
      Delete(Result, 1, 1);

    while Result[Length(Result)] = #32 do
      Delete(Result, Length(Result), 1);

  end;
end;

function TrimLeftZero(Str: string): string;
begin
  Result := Str;
  while (Length(Result) > 0) and (Result[1] = '0') do
    Delete(Result, 1, 1);
end;

function AllChrTrim(Str: string; ToKill: Char; TrimSpaces: Boolean): string;
begin
  if TrimSpaces then
    Result := AllTrim(Str)
  else
    Result := Str;
  if Length(Result) > 0 then
  begin
    while Result[1] = ToKill do
      Delete(Result, 1, 1);
    while Result[Length(Result)] = ToKill do
      Delete(Result, Length(Result), 1);
  end;
end;

function SubstituiCaracter(Str: string; Origem, Destino: Char): string;
var
  i: word;
begin
  Result := Str;
  for i := 1 to Length(Str) do
    if Result[i] = Origem then
      Result[i] := Destino;
end;

function RemoveCaracter(Str: string; Caracter: Char): string;
var
  i: word;
  Palavra: string;
begin
  Palavra := '';
  for i := 1 to Length(Str) do
    if Str[i] <> Caracter then
      Palavra := Palavra + Str[i];
  Result := Palavra;
end;


{ EditMask1.Text := PadZero(StrToInt(EditMask1.Text), 5) -> '00001'
  PadZero(1234, 3) -> '***' (Valor desejado > Tamanho desejado) }

function PadZero(Number, Len: Integer): string;
var
  Count, StrLen: Integer;
begin
  Result := IntToStr(Number);
  StrLen := Length(Result);
  if StrLen > Len then
    Result := Replicate('*', Len)
  else
    for Count := 1 to (Len - StrLen) do
      Insert('0', Result, 1);
end;

function StrPadZero(Number: string; Len: Integer): string;
var
  Count, StrLen: Integer;
begin
  Result := AllTrim(Number);
  StrLen := Length(Result);
  if StrLen > Len then
    Result := Replicate('*', Len)
  else
    for Count := 1 to (Len - StrLen) do
      Insert('0', Result, 1);
end;

function StrRPadZero(Number: string; Len: Integer): string;
var
  StrLen: Integer;
begin
  Result := AllTrim(Number);
  StrLen := Length(Result);
  if StrLen > Len then
    Result := Replicate('*', Len)
  else
    Result := Replicate('0', Len - StrLen) + Result;
end;

function FloatPadZero(Number: Extended; Len: Integer): string;
begin
  Result := RemoveSeparador(FormatFloat(StrPadZero('0', Len - 2) + '.00', Number));
end;

function Replicate(Str: string; Times: Integer): string;
var
  Count: Integer;
begin
  Result := '';
  for Count := 1 to Times do
    Result := Result + Str;
end;

function StrFlip(Str: string): string;
var
  C: Integer;
begin
  Result := '';
  for C := Length(Str) downto 1 do
    Result := Result + Str[C];
end;

function FloatToInt(Number: Extended): Longint;
//var
//  Temp: string;
//  Posit: Integer;
begin
  //  Temp := FloatToStr(Number);
  //  Posit := Pos('.', Temp);
  //  if Posit > 0 then
  //    Result := StrToInt(Copy(Temp, 1, Posit-1))
  //  else
  //    Result := StrToInt(Temp);
  Result := Trunc(Number);
end;

function TrimStrToInt(Number: string): Longint;
begin
  Number := Trim(Number);
  if Number <> '' then
    Result := StrToInt(Number)
  else
    Result := 0;
end;

function TrimStrToFloat(Number: string): Extended;
begin
  try
    Result := StrToFloat(Trim(Number));
  except
    Result := 0.0;
  end;
end;

function StrConvAcentos(Str: string): string;
const
  NumChars = 50;
  Acentuados: array[1..NumChars] of Char = ('Á', 'É', 'Í', 'Ó', 'Ú',
    'á', 'é', 'í', 'ó', 'ú',
    'À', 'È', 'Ì', 'Ò', 'Ù',
    'à', 'è', 'ì', 'ò', 'ù',
    'Â', 'Ê', 'Î', 'Ô', 'Û',
    'â', 'ê', 'î', 'ô', 'û',
    'Ã', 'Õ', 'ã', 'õ',
    'Ä', 'Ë', 'Ï', 'Ö', 'Ü',
    'ä', 'ë', 'ï', 'ö', 'ü',
    'Ç', 'ç', 'º', 'ª', 'Ñ', 'ñ');
  Normais: array[1..NumChars] of Char = ('A', 'E', 'I', 'O', 'U',
    'a', 'e', 'i', 'o', 'u',
    'A', 'E', 'I', 'O', 'U',
    'a', 'e', 'i', 'o', 'u',
    'A', 'E', 'I', 'O', 'U',
    'a', 'e', 'i', 'o', 'u',
    'A', 'O', 'a', 'o',
    'A', 'E', 'I', 'O', 'U', 
    'a', 'e', 'i', 'o', 'u',
    'C', 'c', '.', '.', 'N', 'n');
var
  Len, C: Integer;
  { --- }
  function ConvChar(Ch: Char): Char;
  var
    i: Integer;
  begin
    for i := 1 to NumChars do
      if Acentuados[i] = Ch then
      begin
        Result := Normais[i];
        Exit;
      end;
    Result := Ch;
  end;
  { --- }
begin
  Result := '';
  Len := Length(Str);
  for C := 1 to Len do
    Result := Result + ConvChar(Str[C]);
end;

function CharToStr(Ch: Char): string;
begin
  Result := ' ';
  Result[1] := Ch;
end;

// Converte para maiúscula a primeira letra de cada palavra (suporta Ansi)

function Capitalize(Str: string): string;
var
  i: Integer;
  CapitalizeNetLetter: Boolean;
  S: string;
begin
  if Trim(Str) <> '' then
  begin
    Str := AnsiLowerCase(Str);
    CapitalizeNetLetter := True;
    i := 1;
    repeat
      if CapitalizeNetLetter then
        if IsLower(Str[i]) then
        begin
          S := AnsiUpperCase(CharToStr(Str[i]));
          Str[i] := S[1];
        end;
      CapitalizeNetLetter := (Str[i] = ' ');
      Inc(i);
    until i > Length(Str);
  end;
  Result := Str;
end;

// Verifica se o caracter é letra minúscula (suporta acentuação)

function IsLower(Ch: Char): Boolean;
var
  Str: string;

begin

  Str    := StrConvAcentos(CharToStr(Ch));
  Result := (Str[1] in ['a'..'z']);

end;

// Verifica se o caracter é letra maiúscula (suporta acentuação)

function IsUpper(Ch: Char): Boolean;
var
  Str: string;
begin
  Str := StrConvAcentos(CharToStr(Ch));
  Result := (Str[1] in ['A'..'Z']);
end;

function ChrReplace(Str: string; ChrAnt, ChrNovo: Char): string;
var
  P, i: Integer;
begin
  P := Length(Str);
  for i := 1 to P do
    if Str[i] = ChrAnt then
      Str[i] := ChrNovo;
  Result := Str;
end;

function DeleteAllSubstr(Substr, Str: string): string;
var
  P: Integer;
begin
  P := Pos(Substr, Str);
  while P <> 0 do
  begin
    Delete(Str, P, Length(Substr));
    P := Pos(Substr, Str);
  end;
  Result := Str;
end;

{$WARNINGS OFF}
// Separa uma string por delimitador

function StrBreak(Str, Delimit: string; StringList: TStringList): TStringList;
var
  EndOfCurrentString: byte;
begin
  Result := TStringList.Create;
  repeat
    EndOfCurrentString := Pos(Delimit, Str);
    if EndOfCurrentString = 0 then
      StringList.Add(Str)
    else
      StringList.Add(Copy(Str, 1, EndOfCurrentString - 1));
    Str := Copy(Str, EndOfCurrentString + Length(Delimit),
      Length(Str) - EndOfCurrentString);
  until EndOfCurrentString = 0;
  Result.Assign(StringList);
end;

function StrReplace(Str, ReplaceThis, WithThis: string): string;
var
  List: TStringList;
  i: Integer;
begin
  List := TStringList.Create;
  List.Assign(StrBreak(Str, ReplaceThis, List));
  if List.Count > 1 then
  begin
    Result := '';
    for i := 0 to List.Count - 2 do
      Result := Result + List[i] + WithThis;
    Result := Result + List[i];
    //    Result := Result + List[I + 1];
  end
  else
    Result := Str;
  List.Free;
end;
{$WARNINGS ON}

// Funções para criptografia de strings
//  Uso: Chamando uma vez a função, a string é encritada;
//       chamando-a novamente, a string é descriptada.

function XorCrypt(Source: string): string;
var
  Len, Chr: Integer;
begin
  Result := '';
  Len := Length(Source);
  for Chr := 1 to Len do
    Result := Result + Char(Integer(Source[Chr]) xor 170);
end;

function RemoveCaracAcentos(Palavra: string): string;
var
  l: Integer;
begin
  for l := 1 to Length(Palavra) do
  begin
    if Palavra[l] in ['/', '-', '.', ',', '|', '=', '(', ')', ''''] then
      Palavra[l] := ' ';
  end;
  RemoveCaracAcentos := StrConvAcentos(Palavra);
end;

function RemoveCaracInvalidos(Palavra: string): string;
var
  l: Integer;

  sTexto: string;

begin

  for l := 1 to Length(Palavra) do
  begin

    if not(Palavra[l] in ['/', '\', ':', '*', '?', '"', '<', '>', '|', '.', '°', 'ª', 'º', ',',
                          '!', '@', '#', '$', '%', '&', '*', '(', ')', '"', '´',']','[']) then
      sTexto := sTexto + Palavra[l];

      //Palavra[l] := '';

  end;

  Result := sTexto;

//  RemoveCaracInvalidos := Palavra;

end;

// Remove os espaços duplos, triplos ou mais em uma string

function RemoveEspacosDuplos(Str: string): string;
var
  Cont: Integer;
  Palavra: string;
begin
  Cont := 1;
  Palavra := '';
  while Cont <= Length(Str) do
  begin
    if (Str[Cont] = ' ') then
      Palavra := Trim(Palavra) + ' '
    else
      Palavra := Palavra + Str[Cont];
    Inc(Cont);
  end;
  Result := Trim(Palavra);
end;

// Remove os espaços simples, deixando os duplos ou mais, quando a próxima letra não for maiúscula;

function RemoveEspacosEntreLetras(Str: string): string;
var
  Cont: Integer;
  Palavra: string;
begin
  Cont := 1;
  Str := Trim(Str);
  Palavra := '';
  while Cont <= Length(Str) do
  begin
    if (Str[Cont] <> ' ') or (Str[Cont + 1] = ' ') or (Str[Cont - 1] = ' ') or
      IsUpper(Str[Cont + 1]) then
      Palavra := Palavra + Str[Cont];
    Inc(Cont);
  end;
  Result := Trim(Palavra);
end;

// Remove os espaços simples, deixando os duplos ou mais;

function RemoveEspacosSimplesEntreLetras(Str: string): string;
var
  Cont, ContAux: Integer;
  Palavra: string;

begin
  Cont := 1;
  ContAux := 0;
  Str := Trim(Str);
  Palavra := '';
  while Cont <= Length(Str) do
  begin
    if (ContAux = 1) then
    begin
      if (Str[Cont] <> ' ') then
      begin
        ContAux := 0;
        Palavra := Palavra + Str[Cont];
      end
    end
    else
    begin
      if (Str[Cont] = ' ') then
        ContAux := 1;
      Palavra := Palavra + Str[Cont];
    end;
    Inc(Cont);
  end;
  Result := Trim(Palavra);
end;

// Converte para maiúscula a primeira letra de cada palavra (suporta Ansi)
// Considera como separador qualquer carater numérico ou especial

function CapitalizeAfterSimbol(Str: string): string;
var
  i: Integer;
  CapitalizeNetLetter: Boolean;
  S: string;
begin
  if Trim(Str) <> '' then
  begin
    Str := AnsiLowerCase(Str);
    CapitalizeNetLetter := True;
    i := 1;
    repeat
      if CapitalizeNetLetter then
        if IsLower(Str[i]) then
        begin
          S := AnsiUpperCase(CharToStr(Str[i]));
          Str[i] := S[1];
        end;
      CapitalizeNetLetter := (Str[i] in [' ', '.', '/', '\', ',', ':', ';', '<',
        '>', '?', '|', '!', '&', '*', '+', '=', '-', '#', '^', '%', '@', '(', ')',
          '[', ']', '{', '}', '_', '`', '~', 'º', '0', '1', '2', '3', '4', '5', '6',
          '7', '8', '9', '"', '''', 'ª']);
      Inc(i);
    until i > Length(Str);
  end;
  Result := Str;
end;

// Formata Number de acordo com a Máscara. Se for zero retorna vazio.

function FormatFloatSemZero(Format: string; Value: Extended): string;
begin
  if Value <> 0 then
    Result := FormatFloat(Format, Value)
  else
    Result := '';
end;

function IntercalaEspacos(Nome: string): string;
var
  Cont, Tamanho: Integer;
  NomeEsp: string;
begin
  Tamanho := Length(Nome);
  NomeEsp := '';
  for Cont := 1 to Tamanho do
  begin
    NomeEsp := NomeEsp + Nome[Cont];
    NomeEsp := NomeEsp + ' ';
  end;
  Result := NomeEsp;
end;

function CompletaCEspacos(Palavra: string; Numero: Integer): string;
var
  l, i: Integer;
begin
  if Length(Palavra) < Numero then
  begin
    l := Numero - Length(Palavra);
    for i := 1 to l do
    begin
      Palavra := ' ' + Palavra;
    end;
  end;
  Result := Palavra;
end;

function CompletaCPontos(Palavra: string; Numero: Integer; Direcao: Char): string;
var
  l, i: Integer;
begin
  if Length(Palavra) < Numero then
  begin
    l := Numero - Length(Palavra);
    for i := 1 to l do
    begin
      if Direcao in ['L', 'l'] then
        Palavra := '.' + Palavra
      else
        Palavra := Palavra + '.';
    end;
  end;
  Result := Palavra;
end;

function TeclaNumerica(Key: Char): Boolean;
const
  TeclasValidas: set of Char = [#1..#31, '0'..'9'];
begin
  if not (Key in TeclasValidas) then
  begin
    Result := False;
  end
  else
    Result := True;
end;

function CheckDllName(Dll: string): string;
begin
  Result := Dll;
  if Pos('.DLL', UpperCase(Dll)) = -1 then
    Result := Result + '.DLL';
end;

function StrToBoolean(Str: string): Boolean;
begin
  Str := UpperCase(Str);
  if (Str = '1') or (Str = 'TRUE') then
    Result := True
  else
    if (Str = '0') or (Str = 'FALSE') then
      Result := False
    else
      raise Exception.Create('''' + Str + ''' is not a valid boolean value');
end;

function BooleanToStr(const Bool: Boolean): string;
begin
  Result := IIf(Bool, 'true', 'false');
end;

function BooleanToChar(const Bool: Boolean): string;
begin
  Result := IIf(Bool, '1', '0');
end;

end.
