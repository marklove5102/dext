# run_benchmark.ps1
# Compiles the benchmark project and captures compile-time metrics
# Usage: .\run_benchmark.ps1 -Label "baseline_rtl"

param(
    [Parameter(Mandatory = $true)]
    [string]$Label,
    [string]$Config = "Release",
    [string]$Platform = "Win32"
)

$ErrorActionPreference = "Stop"

$ProjectDir = $PSScriptRoot
$ProjectPath = Join-Path $ProjectDir "Benchmark.GenericsScalability.dproj"
$ResultsDir = Join-Path $ProjectDir "Results\$Label"
$RsvarsPath = "C:\Program Files (x86)\Embarcadero\Studio\37.0\bin\rsvars.bat"

Write-Host "============================================" -ForegroundColor Cyan
Write-Host "  Dext Collections - Benchmark Runner" -ForegroundColor Cyan
Write-Host "============================================" -ForegroundColor Cyan
Write-Host "  Label:     $Label"
Write-Host "  Config:    $Config"
Write-Host "  Platform:  $Platform"
Write-Host "  Project:   $ProjectPath"
Write-Host ""

# Validate project exists
if (-not (Test-Path $ProjectPath)) {
    Write-Host "ERROR: Project file not found: $ProjectPath" -ForegroundColor Red
    Write-Host "Make sure you have generated the .dproj file first." -ForegroundColor Red
    exit 1
}

# Create results directory
New-Item -ItemType Directory -Force -Path $ResultsDir | Out-Null

# Step 1: Clean
Write-Host "[1/3] Cleaning project..." -ForegroundColor Yellow
$cleanCmd = "call `"$RsvarsPath`" && msbuild `"$ProjectPath`" /t:Clean /p:Config=$Config /p:Platform=$Platform /v:quiet /nologo"
& cmd /c $cleanCmd 2>&1 | Out-Null

# Step 2: Build with timing
Write-Host "[2/3] Building project (this may take a while)..." -ForegroundColor Yellow
$buildLog = Join-Path $ResultsDir "build_output.log"

$stopwatch = [System.Diagnostics.Stopwatch]::StartNew()

$buildCmd = "call `"$RsvarsPath`" && msbuild `"$ProjectPath`" /t:Build /p:Config=$Config /p:Platform=$Platform /v:normal /nologo"
$buildOutput = & cmd /c $buildCmd 2>&1
$buildExitCode = $LASTEXITCODE

$stopwatch.Stop()

# Save build log
$buildOutput | Out-File -FilePath $buildLog -Encoding UTF8

# Step 3: Collect metrics
Write-Host "[3/3] Collecting metrics..." -ForegroundColor Yellow

$stats = [ordered]@{
    Label                = $Label
    Timestamp            = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    CompileTimeSeconds   = [Math]::Round($stopwatch.Elapsed.TotalSeconds, 2)
    CompileTimeFormatted = $stopwatch.Elapsed.ToString("mm\:ss\.ff")
    Platform             = $Platform
    Config               = $Config
    BuildSuccess         = ($buildExitCode -eq 0)
}

# Find binary and get size
$outputDir = Join-Path $ProjectDir "Win32\$Config"
if ($Platform -eq "Win64") {
    $outputDir = Join-Path $ProjectDir "Win64\$Config"
}

$exeFile = Get-ChildItem -Path $ProjectDir -Filter "Benchmark.GenericsScalability.exe" -Recurse -ErrorAction SilentlyContinue | Select-Object -First 1
if ($exeFile) {
    $stats.BinarySizeBytes = $exeFile.Length
    $stats.BinarySizeMB = [Math]::Round($exeFile.Length / 1MB, 2)
    
    # Copy exe to results
    Copy-Item $exeFile.FullName (Join-Path $ResultsDir "Benchmark.GenericsScalability.exe") -Force
    Write-Host "  Binary copied to results." -ForegroundColor Gray
}
else {
    $stats.BinarySizeBytes = 0
    $stats.BinarySizeMB = 0
    Write-Host "  WARNING: Executable not found!" -ForegroundColor Yellow
}

# Try to extract lines compiled from build output
$linesMatch = $buildOutput | Select-String -Pattern "(\d+) lines" -AllMatches | Select-Object -First 1
if ($linesMatch) {
    $stats.LinesCompiled = $linesMatch.Matches[0].Groups[1].Value
}

# Save stats
$statsFile = Join-Path $ResultsDir "compile_stats.json"
$stats | ConvertTo-Json -Depth 3 | Out-File -FilePath $statsFile -Encoding UTF8
Write-Host "  Stats saved to: $statsFile" -ForegroundColor Gray

# Display results
Write-Host ""
Write-Host "============================================" -ForegroundColor Cyan
Write-Host "  BENCHMARK RESULTS: $Label" -ForegroundColor Cyan
Write-Host "============================================" -ForegroundColor Cyan

if ($stats.BuildSuccess) {
    Write-Host "  Status:         SUCCESS" -ForegroundColor Green
}
else {
    Write-Host "  Status:         FAILED" -ForegroundColor Red
}

Write-Host "  Compile Time:   $($stats.CompileTimeFormatted) ($($stats.CompileTimeSeconds)s)" -ForegroundColor White
Write-Host "  Binary Size:    $($stats.BinarySizeMB) MB" -ForegroundColor White

if ($stats.LinesCompiled) {
    Write-Host "  Lines Compiled: $($stats.LinesCompiled)" -ForegroundColor White
}

Write-Host "  Platform:       $Platform" -ForegroundColor Gray
Write-Host "  Config:         $Config" -ForegroundColor Gray
Write-Host "============================================" -ForegroundColor Cyan

if (-not $stats.BuildSuccess) {
    Write-Host ""
    Write-Host "Build failed! Check the log at:" -ForegroundColor Red
    Write-Host "  $buildLog" -ForegroundColor Yellow
    exit 1
}
