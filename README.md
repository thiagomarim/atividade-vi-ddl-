# Sistema de Recomendação de Filmes e Séries por IA 🎬

Este projeto implementa um banco de dados PostgreSQL para um sistema de recomendação de filmes e séries baseado no humor do usuário.

## 📋 Estrutura do Projeto

```
.
├── README.md
├── docker-compose.yml
└── sql/
    ├── schema.sql    # Criação das tabelas
    └── data.sql      # Dados iniciais
```

## 🚀 Como Executar

### Pré-requisitos
- Docker e Docker Compose
- PostgreSQL (caso não use Docker)

### Configuração com Docker
1. Clone o repositório:
```bash
git clone https://github.com/seu-usuario/sistema-recomendacao-filmes.git
cd sistema-recomendacao-filmes
```

2. Inicie o container:
```bash
docker-compose up -d
```

### Configuração sem Docker
1. Instale o PostgreSQL
2. Execute os scripts SQL na pasta `sql/` na ordem:
   - schema.sql
   - data.sql

### Dados de Conexão
- Host: localhost
- Porta: 5432
- Usuário: usuario
- Senha: senha123
- Banco: filmes_db

## 📊 Modelo de Dados

- **Tabela humor**: Armazena os estados de humor
- **Tabela generos**: Catálogo de gêneros
- **Tabela filmes_series**: Relaciona títulos com gêneros e humores

## 🔍 Exemplos de Consultas

```sql
-- Recomendações para usuários felizes
SELECT * FROM recomendacoes_view WHERE humor = 'Feliz';

-- Filmes de um gênero específico
SELECT * FROM recomendacoes_view WHERE genero = 'Comédia';
```

## 📝 Licença
Este projeto está sob a licença MIT.
