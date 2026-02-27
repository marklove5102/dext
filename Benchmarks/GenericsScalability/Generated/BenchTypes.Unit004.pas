unit BenchTypes.Unit004;

interface

uses
  System.SysUtils;

type
  TBenchRecord031 = record
    Id: Integer;
    Value: Double;
    Active: Boolean;
    Code: Cardinal;
  end;

  TBenchRecord032 = record
    Id: Integer;
    Name: string;
    Description: string;
    Active: Boolean;
  end;

  TBenchRecord033 = record
    Code: Integer;
    Title: string;
    Amount: Currency;
    CreatedAt: TDateTime;
    Enabled: Boolean;
  end;

  TBenchRecord034 = record
    Id: Integer;
    Tags: string;
    Score: Double;
    Flags: Cardinal;
    Notes: string;
  end;

  TBenchRecord035 = record
    Id: Integer;
    FirstName: string;
    LastName: string;
    Email: string;
    Age: Integer;
    Salary: Currency;
    HireDate: TDateTime;
    Active: Boolean;
    Rating: Double;
    DepartmentCode: Integer;
  end;

  TBenchRecord036 = record
    X: Double;
    Y: Double;
    Z: Double;
    W: Double;
  end;

  TBenchRecord037 = record
    Id: TGUID;
    Name: string;
    Value: Integer;
  end;

  TBenchRecord038 = record
    Id: Int64;
    Timestamp: Int64;
    Counter: Int64;
    Hash: UInt64;
  end;

  TBenchRecord039 = record
    PosX: Single;
    PosY: Single;
    PosZ: Single;
    Scale: Single;
    Rotation: Single;
  end;

  TBenchRecord040 = record
    Id: Integer;
    Title: string;
    Price: Currency;
    Weight: Double;
    Quantity: Integer;
    Available: Boolean;
    SKU: string;
  end;

implementation

end.
