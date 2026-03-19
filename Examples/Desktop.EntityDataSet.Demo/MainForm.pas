unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Data.DB, Dext.Entity.DataSet, Dext.Entity.Attributes, Vcl.Buttons;

type
  [Table('products')]
  TProduct = class
  private
    FId: Integer;
    FDescription: string;
    FPrice: Double;
  public
    [PK, AutoInc]
    property Id: Integer read FId write FId;
    property Description: string read FDescription write FDescription;
    property Price: Double read FPrice write FPrice;
  end;

  TFormMain = class(TForm)
    PanelTop: TPanel;
    DBGridProducts: TDBGrid;
    DBNavigator1: TDBNavigator;
    DataSource1: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FDataSet: TEntityDataSet;
    FProducts: TArray<TObject>;
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

procedure TFormMain.FormCreate(Sender: TObject);
var
  I: Integer;
  P: TProduct;
begin
  FDataSet := TEntityDataSet.Create(Self);
  DataSource1.DataSet := FDataSet;
  DBGridProducts.DataSource := DataSource1;

  // Criando 100 dados mockados para o showcase
  SetLength(FProducts, 100);
  
  for I := 0 to 99 do
  begin
    P := TProduct.Create;
    P.Id := 100 + I;
    P.Description := 'Product ' + IntToStr(I + 1);
    P.Price := 100.0 * (I + 1);
    FProducts[I] := P;
  end;

  // Carregando dados no DataSet
  FDataSet.Load(FProducts, TProduct);
end;

procedure TFormMain.FormDestroy(Sender: TObject);
begin
  for var I := 0 to High(FProducts) do
    FProducts[I].Free;
end;

end.
