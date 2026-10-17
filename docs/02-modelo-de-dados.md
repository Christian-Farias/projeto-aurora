# Modelo de dados (Star Schema)

## Tabelas (11 arquivos .xlsx)
`vendas`, `itens_venda`, `filiais`, `cidades`, `profissionais`, `vendedores`, `servicos`, `grupos_servico`, `calendario`, `metas_valor`, `metas_quantidade`

Fonte: `00_dicionario_de_dados.xlsx` (filtrar coluna "A partir da" = **Fase 1**).

## Metas (4 níveis)
Produto · Serviço · Vendedor · Profissional (em `metas_valor` e `metas_quantidade`).

## Relacionamentos
| De (muitos) | Para (um) | Chave | Cardinalidade | Direção |
|---|---|---|---|---|
| | | | | |

## Ordenação
- `mes_ano` ordenado por `ano_mes`
- `mes_nome` ordenado por `mes_numero`

## Observações
(preencher no T01/T02)
