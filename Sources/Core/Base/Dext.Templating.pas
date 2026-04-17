// ***************************************************************************
//
//           Dext Framework
//
//           Copyright (C) 2025 Cesar Romero & Dext Contributors
//
//           Licensed under the Apache License, Version 2.0 (the "License");
//           you may not use this file except in compliance with the License.
//           You may obtain a copy of the License at
//
//               http://www.apache.org/licenses/LICENSE-2.0
//
//           Unless required by applicable law or agreed to in writing,
//           software distributed under the License is distributed on an
//           "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,
//           either express or implied. See the License for the specific
//           language governing permissions and limitations under the
//           License.
//
// ***************************************************************************
//
//  Author:  Cesar Romero
//  Created: 2026-04-10
//
//  Dext.Templating - Generic Template Engine Contracts & Implementation
//
// ***************************************************************************

unit Dext.Templating;

interface

uses
  System.Classes,
  System.DateUtils,
  System.Generics.Collections,
  System.Math,
  System.NetEncoding,
  System.Rtti,
  System.StrUtils,
  System.SysUtils,
  System.TypInfo,
  System.Character,
  System.IOUtils,
  Dext.Collections,
  Dext.Collections.Dict,
  Dext.Text.Escaping;

type
  TDextTemplateEngine = class;

  ITemplateContext = interface
    ['{1A2B3C4D-5E6F-7A8B-9C0D-1E2F3A4B5C6D}']
    procedure SetValue(const AKey: string; const AValue: string);
    function GetValue(const AKey: string): string;
    function TryGetValue(const AKey: string; out AValue: string): Boolean;
    function HasValue(const AKey: string): Boolean;

    procedure SetObject(const AKey: string; AObject: TObject);
    function GetObject(const AKey: string): TObject;

    procedure SetList(const AKey: string; const AItems: TArray<TObject>);
    function GetList(const AKey: string): TArray<TObject>;

    function CreateChildScope: ITemplateContext;
  end;

  ITemplateLoader = interface
    ['{5C6D7E8F-9A0B-1C2D-3E4F-5A6B7C8D9E0F}']
    function Load(const ATemplateName: string): string;
  end;

  ITemplateEngine = interface
    ['{2B3C4D5E-6F7A-8B9C-0D1E-2F3A4B5C6D7E}']
    function Render(const ATemplate: string; const AContext: ITemplateContext): string;
    function RenderTemplate(const ATemplateName: string; const AContext: ITemplateContext): string;
    procedure SetTemplateLoader(const ALoader: ITemplateLoader);
    function GetTemplateLoader: ITemplateLoader;
    property TemplateLoader: ITemplateLoader read GetTemplateLoader write SetTemplateLoader;
  end;

  ITemplateFilterRegistry = interface
    ['{6D7E8F9A-0B1C-2D3E-4F5A-6B7C8D9E0F1A}']
    procedure RegisterFilter(const AName: string; const AFilter: System.SysUtils.TFunc<string, string>);
    function ApplyFilter(const AName: string; const AValue: string): string;
  end;

  TTemplateContext = class(TInterfacedObject, ITemplateContext)
  private
    FValues: IDictionary<string, string>;
    FObjects: IDictionary<string, TObject>;
    FLists: IDictionary<string, TArray<TObject>>;
    FParent: ITemplateContext;
  public
    constructor Create; overload;
    constructor Create(const AParent: ITemplateContext); overload;
    destructor Destroy; override;

    procedure SetValue(const AKey: string; const AValue: string);
    function GetValue(const AKey: string): string;
    function TryGetValue(const AKey: string; out AValue: string): Boolean;
    function HasValue(const AKey: string): Boolean;

    procedure SetObject(const AKey: string; AObject: TObject);
    function GetObject(const AKey: string): TObject;

    procedure SetList(const AKey: string; const AItems: TArray<TObject>);
    function GetList(const AKey: string): TArray<TObject>;

    function CreateChildScope: ITemplateContext;
  end;

  TTemplateNode = class
  protected
    FEngine: TDextTemplateEngine;
  public
    constructor Create(AEngine: TDextTemplateEngine); virtual;
    function Render(const AContext: ITemplateContext): string; virtual; abstract;
  end;

  TTextNode = class(TTemplateNode)
  private
    FText: string;
  public
    constructor Create(AEngine: TDextTemplateEngine; const AText: string); reintroduce;
    function Render(const AContext: ITemplateContext): string; override;
  end;

  TExpressionNode = class(TTemplateNode)
  private
    FExpression: string;
    FIsRaw: Boolean;
  public
    constructor Create(AEngine: TDextTemplateEngine; const AExpression: string; AIsRaw: Boolean); reintroduce;
    function Render(const AContext: ITemplateContext): string; override;
  end;

  TConditionalNode = class(TTemplateNode)
  private
    FCondition: string;
    FTrueNodes: TObjectList<TTemplateNode>;
    FFalseNodes: TObjectList<TTemplateNode>;
  public
    constructor Create(AEngine: TDextTemplateEngine; const ACondition: string); reintroduce;
    destructor Destroy; override;
    function Render(const AContext: ITemplateContext): string; override;
    property TrueNodes: TObjectList<TTemplateNode> read FTrueNodes;
    property FalseNodes: TObjectList<TTemplateNode> read FFalseNodes;
  end;

  TLoopNode = class(TTemplateNode)
  private
    FItemName: string;
    FListExpr: string;
    FNodes: TObjectList<TTemplateNode>;
    FElseNodes: TObjectList<TTemplateNode>;
  public
    constructor Create(AEngine: TDextTemplateEngine; const AItemName, AListExpr: string); reintroduce;
    destructor Destroy; override;
    function Render(const AContext: ITemplateContext): string; override;
    property Nodes: TObjectList<TTemplateNode> read FNodes;
    property ElseNodes: TObjectList<TTemplateNode> read FElseNodes;
  end;

  TTemplateNodeList = TObjectList<TTemplateNode>;

  TFileSystemTemplateLoader = class(TInterfacedObject, ITemplateLoader)
  private
    FRoot: string;
  public
    constructor Create(const ARoot: string);
    function Load(const ATemplateName: string): string;
    property Root: string read FRoot;
  end;

  TInMemoryTemplateLoader = class(TInterfacedObject, ITemplateLoader)
  private
    FTemplates: IDictionary<string, string>;
  public
    constructor Create;
    procedure AddTemplate(const AName, AContent: string);
    function Load(const ATemplateName: string): string;
  end;

  TTemplating = record
  public
    class function CreateContext: ITemplateContext; static;
    class function CreateEngine: ITemplateEngine; static;
  end;

  TTemplateFilterFunc = reference to function(const AValue: TValue; const AArgs: TArray<TValue>): TValue;

  TDextTemplateEngine = class(TInterfacedObject, ITemplateEngine, ITemplateFilterRegistry)
  private type
    TTemplateArgument = record
      Name: string;
      Expression: string;
    end;

    TInlineTemplateDefinition = class
    public
      Name: string;
      Parameters: TArray<string>;
      Content: string;
    end;

    TTemplateDocument = class
    public
      LayoutName: string;
      BodyText: string;
      Sections: TObjectDictionary<string, TStringBuilder>;
      Definitions: TObjectDictionary<string, TInlineTemplateDefinition>;
      constructor Create;
      destructor Destroy; override;
    end;

    TRenderState = class
    public
      TemplateName: string;
      BodyContent: string;
      Sections: IDictionary<string, string>;
      Definitions: TObjectDictionary<string, TInlineTemplateDefinition>;
      constructor Create;
      destructor Destroy; override;
    end;

  private
    FFilters: IDictionary<string, System.SysUtils.TFunc<string, string>>;
    FAdvancedFilters: IDictionary<string, TTemplateFilterFunc>;
    FIsHtmlMode: Boolean;
    FTemplateLoader: ITemplateLoader;
    FTemplateRoot: string;
    FCurrentState: TRenderState;
    FTemplateAstCache: TObjectDictionary<string, TTemplateNodeList>;

    function GetTemplateLoader: ITemplateLoader;
    procedure SetTemplateLoader(const ALoader: ITemplateLoader);

    function Parse(const ATemplate: string): TTemplateNodeList;
    function GetOrParseTemplate(const ATemplate: string): TTemplateNodeList;
    function ParseDocument(const ATemplate: string): TTemplateDocument;
    function RenderNodes(ANodes: TTemplateNodeList; const AContext: ITemplateContext): string;
    function RenderInlineTemplate(const ATemplate: string; const AContext: ITemplateContext): string;
    function RenderTemplateInternal(const ATemplateName: string; const AContext: ITemplateContext): string;
    function RenderResolvedTemplate(const ATemplateName, AResolvedName: string; const AContext: ITemplateContext): string;
    function ResolveTemplateName(const ACurrentTemplate, ARequestedName: string): string;
    function MergeSectionContent(const AChildContent, AParentContent: string): string;
    function ResolveNodeOutput(ANode: TTemplateNode; const AContext: ITemplateContext): string;

    function ResolveValue(const AExpr: string; const AContext: ITemplateContext; out AIsRaw: Boolean): TValue;
    function ResolveExpression(const AExpr: string; const AContext: ITemplateContext): string;
    function ResolveRootValue(const ARoot: string; const AContext: ITemplateContext): TValue;
    function ResolvePathValue(const APath: string; const AContext: ITemplateContext): TValue;
    function ResolveMemberValue(const AValue: TValue; const APath: string): TValue;
    function ResolveObjectValue(AObj: TObject; const APropPath: string): TValue;
    function ResolveObjectProperty(AObj: TObject; const APropPath: string): string;
    function EvaluateInlineExpression(const AExpr: string; const AContext: ITemplateContext): TValue;
    function ExecuteInlineFunction(const AName: string; const AArgs: TArray<TValue>): TValue;
    function HasTopLevelOperator(const AExpr: string): Boolean;
    function EvaluateCondition(const ACond: string; const AContext: ITemplateContext): Boolean;
    function ApplyAdvancedFilter(const AName: string; const AValue: TValue; const AArgs: TArray<TValue>): TValue;
    function ParseFilterArguments(const AText: string; const AContext: ITemplateContext): TArray<TValue>;
    function ParseNamedArguments(const AText: string): TArray<TTemplateArgument>;
    function ExtractCallArguments(const AText: string; out AName: string): string;
    function SplitTopLevel(const AText: string; ASeparator: Char): TArray<string>;
    function UnquoteString(const AText: string): string;
    function ValueToString(const AValue: TValue): string;
    function ValueToBoolean(const AValue: TValue): Boolean;
    function GetSectionValue(const AName: string; ARequired: Boolean): string;
    function GetDefinition(const AName: string): TInlineTemplateDefinition;
    function RenderPartial(const ATemplateName: string; const AArgsText: string; const AContext: ITemplateContext): string;
    function RenderMacroCall(const AName: string; const AArgsText: string; const AContext: ITemplateContext): string;

    function ReadBalanced(const AText: string; var APos: Integer; AOpen, AClose: Char): string;
    procedure SkipWhitespace(const AText: string; var APos: Integer);
    procedure SkipLineBreak(const AText: string; var APos: Integer);
    function CaptureUntil(const AText: string; var APos: Integer; const AEndMarker: string): string;
  public
    constructor Create; overload;
    constructor Create(const ALoader: ITemplateLoader); overload;
    destructor Destroy; override;

    function Render(const ATemplate: string; const AContext: ITemplateContext): string;
    function RenderTemplate(const ATemplateName: string; const AContext: ITemplateContext): string;

    procedure RegisterFilter(const AName: string; const AFilter: System.SysUtils.TFunc<string, string>);
    function ApplyFilter(const AName: string; const AValue: string): string;
    procedure RegisterAdvancedFilter(const AName: string; const AFilter: TTemplateFilterFunc);

    property IsHtmlMode: Boolean read FIsHtmlMode write FIsHtmlMode;
    property TemplateLoader: ITemplateLoader read GetTemplateLoader write SetTemplateLoader;
    property TemplateRoot: string read FTemplateRoot write FTemplateRoot;
  end;

implementation

uses
  Dext.Core.Reflection,
  Dext.Json;

type
  ETemplateLoopContinue = class(Exception);
  ETemplateLoopBreak = class(Exception);

  TSetNode = class(TTemplateNode)
  private
    FName: string;
    FExpression: string;
  public
    constructor Create(AEngine: TDextTemplateEngine; const AName, AExpression: string);
    function Render(const AContext: ITemplateContext): string; override;
  end;

  TContinueNode = class(TTemplateNode)
  public
    function Render(const AContext: ITemplateContext): string; override;
  end;

  TBreakNode = class(TTemplateNode)
  public
    function Render(const AContext: ITemplateContext): string; override;
  end;

  TSwitchCase = class
  public
    Expression: string;
    Nodes: TObjectList<TTemplateNode>;
    constructor Create(const AExpression: string);
    destructor Destroy; override;
  end;

  TSwitchNode = class(TTemplateNode)
  private
    FExpression: string;
    FCases: TObjectList<TSwitchCase>;
    FDefaultNodes: TObjectList<TTemplateNode>;
  public
    constructor Create(AEngine: TDextTemplateEngine; const AExpression: string);
    destructor Destroy; override;
    function Render(const AContext: ITemplateContext): string; override;
    property Cases: TObjectList<TSwitchCase> read FCases;
    property DefaultNodes: TObjectList<TTemplateNode> read FDefaultNodes;
  end;

  TPartialNode = class(TTemplateNode)
  private
    FTemplateName: string;
    FArgumentsText: string;
  public
    constructor Create(AEngine: TDextTemplateEngine; const ATemplateName, AArgumentsText: string);
    function Render(const AContext: ITemplateContext): string; override;
  end;

  TRenderSectionNode = class(TTemplateNode)
  private
    FSectionName: string;
    FRequired: Boolean;
  public
    constructor Create(AEngine: TDextTemplateEngine; const ASectionName: string; ARequired: Boolean);
    function Render(const AContext: ITemplateContext): string; override;
  end;

  TRenderBodyNode = class(TTemplateNode)
  public
    function Render(const AContext: ITemplateContext): string; override;
  end;

  TMacroCallNode = class(TTemplateNode)
  private
    FName: string;
    FArgumentsText: string;
  public
    constructor Create(AEngine: TDextTemplateEngine; const AName, AArgumentsText: string);
    function Render(const AContext: ITemplateContext): string; override;
  end;

{ TTemplateContext }

constructor TTemplateContext.Create;
begin
  inherited Create;
  FValues := TCollections.CreateDictionaryIgnoreCase<string, string>;
  FObjects := TCollections.CreateDictionaryIgnoreCase<string, TObject>;
  FLists := TCollections.CreateDictionaryIgnoreCase<string, TArray<TObject>>;
end;

constructor TTemplateContext.Create(const AParent: ITemplateContext);
begin
  Create;
  FParent := AParent;
end;

destructor TTemplateContext.Destroy;
begin
  FValues := nil;
  FObjects := nil;
  FLists := nil;
  inherited;
end;

function TTemplateContext.CreateChildScope: ITemplateContext;
begin
  Result := TTemplateContext.Create(Self);
end;

function TTemplateContext.GetList(const AKey: string): TArray<TObject>;
begin
  if not FLists.TryGetValue(AKey, Result) and Assigned(FParent) then
    Result := FParent.GetList(AKey);
end;

function TTemplateContext.GetObject(const AKey: string): TObject;
begin
  if not FObjects.TryGetValue(AKey, Result) and Assigned(FParent) then
    Result := FParent.GetObject(AKey);
end;

function TTemplateContext.GetValue(const AKey: string): string;
begin
  if not TryGetValue(AKey, Result) then
    Result := '';
end;

function TTemplateContext.HasValue(const AKey: string): Boolean;
var
  LValue: string;
begin
  Result := TryGetValue(AKey, LValue);
end;

procedure TTemplateContext.SetList(const AKey: string; const AItems: TArray<TObject>);
begin
  FLists.AddOrSetValue(AKey, AItems);
end;

procedure TTemplateContext.SetObject(const AKey: string; AObject: TObject);
begin
  FObjects.AddOrSetValue(AKey, AObject);
end;

procedure TTemplateContext.SetValue(const AKey, AValue: string);
begin
  FValues.AddOrSetValue(AKey, AValue);
end;

function TTemplateContext.TryGetValue(const AKey: string; out AValue: string): Boolean;
begin
  Result := FValues.TryGetValue(AKey, AValue);
  if (not Result) and Assigned(FParent) then
    Result := FParent.TryGetValue(AKey, AValue);
end;

{ TTemplateNode }

constructor TTemplateNode.Create(AEngine: TDextTemplateEngine);
begin
  inherited Create;
  FEngine := AEngine;
end;

{ TTextNode }

constructor TTextNode.Create(AEngine: TDextTemplateEngine; const AText: string);
begin
  inherited Create(AEngine);
  FText := AText;
end;

function TTextNode.Render(const AContext: ITemplateContext): string;
begin
  Result := FText;
end;

{ TExpressionNode }

constructor TExpressionNode.Create(AEngine: TDextTemplateEngine; const AExpression: string; AIsRaw: Boolean);
begin
  inherited Create(AEngine);
  FExpression := AExpression;
  FIsRaw := AIsRaw;
end;

function TExpressionNode.Render(const AContext: ITemplateContext): string;
var
  LIsRaw: Boolean;
  LValue: TValue;
begin
  LIsRaw := FIsRaw;
  LValue := FEngine.ResolveValue(FExpression, AContext, LIsRaw);
  Result := FEngine.ValueToString(LValue);
  if FEngine.IsHtmlMode and (not LIsRaw) then
    Result := TDextEscaping.Html(Result);
end;

{ TConditionalNode }

constructor TConditionalNode.Create(AEngine: TDextTemplateEngine; const ACondition: string);
begin
  inherited Create(AEngine);
  FCondition := ACondition;
  FTrueNodes := TObjectList<TTemplateNode>.Create(True);
  FFalseNodes := TObjectList<TTemplateNode>.Create(True);
end;

destructor TConditionalNode.Destroy;
begin
  FTrueNodes.Free;
  FFalseNodes.Free;
  inherited;
end;

function TConditionalNode.Render(const AContext: ITemplateContext): string;
begin
  if FEngine.EvaluateCondition(FCondition, AContext) then
    Result := FEngine.RenderNodes(FTrueNodes, AContext)
  else
    Result := FEngine.RenderNodes(FFalseNodes, AContext);
end;

{ TLoopNode }

constructor TLoopNode.Create(AEngine: TDextTemplateEngine; const AItemName, AListExpr: string);
begin
  inherited Create(AEngine);
  FItemName := AItemName;
  FListExpr := AListExpr;
  FNodes := TObjectList<TTemplateNode>.Create(True);
  FElseNodes := TObjectList<TTemplateNode>.Create(True);
end;

destructor TLoopNode.Destroy;
begin
  FNodes.Free;
  FElseNodes.Free;
  inherited;
end;

function TLoopNode.Render(const AContext: ITemplateContext): string;
var
  LSource: TValue;
  LItems: TArray<TObject>;
  I: Integer;
  LChild: ITemplateContext;
  LIsRaw: Boolean;
  LMeta: TTypeMetadata;
  LObjectList: IObjectList;
  LIntfList: IObjectList;
  LObject: TObject;
  LIntf: IInterface;
begin
  LIsRaw := False;
  LSource := FEngine.ResolveValue(FListExpr, AContext, LIsRaw);
  LItems := [];

  if not LSource.IsEmpty then
  begin
    if LSource.Kind = tkClass then
    begin
      LObject := LSource.AsObject;
      if Assigned(LObject) then
      begin
        LMeta := TReflection.GetMetadata(LObject.ClassInfo);
        if LMeta.IsList then
        begin
          if Supports(LObject, IObjectList, LObjectList) then
          begin
            SetLength(LItems, LObjectList.Count);
            for I := 0 to LObjectList.Count - 1 do
              LItems[I] := LObjectList.Items[I];
          end;
        end;
      end;
    end
    else if LSource.Kind = tkInterface then
    begin
      LIntf := LSource.AsInterface;
      if Supports(LIntf, IObjectList, LIntfList) then
      begin
        SetLength(LItems, LIntfList.Count);
        for I := 0 to LIntfList.Count - 1 do
          LItems[I] := LIntfList.Items[I];
      end;
    end;
  end;

  if Length(LItems) = 0 then
    Exit(FEngine.RenderNodes(FElseNodes, AContext));

  Result := '';
  for I := 0 to High(LItems) do
  begin
    LChild := AContext.CreateChildScope;
    LChild.SetObject(FItemName, LItems[I]);
    LChild.SetValue('index', IntToStr(I + 1));
    LChild.SetValue('first', BoolToStr(I = 0, True).ToLower);
    LChild.SetValue('last', BoolToStr(I = High(LItems), True).ToLower);
    LChild.SetValue('odd', BoolToStr(((I + 1) mod 2) = 1, True).ToLower);
    LChild.SetValue('even', BoolToStr(((I + 1) mod 2) = 0, True).ToLower);
    try
      Result := Result + FEngine.RenderNodes(FNodes, LChild);
    except
      on ETemplateLoopContinue do
        Continue;
      on ETemplateLoopBreak do
        Break;
    end;
  end;
end;

{ TSetNode }

constructor TSetNode.Create(AEngine: TDextTemplateEngine; const AName, AExpression: string);
begin
  inherited Create(AEngine);
  FName := AName;
  FExpression := AExpression;
end;

function TSetNode.Render(const AContext: ITemplateContext): string;
var
  LIsRaw: Boolean;
  LValue: TValue;
begin
  LIsRaw := False;
  LValue := FEngine.ResolveValue(FExpression, AContext, LIsRaw);
  if LValue.Kind = tkClass then
    AContext.SetObject(FName, LValue.AsObject)
  else
    AContext.SetValue(FName, FEngine.ValueToString(LValue));
  Result := '';
end;

{ TContinueNode }

function TContinueNode.Render(const AContext: ITemplateContext): string;
begin
  raise ETemplateLoopContinue.Create('continue');
end;

{ TBreakNode }

function TBreakNode.Render(const AContext: ITemplateContext): string;
begin
  raise ETemplateLoopBreak.Create('break');
end;

{ TSwitchCase }

constructor TSwitchCase.Create(const AExpression: string);
begin
  inherited Create;
  Expression := AExpression;
  Nodes := TObjectList<TTemplateNode>.Create(True);
end;

destructor TSwitchCase.Destroy;
begin
  Nodes.Free;
  inherited;
end;

{ TSwitchNode }

constructor TSwitchNode.Create(AEngine: TDextTemplateEngine; const AExpression: string);
begin
  inherited Create(AEngine);
  FExpression := AExpression;
  FCases := TObjectList<TSwitchCase>.Create(True);
  FDefaultNodes := TObjectList<TTemplateNode>.Create(True);
end;

destructor TSwitchNode.Destroy;
begin
  FCases.Free;
  FDefaultNodes.Free;
  inherited;
end;

function TSwitchNode.Render(const AContext: ITemplateContext): string;
var
  LIsRaw: Boolean;
  LSwitchValue: TValue;
  LCaseValue: TValue;
  LCase: TSwitchCase;
begin
  LIsRaw := False;
  LSwitchValue := FEngine.ResolveValue(FExpression, AContext, LIsRaw);
  for LCase in FCases do
  begin
    LCaseValue := FEngine.ResolveValue(LCase.Expression, AContext, LIsRaw);
    if SameText(FEngine.ValueToString(LSwitchValue), FEngine.ValueToString(LCaseValue)) then
      Exit(FEngine.RenderNodes(LCase.Nodes, AContext));
  end;
  Result := FEngine.RenderNodes(FDefaultNodes, AContext);
end;

{ TFileSystemTemplateLoader }

constructor TFileSystemTemplateLoader.Create(const ARoot: string);
begin
  inherited Create;
  FRoot := TPath.GetFullPath(ARoot);
end;

function TFileSystemTemplateLoader.Load(const ATemplateName: string): string;
var
  LFileName: string;
begin
  LFileName := ATemplateName;
  if not TPath.IsPathRooted(LFileName) then
    LFileName := TPath.Combine(FRoot, LFileName);

  if TFile.Exists(LFileName) then
    Exit(TFile.ReadAllText(LFileName));

  if TFile.Exists(LFileName + '.html') then
    Exit(TFile.ReadAllText(LFileName + '.html'));

  if TFile.Exists(LFileName + '.template') then
    Exit(TFile.ReadAllText(LFileName + '.template'));

  raise EFileNotFoundException.CreateFmt('Template not found: %s', [ATemplateName]);
end;

{ TInMemoryTemplateLoader }

constructor TInMemoryTemplateLoader.Create;
begin
  inherited Create;
  FTemplates := TCollections.CreateDictionaryIgnoreCase<string, string>;
end;

procedure TInMemoryTemplateLoader.AddTemplate(const AName, AContent: string);
begin
  FTemplates.AddOrSetValue(AName, AContent);
end;

function TInMemoryTemplateLoader.Load(const ATemplateName: string): string;
begin
  if not FTemplates.TryGetValue(ATemplateName, Result) then
    raise EFileNotFoundException.CreateFmt('Template not found: %s', [ATemplateName]);
end;

{ TDextTemplateEngine.TTemplateDocument }

constructor TDextTemplateEngine.TTemplateDocument.Create;
begin
  inherited Create;
  Sections := TObjectDictionary<string, TStringBuilder>.Create([doOwnsValues]);
  Definitions := TObjectDictionary<string, TInlineTemplateDefinition>.Create([doOwnsValues]);
end;

destructor TDextTemplateEngine.TTemplateDocument.Destroy;
begin
  Definitions.Free;
  Sections.Free;
  inherited;
end;

{ TDextTemplateEngine.TRenderState }

constructor TDextTemplateEngine.TRenderState.Create;
begin
  inherited Create;
  Sections := TCollections.CreateDictionaryIgnoreCase<string, string>;
  Definitions := TObjectDictionary<string, TInlineTemplateDefinition>.Create([doOwnsValues]);
end;

destructor TDextTemplateEngine.TRenderState.Destroy;
begin
  Definitions.Free;
  Sections := nil;
  inherited;
end;

{ TDextTemplateEngine }

constructor TDextTemplateEngine.Create;
begin
  Create(nil);
end;

constructor TDextTemplateEngine.Create(const ALoader: ITemplateLoader);
begin
  inherited Create;
  FFilters := TCollections.CreateDictionaryIgnoreCase<string, System.SysUtils.TFunc<string, string>>;
  FAdvancedFilters := TCollections.CreateDictionaryIgnoreCase<string, TTemplateFilterFunc>;
  FTemplateAstCache := TObjectDictionary<string, TTemplateNodeList>.Create([doOwnsValues]);
  FTemplateLoader := ALoader;
  FIsHtmlMode := False;

  RegisterFilter('ToPascalCase',
    function(S: string): string
    var
      LParts: TArray<string>;
      I: Integer;
    begin
      Result := S.DeQuotedString;
      LParts := Result.Split(['_', ' ', '-'], TStringSplitOptions.ExcludeEmpty);
      if Length(LParts) > 1 then
      begin
        Result := '';
        for I := 0 to High(LParts) do
          Result := Result + UpperCase(Copy(LParts[I], 1, 1)) + LowerCase(Copy(LParts[I], 2, MaxInt));
      end
      else if Result <> '' then
        Result := UpperCase(Copy(Result, 1, 1)) + Copy(Result, 2, MaxInt);
    end);

  RegisterFilter('ToCamelCase',
    function(S: string): string
    var
      LPascal: string;
    begin
      LPascal := ApplyFilter('ToPascalCase', S);
      if LPascal = '' then
        Result := ''
      else
        Result := LowerCase(Copy(LPascal, 1, 1)) + Copy(LPascal, 2, MaxInt);
    end);

  RegisterFilter('ToSnakeCase',
    function(S: string): string
    var
      I: Integer;
    begin
      Result := '';
      for I := 1 to Length(S) do
      begin
        if (I > 1) and S[I].IsUpper then
          Result := Result + '_';
        Result := Result + S[I].ToLower;
      end;
    end);

  RegisterFilter('Pluralize',
    function(S: string): string
    begin
      Result := S;
      if S = '' then
        Exit;
      if S.EndsWith('y', True) and not S.EndsWith('ay', True) and not S.EndsWith('ey', True) and
         not S.EndsWith('iy', True) and not S.EndsWith('oy', True) and not S.EndsWith('uy', True) then
        Result := S.Substring(0, S.Length - 1) + 'ies'
      else if S.EndsWith('s', True) or S.EndsWith('x', True) or S.EndsWith('ch', True) or S.EndsWith('sh', True) then
        Result := S + 'es'
      else
        Result := S + 's';
    end);

  RegisterFilter('Singularize',
    function(S: string): string
    begin
      Result := S;
      if S = '' then
        Exit;
      if S.EndsWith('ies', True) then
        Result := S.Substring(0, S.Length - 3) + 'y'
      else if S.EndsWith('es', True) then
        Result := S.Substring(0, S.Length - 2)
      else if S.EndsWith('s', True) and not S.EndsWith('ss', True) then
        Result := S.Substring(0, S.Length - 1);
    end);

  RegisterAdvancedFilter('uppercase', function(const AValue: TValue; const AArgs: TArray<TValue>): TValue
    begin Result := UpperCase(ValueToString(AValue)); end);
  RegisterAdvancedFilter('lowercase', function(const AValue: TValue; const AArgs: TArray<TValue>): TValue
    begin Result := LowerCase(ValueToString(AValue)); end);
  RegisterAdvancedFilter('capitalize', function(const AValue: TValue; const AArgs: TArray<TValue>): TValue
    var S: string;
    begin
      S := ValueToString(AValue);
      if S = '' then Result := '' else Result := UpperCase(Copy(S, 1, 1)) + LowerCase(Copy(S, 2, MaxInt));
    end);
  RegisterAdvancedFilter('trim', function(const AValue: TValue; const AArgs: TArray<TValue>): TValue
    begin Result := System.SysUtils.Trim(ValueToString(AValue)); end);
  RegisterAdvancedFilter('truncate', function(const AValue: TValue; const AArgs: TArray<TValue>): TValue
    var S, Suffix: string; N: Integer;
    begin
      S := ValueToString(AValue);
      N := 0;
      if Length(AArgs) > 0 then N := StrToIntDef(ValueToString(AArgs[0]), 0);
      if Length(AArgs) > 1 then Suffix := ValueToString(AArgs[1]) else Suffix := '...';
      if (N > 0) and (Length(S) > N) then
        Result := Copy(S, 1, N) + Suffix
      else
        Result := S;
    end);
  RegisterAdvancedFilter('lpad', function(const AValue: TValue; const AArgs: TArray<TValue>): TValue
    var S, Pad: string; N: Integer;
    begin
      S := ValueToString(AValue);
      N := StrToIntDef(ValueToString(AArgs[0]), Length(S));
      if Length(AArgs) > 1 then Pad := ValueToString(AArgs[1]) else Pad := ' ';
      if Pad = '' then Pad := ' ';
      while Length(S) < N do S := Pad[1] + S;
      Result := S;
    end);
  RegisterAdvancedFilter('rpad', function(const AValue: TValue; const AArgs: TArray<TValue>): TValue
    var S, Pad: string; N: Integer;
    begin
      S := ValueToString(AValue);
      N := StrToIntDef(ValueToString(AArgs[0]), Length(S));
      if Length(AArgs) > 1 then Pad := ValueToString(AArgs[1]) else Pad := ' ';
      if Pad = '' then Pad := ' ';
      while Length(S) < N do S := S + Pad[1];
      Result := S;
    end);
  RegisterAdvancedFilter('replace', function(const AValue: TValue; const AArgs: TArray<TValue>): TValue
    begin
      if Length(AArgs) >= 2 then
        Result := ValueToString(AValue).Replace(ValueToString(AArgs[0]), ValueToString(AArgs[1]))
      else
        Result := ValueToString(AValue);
    end);
  RegisterAdvancedFilter('default', function(const AValue: TValue; const AArgs: TArray<TValue>): TValue
    var S: string;
    begin
      S := ValueToString(AValue);
      if (S = '') and (Length(AArgs) > 0) then
        Result := AArgs[0]
      else
        Result := AValue;
    end);
  RegisterAdvancedFilter('htmlencode', function(const AValue: TValue; const AArgs: TArray<TValue>): TValue
    begin Result := TDextEscaping.Html(ValueToString(AValue)); end);
  RegisterAdvancedFilter('urlencode', function(const AValue: TValue; const AArgs: TArray<TValue>): TValue
    begin Result := TNetEncoding.URL.Encode(ValueToString(AValue)); end);
  RegisterAdvancedFilter('json', function(const AValue: TValue; const AArgs: TArray<TValue>): TValue
    begin Result := TDextJson.Serialize(AValue); end);
  RegisterAdvancedFilter('raw', function(const AValue: TValue; const AArgs: TArray<TValue>): TValue
    begin Result := AValue; end);
  RegisterAdvancedFilter('datetostr', function(const AValue: TValue; const AArgs: TArray<TValue>): TValue
    var Fmt: string; Dt: TDateTime;
    begin
      if AValue.IsEmpty then Exit('');
      if AValue.TryAsType<TDateTime>(Dt) then
      begin
        if Length(AArgs) > 0 then Fmt := ValueToString(AArgs[0]) else Fmt := 'dd/mm/yyyy';
        Result := FormatDateTime(Fmt, Dt);
      end
      else
        Result := ValueToString(AValue);
    end);
  RegisterAdvancedFilter('datetimetostr', function(const AValue: TValue; const AArgs: TArray<TValue>): TValue
    var Fmt: string; Dt: TDateTime;
    begin
      if AValue.IsEmpty then Exit('');
      if AValue.TryAsType<TDateTime>(Dt) then
      begin
        if Length(AArgs) > 0 then Fmt := ValueToString(AArgs[0]) else Fmt := 'dd/mm/yyyy hh:nn:ss';
        Result := FormatDateTime(Fmt, Dt);
      end
      else
        Result := ValueToString(AValue);
    end);
  RegisterAdvancedFilter('formatfloat', function(const AValue: TValue; const AArgs: TArray<TValue>): TValue
    var N: Extended; Fmt: string;
    begin
      Fmt := '0.00';
      if Length(AArgs) > 0 then Fmt := ValueToString(AArgs[0]);
      if AValue.TryAsType<Extended>(N) then
        Result := System.SysUtils.FormatFloat(Fmt, N)
      else
        Result := ValueToString(AValue);
    end);
  RegisterAdvancedFilter('formatint', function(const AValue: TValue; const AArgs: TArray<TValue>): TValue
    var I64: Int64;
    begin
      if AValue.TryAsType<Int64>(I64) then
        Result := Format('%d', [I64])
      else
        Result := ValueToString(AValue);
    end);
  RegisterAdvancedFilter('round', function(const AValue: TValue; const AArgs: TArray<TValue>): TValue
    var N: Extended; Digits: Integer;
    begin
      Digits := 0;
      if Length(AArgs) > 0 then Digits := StrToIntDef(ValueToString(AArgs[0]), 0);
      if AValue.TryAsType<Extended>(N) then
        Result := SimpleRoundTo(N, -Digits)
      else
        Result := ValueToString(AValue);
    end);
  RegisterAdvancedFilter('eq', function(const AValue: TValue; const AArgs: TArray<TValue>): TValue
    begin Result := SameText(ValueToString(AValue), ValueToString(AArgs[0])); end);
  RegisterAdvancedFilter('ne', function(const AValue: TValue; const AArgs: TArray<TValue>): TValue
    begin Result := not SameText(ValueToString(AValue), ValueToString(AArgs[0])); end);
  RegisterAdvancedFilter('gt', function(const AValue: TValue; const AArgs: TArray<TValue>): TValue
    begin Result := ValueToString(AValue) > ValueToString(AArgs[0]); end);
  RegisterAdvancedFilter('ge', function(const AValue: TValue; const AArgs: TArray<TValue>): TValue
    begin Result := ValueToString(AValue) >= ValueToString(AArgs[0]); end);
  RegisterAdvancedFilter('lt', function(const AValue: TValue; const AArgs: TArray<TValue>): TValue
    begin Result := ValueToString(AValue) < ValueToString(AArgs[0]); end);
  RegisterAdvancedFilter('le', function(const AValue: TValue; const AArgs: TArray<TValue>): TValue
    begin Result := ValueToString(AValue) <= ValueToString(AArgs[0]); end);
  RegisterAdvancedFilter('contains', function(const AValue: TValue; const AArgs: TArray<TValue>): TValue
    begin Result := ContainsText(ValueToString(AValue), ValueToString(AArgs[0])); end);
  RegisterAdvancedFilter('startswith', function(const AValue: TValue; const AArgs: TArray<TValue>): TValue
    begin Result := StartsText(ValueToString(AArgs[0]), ValueToString(AValue)); end);
  RegisterAdvancedFilter('endswith', function(const AValue: TValue; const AArgs: TArray<TValue>): TValue
    begin Result := EndsText(ValueToString(AArgs[0]), ValueToString(AValue)); end);
end;

destructor TDextTemplateEngine.Destroy;
begin
  FTemplateAstCache.Free;
  FAdvancedFilters := nil;
  FFilters := nil;
  inherited;
end;

function TDextTemplateEngine.GetTemplateLoader: ITemplateLoader;
begin
  Result := FTemplateLoader;
end;

procedure TDextTemplateEngine.SetTemplateLoader(const ALoader: ITemplateLoader);
begin
  FTemplateLoader := ALoader;
end;

procedure TDextTemplateEngine.RegisterFilter(const AName: string; const AFilter: System.SysUtils.TFunc<string, string>);
begin
  FFilters.AddOrSetValue(AName, AFilter);
end;

procedure TDextTemplateEngine.RegisterAdvancedFilter(const AName: string; const AFilter: TTemplateFilterFunc);
begin
  FAdvancedFilters.AddOrSetValue(AName, AFilter);
end;

function TDextTemplateEngine.ApplyFilter(const AName, AValue: string): string;
var
  LFilter: System.SysUtils.TFunc<string, string>;
begin
  if FFilters.TryGetValue(System.SysUtils.Trim(AName), LFilter) and Assigned(LFilter) then
    Result := LFilter(AValue)
  else
    Result := AValue;
end;

function TDextTemplateEngine.ApplyAdvancedFilter(const AName: string; const AValue: TValue; const AArgs: TArray<TValue>): TValue;
var
  LFilter: TTemplateFilterFunc;
begin
  if FAdvancedFilters.TryGetValue(AName, LFilter) then
    Exit(LFilter(AValue, AArgs));

  Result := ApplyFilter(AName, ValueToString(AValue));
end;

function TDextTemplateEngine.ValueToString(const AValue: TValue): string;
var
  LUnwrapped: TValue;
begin
  if AValue.IsEmpty then
    Exit('');

  if TReflection.TryUnwrapProp(AValue, LUnwrapped) then
    Exit(ValueToString(LUnwrapped));

  if AValue.Kind = tkClass then
  begin
    if AValue.AsObject = nil then
      Exit('');
    Exit(AValue.AsObject.ToString);
  end;

  if AValue.Kind = tkInterface then
    Exit(AValue.ToString);

  Result := AValue.ToString;
end;

function TDextTemplateEngine.ValueToBoolean(const AValue: TValue): Boolean;
var
  LText: string;
begin
  if AValue.IsEmpty then
    Exit(False);

  if AValue.Kind = tkEnumeration then
  begin
    if AValue.TypeInfo = TypeInfo(Boolean) then
      Exit(AValue.AsBoolean);
  end;

  if AValue.Kind in [tkInteger, tkInt64] then
    Exit(AValue.AsInt64 <> 0);

  LText := ValueToString(AValue).ToLower;
  Result := (LText <> '') and (LText <> 'false') and (LText <> '0') and (LText <> 'null');
end;

function TDextTemplateEngine.ResolveRootValue(const ARoot: string; const AContext: ITemplateContext): TValue;
var
  LText: string;
  LObject: TObject;
  LList: TArray<TObject>;
begin
  Result := TValue.Empty;

  if (ARoot = '@@index') or SameText(ARoot, '@@index') then
    Exit(AContext.GetValue('index'));
  if SameText(ARoot, '@@first') then
    Exit(AContext.GetValue('first'));
  if SameText(ARoot, '@@last') then
    Exit(AContext.GetValue('last'));
  if SameText(ARoot, '@@odd') then
    Exit(AContext.GetValue('odd'));
  if SameText(ARoot, '@@even') then
    Exit(AContext.GetValue('even'));

  LObject := AContext.GetObject(ARoot);
  if Assigned(LObject) then
    Exit(TValue.From<TObject>(LObject));

  LList := AContext.GetList(ARoot);
  if Length(LList) > 0 then
    Exit(TValue.From<TArray<TObject>>(LList));

  if AContext.TryGetValue(ARoot, LText) then
    Exit(LText);
end;

function TDextTemplateEngine.ResolvePathValue(const APath: string; const AContext: ITemplateContext): TValue;
var
  LWorkPath: string;
  LParts: TArray<string>;
  I: Integer;
begin
  LWorkPath := System.SysUtils.Trim(APath);
  if StartsText('@', LWorkPath) and (not StartsText('@@', LWorkPath)) then
    LWorkPath := Copy(LWorkPath, 2, MaxInt);

  LParts := SplitTopLevel(LWorkPath, '.');
  if Length(LParts) = 0 then
    Exit(TValue.Empty);

  Result := ResolveRootValue(System.SysUtils.Trim(LParts[0]), AContext);
  for I := 1 to High(LParts) do
  begin
    Result := ResolveMemberValue(Result, LParts[I]);
    if Result.IsEmpty then
      Exit(TValue.Empty);
  end;
end;

function TDextTemplateEngine.ResolveObjectValue(AObj: TObject; const APropPath: string): TValue;
var
  LParts: TArray<string>;
  LCurrent: TValue;
  LPath: string;
begin
  Result := TValue.From<TObject>(AObj);
  if (AObj = nil) or (APropPath = '') then
    Exit(Result);

  LParts := SplitTopLevel(APropPath, '.');
  LCurrent := TValue.From<TObject>(AObj);

  for LPath in LParts do
  begin
    LCurrent := ResolveMemberValue(LCurrent, LPath);
    if LCurrent.IsEmpty then
      Exit(TValue.Empty);
  end;

  Result := LCurrent;
end;

function TDextTemplateEngine.ResolveObjectProperty(AObj: TObject; const APropPath: string): string;
begin
  Result := ValueToString(ResolveObjectValue(AObj, APropPath));
end;

function TDextTemplateEngine.ResolveMemberValue(const AValue: TValue; const APath: string): TValue;
var
  LWorking: TValue;
  LMeta: TTypeMetadata;
  LHandler: IPropertyHandler;
  LName: string;
  LObject: TObject;
begin
  Result := TValue.Empty;
  LWorking := AValue;

  if TReflection.TryUnwrapProp(LWorking, Result) then
    LWorking := Result;

  if LWorking.IsEmpty then
    Exit(TValue.Empty);

  LName := System.SysUtils.Trim(APath);

  if LWorking.Kind = tkClass then
  begin
    LObject := LWorking.AsObject;
    if Assigned(LObject) then
    begin
      LMeta := TReflection.GetMetadata(LObject.ClassInfo);
      LHandler := LMeta.GetHandler(LName);
      if Assigned(LHandler) then
        Exit(LHandler.GetValue(Pointer(LObject)));
    end;
  end;

  if LWorking.Kind = tkRecord then
  begin
    LMeta := TReflection.GetMetadata(LWorking.TypeInfo);
    LHandler := LMeta.GetHandler(LName);
    if Assigned(LHandler) then
      Exit(LHandler.GetValue(LWorking.GetReferenceToRawData));
  end;

  if LWorking.Kind = tkInterface then
  begin
    var LIntfObj := TObject(LWorking.AsInterface);
    if Assigned(LIntfObj) then
    begin
      LMeta := TReflection.GetMetadata(LIntfObj.ClassInfo);
      LHandler := LMeta.GetHandler(LName);
      if Assigned(LHandler) then
        Exit(LHandler.GetValue(Pointer(LIntfObj)));
    end;
  end;

  Result := TValue.Empty;
end;

function TDextTemplateEngine.UnquoteString(const AText: string): string;
begin
  Result := System.SysUtils.Trim(AText);
  if (Length(Result) >= 2) and (((Result[1] = '''') and (Result[High(Result)] = '''')) or
     ((Result[1] = '"') and (Result[High(Result)] = '"'))) then
    Result := Copy(Result, 2, Length(Result) - 2);
end;

function TDextTemplateEngine.SplitTopLevel(const AText: string; ASeparator: Char): TArray<string>;
var
  I, LStart, LDepth: Integer;
  LQuote: Char;
  LItems: TList<string>;
begin
  LItems := TList<string>.Create;
  try
    LStart := 1;
    LDepth := 0;
    LQuote := #0;
    for I := 1 to Length(AText) do
    begin
      if (LQuote <> #0) then
      begin
        if AText[I] = LQuote then
          LQuote := #0;
        Continue;
      end;

      if CharInSet(AText[I], ['''', '"']) then
      begin
        LQuote := AText[I];
        Continue;
      end;

      if AText[I] = '(' then
        Inc(LDepth)
      else if AText[I] = ')' then
        Dec(LDepth)
      else if (AText[I] = ASeparator) and (LDepth = 0) then
      begin
        LItems.Add(Copy(AText, LStart, I - LStart));
        LStart := I + 1;
      end;
    end;
    LItems.Add(Copy(AText, LStart, MaxInt));
    Result := LItems.ToArray;
  finally
    LItems.Free;
  end;
end;

function TDextTemplateEngine.ParseFilterArguments(const AText: string; const AContext: ITemplateContext): TArray<TValue>;
var
  LParts: TArray<string>;
  I: Integer;
  LIsRaw: Boolean;
begin
  LParts := SplitTopLevel(AText, ',');
  SetLength(Result, Length(LParts));
  for I := 0 to High(LParts) do
  begin
    LIsRaw := False;
    Result[I] := ResolveValue(LParts[I], AContext, LIsRaw);
  end;
end;

function TDextTemplateEngine.ParseNamedArguments(const AText: string): TArray<TTemplateArgument>;
var
  LParts: TArray<string>;
  LItem: string;
  LColon: Integer;
  LList: TList<TTemplateArgument>;
  LArg: TTemplateArgument;
begin
  LList := TList<TTemplateArgument>.Create;
  try
    LParts := SplitTopLevel(AText, ',');
    for LItem in LParts do
    begin
      if System.SysUtils.Trim(LItem) = '' then
        Continue;

      LColon := System.Pos(':', LItem);
      if LColon > 0 then
      begin
        LArg.Name := System.SysUtils.Trim(Copy(LItem, 1, LColon - 1));
        LArg.Expression := System.SysUtils.Trim(Copy(LItem, LColon + 1, MaxInt));
      end
      else
      begin
        LArg.Name := '';
        LArg.Expression := System.SysUtils.Trim(LItem);
      end;
      LList.Add(LArg);
    end;
    Result := LList.ToArray;
  finally
    LList.Free;
  end;
end;

function TDextTemplateEngine.ExtractCallArguments(const AText: string; out AName: string): string;
var
  LOpen: Integer;
  LClosePos: Integer;
begin
  AName := System.SysUtils.Trim(AText);
  LOpen := System.Pos('(', AName);
  if LOpen = 0 then
  begin
    Result := '';
    Exit;
  end;

  Result := Copy(AName, LOpen + 1, MaxInt);
  AName := System.SysUtils.Trim(Copy(AName, 1, LOpen - 1));
  LClosePos := Result.LastIndexOf(')');
  if LClosePos >= 0 then
    Result := Copy(Result, 1, LClosePos);
end;

function TDextTemplateEngine.HasTopLevelOperator(const AExpr: string): Boolean;
var
  I, LDepth: Integer;
  LQuote: Char;
begin
  Result := False;
  LDepth := 0;
  LQuote := #0;
  for I := 1 to Length(AExpr) do
  begin
    if LQuote <> #0 then
    begin
      if AExpr[I] = LQuote then
        LQuote := #0;
      Continue;
    end;

    if CharInSet(AExpr[I], ['''', '"']) then
    begin
      LQuote := AExpr[I];
      Continue;
    end;

    if AExpr[I] = '(' then
      Inc(LDepth)
    else if AExpr[I] = ')' then
      Dec(LDepth)
    else if (LDepth = 0) and CharInSet(AExpr[I], ['+', '-', '*', '/', '>', '<', '=', '!']) then
      Exit(True);
  end;
end;

function TDextTemplateEngine.ExecuteInlineFunction(const AName: string; const AArgs: TArray<TValue>): TValue;
var
  LName: string;
  LNum1, LNum2: Double;
  LInt: Integer;
  LText: string;
begin
  LName := LowerCase(System.SysUtils.Trim(AName));

  if LName = 'length' then
    Exit(Length(ValueToString(AArgs[0])));
  if LName = 'upper' then
    Exit(UpperCase(ValueToString(AArgs[0])));
  if LName = 'lower' then
    Exit(LowerCase(ValueToString(AArgs[0])));
  if LName = 'trim' then
    Exit(System.SysUtils.Trim(ValueToString(AArgs[0])));
  if LName = 'sqrt' then
  begin
    LNum1 := StrToFloatDef(ValueToString(AArgs[0]), 0, TFormatSettings.Invariant);
    Exit(System.Sqrt(LNum1));
  end;
  if LName = 'abs' then
  begin
    LNum1 := StrToFloatDef(ValueToString(AArgs[0]), 0, TFormatSettings.Invariant);
    Exit(System.Abs(LNum1));
  end;
  if LName = 'round' then
  begin
    LNum1 := StrToFloatDef(ValueToString(AArgs[0]), 0, TFormatSettings.Invariant);
    if Length(AArgs) > 1 then
      LInt := StrToIntDef(ValueToString(AArgs[1]), 0)
    else
      LInt := 0;
    Exit(SimpleRoundTo(LNum1, -LInt));
  end;
  if LName = 'min' then
  begin
    LNum1 := StrToFloatDef(ValueToString(AArgs[0]), 0, TFormatSettings.Invariant);
    LNum2 := StrToFloatDef(ValueToString(AArgs[1]), 0, TFormatSettings.Invariant);
    Exit(System.Math.Min(LNum1, LNum2));
  end;
  if LName = 'max' then
  begin
    LNum1 := StrToFloatDef(ValueToString(AArgs[0]), 0, TFormatSettings.Invariant);
    LNum2 := StrToFloatDef(ValueToString(AArgs[1]), 0, TFormatSettings.Invariant);
    Exit(System.Math.Max(LNum1, LNum2));
  end;
  if LName = 'left' then
  begin
    LText := ValueToString(AArgs[0]);
    LInt := StrToIntDef(ValueToString(AArgs[1]), 0);
    Exit(Copy(LText, 1, LInt));
  end;
  if LName = 'right' then
  begin
    LText := ValueToString(AArgs[0]);
    LInt := StrToIntDef(ValueToString(AArgs[1]), 0);
    if LInt <= 0 then
      Exit('');
    if LInt >= Length(LText) then
      Exit(LText);
    Exit(Copy(LText, Length(LText) - LInt + 1, LInt));
  end;

  Result := TValue.Empty;
end;

function TDextTemplateEngine.EvaluateInlineExpression(const AExpr: string; const AContext: ITemplateContext): TValue;
var
  S: string;
  P: Integer;

  procedure SkipSpaces;
  begin
    while (P <= Length(S)) and TCharacter.IsWhiteSpace(S[P]) do
      Inc(P);
  end;

  function ParseExpression: TValue; forward;

  function TryAsNumber(const AValue: TValue; out ANumber: Double): Boolean;
  begin
    Result := TryStrToFloat(ValueToString(AValue), ANumber, TFormatSettings.Invariant);
    if not Result and (AValue.Kind = tkEnumeration) and (AValue.TypeInfo = TypeInfo(Boolean)) then
    begin
      ANumber := Ord(AValue.AsBoolean);
      Result := True;
    end;
  end;

  function ParseStringLiteral: string;
  var
    LQuote: Char;
    LStart: Integer;
  begin
    LQuote := S[P];
    Inc(P);
    LStart := P;
    while (P <= Length(S)) and (S[P] <> LQuote) do
      Inc(P);
    Result := Copy(S, LStart, P - LStart);
    if (P <= Length(S)) and (S[P] = LQuote) then
      Inc(P);
  end;

  function ParseNameToken: string;
  var
    LStart: Integer;
  begin
    if (P <= Length(S)) and (S[P] = '@') then
      Inc(P);
    LStart := P;
    while (P <= Length(S)) and CharInSet(S[P], ['A'..'Z', 'a'..'z', '0'..'9', '_', '.', '@']) do
      Inc(P);
    Result := Copy(S, LStart, P - LStart);
  end;

  function ParsePrimary: TValue;
  var
    LName: string;
    LArgs: TList<TValue>;
  begin
    SkipSpaces;
    if P > Length(S) then
      Exit(TValue.Empty);

    if S[P] = '(' then
    begin
      Inc(P);
      Result := ParseExpression;
      SkipSpaces;
      if (P <= Length(S)) and (S[P] = ')') then
        Inc(P);
      Exit;
    end;

    if CharInSet(S[P], ['''', '"']) then
      Exit(ParseStringLiteral);

    if CharInSet(S[P], ['0'..'9']) then
    begin
      LName := ParseNameToken;
      if Pos('.', LName) > 0 then
        Exit(StrToFloatDef(LName, 0, TFormatSettings.Invariant));
      Exit(StrToInt64Def(LName, 0));
    end;

    LName := ParseNameToken;
    SkipSpaces;
    if (P <= Length(S)) and (S[P] = '(') and (Pos('.', LName) = 0) then
    begin
      Inc(P);
      LArgs := TList<TValue>.Create;
      try
        SkipSpaces;
        if (P <= Length(S)) and (S[P] <> ')') then
        begin
          repeat
            LArgs.Add(ParseExpression);
            SkipSpaces;
            if (P <= Length(S)) and (S[P] = ',') then
            begin
              Inc(P);
              SkipSpaces;
            end
            else
              Break;
          until False;
        end;
        if (P <= Length(S)) and (S[P] = ')') then
          Inc(P);
        Result := ExecuteInlineFunction(LName, LArgs.ToArray);
      finally
        LArgs.Free;
      end;
      Exit;
    end;

    Result := ResolvePathValue(LName, AContext);
  end;

  function ParseUnary: TValue;
  var
    LNum: Double;
  begin
    SkipSpaces;
    if (P <= Length(S)) and (S[P] = '-') then
    begin
      Inc(P);
      Result := ParseUnary;
      if TryAsNumber(Result, LNum) then
        Result := -LNum
      else
        Result := TValue.Empty;
      Exit;
    end;
    Result := ParsePrimary;
  end;

  function ParseMulDiv: TValue;
  var
    LLeft, LRight: TValue;
    LOp: Char;
    LNum1, LNum2: Double;
  begin
    LLeft := ParseUnary;
    while True do
    begin
      SkipSpaces;
      if (P > Length(S)) or (not CharInSet(S[P], ['*', '/'])) then
        Break;
      LOp := S[P];
      Inc(P);
      LRight := ParseUnary;
      LNum1 := 0;
      LNum2 := 0;
      TryAsNumber(LLeft, LNum1);
      TryAsNumber(LRight, LNum2);
      if LOp = '*' then
        LLeft := LNum1 * LNum2
      else if LNum2 <> 0 then
        LLeft := LNum1 / LNum2
      else
        LLeft := 0;
    end;
    Result := LLeft;
  end;

  function ParseAddSub: TValue;
  var
    LLeft, LRight: TValue;
    LOp: Char;
    LNum1, LNum2: Double;
    LIsNum1, LIsNum2: Boolean;
  begin
    LLeft := ParseMulDiv;
    while True do
    begin
      SkipSpaces;
      if (P > Length(S)) or (not CharInSet(S[P], ['+', '-'])) then
        Break;
      LOp := S[P];
      Inc(P);
      LRight := ParseMulDiv;
      LIsNum1 := TryAsNumber(LLeft, LNum1);
      LIsNum2 := TryAsNumber(LRight, LNum2);
      if (LOp = '+') and (not (LIsNum1 and LIsNum2)) then
        LLeft := ValueToString(LLeft) + ValueToString(LRight)
      else if LOp = '+' then
        LLeft := LNum1 + LNum2
      else
        LLeft := LNum1 - LNum2;
    end;
    Result := LLeft;
  end;

  function ParseComparison: TValue;
  var
    LLeft, LRight: TValue;
    LOp: string;
    LNum1, LNum2: Double;
    LIsNum1, LIsNum2: Boolean;
  begin
    LLeft := ParseAddSub;
    SkipSpaces;
    if P > Length(S) then
      Exit(LLeft);

    LOp := '';
    if (P < Length(S)) and (((S[P] = '>') and (S[P + 1] = '=')) or ((S[P] = '<') and (S[P + 1] = '=')) or
       ((S[P] = '=') and (S[P + 1] = '=')) or ((S[P] = '!') and (S[P + 1] = '='))) then
    begin
      LOp := Copy(S, P, 2);
      Inc(P, 2);
    end
    else if CharInSet(S[P], ['>', '<']) then
    begin
      LOp := S[P];
      Inc(P);
    end;

    if LOp = '' then
      Exit(LLeft);

    LRight := ParseAddSub;
    LIsNum1 := TryAsNumber(LLeft, LNum1);
    LIsNum2 := TryAsNumber(LRight, LNum2);

    if LIsNum1 and LIsNum2 then
    begin
      if LOp = '>' then Exit(LNum1 > LNum2);
      if LOp = '<' then Exit(LNum1 < LNum2);
      if LOp = '>=' then Exit(LNum1 >= LNum2);
      if LOp = '<=' then Exit(LNum1 <= LNum2);
      if LOp = '==' then Exit(LNum1 = LNum2);
      if LOp = '!=' then Exit(LNum1 <> LNum2);
    end
    else
    begin
      if LOp = '==' then Exit(SameText(ValueToString(LLeft), ValueToString(LRight)));
      if LOp = '!=' then Exit(not SameText(ValueToString(LLeft), ValueToString(LRight)));
      if LOp = '>' then Exit(ValueToString(LLeft) > ValueToString(LRight));
      if LOp = '<' then Exit(ValueToString(LLeft) < ValueToString(LRight));
      if LOp = '>=' then Exit(ValueToString(LLeft) >= ValueToString(LRight));
      if LOp = '<=' then Exit(ValueToString(LLeft) <= ValueToString(LRight));
    end;

    Result := False;
  end;

  function ParseExpression: TValue;
  begin
    Result := ParseComparison;
  end;

begin
  S := System.SysUtils.Trim(AExpr);
  P := 1;
  Result := ParseExpression;
end;

function TDextTemplateEngine.ResolveValue(const AExpr: string; const AContext: ITemplateContext; out AIsRaw: Boolean): TValue;
var
  LExpr: string;
  LParts: TArray<string>;
  LCurrent: TValue;
  I, LParenPos: Integer;
  LFilterName, LArgsText: string;
  LArgs: TArray<TValue>;
  LInt64: Int64;
  LFloat: Double;
  LHasAdvanced: TTemplateFilterFunc;
  LLegacyFilter: System.SysUtils.TFunc<string, string>;
begin
  AIsRaw := False;
  LExpr := System.SysUtils.Trim(AExpr);
  if LExpr = '' then
    Exit(TValue.Empty);

  if StartsText('@', LExpr) and (not StartsText('@@', LExpr)) then
    LExpr := Copy(LExpr, 2, MaxInt);

  if (Length(LExpr) >= 2) and (((LExpr[1] = '''') and (LExpr[Length(LExpr)] = '''')) or
     ((LExpr[1] = '"') and (LExpr[Length(LExpr)] = '"'))) then
    Exit(UnquoteString(LExpr));

  if SameText(LExpr, 'true') then
    Exit(True);
  if SameText(LExpr, 'false') then
    Exit(False);

  if TryStrToInt64(LExpr, LInt64) then
    Exit(LInt64);
  if TryStrToFloat(LExpr, LFloat, TFormatSettings.Invariant) then
    Exit(LFloat);

  LParenPos := System.Pos('(', LExpr);
  if (LParenPos > 1) and (System.Pos('.', LExpr) = 0) and EndsText(')', LExpr) then
    Exit(EvaluateInlineExpression(LExpr, AContext));

  if HasTopLevelOperator(LExpr) then
    Exit(EvaluateInlineExpression(LExpr, AContext));

  LParts := SplitTopLevel(LExpr, '.');
  if Length(LParts) = 0 then
    Exit(TValue.Empty);

  LCurrent := ResolvePathValue(System.SysUtils.Trim(LParts[0]), AContext);

  for I := 1 to High(LParts) do
  begin
    LFilterName := System.SysUtils.Trim(LParts[I]);
    LParenPos := System.Pos('(', LFilterName);
    if LParenPos > 0 then
    begin
      LArgsText := Copy(LFilterName, LParenPos + 1, MaxInt);
      LFilterName := Copy(LFilterName, 1, LParenPos - 1);
      if EndsText(')', LArgsText) then
        LArgsText := Copy(LArgsText, 1, Length(LArgsText) - 1);
      LArgs := ParseFilterArguments(LArgsText, AContext);
      if SameText(LFilterName, 'raw') then
        AIsRaw := True;
      LCurrent := ApplyAdvancedFilter(LFilterName, LCurrent, LArgs);
    end
    else
    begin
      if FAdvancedFilters.TryGetValue(LFilterName, LHasAdvanced) or FFilters.TryGetValue(LFilterName, LLegacyFilter) then
        LCurrent := ApplyAdvancedFilter(LFilterName, LCurrent, [])
      else
        LCurrent := ResolveMemberValue(LCurrent, LFilterName);
    end;
  end;

  Result := LCurrent;
end;

function TDextTemplateEngine.ResolveExpression(const AExpr: string; const AContext: ITemplateContext): string;
var
  LIsRaw: Boolean;
begin
  Result := ValueToString(ResolveValue(AExpr, AContext, LIsRaw));
end;

function TDextTemplateEngine.EvaluateCondition(const ACond: string; const AContext: ITemplateContext): Boolean;
var
  LIsRaw: Boolean;
begin
  Result := ValueToBoolean(ResolveValue(ACond, AContext, LIsRaw));
end;

procedure TDextTemplateEngine.SkipWhitespace(const AText: string; var APos: Integer);
begin
  while (APos <= Length(AText)) and TCharacter.IsWhiteSpace(AText[APos]) do
    Inc(APos);
end;

procedure TDextTemplateEngine.SkipLineBreak(const AText: string; var APos: Integer);
begin
  if (APos <= Length(AText)) and (AText[APos] = #13) then Inc(APos);
  if (APos <= Length(AText)) and (AText[APos] = #10) then Inc(APos);
end;

function TDextTemplateEngine.ReadBalanced(const AText: string; var APos: Integer; AOpen, AClose: Char): string;
var
  LDepth: Integer;
  LStart: Integer;
  LQuote: Char;
begin
  Result := '';
  if (APos > Length(AText)) or (AText[APos] <> AOpen) then
    Exit;

  LDepth := 1;
  LQuote := #0;
  LStart := APos + 1;
  Inc(APos);
  while (APos <= Length(AText)) and (LDepth > 0) do
  begin
    if LQuote <> #0 then
    begin
      if AText[APos] = LQuote then
        LQuote := #0;
      Inc(APos);
      Continue;
    end;

    if CharInSet(AText[APos], ['''', '"']) then
      LQuote := AText[APos]
    else if AText[APos] = AOpen then
      Inc(LDepth)
    else if AText[APos] = AClose then
      Dec(LDepth);

    Inc(APos);
  end;

  Result := Copy(AText, LStart, APos - LStart - 1);
end;

function TDextTemplateEngine.CaptureUntil(const AText: string; var APos: Integer; const AEndMarker: string): string;
var
  LEndPos: Integer;
begin
  LEndPos := Pos(AEndMarker, AText, APos);
  if LEndPos = 0 then
    raise EInvalidOpException.CreateFmt('Missing closing marker %s', [AEndMarker]);
  Result := Copy(AText, APos, LEndPos - APos);
  APos := LEndPos + Length(AEndMarker);
end;

function TDextTemplateEngine.Parse(const ATemplate: string): TTemplateNodeList;
var
  LPos: Integer;

  procedure TrimTrailingWhitespaceFromLastText(ATarget: TTemplateNodeList);
  var
    LNode: TTemplateNode;
  begin
    if ATarget.Count = 0 then
      Exit;
    LNode := ATarget.Last;
    if LNode is TTextNode then
      TTextNode(LNode).FText := System.SysUtils.TrimRight(TTextNode(LNode).FText);
  end;

  procedure ConsumeTrimRight(const AText: string; var ACurrentPos: Integer);
  begin
    if (ACurrentPos <= Length(AText)) and (AText[ACurrentPos] = '~') then
    begin
      Inc(ACurrentPos);
      while (ACurrentPos <= Length(AText)) and CharInSet(AText[ACurrentPos], [' ', #9, #13, #10]) do
        Inc(ACurrentPos);
    end;
  end;

  procedure ParseBlock(ATarget: TTemplateNodeList; const AEndMarkers: TArray<string>);
  var
    LNextAt, LTextStart: Integer;
    LMarker: string;
    LFoundMarker: Boolean;
    LContent, LCallName, LCallArgs: string;
    LNode: TConditionalNode;
    LLoopNode: TLoopNode;
    LSwitchNode: TSwitchNode;
    LCaseNode: TSwitchCase;
    LSetName, LSetExpr: string;
    LParts: TArray<string>;
    LRequired: Boolean;
    LEqPos: Integer;
    LStartPos: Integer;
    LTrimLeft: Boolean;
  begin
    while LPos <= Length(ATemplate) do
    begin
      LFoundMarker := False;
      for LMarker in AEndMarkers do
      begin
        if StartsText('@' + LMarker, Copy(ATemplate, LPos, Length(LMarker) + 1)) then
        begin
          LFoundMarker := True;
          Exit;
        end;
      end;

      LNextAt := Pos('@', ATemplate, LPos);
      if LNextAt = 0 then
      begin
        ATarget.Add(TTextNode.Create(Self, Copy(ATemplate, LPos, MaxInt)));
        LPos := Length(ATemplate) + 1;
        Exit;
      end;

      if LNextAt > LPos then
        ATarget.Add(TTextNode.Create(Self, Copy(ATemplate, LPos, LNextAt - LPos)));

      LPos := LNextAt + 1;
      LTrimLeft := False;
      if (LPos <= Length(ATemplate)) and (ATemplate[LPos] = '~') then
      begin
        LTrimLeft := True;
        Inc(LPos);
      end;
      if LTrimLeft then
        TrimTrailingWhitespaceFromLastText(ATarget);

      if (LPos <= Length(ATemplate)) and (ATemplate[LPos] = '@') then
      begin
        ATarget.Add(TTextNode.Create(Self, '@'));
        Inc(LPos);
        Continue;
      end;

      if (LPos <= Length(ATemplate)) and (ATemplate[LPos] = '*') then
      begin
        Inc(LPos);
        CaptureUntil(ATemplate, LPos, '*@');
        ConsumeTrimRight(ATemplate, LPos);
        Continue;
      end;

      if StartsText('if', Copy(ATemplate, LPos, 2)) then
      begin
        Inc(LPos, 2);
        SkipWhitespace(ATemplate, LPos);
        LContent := ReadBalanced(ATemplate, LPos, '(', ')');
        SkipWhitespace(ATemplate, LPos);
        LNode := TConditionalNode.Create(Self, LContent);
        ATarget.Add(LNode);
        ParseBlock(LNode.TrueNodes, ['else', 'endif']);
        if StartsText('@else', Copy(ATemplate, LPos, 5)) then
        begin
          Inc(LPos, 5);
          ConsumeTrimRight(ATemplate, LPos);
          SkipLineBreak(ATemplate, LPos);
          ParseBlock(LNode.FalseNodes, ['endif']);
        end;
        if StartsText('@endif', Copy(ATemplate, LPos, 6)) then
        begin
          Inc(LPos, 6);
          ConsumeTrimRight(ATemplate, LPos);
          SkipLineBreak(ATemplate, LPos);
        end;
        ConsumeTrimRight(ATemplate, LPos);
        Continue;
      end;

      if StartsText('foreach', Copy(ATemplate, LPos, 7)) then
      begin
        Inc(LPos, 7);
        SkipWhitespace(ATemplate, LPos);
        LContent := ReadBalanced(ATemplate, LPos, '(', ')');
        LParts := LContent.Split([' '], TStringSplitOptions.ExcludeEmpty);
        if (Length(LParts) >= 4) and SameText(LParts[0], 'var') then
          LLoopNode := TLoopNode.Create(Self, LParts[1], LParts[3])
        else if Length(LParts) >= 3 then
          LLoopNode := TLoopNode.Create(Self, LParts[0], LParts[2])
        else
          raise EInvalidOpException.CreateFmt('Invalid foreach expression: %s', [LContent]);

        ATarget.Add(LLoopNode);
        SkipWhitespace(ATemplate, LPos);
        ParseBlock(LLoopNode.Nodes, ['else', 'endforeach']);
        if StartsText('@else', Copy(ATemplate, LPos, 5)) then
        begin
          Inc(LPos, 5);
          ConsumeTrimRight(ATemplate, LPos);
          SkipLineBreak(ATemplate, LPos);
          ParseBlock(LLoopNode.ElseNodes, ['endforeach']);
        end;
        if StartsText('@endforeach', Copy(ATemplate, LPos, 12)) then
        begin
          Inc(LPos, 12);
          ConsumeTrimRight(ATemplate, LPos);
          SkipLineBreak(ATemplate, LPos);
        end;
        ConsumeTrimRight(ATemplate, LPos);
        Continue;
      end;

      if StartsText('set', Copy(ATemplate, LPos, 3)) then
      begin
        Inc(LPos, 3);
        SkipWhitespace(ATemplate, LPos);
        LStartPos := LPos;
        while (LPos <= Length(ATemplate)) and (ATemplate[LPos] <> #13) and (ATemplate[LPos] <> #10) do
          Inc(LPos);
        LContent := System.SysUtils.Trim(Copy(ATemplate, LStartPos, LPos - LStartPos));
        LEqPos := System.Pos('=', LContent);
        if LEqPos > 0 then
        begin
          LSetName := System.SysUtils.Trim(Copy(LContent, 1, LEqPos - 1));
          LSetExpr := System.SysUtils.Trim(Copy(LContent, LEqPos + 1, MaxInt));
          if StartsText('@', LSetExpr) then
            LSetExpr := Copy(LSetExpr, 2, MaxInt);
          ATarget.Add(TSetNode.Create(Self, LSetName, LSetExpr));
        end;
        SkipLineBreak(ATemplate, LPos);
        ConsumeTrimRight(ATemplate, LPos);
        Continue;
      end;

      if StartsText('continue', Copy(ATemplate, LPos, 8)) then
      begin
        Inc(LPos, 8);
        ATarget.Add(TContinueNode.Create(Self));
        ConsumeTrimRight(ATemplate, LPos);
        Continue;
      end;

      if StartsText('break', Copy(ATemplate, LPos, 5)) then
      begin
        Inc(LPos, 5);
        ATarget.Add(TBreakNode.Create(Self));
        ConsumeTrimRight(ATemplate, LPos);
        Continue;
      end;

      if StartsText('switch', Copy(ATemplate, LPos, 6)) then
      begin
        Inc(LPos, 6);
        SkipWhitespace(ATemplate, LPos);
        LContent := ReadBalanced(ATemplate, LPos, '(', ')');
        LSwitchNode := TSwitchNode.Create(Self, LContent);
        ATarget.Add(LSwitchNode);
        SkipWhitespace(ATemplate, LPos);

        while LPos <= Length(ATemplate) do
        begin
          if StartsText('@endswitch', Copy(ATemplate, LPos, 10)) then
          begin
            Inc(LPos, 10);
            ConsumeTrimRight(ATemplate, LPos);
            SkipLineBreak(ATemplate, LPos);
            Break;
          end;

          if StartsText('@case', Copy(ATemplate, LPos, 5)) then
          begin
            Inc(LPos, 5);
            SkipWhitespace(ATemplate, LPos);
            LContent := ReadBalanced(ATemplate, LPos, '(', ')');
            LCaseNode := TSwitchCase.Create(LContent);
            LSwitchNode.Cases.Add(LCaseNode);
            SkipWhitespace(ATemplate, LPos);
            ParseBlock(LCaseNode.Nodes, ['case', 'default', 'endswitch']);
            Continue;
          end;

          if StartsText('@default', Copy(ATemplate, LPos, 8)) then
          begin
            Inc(LPos, 8);
            ConsumeTrimRight(ATemplate, LPos);
            SkipLineBreak(ATemplate, LPos);
            ParseBlock(LSwitchNode.DefaultNodes, ['endswitch']);
            Continue;
          end;

          Inc(LPos);
        end;
        ConsumeTrimRight(ATemplate, LPos);
        Continue;
      end;

      if StartsText('partial', Copy(ATemplate, LPos, 7)) or StartsText('include', Copy(ATemplate, LPos, 7)) then
      begin
        if StartsText('partial', Copy(ATemplate, LPos, 7)) then
          Inc(LPos, 7)
        else
          Inc(LPos, 7);
        SkipWhitespace(ATemplate, LPos);
        LContent := ReadBalanced(ATemplate, LPos, '(', ')');
        LCallArgs := LContent;
        LParts := SplitTopLevel(LCallArgs, ',');
        if Length(LParts) > 0 then
        begin
          LCallName := UnquoteString(LParts[0]);
          if Length(LParts) > 1 then
            LCallArgs := Copy(LCallArgs, Length(LParts[0]) + 2, MaxInt)
          else
            LCallArgs := '';
          ATarget.Add(TPartialNode.Create(Self, LCallName, LCallArgs));
        end;
        ConsumeTrimRight(ATemplate, LPos);
        Continue;
      end;

      if StartsText('renderSection', Copy(ATemplate, LPos, 13)) then
      begin
        Inc(LPos, 13);
        SkipWhitespace(ATemplate, LPos);
        LContent := ReadBalanced(ATemplate, LPos, '(', ')');
        LParts := SplitTopLevel(LContent, ',');
        LCallName := UnquoteString(LParts[0]);
        LRequired := True;
        if Length(LParts) > 1 then
          LRequired := not ContainsText(LParts[1], 'false');
        ATarget.Add(TRenderSectionNode.Create(Self, LCallName, LRequired));
        ConsumeTrimRight(ATemplate, LPos);
        Continue;
      end;

      if StartsText('renderBody', Copy(ATemplate, LPos, 10)) then
      begin
        Inc(LPos, 10);
        ATarget.Add(TRenderBodyNode.Create(Self));
        ConsumeTrimRight(ATemplate, LPos);
        Continue;
      end;

      if (LPos <= Length(ATemplate)) and (ATemplate[LPos] = '>') then
      begin
        Inc(LPos);
        SkipWhitespace(ATemplate, LPos);
        LTextStart := LPos;
        while (LPos <= Length(ATemplate)) and (ATemplate[LPos] <> #13) and (ATemplate[LPos] <> #10) do
          Inc(LPos);
        LContent := System.SysUtils.Trim(Copy(ATemplate, LTextStart, LPos - LTextStart));
        LCallArgs := ExtractCallArguments(LContent, LCallName);
        ATarget.Add(TMacroCallNode.Create(Self, LCallName, LCallArgs));
        ConsumeTrimRight(ATemplate, LPos);
        Continue;
      end;

      if StartsText('raw', Copy(ATemplate, LPos, 3)) then
      begin
        Inc(LPos, 3);
        SkipWhitespace(ATemplate, LPos);
        if (LPos <= Length(ATemplate)) and (ATemplate[LPos] = '(') then
        begin
          LContent := ReadBalanced(ATemplate, LPos, '(', ')');
          ATarget.Add(TExpressionNode.Create(Self, LContent, True));
        end
        else
        begin
          SkipLineBreak(ATemplate, LPos);
          LContent := CaptureUntil(ATemplate, LPos, '@endraw');
          ATarget.Add(TTextNode.Create(Self, LContent));
          ConsumeTrimRight(ATemplate, LPos);
        end;
        ConsumeTrimRight(ATemplate, LPos);
        Continue;
      end;

      if (LPos <= Length(ATemplate)) and (ATemplate[LPos] = '(') then
      begin
        LContent := ReadBalanced(ATemplate, LPos, '(', ')');
        ATarget.Add(TExpressionNode.Create(Self, LContent, False));
        ConsumeTrimRight(ATemplate, LPos);
        Continue;
      end;

      LTextStart := LPos;
      while (LPos <= Length(ATemplate)) and
            not CharInSet(ATemplate[LPos], [#13, #10, ' ', '@', '<', '>', '/', '\', '[', ']', ';', ':', ',', '=', '+', '-', '*', '!', '?']) do
      begin
        if ATemplate[LPos] = '(' then
          ReadBalanced(ATemplate, LPos, '(', ')')
        else
          Inc(LPos);
      end;

      LContent := Copy(ATemplate, LTextStart, LPos - LTextStart);
      ATarget.Add(TExpressionNode.Create(Self, LContent, False));
      ConsumeTrimRight(ATemplate, LPos);
    end;
  end;

begin
  Result := TTemplateNodeList.Create(True);
  LPos := 1;
  ParseBlock(Result, []);
end;

function TDextTemplateEngine.GetOrParseTemplate(const ATemplate: string): TTemplateNodeList;
begin
  if not FTemplateAstCache.TryGetValue(ATemplate, Result) then
  begin
    Result := Parse(ATemplate);
    FTemplateAstCache.Add(ATemplate, Result);
  end;
end;

function TDextTemplateEngine.ParseDocument(const ATemplate: string): TTemplateDocument;
var
  LPos, LBodyStart: Integer;
  LName, LArgs, LInner: string;
  LDef: TInlineTemplateDefinition;
  LBuilder: TStringBuilder;
  LParts: TArray<string>;
  I: Integer;
begin
  Result := TTemplateDocument.Create;
  LPos := 1;
  LBodyStart := 1;

  while LPos <= Length(ATemplate) do
  begin
    if (ATemplate[LPos] = '@') and (LPos < Length(ATemplate)) and (ATemplate[LPos + 1] <> '@') then
    begin
      if StartsText('@layout', Copy(ATemplate, LPos, 7)) or StartsText('@extends', Copy(ATemplate, LPos, 8)) or
         StartsText('@section', Copy(ATemplate, LPos, 8)) or StartsText('@block', Copy(ATemplate, LPos, 6)) or
         StartsText('@define', Copy(ATemplate, LPos, 7)) then
      begin
        if LPos > LBodyStart then
          Result.BodyText := Result.BodyText + Copy(ATemplate, LBodyStart, LPos - LBodyStart);

        Inc(LPos);

        if StartsText('layout', Copy(ATemplate, LPos, 6)) then
        begin
          Inc(LPos, 6);
          SkipWhitespace(ATemplate, LPos);
          Result.LayoutName := UnquoteString(ReadBalanced(ATemplate, LPos, '(', ')'));
        end
        else if StartsText('extends', Copy(ATemplate, LPos, 7)) then
        begin
          Inc(LPos, 7);
          SkipWhitespace(ATemplate, LPos);
          Result.LayoutName := UnquoteString(ReadBalanced(ATemplate, LPos, '(', ')'));
        end
        else if StartsText('section', Copy(ATemplate, LPos, 7)) then
        begin
          Inc(LPos, 7);
          SkipWhitespace(ATemplate, LPos);
          LName := UnquoteString(ReadBalanced(ATemplate, LPos, '(', ')'));
          SkipLineBreak(ATemplate, LPos);
          LInner := CaptureUntil(ATemplate, LPos, '@endsection');
          LBuilder := TStringBuilder.Create;
          LBuilder.Append(LInner);
          Result.Sections.AddOrSetValue(LName, LBuilder);
        end
        else if StartsText('block', Copy(ATemplate, LPos, 5)) then
        begin
          Inc(LPos, 5);
          SkipWhitespace(ATemplate, LPos);
          LName := UnquoteString(ReadBalanced(ATemplate, LPos, '(', ')'));
          SkipLineBreak(ATemplate, LPos);
          LInner := CaptureUntil(ATemplate, LPos, '@endblock');
          LBuilder := TStringBuilder.Create;
          LBuilder.Append(LInner);
          Result.Sections.AddOrSetValue(LName, LBuilder);
        end
        else if StartsText('define', Copy(ATemplate, LPos, 6)) then
        begin
          Inc(LPos, 6);
          SkipWhitespace(ATemplate, LPos);
          LArgs := ReadBalanced(ATemplate, LPos, '(', ')');
          LParts := SplitTopLevel(LArgs, ',');
          LDef := TInlineTemplateDefinition.Create;
          LDef.Name := UnquoteString(LParts[0]);
          if Length(LParts) > 1 then
          begin
            SetLength(LDef.Parameters, Length(LParts) - 1);
            for I := 1 to High(LParts) do
              LDef.Parameters[I - 1] := System.SysUtils.Trim(LParts[I]);
          end;
          SkipLineBreak(ATemplate, LPos);
          LDef.Content := CaptureUntil(ATemplate, LPos, '@enddefine');
          Result.Definitions.AddOrSetValue(LDef.Name, LDef);
        end;

        SkipLineBreak(ATemplate, LPos);
        LBodyStart := LPos;
        Continue;
      end;
    end;

    Inc(LPos);
  end;

  if LBodyStart <= Length(ATemplate) then
    Result.BodyText := Result.BodyText + Copy(ATemplate, LBodyStart, MaxInt);
end;

function TDextTemplateEngine.RenderNodes(ANodes: TTemplateNodeList; const AContext: ITemplateContext): string;
var
  LNode: TTemplateNode;
  LBuilder: TStringBuilder;
begin
  LBuilder := TStringBuilder.Create;
  try
    for LNode in ANodes do
      LBuilder.Append(ResolveNodeOutput(LNode, AContext));
    Result := LBuilder.ToString;
  finally
    LBuilder.Free;
  end;
end;

function TDextTemplateEngine.ResolveNodeOutput(ANode: TTemplateNode; const AContext: ITemplateContext): string;
begin
  Result := ANode.Render(AContext);
end;

function TDextTemplateEngine.RenderInlineTemplate(const ATemplate: string; const AContext: ITemplateContext): string;
var
  LNodes: TTemplateNodeList;
begin
  LNodes := GetOrParseTemplate(ATemplate);
  Result := RenderNodes(LNodes, AContext);
end;

function TDextTemplateEngine.MergeSectionContent(const AChildContent, AParentContent: string): string;
begin
  if ContainsText(AChildContent, '@inherited') then
    Result := AChildContent.Replace('@inherited', AParentContent)
  else
    Result := AChildContent;
end;

function TDextTemplateEngine.ResolveTemplateName(const ACurrentTemplate, ARequestedName: string): string;
var
  LCandidates: TArray<string>;
  LBaseDir, LName: string;
  LPrefix: string;
  LCandidate: string;
begin
  if ARequestedName = '' then
    Exit('');

  if TPath.IsPathRooted(ARequestedName) then
    Exit(ARequestedName);

  LName := ARequestedName;
  SetLength(LCandidates, 0);
  if ACurrentTemplate <> '' then
  begin
    LBaseDir := ExtractFilePath(ACurrentTemplate);
    if LBaseDir <> '' then
    begin
      SetLength(LCandidates, Length(LCandidates) + 1);
      LCandidates[High(LCandidates)] := TPath.Combine(LBaseDir, LName);
    end;
  end;

  if FTemplateRoot <> '' then
  begin
    SetLength(LCandidates, Length(LCandidates) + 1);
    LCandidates[High(LCandidates)] := TPath.Combine(FTemplateRoot, LName);
  end;

  for LPrefix in ['shared', 'components', 'layouts'] do
  begin
    SetLength(LCandidates, Length(LCandidates) + 1);
    LCandidates[High(LCandidates)] := TPath.Combine(LPrefix, LName);
  end;

  for LCandidate in LCandidates do
  begin
    try
      if Assigned(FTemplateLoader) then
      begin
        FTemplateLoader.Load(LCandidate);
        Exit(LCandidate);
      end;
    except
    end;
  end;

  Result := ARequestedName;
end;

function TDextTemplateEngine.RenderResolvedTemplate(const ATemplateName, AResolvedName: string; const AContext: ITemplateContext): string;
var
  LPreviousState: TRenderState;
  LDocument: TTemplateDocument;
  LRootTemplate: string;
  LCopy: TInlineTemplateDefinition;
  LExistingSection: string;
  LKey: string;
  LDefinition: TInlineTemplateDefinition;
  LSectionBuilder: TStringBuilder;
begin
  LDocument := ParseDocument(FTemplateLoader.Load(AResolvedName));
  try
    LPreviousState := FCurrentState;
    if LPreviousState = nil then
      FCurrentState := TRenderState.Create
    else
      FCurrentState := LPreviousState;

    if FCurrentState.TemplateName = '' then
      FCurrentState.TemplateName := AResolvedName;

    for LKey in LDocument.Definitions.Keys do
    begin
      LDefinition := LDocument.Definitions.Items[LKey];
      LCopy := TInlineTemplateDefinition.Create;
      LCopy.Name := LDefinition.Name;
      LCopy.Content := LDefinition.Content;
      LCopy.Parameters := LDefinition.Parameters;
      FCurrentState.Definitions.AddOrSetValue(LCopy.Name, LCopy);
    end;

    if LDocument.LayoutName <> '' then
    begin
      if FCurrentState.BodyContent = '' then
        FCurrentState.BodyContent := LDocument.BodyText;

      for LKey in LDocument.Sections.Keys do
      begin
        LSectionBuilder := LDocument.Sections.Items[LKey];
        if FCurrentState.Sections.TryGetValue(LKey, LExistingSection) then
          FCurrentState.Sections.AddOrSetValue(LKey,
            MergeSectionContent(LExistingSection, LSectionBuilder.ToString))
        else
          FCurrentState.Sections.AddOrSetValue(LKey, LSectionBuilder.ToString);
      end;

      LRootTemplate := ResolveTemplateName(AResolvedName, LDocument.LayoutName);
      Result := RenderResolvedTemplate(LDocument.LayoutName, LRootTemplate, AContext);
      if LPreviousState = nil then
        FreeAndNil(FCurrentState);
      Exit;
    end;

    if FCurrentState.BodyContent = '' then
      FCurrentState.BodyContent := LDocument.BodyText;

    for LKey in LDocument.Sections.Keys do
    begin
      LSectionBuilder := LDocument.Sections.Items[LKey];
      if FCurrentState.Sections.TryGetValue(LKey, LExistingSection) then
        FCurrentState.Sections.AddOrSetValue(LKey,
          MergeSectionContent(LExistingSection, LSectionBuilder.ToString))
      else
        FCurrentState.Sections.AddOrSetValue(LKey, LSectionBuilder.ToString);
    end;

    Result := RenderInlineTemplate(LDocument.BodyText, AContext);
    if LPreviousState = nil then
      FreeAndNil(FCurrentState);
  finally
    LDocument.Free;
  end;
end;

function TDextTemplateEngine.RenderTemplateInternal(const ATemplateName: string; const AContext: ITemplateContext): string;
var
  LResolvedName: string;
begin
  if not Assigned(FTemplateLoader) then
    raise EInvalidOpException.Create('TemplateLoader is required to render named templates.');

  LResolvedName := ResolveTemplateName(FCurrentState.TemplateName, ATemplateName);
  Result := RenderResolvedTemplate(ATemplateName, LResolvedName, AContext);
end;

function TDextTemplateEngine.Render(const ATemplate: string; const AContext: ITemplateContext): string;
var
  LDocument: TTemplateDocument;
  LPreviousState: TRenderState;
  LCopy: TInlineTemplateDefinition;
  LKey: string;
  LDefinition: TInlineTemplateDefinition;
begin
  LDocument := ParseDocument(ATemplate);
  try
    if LDocument.LayoutName <> '' then
    begin
      if not Assigned(FTemplateLoader) then
        raise EInvalidOpException.Create('TemplateLoader is required for @layout/@extends.');

      LPreviousState := FCurrentState;
      FCurrentState := TRenderState.Create;
      try
        FCurrentState.BodyContent := LDocument.BodyText;
        for LKey in LDocument.Sections.Keys do
          FCurrentState.Sections.AddOrSetValue(LKey, LDocument.Sections.Items[LKey].ToString);
        for LKey in LDocument.Definitions.Keys do
        begin
          LDefinition := LDocument.Definitions.Items[LKey];
          LCopy := TInlineTemplateDefinition.Create;
          LCopy.Name := LDefinition.Name;
          LCopy.Content := LDefinition.Content;
          LCopy.Parameters := LDefinition.Parameters;
          FCurrentState.Definitions.AddOrSetValue(LCopy.Name, LCopy);
        end;
        Result := RenderTemplateInternal(LDocument.LayoutName, AContext);
      finally
        FCurrentState.Free;
        FCurrentState := LPreviousState;
      end;
    end
    else
    begin
      LPreviousState := FCurrentState;
      if LPreviousState = nil then
        FCurrentState := TRenderState.Create;
      try
        for LKey in LDocument.Definitions.Keys do
        begin
          LDefinition := LDocument.Definitions.Items[LKey];
          LCopy := TInlineTemplateDefinition.Create;
          LCopy.Name := LDefinition.Name;
          LCopy.Content := LDefinition.Content;
          LCopy.Parameters := LDefinition.Parameters;
          FCurrentState.Definitions.AddOrSetValue(LCopy.Name, LCopy);
        end;
        Result := RenderInlineTemplate(LDocument.BodyText, AContext);
      finally
        if LPreviousState = nil then
          FreeAndNil(FCurrentState)
        else
          FCurrentState := LPreviousState;
      end;
    end;
  finally
    LDocument.Free;
  end;
end;

function TDextTemplateEngine.RenderTemplate(const ATemplateName: string; const AContext: ITemplateContext): string;
var
  LPreviousState: TRenderState;
begin
  LPreviousState := FCurrentState;
  FCurrentState := TRenderState.Create;
  try
    FCurrentState.TemplateName := ATemplateName;
    Result := RenderTemplateInternal(ATemplateName, AContext);
  finally
    FCurrentState.Free;
    FCurrentState := LPreviousState;
  end;
end;

function TDextTemplateEngine.GetSectionValue(const AName: string; ARequired: Boolean): string;
begin
  if Assigned(FCurrentState) and FCurrentState.Sections.TryGetValue(AName, Result) then
    Exit;

  if ARequired then
    raise EInvalidOpException.CreateFmt('Required section "%s" was not provided.', [AName]);

  Result := '';
end;

function TDextTemplateEngine.GetDefinition(const AName: string): TInlineTemplateDefinition;
begin
  Result := nil;
  if Assigned(FCurrentState) then
    FCurrentState.Definitions.TryGetValue(AName, Result);
end;

function TDextTemplateEngine.RenderPartial(const ATemplateName, AArgsText: string; const AContext: ITemplateContext): string;
var
  LChildContext: ITemplateContext;
  LArgs: TArray<TTemplateArgument>;
  LArg: TTemplateArgument;
  LIsRaw: Boolean;
  LValue: TValue;
begin
  LChildContext := AContext.CreateChildScope;
  LArgs := ParseNamedArguments(AArgsText);
  for LArg in LArgs do
  begin
    if LArg.Name = '' then
      Continue;
    LIsRaw := False;
    LValue := ResolveValue(LArg.Expression, AContext, LIsRaw);
    if LValue.Kind = tkClass then
      LChildContext.SetObject(LArg.Name, LValue.AsObject)
    else
      LChildContext.SetValue(LArg.Name, ValueToString(LValue));
  end;
  Result := RenderTemplateInternal(ATemplateName, LChildContext);
end;

function TDextTemplateEngine.RenderMacroCall(const AName, AArgsText: string; const AContext: ITemplateContext): string;
var
  LDefinition: TInlineTemplateDefinition;
  LChildContext: ITemplateContext;
  LArgs: TArray<string>;
  I: Integer;
  LIsRaw: Boolean;
  LValue: TValue;
begin
  LDefinition := GetDefinition(AName);
  if LDefinition = nil then
    raise EInvalidOpException.CreateFmt('Inline template "%s" was not found.', [AName]);

  LChildContext := AContext.CreateChildScope;
  LArgs := SplitTopLevel(AArgsText, ',');
  for I := 0 to Min(High(LDefinition.Parameters), High(LArgs)) do
  begin
    LIsRaw := False;
    LValue := ResolveValue(LArgs[I], AContext, LIsRaw);
    if LValue.Kind = tkClass then
      LChildContext.SetObject(LDefinition.Parameters[I], LValue.AsObject)
    else
      LChildContext.SetValue(LDefinition.Parameters[I], ValueToString(LValue));
  end;

  Result := RenderInlineTemplate(LDefinition.Content, LChildContext);
end;

{ TPartialNode }

constructor TPartialNode.Create(AEngine: TDextTemplateEngine; const ATemplateName, AArgumentsText: string);
begin
  inherited Create(AEngine);
  FTemplateName := ATemplateName;
  FArgumentsText := AArgumentsText;
end;

function TPartialNode.Render(const AContext: ITemplateContext): string;
begin
  Result := FEngine.RenderPartial(FTemplateName, FArgumentsText, AContext);
end;

{ TRenderSectionNode }

constructor TRenderSectionNode.Create(AEngine: TDextTemplateEngine; const ASectionName: string; ARequired: Boolean);
begin
  inherited Create(AEngine);
  FSectionName := ASectionName;
  FRequired := ARequired;
end;

function TRenderSectionNode.Render(const AContext: ITemplateContext): string;
begin
  Result := FEngine.GetSectionValue(FSectionName, FRequired);
  if Result <> '' then
    Result := FEngine.RenderInlineTemplate(Result, AContext);
end;

{ TRenderBodyNode }

function TRenderBodyNode.Render(const AContext: ITemplateContext): string;
begin
  if Assigned(FEngine.FCurrentState) then
    Result := FEngine.RenderInlineTemplate(FEngine.FCurrentState.BodyContent, AContext)
  else
    Result := '';
end;

{ TMacroCallNode }

constructor TMacroCallNode.Create(AEngine: TDextTemplateEngine; const AName, AArgumentsText: string);
begin
  inherited Create(AEngine);
  FName := AName;
  FArgumentsText := AArgumentsText;
end;

function TMacroCallNode.Render(const AContext: ITemplateContext): string;
begin
  Result := FEngine.RenderMacroCall(FName, FArgumentsText, AContext);
end;

{ TTemplating }

class function TTemplating.CreateContext: ITemplateContext;
begin
  Result := TTemplateContext.Create;
end;

class function TTemplating.CreateEngine: ITemplateEngine;
begin
  Result := TDextTemplateEngine.Create;
end;

end.
