unit BenchTypes.Unit005;

interface

uses
  System.SysUtils;

type
  TBenchRecord041 = record
    Id: Integer;
    Value: Double;
    Active: Boolean;
    Code: Cardinal;
  end;

  TBenchRecord042 = record
    Id: Integer;
    Name: string;
    Description: string;
    Active: Boolean;
  end;

  TBenchRecord043 = record
    Code: Integer;
    Title: string;
    Amount: Currency;
    CreatedAt: TDateTime;
    Enabled: Boolean;
  end;

  TBenchRecord044 = record
    Id: Integer;
    Tags: string;
    Score: Double;
    Flags: Cardinal;
    Notes: string;
  end;

  TBenchRecord045 = record
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

  TBenchRecord046 = record
    X: Double;
    Y: Double;
    Z: Double;
    W: Double;
  end;

  TBenchRecord047 = record
    Id: TGUID;
    Name: string;
    Value: Integer;
  end;

  TBenchRecord048 = record
    Id: Int64;
    Timestamp: Int64;
    Counter: Int64;
    Hash: UInt64;
  end;

  TBenchRecord049 = record
    PosX: Single;
    PosY: Single;
    PosZ: Single;
    Scale: Single;
    Rotation: Single;
  end;

  TBenchRecord050 = record
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
