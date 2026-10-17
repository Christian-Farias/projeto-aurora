# Projeto Aurora — Fase 1: Comercial

Relatório Power BI (máx. 2 telas) para a Diretoria Comercial (Marina Teixeira, Brasília), exibindo **Valor (R$)** e **Quantidade** lado a lado em **7 cortes navegáveis**, comparados com as metas e sinalizando **acima**, **abaixo** ou **"sem meta"** (nunca 0% onde não há meta).

**Sprint:** 14/10 a 31/10/2026 · **Entrega:** 31/10/2026 às 23:59 (submissão antecipada até 12h)

## Os 7 cortes
Rede · Filial · Cidade · Vendedor · Profissional · Grupo de Serviço · Serviço
Regras completas em [docs/01-contexto-e-regras-de-negocio.md](docs/01-contexto-e-regras-de-negocio.md).

## Squad
| Papel | Pessoa | GitHub |
|---|---|---|
| Membro 1 — Tech Lead & DAX | | |
| Membro 2 — Eng. Dados / ETL | | |
| Membro 3 — Dev DAX Base | | |
| Membro 4 — UX/UI & Tela 1 | | |
| Membro 5 — Dev BI & QA | | |

## Estrutura do repositório
| Pasta | Conteúdo |
|---|---|
| `docs/` | Regras de negócio, modelo, catálogo DAX, gabarito, cerimônias, decisões (ADRs) |
| `powerbi/` | Projeto Power BI (`.pbip`) |
| `dax/` | Medidas em `.dax` para revisão em PR |
| `power-query/` | Scripts M exportados |
| `dados/` | Instruções dos 11 `.xlsx` (arquivos **não** versionados) |
| `scripts/` | Automação do GitHub (labels, milestones, issues) |

## Como rodar
1. Baixe os 11 `.xlsx` em **[LINK DO DRIVE]** e coloque em `dados/`.
2. Abra `powerbi/Aurora.pbip` no Power BI Desktop.
3. Ajuste o parâmetro de caminho dos dados no Power Query.

## Quadro e cerimônias
- Kanban: **[LINK DO GITHUB PROJECT]**
- Cerimônias e cronograma: [docs/05-cerimonias-e-cronograma.md](docs/05-cerimonias-e-cronograma.md)

## Critério de aprovação
Gabarito Q1–Q5 (Setembro/2026): [docs/04-gabarito-setembro-2026.md](docs/04-gabarito-setembro-2026.md)

## Links de entrega (preencher no T10)
- Publicar na Web (Power BI): 
- .pbix no Drive/OneDrive: 
