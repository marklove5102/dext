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
begin
  FDataSet := TEntityDataSet.Create(Self);
  DataSource1.DataSet := FDataSet;
  DBGridProducts.DataSource := DataSource1;

  // Criando dados mockados para o showcase
  SetLength(FProducts, 3);
  
  var P1 := TProduct.Create;
  P1.Id := 101;
  P1.Description := 'Macbook Pro M3';
  P1.Price := 18500.00;
  FProducts[0] := P1;

  var P2 := TProduct.Create;
  P2.Id := 102;
  P2.Description := 'iPhone 15 Pro Max';
  P2.Price := 9400.00;
  FProducts[1] := P2;

  var P3 := TProduct.Create;
  P3.Id := 103;
  P3.Description := 'AirPods Max';
  P3.Price := 5400.00;
  FProducts[2] := P3;

  // Carregando dados no DataSet
  FDataSet.Load(FProducts, TProduct);
end;

procedure TFormMain.FormDestroy(Sender: TObject);
begin
  for var I := 0 to High(FProducts) do
    FProducts[I].Free;
end;

end.
