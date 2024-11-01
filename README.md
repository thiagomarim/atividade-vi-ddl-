# Sistema de Recomendação de Filmes e Séries por IA

Este projeto implementa um banco de dados para um sistema de recomendação de filmes e séries baseado no humor do usuário.

## Estrutura do Banco de Dados

O banco de dados consiste em três tabelas principais:
- `humor`: Armazena os diferentes estados de humor
- `generos`: Cataloga os gêneros de filmes e séries
- `filmes_series`: Relaciona títulos com seus respectivos gêneros e humores

## Como Executar

1. Instale o Docker e Docker Compose
2. Clone este repositório
3. Execute no terminal:
```bash
docker-compose up -d
```

4. Conecte ao banco de dados:
- Host: localhost
- Porta: 5432
- Usuário: usuario
- Senha: senha123
- Banco: filmes_db

5. Execute os scripts SQL na ordem:
   - schema.sql
   - data.sql

## Estrutura do Projeto

```
.
├── README.md
├── docker-compose.yml
└── sql/
    ├── schema.sql
    └── data.sql
```

## Exemplos de Consultas

```sql
-- Buscar recomendações para usuários felizes
SELECT * FROM recomendacoes_view WHERE humor = 'Feliz';

-- Buscar todos os filmes de um gênero específico
SELECT * FROM recomendacoes_view WHERE genero = 'Comédia';
```
