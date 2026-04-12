# 🗺️ Dext Entity ORM - Roadmap

Este documento centraliza a visão, funcionalidades e progresso do sistema de mapeamento objeto-relacional (ORM) do Dext.

> **Visão:** Um ORM de alta performance, code-first, altamente produtivo e com suporte a múltiplos dialetos SQL, inspirado no Entity Framework Core.

---

## 📊 Status Atual: **Release Candidate 1.0** 🚀

O núcleo do ORM atingiu maturidade de produção, suportando operações complexas, multi-tenancy avançado e migrações code-first para todos os bancos suportados.

*Última atualização: 07 de Abril de 2026*

---

## ✅ Funcionalidades Implementadas

### 1. Persistência Core & Contexto
- [x] **TDbContext**: Unidade de trabalho que gerencia sessões e transações.
- [x] **DbSet<T>**: Abstração de coleção para entidades tipadas.
- [x] **Rastreador de Mudanças (Change Tracker)**: Detecção automática de mudanças para `Update` inteligente (atualiza apenas colunas afetadas).
- [x] **Mapa de Identidade (Identity Map)**: Garantia de unicidade de instâncias por chave primária dentro do mesmo contexto.

### 2. Mapeamento Fluente & Atributos
- [x] **Mapeamento via Atributos**: `[Table]`, `[Column]`, `[Key]`, `[ForeignKey]`, `[Index]`.
- [x] **API Fluente**: Configuração avançada de mapeamento via `OnModelCreating`.
- [x] **Conversores de Valor**: Mapeamento de tipos complexos (JSON, Enums, Nullables).

### 3. Engine de Consulta
- [x] **Consultas Fluentes**: `DbSet.Where(...).OrderBy(...).Skip(10).Take(20).ToList()`.
- [x] **Gerador de Predicados SQL**: Geração inteligente de SQL parametrizado a partir de expressões Pascal.
- [x] **Cache de Comandos**: Cache de planos de execução SQL para máxima performance em consultas repetitivas.

### 4. Relacionamentos
- [x] **Um-para-Um (One-to-One)**: Relacionamentos exclusivos entre entidades.
- [x] **Um-para-Muitos (One-to-Many)**: Mapeamento de coleções e chaves estrangeiras.
- [x] **Muitos-para-Muitos (Many-to-Many)**: Tabelas de junção automáticas e gerenciadas.
- [x] **Carregamento Preguiçoso (Lazy Loading)**: Carregamento sob demanda via Virtual Proxies.
- [x] **Carregamento Antecipado (Eager Loading)**: Uso de `.Include(x => x.Relation)` para carregar dependências em um único comando SQL (Join).

### 5. Funcionalidades Avançadas
- [x] **Multi-Tenancy**: Filtros globais de segurança por Tenant (Isolamento de dados).
- [x] **Exclusão Lógica (Soft Delete)**: Marcação de registros como excluídos sem remoção física do banco.
- [x] **Concorrência Otimista**: Controle de versão via `[VersionAttribute]`.
- [x] **Migrações (Migrations)**: Sistema de evolução de esquema code-first totalmente automático.

### 6. Dialetos Suportados (FireDAC)
- [x] **PostgreSQL** (Nativo)
- [x] **SQL Server** (Nativo)
- [x] **MySQL / MariaDB** (Nativo)
- [x] **SQLite** (Nativo)
- [x] **Firebird** (Nativo)

---

## 🎯 Próximos Passos (v1.1+)

1. **Atualizações em Lote Nativas**: Suporte a `UpdateRange` e `DeleteRange` via SQL direto para performance em massa.
2. **Consultas Compiladas**: Pré-compilação de consultas complexas para cenários de performance crítica.
3. **Suporte Multi-Banco**: Capacidade de um único `DbContext` gerenciar múltiplos bancos de dados simultaneamente.

---
*Dext Entity ORM - Potencializando o acesso a dados de alta performance em Delphi.*

