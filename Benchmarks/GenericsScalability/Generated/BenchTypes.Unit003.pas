unit BenchTypes.Unit003;

interface

uses
  System.SysUtils;

type
  TBenchRecord021 = record
    Id: Integer;
    Value: Double;
    Active: Boolean;
    Code: Cardinal;
  end;

  TBenchRecord022 = record
    Id: Integer;
    Name: string;
    Description: string;
    Active: Boolean;
  end;

  TBenchRecord023 = record
    Code: Integer;
    Title: string;
    Amount: Currency;
    CreatedAt: TDateTime;
    Enabled: Boolean;
  end;

  TBenchRecord024 = record
    Id: Integer;
    Tags: string;
    Score: Double;
    Flags: Cardinal;
    Notes: string;
  end;

  TBenchRecord025 = record
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

  TBenchRecord026 = record
    X: Double;
    Y: Double;
    Z: Double;
    W: Double;
  end;

  TBenchRecord027 = record
    Id: TGUID;
    Name: string;
    Value: Integer;
  end;

  TBenchRecord028 = record
    Id: Int64;
    Timestamp: Int64;
    Counter: Int64;
    Hash: UInt64;
  end;

  TBenchRecord029 = record
    PosX: Single;
    PosY: Single;
    PosZ: Single;
    Scale: Single;
    Rotation: Single;
  end;

  TBenchRecord030 = record
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
