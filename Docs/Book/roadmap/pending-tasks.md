# 📋 Dext V1.0 Stable - Pending Tasks (Backlog)

This document centralizes the technical and ecosystem tasks required to declare **Dext Framework** as stable (V1.0).

---

## 🛠️ Code Quality & Ecosystem
Status | Task | Description
:---: | :--- | :---
🟡 | **Installation Automation** | Explore Boss packages or TMS Smart Setup to automate environment setup.
🟡 | **Versioning Strategy** | Implement `LIBSUFFIX AUTO` in packages for multi-IDE version support.
🟡 | **Generics Optimization** | Review heavy Generics usage to reduce "code bloat" and compilation time.
🟡 | **Code Standardization** | Final audit based on the Object Pascal Style Guide.
🟡 | **Agent Guidelines** | Finalize `CONTRIBUTING_AI.md` to guide AI assistants in framework development.

---

## 🧪 Testing Infrastructure & QA
Status | Task | Description
:---: | :--- | :---
🟡 | **Docker-Compose Environment** | Environment ready to spin up all databases simultaneously for integration tests.
🟡 | **Dialect Matrix (Oracle/IB)** | Finalize test automation for Oracle and InterBase.
🟡 | **Web Integration Tests** | Validate real-world Cookies, Binary Upload, and Compression via HTTP.
🟡 | **HTTPS/SSL Validation** | Exhaustively validate OpenSSL 3.0 and Taurus TLS.

---

## 🏎️ Benchmarks (V1.0 Baseline)
Status | Task | Description
:---: | :--- | :---
🔴 | **Web Framework Benchmark** | Hello World, JSON Serialization, and DB Read (compare vs ASP.NET Core and Horse).
🔴 | **ORM Benchmark** | Bulk Insert 10k and High-volume Select with Hydration vs pure FireDAC.

---

## 📖 Documentation & Support
Status | Task | Description
:---: | :--- | :---
🟡 | **Book Technical Review** | Validate all code examples in every chapter of the Book.
🔴 | **Video Series (Screencasts)** | Record quick demos for core features (Web Hubs, Smart Properties).

---

## 🔮 Post-V1 (Near Future)
- [ ] **OData Support**: Full support for OData queries.
- [ ] **GraphQL**: Native layer for exposing data graphs.
- [ ] **Feature Toggle**: Flag system to enable/disable features at runtime.
- [ ] **Background Jobs (Redis/RabbitMQ)**: Persistent queue system with retries.
- [ ] **CancellationToken Timeout**: Native support for `.WithTimeout(Duration)`.

---
*Last update: April 11, 2026*
