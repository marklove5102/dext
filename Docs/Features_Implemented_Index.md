# Dext Framework: Implemented Features Index

This index provides a comprehensive and exhaustive technical map of the Dext Framework. It serves as a guide for developers to understand the architectural breadth and depth of the ecosystem.

---

## 🏗️ 1. Dext Core — Foundation & Primitives (`Sources\Core`)

### 1.1 Dependency Injection (`Dext.Core.DI`)
- **TServiceCollection** — In-process service registration.
- **TServiceProvider** — High-speed service resolution.
- **Lifetimes**: `Singleton`, `Transient`, and `Scoped` (Request-based).
- **Factory Registration** — Dynamic service instantiation using custom functions.
- **Interface/Implementation Mapping** — Decouple definitions from concrete logic.

### 1.2 High-Performance Reflection (`Dext.Core.Reflection`)
- **TTypeCache** — Ultra-fast metadata storage bypassing standard RTTI overhead.
- **Fast Callers** — Execute methods and access properties using specialized pointers.
- **Attribute Discovery** — Scan and cache attributes at startup for zero-cost runtime access.

### 1.3 Zero-Allocation Memory (`Dext.Core.Memory`)
- **TSpan<T>** — Stack-allocated memory slices for high-speed string and buffer manipulation.
- **TVector<T>** — Efficient, growable stack-allocated vectors.
- **ILifetime<T>** — ARC wrapper for manual object lifecycle management.

### 1.4 Smart Properties (`Dext.Core.Props`)
- **Prop<T>** — Dual-mode value wrappers (Value Mode / Expression Mode).
- **Operator Overloading** — Fluent syntax for generating Expression Trees (`Prop > Value`).
- **AST Generation** — Compiles Delphi code into a reusable Abstract Syntax Tree at runtime.

### 1.5 Threading & Async (`Dext.Threading.*`)
- **TAsyncTask** — Fluent Async/Await implementation.
- **ICancellationToken** — Cooperative cancellation for thread safety.
- **Work-Stealing Scheduler** — Efficient task distribution across CPU cores.

### 1.6 Event Bus & Messaging (`Dext.Events`)
- **In-Process Pub/Sub** — MediatR-inspired messaging system.
- **IEventPublisher / IEventHandler<T>** — Decouple event producers from consumers.
- **Scoped Handlers** — Events inherit the DI scope of the originating request.

### 1.7 Observability & Telemetry (`Dext.Core.Diagnostics`)
- **TDiagnosticSource** — Instrumentation engine for SQL and HTTP tracking.
- **Activity Correlation** — Trace requests across subsystem boundaries (CorrelationId).

---

## 📦 2. Dext Collections Library (`Sources\Core`)

### 2.1 Performance Collections
- **Binary Code Folding** (`TRawList`) — Reduces binary bloat and compile times by up to 60%.
- **SIMD Acceleration** — AVX2/SSE2 optimized loops for list scanning.
- **Frozen Collections** — Lock-free, immutable collections for extreme read performance.
- **TChannel<T>** — Go-inspired async communication with backpressure support.

---

## 🗄️ 3. Dext ORM — Database Engine (`Sources\ORM`)

### 3.1 DbContext & Entities
- **Unit of Work** — Manage transactions and entity tracking in a single session.
- **Fluent Mapping** — Configure database schemas without polluting entities with attributes.
- **Soft Delete** — Transparent handling of `DeletedAt` fields.
- **Audit Logging** — Automatic tracking of `CreatedAt` and `UpdatedAt`.

### 3.2 Query Engine
- **Type-Safe Queries** — Query using Delphi expressions: `Where(U.Age > 18)`.
- **Eager Loading** — Join-based or Batch-based loading of child entities.
- **Specifications Pattern** — Encapsulate reusable query logic in classes.

---

## 🌐 4. Dext Web — Web Pipeline (`Sources\Web`)

### 4.1 Routing & Controllers
- **Attribute Routing** — `[DextController('/api/users')]`.
- **Zero-Alloc Middleware** — Composable request pipeline with zero-copy processing.
- **Model Binding** — Auto-populate objects from Body, Query, or Header.

### 4.2 DataApi (Zero-Code REST)
- **Automatic Endpoints** — Expose ORM entities via REST with a single attribute.
- **Direct-to-JSON Streaming** — Near-zero memory footprint for large GET requests.
- **Queryable APIs** — Built-in filtering (`?_gt`, `_cont`), sorting, and pagination.

---

## 🧪 5. Dext Testing & Quality (`Sources\Testing`)

### 5.1 Unit Testing Tools
- **TAutoMocker<T>** — Automated DI-aware mocking.
- **Snapshot Assertions** — `Should.MatchSnapshot('expected.json')`.
- **Fluent Assertions** — `Should(Value).BeGreaterThan(10)`.

---

## 📊 6. Scaling & Production Readiness
- **200,000+ Lines** of high-quality Pascal code.
- **500+ Automated Tests** across 5 database engines.
- **Validated** for Delphi 10.3 (Rio) through 12.x (Athens).
