# Generate_Types.ps1
# Generates 50 units with 10 record types each (500 total) and a Registry unit
# with 500 IList<T> specializations + 1500 TDictionary<K,V> specializations (2000 total)

param(
    [string]$OutputDir = "$PSScriptRoot\Generated",
    [int]$UnitsCount = 50,
    [int]$TypesPerUnit = 10
)

$ErrorActionPreference = "Stop"

# Clean and create output directory
if (Test-Path $OutputDir) {
    Remove-Item "$OutputDir\*" -Force -Recurse
}
New-Item -ItemType Directory -Force -Path $OutputDir | Out-Null

Write-Host "============================================" -ForegroundColor Cyan
Write-Host "  Dext Collections - Benchmark Type Generator" -ForegroundColor Cyan
Write-Host "============================================" -ForegroundColor Cyan
Write-Host "  Units to generate: $UnitsCount"
Write-Host "  Types per unit:    $TypesPerUnit"
Write-Host "  Total types:       $($UnitsCount * $TypesPerUnit)"
Write-Host "  Total lists:       $($UnitsCount * $TypesPerUnit)"
Write-Host "  Total dicts:       $($UnitsCount * $TypesPerUnit * 3)"
Write-Host "  Total specs:       $($UnitsCount * $TypesPerUnit + $UnitsCount * $TypesPerUnit * 3)"
Write-Host "  Output dir:        $OutputDir"
Write-Host ""

# Field type templates for variety
# We want a mix of: primitives, strings, managed types, large records
$fieldTemplates = @(
    # Category 1: Pure primitives (unmanaged, small)
    @(
        @{ Name = "Id"; Type = "Integer" },
        @{ Name = "Value"; Type = "Double" },
        @{ Name = "Active"; Type = "Boolean" },
        @{ Name = "Code"; Type = "Cardinal" }
    ),
    # Category 2: With strings (managed types)
    @(
        @{ Name = "Id"; Type = "Integer" },
        @{ Name = "Name"; Type = "string" },
        @{ Name = "Description"; Type = "string" },
        @{ Name = "Active"; Type = "Boolean" }
    ),
    # Category 3: Mixed with currency/datetime
    @(
        @{ Name = "Code"; Type = "Integer" },
        @{ Name = "Title"; Type = "string" },
        @{ Name = "Amount"; Type = "Currency" },
        @{ Name = "CreatedAt"; Type = "TDateTime" },
        @{ Name = "Enabled"; Type = "Boolean" }
    ),
    # Category 4: With dynamic arrays (managed)
    @(
        @{ Name = "Id"; Type = "Integer" },
        @{ Name = "Tags"; Type = "string" },
        @{ Name = "Score"; Type = "Double" },
        @{ Name = "Flags"; Type = "Cardinal" },
        @{ Name = "Notes"; Type = "string" }
    ),
    # Category 5: Large record (many fields)
    @(
        @{ Name = "Id"; Type = "Integer" },
        @{ Name = "FirstName"; Type = "string" },
        @{ Name = "LastName"; Type = "string" },
        @{ Name = "Email"; Type = "string" },
        @{ Name = "Age"; Type = "Integer" },
        @{ Name = "Salary"; Type = "Currency" },
        @{ Name = "HireDate"; Type = "TDateTime" },
        @{ Name = "Active"; Type = "Boolean" },
        @{ Name = "Rating"; Type = "Double" },
        @{ Name = "DepartmentCode"; Type = "Integer" }
    ),
    # Category 6: Numeric heavy
    @(
        @{ Name = "X"; Type = "Double" },
        @{ Name = "Y"; Type = "Double" },
        @{ Name = "Z"; Type = "Double" },
        @{ Name = "W"; Type = "Double" }
    ),
    # Category 7: GUID + string
    @(
        @{ Name = "Id"; Type = "TGUID" },
        @{ Name = "Name"; Type = "string" },
        @{ Name = "Value"; Type = "Integer" }
    ),
    # Category 8: Int64 based
    @(
        @{ Name = "Id"; Type = "Int64" },
        @{ Name = "Timestamp"; Type = "Int64" },
        @{ Name = "Counter"; Type = "Int64" },
        @{ Name = "Hash"; Type = "UInt64" }
    ),
    # Category 9: Single precision
    @(
        @{ Name = "PosX"; Type = "Single" },
        @{ Name = "PosY"; Type = "Single" },
        @{ Name = "PosZ"; Type = "Single" },
        @{ Name = "Scale"; Type = "Single" },
        @{ Name = "Rotation"; Type = "Single" }
    ),
    # Category 10: Mixed everything
    @(
        @{ Name = "Id"; Type = "Integer" },
        @{ Name = "Title"; Type = "string" },
        @{ Name = "Price"; Type = "Currency" },
        @{ Name = "Weight"; Type = "Double" },
        @{ Name = "Quantity"; Type = "Integer" },
        @{ Name = "Available"; Type = "Boolean" },
        @{ Name = "SKU"; Type = "string" }
    )
)

$allTypeNames = @()

# Generate unit files
for ($u = 1; $u -le $UnitsCount; $u++) {
    $unitNum = $u.ToString("D3")
    $unitName = "BenchTypes.Unit$unitNum"
    $fileName = "$OutputDir\$unitName.pas"
    
    $sb = [System.Text.StringBuilder]::new()
    [void]$sb.AppendLine("unit $unitName;")
    [void]$sb.AppendLine("")
    [void]$sb.AppendLine("interface")
    [void]$sb.AppendLine("")
    [void]$sb.AppendLine("uses")
    [void]$sb.AppendLine("  System.SysUtils;")
    [void]$sb.AppendLine("")
    [void]$sb.AppendLine("type")
    
    for ($t = 1; $t -le $TypesPerUnit; $t++) {
        $globalIndex = (($u - 1) * $TypesPerUnit) + $t
        $typeName = "TBenchRecord" + $globalIndex.ToString("D3")
        $allTypeNames += $typeName
        
        # Pick field template based on variety
        $templateIndex = ($globalIndex - 1) % $fieldTemplates.Count
        $fields = $fieldTemplates[$templateIndex]
        
        # Add suffix to field names to make them unique per record
        [void]$sb.AppendLine("  $typeName = record")
        foreach ($field in $fields) {
            $fieldName = $field.Name
            $fieldType = $field.Type
            [void]$sb.AppendLine("    $fieldName`: $fieldType;")
        }
        [void]$sb.AppendLine("  end;")
        [void]$sb.AppendLine("")
    }
    
    [void]$sb.AppendLine("implementation")
    [void]$sb.AppendLine("")
    [void]$sb.AppendLine("end.")
    
    $sb.ToString() | Out-File -FilePath $fileName -Encoding UTF8 -NoNewline
    
    if ($u % 10 -eq 0) {
        Write-Host "  Generated unit $u/$UnitsCount..." -ForegroundColor Gray
    }
}

Write-Host "  Generated $UnitsCount type units with $($allTypeNames.Count) record types." -ForegroundColor Green

# Generate Registry unit
Write-Host ""
Write-Host "Generating BenchTypes.Registry.pas..." -ForegroundColor Yellow

$regFile = "$PSScriptRoot\BenchTypes.Registry.pas"
$sb = [System.Text.StringBuilder]::new()

[void]$sb.AppendLine("unit BenchTypes.Registry;")
[void]$sb.AppendLine("")
[void]$sb.AppendLine("interface")
[void]$sb.AppendLine("")
[void]$sb.AppendLine("type")
[void]$sb.AppendLine("  TBenchmarkRegistry = class")
[void]$sb.AppendLine("  public")
[void]$sb.AppendLine("    class procedure CreateAllLists;")
[void]$sb.AppendLine("    class procedure CreateAllDictionaries;")
[void]$sb.AppendLine("    class procedure RunAll;")
[void]$sb.AppendLine("  end;")
[void]$sb.AppendLine("")
[void]$sb.AppendLine("implementation")
[void]$sb.AppendLine("")
[void]$sb.AppendLine("uses")
[void]$sb.AppendLine("  System.SysUtils,")
[void]$sb.AppendLine("  System.Generics.Collections,")
[void]$sb.AppendLine("  Dext.Collections,")

# Add all unit references
for ($u = 1; $u -le $UnitsCount; $u++) {
    $unitNum = $u.ToString("D3")
    $comma = if ($u -lt $UnitsCount) { "," } else { ";" }
    [void]$sb.AppendLine("  BenchTypes.Unit$unitNum$comma")
}

[void]$sb.AppendLine("")

# ============================================================
# Generate CreateAllLists (500 IList<T> specializations)
# ============================================================
[void]$sb.AppendLine("class procedure TBenchmarkRegistry.CreateAllLists;")
[void]$sb.AppendLine("var")

foreach ($typeName in $allTypeNames) {
    [void]$sb.AppendLine("  L_$typeName`: IList<$typeName>;")
}

[void]$sb.AppendLine("begin")

foreach ($typeName in $allTypeNames) {
    [void]$sb.AppendLine("  L_$typeName := TCollections.CreateList<$typeName>;")
    [void]$sb.AppendLine("  L_$typeName.Add(Default($typeName));")
}

[void]$sb.AppendLine("end;")
[void]$sb.AppendLine("")

# ============================================================
# Generate CreateAllDictionaries (1500 TDictionary<K,V> specializations)
# 3 per record: string-keyed, integer-keyed, GUID-keyed
# ============================================================
[void]$sb.AppendLine("class procedure TBenchmarkRegistry.CreateAllDictionaries;")
[void]$sb.AppendLine("var")

foreach ($typeName in $allTypeNames) {
    [void]$sb.AppendLine("  DS_$typeName`: TDictionary<string, $typeName>;")
    [void]$sb.AppendLine("  DI_$typeName`: TDictionary<Integer, $typeName>;")
    [void]$sb.AppendLine("  DG_$typeName`: TDictionary<TGUID, $typeName>;")
}

[void]$sb.AppendLine("begin")

foreach ($typeName in $allTypeNames) {
    # String-keyed dictionary
    [void]$sb.AppendLine("  DS_$typeName := TDictionary<string, $typeName>.Create;")
    [void]$sb.AppendLine("  try")
    [void]$sb.AppendLine("    DS_$typeName.Add('key', Default($typeName));")
    [void]$sb.AppendLine("  finally")
    [void]$sb.AppendLine("    DS_$typeName.Free;")
    [void]$sb.AppendLine("  end;")
    
    # Integer-keyed dictionary
    [void]$sb.AppendLine("  DI_$typeName := TDictionary<Integer, $typeName>.Create;")
    [void]$sb.AppendLine("  try")
    [void]$sb.AppendLine("    DI_$typeName.Add(1, Default($typeName));")
    [void]$sb.AppendLine("  finally")
    [void]$sb.AppendLine("    DI_$typeName.Free;")
    [void]$sb.AppendLine("  end;")
    
    # GUID-keyed dictionary
    [void]$sb.AppendLine("  DG_$typeName := TDictionary<TGUID, $typeName>.Create;")
    [void]$sb.AppendLine("  try")
    [void]$sb.AppendLine("    DG_$typeName.Add(TGUID.Empty, Default($typeName));")
    [void]$sb.AppendLine("  finally")
    [void]$sb.AppendLine("    DG_$typeName.Free;")
    [void]$sb.AppendLine("  end;")
}

[void]$sb.AppendLine("end;")
[void]$sb.AppendLine("")

# ============================================================
# RunAll
# ============================================================
[void]$sb.AppendLine("class procedure TBenchmarkRegistry.RunAll;")
[void]$sb.AppendLine("begin")
[void]$sb.AppendLine("  CreateAllLists;")
[void]$sb.AppendLine("  CreateAllDictionaries;")
[void]$sb.AppendLine("end;")
[void]$sb.AppendLine("")
[void]$sb.AppendLine("end.")

$sb.ToString() | Out-File -FilePath $regFile -Encoding UTF8 -NoNewline

$listSpecs = $allTypeNames.Count
$dictSpecs = $allTypeNames.Count * 3
$totalSpecs = $listSpecs + $dictSpecs

Write-Host "  Generated BenchTypes.Registry.pas" -ForegroundColor Green
Write-Host "    Lists:        $listSpecs specializations" -ForegroundColor Gray
Write-Host "    Dictionaries: $dictSpecs specializations" -ForegroundColor Gray
Write-Host "    TOTAL:        $totalSpecs specializations" -ForegroundColor Yellow
Write-Host ""
Write-Host "Done! Run the benchmark with:" -ForegroundColor Cyan
Write-Host "  .\run_benchmark.ps1 -Label 'baseline_rtl'" -ForegroundColor White
