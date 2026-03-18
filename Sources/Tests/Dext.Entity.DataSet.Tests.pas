unit Dext.Entity.DataSet.Tests;

interface

uses
  System.SysUtils,
  System.Classes,
  Dext.Entity.Attributes,
  Dext.Entity.DataSet,
  Dext.Testing,
  Data.DB;

type
  [Table('users')]
  TUserTest = class
  private
    FId: Integer;
    FName: string;
    FScore: Double;
    FActive: Boolean;
  public
    [PrimaryKey, AutoInc]
    property Id: Integer read FId write FId;
    property Name: string read FName write FName;
    property Score: Double read FScore write FScore;
    property Active: Boolean read FActive write FActive;
  end;

  [TestFixture]
  TEntityDataSetTests = class
  private
    FDataSet: TEntityDataSet;
    FUsers: TArray<TObject>;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;

    [Test]
    procedure Test_LoadArray_Count;
    [Test]
    procedure Test_FieldValues;
    [Test]
    procedure Test_Navigation_Next_Prior;
    [Test]
    procedure Test_Filter_Expression;
    [Test]
    procedure Test_Locate_Success;
    [Test]
    procedure Test_LoadFromUtf8Json;
  end;

implementation

uses 
  Dext.Core.Span;

{ TEntityDataSetTests }

procedure TEntityDataSetTests.Setup;
begin
  FDataSet := TEntityDataSet.Create(nil);
  
  SetLength(FUsers, 2);
  
  var U1 := TUserTest.Create;
  U1.Id := 1;
  U1.Name := 'Cesar';
  U1.Score := 100.5;
  U1.Active := True;
  FUsers[0] := U1;

  var U2 := TUserTest.Create;
  U2.Id := 2;
  U2.Name := 'Dext';
  U2.Score := 99.9;
  U2.Active := False;
  FUsers[1] := U2;
end;

procedure TEntityDataSetTests.TearDown;
begin
  FDataSet.Free;
  for var I := 0 to High(FUsers) do
    FUsers[I].Free;
end;

procedure TEntityDataSetTests.Test_LoadArray_Count;
begin
  FDataSet.Load(FUsers, TUserTest);
  Should(FDataSet.RecordCount).Be(2).Because('Deve carregar 2 registros');
end;

procedure TEntityDataSetTests.Test_FieldValues;
begin
  FDataSet.Load(FUsers, TUserTest);
  
  Should(FDataSet.FieldByName('Name').AsString).Be('Cesar').Because('Nome do primeiro registro deve ser Cesar');
  Should(FDataSet.FieldByName('Score').AsFloat).Be(100.5).Because('Score do primeiro registro incorreto');
  Should(FDataSet.FieldByName('Active').AsBoolean).BeTrue.Because('Active deve ser true');
end;

procedure TEntityDataSetTests.Test_Navigation_Next_Prior;
begin
  FDataSet.Load(FUsers, TUserTest);
  FDataSet.Next;
  
  Should(FDataSet.FieldByName('Name').AsString).Be('Dext').Because('Nome do segundo registro deve ser Dext');
  
  FDataSet.Prior;
  Should(FDataSet.FieldByName('Name').AsString).Be('Cesar').Because('Deve voltar para o primeiro registro');
end;

procedure TEntityDataSetTests.Test_Filter_Expression;
begin
  FDataSet.Load(FUsers, TUserTest);
  FDataSet.Filter := 'Score > 100';
  FDataSet.Filtered := True;
  
  Should(FDataSet.RecordCount).Be(1).Because('Deve ter 1 registro após o filtro');
  Should(FDataSet.FieldByName('Name').AsString).Be('Cesar').Because('Nome filtrado incorreto');
end;

procedure TEntityDataSetTests.Test_Locate_Success;
begin
  FDataSet.Load(FUsers, TUserTest);
  
  var Found := FDataSet.Locate('Name', 'Dext', []);
  Should(Found).BeTrue.Because('Locate deve retornar True');
  Should(FDataSet.FieldByName('Name').AsString).Be('Dext').Because('Cursor deve estar em Dext');
end;

procedure TEntityDataSetTests.Test_LoadFromUtf8Json;
var
  Json: string;
  Bytes: TBytes;
begin
  // Para que o FEntityMap seja registrado (No dataset ele usa o InternalPreOpen)
  FDataSet.Load(FUsers, TUserTest); 
  
  Json := '[{"Id": 10, "Name": "Cesar2", "Score": 500.0, "Active": true},' +
          ' {"Id": 20, "Name": "Dext2", "Score": 600.0, "Active": false}]';
  
  Bytes := TEncoding.UTF8.GetBytes(Json);
  var Span := TByteSpan.Create(@Bytes[0], Length(Bytes));
  
  FDataSet.LoadFromUtf8Json(Span, TUserTest);
  Should(FDataSet.RecordCount).Be(2).Because('Deve carregar 2 registros via JSON');
  Should(FDataSet.FieldByName('Name').AsString).Be('Cesar2').Because('Nome do primeiro JSON incorreto');
end;

initialization
end.
