unit BenchTypes.Unit035;

interface

uses
  System.SysUtils;

type
  TBenchRecord341 = record
    Id: Integer;
    Value: Double;
    Active: Boolean;
    Code: Cardinal;
  end;

  TBenchRecord342 = record
    Id: Integer;
    Name: string;
    Description: string;
    Active: Boolean;
  end;

  TBenchRecord343 = record
    Code: Integer;
    Title: string;
    Amount: Currency;
    CreatedAt: TDateTime;
    Enabled: Boolean;
  end;

  TBenchRecord344 = record
    Id: Integer;
    Tags: string;
    Score: Double;
    Flags: Cardinal;
    Notes: string;
  end;

  TBenchRecord345 = record
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

  TBenchRecord346 = record
    X: Double;
    Y: Double;
    Z: Double;
    W: Double;
  end;

  TBenchRecord347 = record
    Id: TGUID;
    Name: string;
    Value: Integer;
  end;

  TBenchRecord348 = record
    Id: Int64;
    Timestamp: Int64;
    Counter: Int64;
    Hash: UInt64;
  end;

  TBenchRecord349 = record
    PosX: Single;
    PosY: Single;
    PosZ: Single;
    Scale: Single;
    Rotation: Single;
  end;

  TBenchRecord350 = record
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
