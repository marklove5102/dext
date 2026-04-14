# 📑 S11: Migration Audit & Finalization Specification

**Status:** ✅ Completed (Implementation Phase)  
**Owner:** Engineering Team  
**Reviewers:** Community / Architects

---

## 1. Goal
Complete the Migration system to ensure data safety, versioning integrity, and automation. This spec addresses the gaps between the current 80% implementation and a professional-grade "Entity Framework" style system.

## 2. Gap Analysis & Requirements

### 2.1. Safe Renaming (Renaming Detection)
A structural Differ cannot distinguish between a "Rename" and "Drop + Add". To prevent data loss:
- **Requirement**: Use a `[RenamedFrom('OldName')]` attribute on Entities and Properties.
- **Logic**: The `TModelDiffer` must check for this attribute in the `Current` model to generate `RenameTable` or `RenameColumn` operations instead of destructive drops.

### 2.2. Missing Operations
Implement the following operations in `Dext.Entity.Migrations.Operations.pas`:
- `otRenameTable`: `ALTER TABLE x RENAME TO y`.
- `otRenameColumn`: Dialect-specific (SQLite: `RENAME COLUMN`, MSSQL: `sp_rename`).
- `otSeedData`: Ability to insert initial/lookup data during a migration phase.

### 2.3. CLI Automation
Integrate migrations into the `dext` CLI:
- `dext migration add <Name>`: 
    1. Scan current code metadata.
    2. Load last snapshot (JSON).
    3. Run `Differ`.
    4. Generate a `.pas` unit with the `Up` and `Down` commands.
- `dext migration apply`: Execute the `TMigrator.Migrate` logic on the configured database.

### 2.4. Index Management
Extend the `Differ` to track non-PK/FK indexes:
- Detect added/removed `[Index]` attributes.
- Generate `CreateIndex` and `DropIndex` operations.

---

## 3. Technical Design

### 3.1. RENAMING Logic
```pascal
// In TModelDiffer.Diff
if CurrTable.HasAttribute<RenamedFromAttribute>(out OldName) then
begin
  if Previous.HasTable(OldName) then
    Ops.Add(TRenameTableOperation.Create(OldName, CurrTable.Name));
end;
```

### 3.2. CLI Generation Template
Use the new **Razor-style Template Engine** to generate the migration file:
```pascal
@foreach (var op in Model.UpOperations) {
  @if (op.Type == otCreateTable) {
     Builder.CreateTable('@op.TableName', ...);
  }
}
```

---

## 4. Acceptance Criteria
- [ ] Renaming a class with `[RenamedFrom]` results in a non-destructive `ALTER TABLE`.
- [ ] `dext migration add` generates a clean Pascal unit.
- [ ] Indexes are correctly added and removed based on attributes.
- [ ] Basic seeding works (e.g., adding an 'Admin' role).

---
 
## 5. Final implementation Summary
- **Renaming**: Implemented via `[RenamedFrom]` attribute logic in `TModelDiffer.Diff`.
- **Operations**: `otRenameTable`, `otRenameColumn`, and `otSeedData` added with Dialect support.
- **CLI**: `dext add migration <Name>` uses AST-based generation.
- **Verification**: Unit tests in `Dext.Entity.Migrations.Tests.pas` cover renaming and operation detection.

*Completed by Antigravity AI - April 14, 2026*
