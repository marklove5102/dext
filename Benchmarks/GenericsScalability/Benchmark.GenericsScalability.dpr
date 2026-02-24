program Benchmark.GenericsScalability;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  System.Diagnostics,
  BenchTypes.Registry;

var
  SW: TStopwatch;
begin
  try
    ReportMemoryLeaksOnShutdown := True;

    WriteLn('============================================');
    WriteLn('  Dext Collections - Generics Scalability');
    WriteLn('============================================');
    WriteLn('');

    // Test Lists
    WriteLn('Creating 500 IList<T> specializations...');
    SW := TStopwatch.StartNew;
    TBenchmarkRegistry.CreateAllLists;
    SW.Stop;
    WriteLn(Format('  Lists created in %d ms', [SW.ElapsedMilliseconds]));
    WriteLn('');

    // Test Dictionaries
    WriteLn('Creating 1500 TDictionary<K,V> specializations...');
    SW := TStopwatch.StartNew;
    TBenchmarkRegistry.CreateAllDictionaries;
    SW.Stop;
    WriteLn(Format('  Dictionaries created in %d ms', [SW.ElapsedMilliseconds]));
    WriteLn('');

    // Summary
    WriteLn('============================================');
    WriteLn('  Total: 2000 generic specializations');
    WriteLn('  Status: SUCCESS');
    WriteLn('============================================');

  except
    on E: Exception do
    begin
      WriteLn('ERROR: ', E.ClassName, ': ', E.Message);
      ExitCode := 1;
    end;
  end;
  ReadLN;
end.
