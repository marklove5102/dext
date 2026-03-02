# 5. ORM (Dext.Entity)

Dext.Entity é um ORM completo para Delphi com suporte a múltiplos bancos de dados.

## Capítulos

1. [Primeiros Passos](primeiros-passos.md) - Primeira entidade & contexto
2. [Entidades & Mapeamento](entidades.md) - Atributos e configuração
3. [Consultas](consultas.md) - API fluente de queries
4. [Smart Properties](smart-properties.md) - Queries type-safe sem classes de metadados
5. [Consultas JSON](consultas-json.md) - Consultar colunas JSON/JSONB
6. [Specifications](specifications.md) - Lógica de consulta reutilizável
7. [Relacionamentos](relacionamentos.md) - 1:1, 1:N, Lazy Loading
8. [Migrations](migrations.md) - Ciclo de vida do schema do banco
9. [Scaffolding](scaffolding.md) - Gerar entidades a partir do BD
10. [Multi-Tenancy](multi-tenancy.md) - Isolamento de dados SaaS
11. [SQL Puro com FromSql](sql-puro-from-sql.md) - Mapeamento manual de SQL
12. [Stored Procedures](procedimentos-armazenados.md) - RPC & Funções
13. [Concorrência e Travamento](travamento-concorrencia.md) - Locks Pessimistas e Offline
14. [Multi-Mapping](mapeamento-aninhado.md) - Objetos aninhados & Value Objects

> 📦 **Exemplos**:
>
> - [Orm.EntityDemo](../../../Examples/Orm.EntityDemo/) (Padrão)
> - [Orm.EntityStyles](../../../Examples/Orm.EntityStyles/) (Comparativo: POCO vs Smart Properties)

## Início Rápido

```pascal
// 1. Definir Entidade
type
  [Table('users')]
  TUser = class
  private
    FId: Integer;
    FName: string;
  public
    [PK, AutoInc]
    property Id: Integer read FId write FId;
    
    [Column('name')]
    property Name: string read FName write FName;
  end;

// 2. Criar Contexto
type
  TAppContext = class(TDbContext)
  public
    function Users: IDbSet<TUser>;
  end;

// 3. Usar!
var
  Ctx: TAppContext;
  User: TUser;
begin
  Ctx := TAppContext.Create(Connection, Dialect);
  
  // Create
  User := TUser.Create;
  User.Name := 'João';
  Ctx.Users.Add(User);
  Ctx.SaveChanges;
  
  // Read
  User := Ctx.Users.Find(1);
  
  // Query
  var u := Prototype.Entity<TUser>;
  var UsuariosAtivos := Ctx.Users
    .Where(u.Name.Contains('João'))
    .ToList;
end;
```

## Bancos de Dados Suportados

| Banco de Dados | Status |
|----------------|--------|
| PostgreSQL | ✅ Estável |
| SQL Server | ✅ Estável |
| SQLite | ✅ Estável |
| Firebird | ✅ Estável |
| MySQL / MariaDB | ✅ Estável |
| Oracle | 🟡 Beta |

---

[← Recursos da API](../04-recursos-api/README.md) | [Próximo: Primeiros Passos →](primeiros-passos.md)
