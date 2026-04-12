# 📋 Dext V1.0 Stable - Tarefas Pendentes (Backlog)

Este documento centraliza as pendências técnicas e de ecossistema necessárias para declarar o **Dext Framework** como estável (V1.0).

---

## 🛠️ Qualidade de Código & Ecossistema
Status | Tarefa | Descrição
:---: | :--- | :---
🟡 | **Automação de Instalação** | Explorar pacotes Boss ou TMS Smart Setup para automatizar o ambiente.
🟡 | **Estratégia de Versionamento** | Implementar `LIBSUFFIX AUTO` nos packages para suporte a múltiplas versões de IDE.
🟡 | **Otimização de Generics** | Revisar o uso de Generics pesados para reduzir o "code bloat" e tempo de compilação.
🟡 | **Padronização de Código** | Auditoria final baseada no Object Pascal Style Guide.
🟡 | **Agent Guidelines** | Finalizar o `CONTRIBUTING_AI.md` para orientar assistentes de IA no desenvolvimento do framework.

---

## 🧪 Infraestrutura de Testes & QA
Status | Tarefa | Descrição
:---: | :--- | :---
🟡 | **Docker-Compose Environment** | Ambiente pronto para subir todos os bancos de dados simultaneamente para testes de integração.
🟡 | **Matriz de Dialetos (Oracle/IB)** | Finalizar a automação dos testes para Oracle e InterBase.
🟡 | **Testes de Integração Web** | Validar cenários reais de Cookies, Upload binário e Compressão via HTTP.
🟡 | **HTTPS/SSL Validation** | Validar exaustivamente OpenSSL 3.0 e Taurus TLS.

---

## 🏎️ Benchmarks (Baseline V1.0)
Status | Tarefa | Descrição
:---: | :--- | :---
🔴 | **Web Framework Benchmark** | Hello World, JSON Serialization e DB Read (comparar vs ASP.NET Core e Horse).
🔴 | **ORM Benchmark** | Bulk Insert 10k e Select com Hydration de alto volume vs FireDAC puro.

---

## 📖 Documentação & Atendimento
Status | Tarefa | Descrição
:---: | :--- | :---
🟡 | **Revisão Técnica do Livro** | Validar todos os exemplos de código em todos os capítulos do Book.
🔴 | **Série de Vídeos (Screencasts)** | Gravação de demonstrações rápidas para as funcionalidades principais (Web Hubs, Smart Properties).

---

## 🔮 Pós-V1 (Futuro Próximo)
- [ ] **OData Support**: Suporte completo a queries OData.
- [ ] **GraphQL**: Camada nativa para exposição de grafos de dados.
- [ ] **Feature Toggle**: Sistema de flags para habilitar/desabilitar funcionalidades em runtime.
- [ ] **Background Jobs (Redis/RabbitMQ)**: Sistema de filas persistentes com retentativas.
- [ ] **CancellationToken Timeout**: Suporte nativo a `.WithTimeout(Duration)`.

---
*Última atualização: 11 de Abril de 2026*
