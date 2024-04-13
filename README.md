# Data Engineering: SQL vs NoSQL

Este repositório é dedicado à exploração das diferenças fundamentais e dos casos de uso de Bancos de Dados Relacionais (SQL) e Não Relacionais (NoSQL), focando nas implicações práticas para Engenheiros de Dados dos cursos Ciência de Dados utilizando Python e Database Experience.

## Introdução

O mundo dos dados está em constante evolução, e a escolha entre bancos de dados SQL e NoSQL é crucial dependendo das necessidades do projeto. Este documento visa fornecer uma visão clara das características, vantagens, desvantagens e aplicações práticas de cada tipo de banco de dados.

## Conceitos Básicos

### Bancos de Dados Relacionais (SQL)

**Definição:** Bancos de dados relacionais utilizam uma estrutura de dados tabular e são acessados através de SQL (Structured Query Language). Eles são baseados no modelo de dados relacional introduzido por E.F. Codd.

**Características Principais:**
- Estrutura de dados fixa e esquemática.
- Forte consistência de dados.
- Transações ACID (Atomicidade, Consistência, Isolamento, Durabilidade).

**Vantagens:**
- Facilidade de manutenção devido à estrutura rigorosa.
- Suporte robusto para transações complexas.
- Ampla adoção e suporte comunitário extenso.

**Desvantagens:**
- Escalabilidade horizontal limitada.
- Pode se tornar ineficiente com volumes extremamente altos de dados ou com estruturas de dados não relacionais.

**Exemplos:**
- MySQL
- PostgreSQL
- Oracle Database

### Bancos de Dados Não Relacionais (NoSQL)

**Definição:** Bancos de dados NoSQL permitem uma variedade de estruturas de dados, incluindo documentos, grafos, chave-valor e colunas largas. Eles não necessariamente seguem o modelo relacional e frequentemente oferecem capacidades flexíveis de esquemas.

**Características Principais:**
- Esquemas flexíveis.
- Projetados para escalabilidade horizontal.
- Diferentes tipos de NoSQL são otimizados para diferentes tipos de consultas de dados.

**Vantagens:**
- Flexibilidade de esquemas.
- Capacidade de lidar com grandes volumes de dados.
- Rapidez nas consultas para grandes volumes de dados.

**Desvantagens:**
- Menos garantias de consistência (eventual consistência).
- Menos suporte para transações ACID.

**Exemplos:**
- MongoDB (baseado em documentos)
- Cassandra (colunas largas)
- Redis (chave-valor)
- Neo4j (banco de dados de grafos)

#### Cassandra

**Definição:** Cassandra é um sistema de gerenciamento de banco de dados NoSQL orientado a colunas, projetado para lidar com grandes quantidades de dados distribuídos em muitos servidores, garantindo alta disponibilidade sem comprometer a integridade dos dados.

**Características Principais:**
- Escalabilidade linear e desempenho previsível.
- Suporte para múltiplas réplicas para cada dado para garantir redundância e falha segura.
- Modelo de consistência configurável baseado no princípio de eventual consistência.

**Vantagens:**
- Excelente para manipulação de grandes volumes de dados distribuídos globalmente.
- Flexibilidade para escolher entre consistência e velocidade de resposta.

**Desvantagens:**
- Consultas complexas, como joins e subqueries, são limitadas ou não são suportadas.
- A curva de aprendizado pode ser íngreme em comparação com bancos de dados SQL tradicionais.

#### Exemplo de Bancos de Dados Não Relacionais (NoSQL)

#### Neo4j

**Definição:** Neo4j é um banco de dados de grafos, otimizado para armazenar e consultar relacionamentos entre dados. É ideal para representar estruturas de dados complexas e interconectadas.

**Características Principais:**
- Armazenamento eficiente de relacionamentos e navegação rápida através de conexões.
- Linguagem de consulta Cypher, especificamente desenhada para trabalhar com grafos.

**Vantagens:**
- Alta performance em consultas que envolvem relações profundas entre os dados.
- Modelo intuitivo e flexível para representar dados complexos e suas inter-relações.

**Desvantagens:**
- Não é ideal para cenários onde a estrutura de dados é principalmente tabular ou não exige modelagem de relacionamentos complexos.
- Pode exigir um reajuste no pensamento de quem está acostumado com modelos relacionais.

## Comparação entre SQL e NoSQL

| Característica        | SQL                          | NoSQL                         |
|-----------------------|------------------------------|-------------------------------|
| Esquema               | Estruturado e fixo           | Flexível                      |
| Escalabilidade        | Vertical                     | Horizontal                    |
| Transações            | Suporte completo a ACID      | Suporte variável              |
| Modelo de Dados       | Relacional                   | Diversos (documentos, grafos) |
| Casos de Uso          | Aplicações com necessidade de transações complexas | Big Data, Aplicações em tempo real |

## Casos de Uso na Vida Real

### SQL
- Sistemas bancários e financeiros que requerem transações complexas e garantias de integridade.
- Aplicações empresariais tradicionais como CRM e ERP.

### NoSQL
- Aplicações que requerem escalabilidade extrema, como redes sociais e serviços de IoT.
- Big Data e análise em tempo real com requisitos de desempenho extremamente altos.

## Conclusão

A escolha entre SQL e NoSQL pode impactar significativamente a arquitetura e a eficácia de uma aplicação de engenharia de dados. Compreender suas diferenças, vantagens e limitações é essencial para selecionar a solução mais adequada para cada caso específico.

## Referências

- [Documentação Oficial do MySQL](https://www.mysql.com/)
- [Documentação Oficial do MongoDB](https://www.mongodb.com/)
- [Documentação Oficial do Cassandra](https://cassandra.apache.org/)
- [Documentação Oficial do Neo4j](https://neo4j.com/)

---

Contribuições e feedback são sempre bem-vindos para melhorar este repositório!
