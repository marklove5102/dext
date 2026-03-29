unit Dext.Entity.DataSet.NewFeatures.Tests;

interface

uses
  System.SysUtils,
  System.Classes,
  Data.DB,
  Dext.Testing,
  Dext.Entity.DataSet,
  Dext.Entity.Attributes,
  Dext.Collections;

type
  [Table('products_feat')]
  TProductFeaturesTest = class
  private
    FId: Integer;
    FName: string;
    FPrice: Double;
  public
    [PrimaryKey, AutoInc]
    property Id: Integer read FId write FId;

    [Required, MaxLength(100), DisplayWidth(50), DisplayLabel('Product Name')]
    property Name: string read FName write FName;

    [DisplayWidth(15), DisplayLabel('Unit Price')]
    property Price: Double read FPrice write FPrice;
  end;

  [TestFixture('TEntityDataSet New Features')]
  TEntityDataSetFeaturesTests = class
  private
    FDataSet: TEntityDataSet;
    procedure DoPrepareField(Sender: TObject; AField: TField);
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;

    [Test]
    procedure Test_DisplayAttributes_Mapping;
    [Test]
    procedure Test_OnPrepareField_Event;
  end;

implementation

{ TEntityDataSetFeaturesTests }

procedure TEntityDataSetFeaturesTests.Setup;
begin
  FDataSet := TEntityDataSet.Create(nil);
end;

procedure TEntityDataSetFeaturesTests.TearDown;
begin
  FDataSet.Free;
end;

procedure TEntityDataSetFeaturesTests.DoPrepareField(Sender: TObject; AField: TField);
begin
  if AField.FieldName = 'Name' then
    AField.ReadOnly := True;
end;

procedure TEntityDataSetFeaturesTests.Test_DisplayAttributes_Mapping;
var
  LList: IList<TProductFeaturesTest>;
  FldName, FldPrice: TField;
begin
  LList := TCollections.CreateList<TProductFeaturesTest>;
  FDataSet.Load<TProductFeaturesTest>(LList);
  
  FldName := FDataSet.FindField('Name');
  FldPrice := FDataSet.FindField('Price');
  
  Should(FldName).NotBeNil;
  Should(FldName.DisplayWidth).Be(50);
  Should(FldName.DisplayLabel).Be('Product Name');
  
  Should(FldPrice).NotBeNil;
  Should(FldPrice.DisplayWidth).Be(15);
  Should(FldPrice.DisplayLabel).Be('Unit Price');
end;

procedure TEntityDataSetFeaturesTests.Test_OnPrepareField_Event;
var
  LList: IList<TProductFeaturesTest>;
begin
  LList := TCollections.CreateList<TProductFeaturesTest>;
  FDataSet.OnPrepareField := DoPrepareField;
  
  FDataSet.Load<TProductFeaturesTest>(LList);
  
  Should(FDataSet.FieldByName('Name').ReadOnly).BeTrue;
  Should(FDataSet.FieldByName('Price').ReadOnly).BeFalse;
end;

initialization
  // A fixture será registrada automaticamente pelo Test Runner se estiver no dpr
  // Ou usamos o registro explícito se necessário.

end.
