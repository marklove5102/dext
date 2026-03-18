unit Dext.Entity.DataSet;

interface

uses
  System.SysUtils,
  System.Classes,
  System.Variants,
  System.Rtti,
  System.TypInfo,
  Data.DB,
  Dext.Collections,
  Dext.Collections.Vector,
  Dext.Collections.Dict,
  Dext.Core.Span,
  Dext.Entity.Mapping,
  Dext.Json.Utf8;

type
  /// <summary>
  ///   Data Structure of a Record Buffer for TEntityDataSet.
  ///   Stores fully updated bytes and modification trackers.
  /// </summary>
  PEntityRecordHeader = ^TEntityRecordHeader;
  TEntityRecordHeader = record
    BookmarkIndex: Integer;
    RowState: TDataSetState;
    DirtyMask: UInt64; // Mask indicating which fields were modified in the Grid
  end;

  /// <summary>
  ///   Custom TDataSet for high-performance reading and writing to direct objects/lists.
  /// </summary>
  TEntityDataSet = class(TDataSet)
  private
    FEntityMap: TEntityMap;
    FEntityClass: TClass;
    
    // Virtual Buffers (Offsets Index)
    FItems: TArray<TObject>;
    FVirtualIndex: TVector<Integer>; // Ordered/filtered view over FItems
    
    FRecordSize: Integer;
    FHeaderSize: Integer;
    
    // Internal Settings
    FReadOnly: Boolean;
    FIncludeShadowProperties: Boolean;
    FIndexFieldNames: string;
    FCurrentRec: Integer; // Controle de cursor nativo do dataset
    FIsCursorOpen: Boolean;
    
    procedure SetItems(const Value: TArray<TObject>);
    procedure SetIndexFieldNames(const Value: string);
    procedure ApplyFilterAndSort; overload;
    procedure ApplyFilterAndSort(AFiltered: Boolean); overload;
    function CompareObjects(const A, B: TObject; const AFields: string): Integer;
    procedure BuildFieldDefs;
  protected
    // Overrides do TDataSet para filtros e ordenação
    procedure InternalHandleException; override;
    function IsCursorOpen: Boolean; override;
    function GetRecord(Buffer: TRecordBuffer; GetMode: TGetMode; DoSearch: Boolean): TGetResult; override;
    procedure SetFiltered(Value: Boolean); override;
    procedure SetFilterText(const Value: string); override;
    
    // Overrides obrigatórios do TDataSet
    procedure InternalOpen; override;
    procedure InternalClose; override;
    procedure InternalInitFieldDefs; override;

    // Buffer Alocations
    function AllocRecordBuffer: TRecordBuffer; override;
    procedure FreeRecordBuffer(var Buffer: TRecordBuffer); override;
    procedure InternalInitRecord(Buffer: TRecordBuffer); override;
    
    // Bookmark e Navegação
    procedure GetBookmarkData(Buffer: TRecordBuffer; Data: Pointer); override;
    procedure SetBookmarkData(Buffer: TRecordBuffer; Data: Pointer); override;
    function GetBookmarkFlag(Buffer: TRecordBuffer): TBookmarkFlag; override;
    procedure SetBookmarkFlag(Buffer: TRecordBuffer; Value: TBookmarkFlag); override;
    
    function GetRecordSize: Word; override;
    function GetRecordCount: Integer; override;

    // DML e Edição
    procedure SetFieldData(Field: TField; Buffer: Pointer); override;
    procedure InternalAddRecord(Buffer: Pointer; Append: Boolean); override;
    procedure InternalDelete; override;
    procedure InternalPost; override;
    procedure InternalEdit; override;
    procedure InternalInsert; override;

  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    function GetFieldData(Field: TField; Buffer: Pointer): Boolean; override;
    function Locate(const KeyFields: string; const KeyValues: Variant; Options: TLocateOptions = []): Boolean; override;
    /// <summary>
    ///  Carga de dados de Objetos
    /// </summary>
    procedure Load(const AItems: TArray<TObject>; AClass: TClass); overload;
    
    /// <summary>
    ///  Carga de dados de JSON Utf8 (Zero-Alloc Pipeline)
    /// </summary>
    procedure LoadFromUtf8Json(const ASpan: TByteSpan; AClass: TClass);

    property Items: TArray<TObject> read FItems write SetItems;
    property ReadOnly: Boolean read FReadOnly write FReadOnly default False;
    property IncludeShadowProperties: Boolean read FIncludeShadowProperties write FIncludeShadowProperties default False;
    property IndexFieldNames: string read FIndexFieldNames write SetIndexFieldNames;
  end;

implementation

uses
  System.StrUtils,
  System.Generics.Collections,
  System.Generics.Defaults,
  Dext.Specifications.Interfaces,
  Dext.Specifications.Parser,
  Dext.Specifications.Evaluator;

{ TEntityDataSet }

constructor TEntityDataSet.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FRecordSize := SizeOf(TEntityRecordHeader);
  FHeaderSize := SizeOf(TEntityRecordHeader);
  FReadOnly := False;
end;

destructor TEntityDataSet.Destroy;
begin
  FItems := nil;
  inherited Destroy;
end;

procedure TEntityDataSet.Load(const AItems: TArray<TObject>; AClass: TClass);
begin
  FItems := AItems;
  FEntityClass := AClass;
  if FEntityMap = nil then
  begin
    FEntityMap := TEntityMap.Create(AClass.ClassInfo);
    FEntityMap.DiscoverAttributes;
  end;
  
  if Active then Close;
  Open;
  
  if not Active then
    raise Exception.Create('Dext Error: TEntityDataSet FALHOU ao abrir (Active continua False)!');
end;

procedure TEntityDataSet.LoadFromUtf8Json(const ASpan: TByteSpan; AClass: TClass);
var
  Reader: TUtf8JsonReader;
  CurrentObj: TObject;
  PropMap: TPropertyMap;
  PValue: Pointer;
  PropName: string;
begin
  FEntityClass := AClass;
  if FEntityMap = nil then
  begin
    FEntityMap := TEntityMap.Create(AClass.ClassInfo);
    FEntityMap.DiscoverAttributes;
  end;

  Reader := TUtf8JsonReader.Create(ASpan);
  
  // Limpar itens anteriores
  SetLength(FItems, 0);

  if not Reader.Read then Exit;

  if Reader.TokenType = TJsonTokenType.StartArray then
  begin
    while Reader.Read and (Reader.TokenType <> TJsonTokenType.EndArray) do
    begin
      if Reader.TokenType = TJsonTokenType.StartObject then
      begin
        CurrentObj := FEntityClass.Create;
        
        SetLength(FItems, Length(FItems) + 1);
        FItems[High(FItems)] := CurrentObj;

        while Reader.Read and (Reader.TokenType <> TJsonTokenType.EndObject) do
        begin
          if Reader.TokenType = TJsonTokenType.PropertyName then
          begin
            PropName := Reader.GetString;
            Reader.Read; // Avance para o valor

            if FEntityMap.Properties.TryGetValue(PropName, PropMap) then
            begin
              PValue := Pointer(PByte(CurrentObj) + PropMap.FieldValueOffset);
              
              case PropMap.DataType of
                ftString, ftWideString:
                  PString(PValue)^ := Reader.GetString;
                ftInteger, ftSmallint:
                  PInteger(PValue)^ := Reader.GetInt32;
                ftLargeint:
                  PInt64(PValue)^ := Reader.GetInt64;
                ftFloat, ftCurrency:
                  PDouble(PValue)^ := Reader.GetDouble;
                ftBoolean:
                  PBoolean(PValue)^ := Reader.GetBoolean;
                // Datas precisariam de parse de String ISO8601
              end;
            end
            else
              Reader.Skip; // propriedade não mapeada, pula valor/objeto
          end;
        end;
      end;
    end;
  end;

  if Active then Close;
  Open;
end;

procedure TEntityDataSet.SetIndexFieldNames(const Value: string);
begin
  if FIndexFieldNames <> Value then
  begin
    FIndexFieldNames := Value;
    if Active then
    begin
      ApplyFilterAndSort;
      Resync([]);
    end;
  end;
end;

procedure TEntityDataSet.SetFiltered(Value: Boolean);
begin
  if Filtered <> Value then
  begin
    if Active then
      ApplyFilterAndSort(Value); // Atualiza antes do inherited disparar o resync interno!
      
    inherited SetFiltered(Value);
  end;
end;

procedure TEntityDataSet.SetFilterText(const Value: string);
begin
  if Filter <> Value then
  begin
    inherited SetFilterText(Value);
    if Active and Filtered then
    begin
      ApplyFilterAndSort;
      Resync([]);
    end;
  end;
end;

procedure TEntityDataSet.ApplyFilterAndSort;
begin
  ApplyFilterAndSort(Filtered);
end;

procedure TEntityDataSet.ApplyFilterAndSort(AFiltered: Boolean);
var
  Passing: Boolean;
  Expr: IExpression;
  TempArray: TArray<Integer>;
begin
  FVirtualIndex.Clear;
  
  Expr := nil;
  if AFiltered and (Filter <> '') then
    Expr := TStringExpressionParser.Parse(Filter);

  for var I := 0 to High(FItems) do
  begin
    Passing := True;
    
    if AFiltered then
    begin
      if Expr <> nil then
        Passing := TExpressionEvaluator.Evaluate(Expr, FItems[I])
      else if Assigned(OnFilterRecord) then
      begin
        // Setup temporário se houver OnFilterRecord
        Passing := True; // Fallback ou OnFilterRecord(Self, Passing);
      end;
    end;

    if Passing then
      FVirtualIndex.Add(I);
  end;

  if (FIndexFieldNames <> '') and (FVirtualIndex.Count > 1) then
  begin
    FVirtualIndex.ToArray(TempArray);
    
    TArray.Sort<Integer>(TempArray, TDelegatedComparer<Integer>.Construct(
      function(const A, B: Integer): Integer
      begin
        Result := CompareObjects(FItems[A], FItems[B], FIndexFieldNames);
      end));

    FVirtualIndex.Clear;
    for var J := 0 to High(TempArray) do
      FVirtualIndex.Add(TempArray[J]);
  end;
end;

function TEntityDataSet.Locate(const KeyFields: string; const KeyValues: Variant; Options: TLocateOptions): Boolean;
var
  I: Integer;
  PropMap: TPropertyMap;
  PValue: Pointer;
  CurVal: Variant;
  Match: Boolean;
begin
  Result := False;
  if (KeyFields = '') or (FVirtualIndex.Count = 0) then Exit;

  // Simplificado para 1 Campo por iteração clássica de Locate
  if not FEntityMap.Properties.TryGetValue(KeyFields, PropMap) then Exit;

  for I := 0 to FVirtualIndex.Count - 1 do
  begin
    PValue := Pointer(PByte(FItems[FVirtualIndex[I]]) + PropMap.FieldValueOffset);

    // Converter para Variant e testar
    case PropMap.DataType of
      ftInteger, ftSmallint: CurVal := PInteger(PValue)^;
      ftLargeint: CurVal := PInt64(PValue)^;
      ftString, ftWideString: CurVal := PString(PValue)^;
    else
      Continue;
    end;

    if Options = [] then Match := CurVal = KeyValues
    else Match := SameText(VarToStr(CurVal), VarToStr(KeyValues));

    if Match then
    begin
      // Posicionar o dataset
      MoveBy(I - RecNo + 1);
      Result := True;
      Break;
    end;
  end; // Fim do Locate
end;

function TEntityDataSet.CompareObjects(const A, B: TObject; const AFields: string): Integer;
var
  PropNames: TArray<string>;
  PropMap: TPropertyMap;
  PA, PB: Pointer;
begin
  Result := 0;
  if AFields = '' then Exit;

  PropNames := AFields.Split([';']);
  for var I := 0 to High(PropNames) do
  begin
    if not FEntityMap.Properties.TryGetValue(PropNames[I], PropMap) then Continue;
  
    PA := Pointer(PByte(A) + PropMap.FieldValueOffset);
    PB := Pointer(PByte(B) + PropMap.FieldValueOffset);

    case PropMap.DataType of
      ftInteger, ftSmallint: Result := PInteger(PA)^ - PInteger(PB)^;
      ftLargeint:            Result := PInt64(PA)^ - PInt64(PB)^;
      ftFloat, ftCurrency:   if PDouble(PA)^ < PDouble(PB)^ then Result := -1 else if PDouble(PA)^ > PDouble(PB)^ then Result := 1;
      ftString, ftWideString: Result := CompareStr(PString(PA)^, PString(PB)^);
    end;

    if Result <> 0 then Break;
  end;
end;

procedure TEntityDataSet.SetItems(const Value: TArray<TObject>);
begin
  FItems := Value;
  if Active then
  begin
    ApplyFilterAndSort;
    Resync([]);
  end;
end;

procedure TEntityDataSet.InternalOpen;
begin
  FIsCursorOpen := True;
  with TStringList.Create do try if FileExists('C:\dev\Dext\DextRepository\trace.txt') then LoadFromFile('C:\dev\Dext\DextRepository\trace.txt'); Add('>>> InternalOpen: Count=' + IntToStr(FVirtualIndex.Count) + ' [' + DateTimeToStr(Now) + ']'); try SaveToFile('C:\dev\Dext\DextRepository\trace.txt'); except end; finally Free; end;
  if FEntityClass = nil then
    raise Exception.Create('EntityClass must be defined before opening TEntityDataSet.');

  if Active or (State = dsInactive) then
  begin
    if FieldDefs.Count = 0 then
      BuildFieldDefs;
      
    if FieldCount = 0 then
      CreateFields;
  end;

  ApplyFilterAndSort;
  with TStringList.Create do try if FileExists('C:\dev\Dext\DextRepository\trace.txt') then LoadFromFile('C:\dev\Dext\DextRepository\trace.txt'); Add('>>> InternalOpen (Fim): Count=' + IntToStr(FVirtualIndex.Count) + ' [' + DateTimeToStr(Now) + ']'); SaveToFile('C:\dev\Dext\DextRepository\trace.txt'); finally Free; end;
  BookmarkSize := SizeOf(Integer);
  FCurrentRec := -1; // Reset de cursor nativo
  BindFields(True);
end;

procedure TEntityDataSet.InternalClose;
begin
  FIsCursorOpen := False;
  FVirtualIndex.Clear;
end;

procedure TEntityDataSet.InternalInitFieldDefs;
  function MapTypeToFieldType(ATypeInfo: PTypeInfo): TFieldType;
  begin
    if ATypeInfo = nil then Exit(ftUnknown);
    case ATypeInfo.Kind of
      tkInteger, tkEnumeration:
      begin
        if ATypeInfo = TypeInfo(Boolean) then
          Exit(ftBoolean)
        else
          Exit(ftInteger);
      end;
      tkFloat:
      begin
        if ATypeInfo = TypeInfo(TDateTime) then
          Exit(ftDateTime)
        else if ATypeInfo = TypeInfo(Currency) then
          Exit(ftCurrency)
        else
          Exit(ftFloat);
      end;
      tkString, tkLString, tkWString, tkUString, tkChar, tkWChar:
        Exit(ftString);
      tkInt64:
        Exit(ftLargeint);
      tkVariant:
        Exit(ftVariant);
    else
      Exit(ftUnknown);
    end;
  end;

var
  PropMap: TPropertyMap;
  NewField: TField;
  LDataType: TFieldType;
  LContext: TRttiContext;
  LType: TRttiType;
  LProp: TRttiProperty;
begin
  if (FEntityMap = nil) or (FEntityClass = nil) then Exit;

  FieldDefs.Clear;

  LContext := TRttiContext.Create;
  try
    LType := LContext.GetType(FEntityClass);

    for var PropKvp in FEntityMap.Properties do
    begin
      PropMap := PropKvp.Value;
      if PropMap.IsIgnored or PropMap.IsNavigation then Continue;

      // Calcular DataType dinamicamente
      LDataType := PropMap.DataType;
      
      // Se tivermos Shadow mapping, ler do RTTI da Classe estática
      if (LDataType = ftUnknown) and (LType <> nil) then
      begin
        LProp := LType.GetProperty(PropMap.PropertyName);
        if LProp <> nil then
          LDataType := MapTypeToFieldType(LProp.PropertyType.Handle);
      end;

      // Se ainda for desconhecido e houver PTypeInfo no map
      if (LDataType = ftUnknown) and Assigned(PropMap.PropertyType) then
        LDataType := MapTypeToFieldType(PropMap.PropertyType);

      // 1. Popular FieldDefs para metadados (Tamanho de string, grid, layouts)
      with FieldDefs.AddFieldDef do
      begin
        Name := PropMap.PropertyName;
        DataType := LDataType;
        if PropMap.MaxLength > 0 then
          Size := PropMap.MaxLength
        else if LDataType in [ftString, ftWideString] then
          Size := 255;
      end;

      // 2. Instanciar os TFields dinamicamente para o FieldByName não dar "not found"
      if Fields.FindField(PropMap.PropertyName) = nil then
      begin
        NewField := nil;
        case LDataType of
          ftString, ftWideString: NewField := TStringField.Create(Self);
          ftInteger, ftSmallint: NewField := TIntegerField.Create(Self);
          ftLargeint: NewField := TLargeintField.Create(Self);
          ftFloat: NewField := TFloatField.Create(Self);
          ftCurrency: NewField := TCurrencyField.Create(Self);
          ftBoolean: NewField := TBooleanField.Create(Self);
          ftDateTime: NewField := TDateTimeField.Create(Self);
          ftDate: NewField := TDateField.Create(Self);
          ftTime: NewField := TTimeField.Create(Self);
        end;

        if NewField <> nil then
        begin
          NewField.FieldName := PropMap.PropertyName;
          if NewField is TStringField then
          begin
            if PropMap.MaxLength > 0 then
              TStringField(NewField).Size := PropMap.MaxLength
            else
              TStringField(NewField).Size := 255;
          end;
          NewField.DataSet := Self;  // <-- Conecta o TField ao DataSet
        end;
      end;
    end;
  finally
    LContext.Free;
  end;
end;

procedure TEntityDataSet.BuildFieldDefs;
begin
  with TStringList.Create do try if FileExists('C:\dev\Dext\DextRepository\trace.txt') then LoadFromFile('C:\dev\Dext\DextRepository\trace.txt'); Add('>>> BuildFieldDefs [' + DateTimeToStr(Now) + ']'); SaveToFile('C:\dev\Dext\DextRepository\trace.txt'); finally Free; end;
  InternalInitFieldDefs;
end;

function TEntityDataSet.AllocRecordBuffer: TRecordBuffer;
begin
  with TStringList.Create do try if FileExists('C:\dev\Dext\DextRepository\trace.txt') then LoadFromFile('C:\dev\Dext\DextRepository\trace.txt'); Add('>>> AllocRecordBuffer [' + DateTimeToStr(Now) + ']'); SaveToFile('C:\dev\Dext\DextRepository\trace.txt'); finally Free; end;
  GetMem(Pointer(Result), FRecordSize);
  InternalInitRecord(Result);
end;

procedure TEntityDataSet.FreeRecordBuffer(var Buffer: TRecordBuffer);
begin
  FreeMem(Pointer(Buffer));
end;

procedure TEntityDataSet.InternalInitRecord(Buffer: TRecordBuffer);
begin
  FillChar(Buffer^, FRecordSize, 0);
end;

procedure TEntityDataSet.GetBookmarkData(Buffer: TRecordBuffer; Data: Pointer);
begin
  PInteger(Data)^ := PEntityRecordHeader(Buffer).BookmarkIndex;
end;

procedure TEntityDataSet.SetBookmarkData(Buffer: TRecordBuffer; Data: Pointer);
begin
  PEntityRecordHeader(Buffer).BookmarkIndex := PInteger(Data)^;
end;

function TEntityDataSet.GetBookmarkFlag(Buffer: TRecordBuffer): TBookmarkFlag;
begin
  Result := bfCurrent;
end;

procedure TEntityDataSet.SetBookmarkFlag(Buffer: TRecordBuffer; Value: TBookmarkFlag);
begin
end;

function TEntityDataSet.GetRecordSize: Word;
begin
  Result := FRecordSize;
end;

function TEntityDataSet.GetRecordCount: Integer;
begin
  with TStringList.Create do try if FileExists('C:\dev\Dext\DextRepository\trace.txt') then LoadFromFile('C:\dev\Dext\DextRepository\trace.txt'); Add('>>> GetRecordCount: Result=' + IntToStr(FVirtualIndex.Count) + ' [' + DateTimeToStr(Now) + ']'); SaveToFile('C:\dev\Dext\DextRepository\trace.txt'); finally Free; end;
  Result := FVirtualIndex.Count;
end;

function TEntityDataSet.GetRecord(Buffer: TRecordBuffer; GetMode: TGetMode; DoSearch: Boolean): TGetResult;
var
  Header: PEntityRecordHeader;
begin
  with TStringList.Create do try if FileExists('C:\dev\Dext\DextRepository\trace.txt') then LoadFromFile('C:\dev\Dext\DextRepository\trace.txt'); Add('>>> GetRecord: mode=' + IntToStr(Ord(GetMode)) + ' fCur=' + IntToStr(FCurrentRec) + ' [' + DateTimeToStr(Now) + ']'); try SaveToFile('C:\dev\Dext\DextRepository\trace.txt'); except end; finally Free; end;
  Header := PEntityRecordHeader(Buffer);
  Result := grOK;

  case GetMode of
    gmNext:
      begin
        if FCurrentRec < FVirtualIndex.Count - 1 then
          Inc(FCurrentRec)
        else
          Result := grEOF;
      end;
      
    gmPrior:
      begin
        if FCurrentRec > 0 then
          Dec(FCurrentRec)
        else
          Result := grBOF;
      end;
      
    gmCurrent:
      begin
        if (FCurrentRec < 0) or (FCurrentRec >= FVirtualIndex.Count) then
          Result := grEOF;
      end;
  else
    Result := grError;
  end;

  if Result = grOK then
  begin
     Header.BookmarkIndex := FCurrentRec;
  end;
end;

function TEntityDataSet.GetFieldData(Field: TField; Buffer: Pointer): Boolean;
var
  CurrentObj: TObject;
  Header: PEntityRecordHeader;
  ActualRow: Integer;
  PropMap: TPropertyMap;
  PValue: Pointer;
begin
  with TStringList.Create do try if FileExists('C:\dev\Dext\DextRepository\trace.txt') then LoadFromFile('C:\dev\Dext\DextRepository\trace.txt'); Add('>>> GetFieldData: campo=' + Field.FieldName + ' [' + DateTimeToStr(Now) + ']'); try SaveToFile('C:\dev\Dext\DextRepository\trace.txt'); except end; finally Free; end;
  Result := False;
  Header := PEntityRecordHeader(ActiveBuffer);
  
  if (Header.BookmarkIndex < 0) or (Header.BookmarkIndex >= FVirtualIndex.Count) then
    Exit;

  ActualRow := FVirtualIndex[Header.BookmarkIndex];
  CurrentObj := FItems[ActualRow];

  if (CurrentObj = nil) or (FEntityMap = nil) then Exit;

  if not FEntityMap.Properties.TryGetValue(Field.FieldName, PropMap) then
    Exit;

  PValue := Pointer(PByte(CurrentObj) + PropMap.FieldValueOffset);

  if (PropMap.FieldValueOffset <= 0) then
  begin
    var LContext := TRttiContext.Create;
    try
      var LType := LContext.GetType(FEntityClass);
      if LType <> nil then
      begin
        var LProp := LType.GetProperty(Field.FieldName);
        if LProp <> nil then
        begin
          case Field.DataType of
            ftString, ftWideString:
              StrLCopy(PChar(Buffer), PChar(LProp.GetValue(CurrentObj).AsString), Field.Size);
            ftInteger, ftSmallint:
              PInteger(Buffer)^ := LProp.GetValue(CurrentObj).AsInteger;
            ftLargeint:
              PInt64(Buffer)^ := LProp.GetValue(CurrentObj).AsInt64;
            ftFloat, ftCurrency:
              PDouble(Buffer)^ := LProp.GetValue(CurrentObj).AsExtended;
            ftBoolean:
              PBoolean(Buffer)^ := LProp.GetValue(CurrentObj).AsBoolean;
            ftDateTime, ftDate, ftTime:
              PDateTime(Buffer)^ := LProp.GetValue(CurrentObj).AsExtended;
          else
            Exit;
          end;
          Result := True;
          Exit;
        end;
      end;
    finally
      LContext.Free;
    end;
  end;

  if Buffer <> nil then
  begin
    case Field.DataType of
      ftString, ftWideString:
        StrLCopy(PChar(Buffer), PChar(PString(PValue)^), Field.Size);
      ftInteger, ftSmallint:
        PInteger(Buffer)^ := PInteger(PValue)^;
      ftLargeint:
        PInt64(Buffer)^ := PInt64(PValue)^;
      ftFloat, ftCurrency:
        PDouble(Buffer)^ := PDouble(PValue)^;
      ftBoolean:
        PBoolean(Buffer)^ := PBoolean(PValue)^;
      ftDateTime, ftDate, ftTime:
        PDateTime(Buffer)^ := PDateTime(PValue)^;
    else
      Exit; // Tipo não mapeado diretamente
    end;
  end;
  
  Result := True;
end;

procedure TEntityDataSet.SetFieldData(Field: TField; Buffer: Pointer);
var
  CurrentObj: TObject;
  Header: PEntityRecordHeader;
  ActualRow: Integer;
  PropMap: TPropertyMap;
  PValue: Pointer;
begin
  Header := PEntityRecordHeader(ActiveBuffer);
  
  if (Header.BookmarkIndex < 0) or (Header.BookmarkIndex >= FVirtualIndex.Count) then
    Exit;

  ActualRow := FVirtualIndex[Header.BookmarkIndex];
  CurrentObj := FItems[ActualRow];

  if (CurrentObj = nil) or (FEntityMap = nil) then Exit;

  if not FEntityMap.Properties.TryGetValue(Field.FieldName, PropMap) then
    Exit;

  PValue := Pointer(PByte(CurrentObj) + PropMap.FieldValueOffset);

  if (PropMap.FieldValueOffset <= 0) then
  begin
    var LContext := TRttiContext.Create;
    try
      var LType := LContext.GetType(FEntityClass);
      if LType <> nil then
      begin
        var LProp := LType.GetProperty(Field.FieldName);
        if LProp <> nil then
        begin
          case Field.DataType of
            ftString, ftWideString:
              LProp.SetValue(CurrentObj, string(PChar(Buffer)));
            ftInteger, ftSmallint:
              LProp.SetValue(CurrentObj, PInteger(Buffer)^);
            ftLargeint:
              LProp.SetValue(CurrentObj, PInt64(Buffer)^);
            ftFloat, ftCurrency:
              LProp.SetValue(CurrentObj, PDouble(Buffer)^);
            ftBoolean:
              LProp.SetValue(CurrentObj, PBoolean(Buffer)^);
            ftDateTime, ftDate, ftTime:
              LProp.SetValue(CurrentObj, PDateTime(Buffer)^);
          end;
          SetModified(True);
          Exit;
        end;
      end;
    finally
      LContext.Free;
    end;
  end;

  if Buffer <> nil then
  begin
    case Field.DataType of
      ftString, ftWideString:
        PString(PValue)^ := string(PChar(Buffer));
      ftInteger, ftSmallint:
        PInteger(PValue)^ := PInteger(Buffer)^;
      ftLargeint:
        PInt64(PValue)^ := PInt64(Buffer)^;
      ftFloat, ftCurrency:
        PDouble(PValue)^ := PDouble(Buffer)^;
      ftBoolean:
        PBoolean(PValue)^ := PBoolean(Buffer)^;
      ftDateTime, ftDate, ftTime:
        PDateTime(PValue)^ := PDateTime(Buffer)^;
    else
      Exit;
    end;
  end;
  
  SetModified(True);
end;

procedure TEntityDataSet.InternalHandleException;
begin
  // No-op. Exceções em memória não exigem buffer rollback ou handle físico de database.
end;

function TEntityDataSet.IsCursorOpen: Boolean;
begin
  Result := FIsCursorOpen;
end;

procedure TEntityDataSet.InternalAddRecord(Buffer: Pointer; Append: Boolean);
begin
  // No-op. A operação de adicionar um registro em memória vinculada a lists é consolidada via SetFieldData.
end;

procedure TEntityDataSet.InternalDelete;
var
  Header: PEntityRecordHeader;
begin
  Header := PEntityRecordHeader(ActiveBuffer);
  FVirtualIndex.RemoveAt(Header.BookmarkIndex);
  
  // TODO: Se no futuro for necessário suportar remoção física nos FItems, 
  // implementar a exclusão aqui de acordo com o TArray.
end;

procedure TEntityDataSet.InternalEdit;
begin
  // No-op. A edição (dsEdit) não exige alocação em buffer físico (Update direto via pointer).
end;

procedure TEntityDataSet.InternalInsert;
begin
  // No-op. Inserção não-aplicável de buffers em database com views estáticas em memória.
end;

procedure TEntityDataSet.InternalPost;
begin
  // No-op. O commit de buffers estáticos já é garantido via buffer virtual de offset row.
end;

end.
