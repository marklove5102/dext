# Implementation Plan - S11 (Migrations Audit) & S03 (Live Tracing)

This plan covers the transition to Wave 3 of the Roadmap, focusing on finalizing the Migration core and starting the Live Tracing system.

## User Review Required

> [!IMPORTANT]
> The **Renaming** detection in Migrations will require a way for the user to provide "hints" (e.g., `[RenamedFrom('OldName')]`) to avoid data loss, as a pure structural diff cannot distinguish between a "Rename" and "Drop + Add".

---

## Phase 1: S11 - Finalization of Migrations

### Core Framework Changes

#### [MODIFY] [Dext.Entity.Migrations.Operations.pas](file:///c:/dev/Dext/DextRepository/Sources/Data/Dext.Entity.Migrations.Operations.pas)
- Add `otRenameTable`, `otRenameColumn`, and `otSeedData` to `TOperationType`.
- Implement `TRenameTableOperation`, `TRenameColumnOperation`, and `TSeedDataOperation` classes.

#### [MODIFY] [Dext.Entity.Dialects.pas](file:///c:/dev/Dext/DextRepository/Sources/Data/Dext.Entity.Dialects.pas)
- Add virtual methods `GenerateRenameTable` and `GenerateRenameColumn` to `ISQLDialect`.
- Implement specific SQL for SQLite (`ALTER TABLE RENAME`), PostgreSQL, and SQL Server (`sp_rename`).

#### [MODIFY] [Dext.Entity.Migrations.Differ.pas](file:///c:/dev/Dext/DextRepository/Sources/Data/Dext.Entity.Migrations.Differ.pas)
- Update `Diff` logic to support "Rename" detection via property attributes or similarity scores.

### CLI Integration

#### [NEW] [Dext.Tool.Migration.CLI.pas](file:///c:/dev/Dext/DextRepository/Tools/CLI/Dext.Tool.Migration.CLI.pas)
- Implement `migration add <Name>`: Runs `Differ`, generates `.pas` migration file using `TDextTemplateEngine`.
- Implement `migration apply`: Runs `TMigrator.Migrate`.

---

## Phase 2: S03 - Live Tracing (Foundation)

### Telemetry Core

#### [NEW] [Dext.Logging.Telemetry.pas](file:///c:/dev/Dext/DextRepository/Sources/Core/Base/Dext.Logging.Telemetry.pas)
- Implement `TDiagnosticSource`: Centralized event publisher for the framework.
- Implement `ITelemetryObserver`: Interface for consumers (Dashboard, CLI).

### Integration Points

#### [MODIFY] [Dext.Entity.DbSet.pas](file:///c:/dev/Dext/DextRepository/Sources/Data/Dext.Entity.DbSet.pas)
- Instrument `ExecuteQuery` and `ExecuteNonQuery` to publish SQL events.

#### [MODIFY] [Dext.Web.Server.pas](file:///c:/dev/Dext/DextRepository/Sources/Web/Dext.Web.Server.pas)
- Instrument middleware pipeline to publish request start/end events.

---

## Verification Plan

### Automated Tests
- Test renaming operation in SQLite and PostgreSQL.
- Verify `DiagnosticSource` event delivery.

### Manual Verification
- Use `dext migration add` to generate a migration and verify the code.
- Run a web request and observe trace logs in the console.
