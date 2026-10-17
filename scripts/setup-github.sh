#!/usr/bin/env bash
# Uso: gh auth login  &&  bash scripts/setup-github.sh
# Rode dentro do repositório já criado no GitHub (gh repo view precisa funcionar).
set -e
REPO=$(gh repo view --json nameWithOwner -q .nameWithOwner)
echo "Repo: $REPO"

echo "== Labels =="
mk() { gh label create "$1" --color "$2" --description "$3" --force >/dev/null; }
mk epico-1-dados 1d76db "Épico 1: Dados"
mk epico-2-dax 5319e7 "Épico 2: Inteligência DAX"
mk epico-3-ux 0e8a16 "Épico 3: UX/UI & Visuais"
mk epico-4-entrega fbca04 "Épico 4: Homologação e Entrega"
mk bloqueado b60205 "Card bloqueado"
mk bug-visual d93f0b "Bug visual no relatório"
mk divergencia-de-dados e99695 "Número não bate com a planilha"
mk precisa-review-m1 c5def5 "Precisa de review do Tech Lead"
mk esforco-alto 000000 "Esforço alto"

echo "== Milestones =="
ms() { gh api "repos/$REPO/milestones" -f title="$1" -f due_on="$2" -f description="$3" >/dev/null || true; }
ms "Sprint Fase 1 (31/10)" "2026-10-31T23:59:00Z" "Entrega final da Fase 1"
ms "Checkpoint DAX (22/10)" "2026-10-22T23:59:00Z" "Matrizes batem 100% com Q1-Q5"
ms "Sprint Review (29/10)" "2026-10-29T23:59:00Z" "Simulação para Marina e caça a bugs"
ms "Entrega (31/10 12h)" "2026-10-31T15:00:00Z" "Submissão antecipada dos 2 links"

echo "== Issues =="
new() { # titulo labels milestone corpo
  gh issue create --title "$1" --label "$2" --milestone "$3" --body "$4" >/dev/null
  echo "criada: $1"
}
S="Sprint Fase 1 (31/10)"

new "T01 — Leitura do Dicionário de Dados e Mapeamento de Regras" "epico-1-dados" "$S" "**Resp:** Membro 2 + Membro 1 · **Dep:** nenhuma · **Esforço:** Baixo

## Critérios de aceite
- [ ] Abrir \`00_dicionario_de_dados.xlsx\` e filtrar coluna 'A partir da' = Fase 1
- [ ] Mapear chaves e cardinalidades das tabelas
- [ ] Mapear estrutura de \`metas_valor\` e \`metas_quantidade\` nos 4 níveis (Produto, Serviço, Vendedor, Profissional)
- [ ] Documentar em docs/02-modelo-de-dados.md"

new "T02 — Ingestão Power Query (ETL) e Modelagem Star Schema" "epico-1-dados" "$S" "**Resp:** Membro 2 · **Dep:** T01 · **Esforço:** Médio

## Critérios de aceite
- [ ] Importar os 11 .xlsx (vendas, itens_venda, filiais, cidades, profissionais, vendedores, servicos, grupos_servico, calendario, metas_valor, metas_quantidade)
- [ ] Validar tipos no Power Query
- [ ] Criar relacionamentos
- [ ] Ordenar \`mes_ano\` por \`ano_mes\` e \`mes_nome\` por \`mes_numero\`"

new "T03 — Medidas Base de Vendas e Itens Separadas" "epico-2-dax" "$S" "**Resp:** Membro 3 · **Dep:** T02 · **Esforço:** Baixo

## Critérios de aceite
- [ ] Valor Líquido (soma em vendas)
- [ ] Número de Vendas (contagem em vendas)
- [ ] Valor Bruto dos Itens (soma de valor_total em itens_venda; desconto não rateia por item)
- [ ] Quantidade de Itens (soma de quantidade em itens_venda)"

new "T04 — Medidas Dinâmicas de Meta por Contexto de Tela" "epico-2-dax,esforco-alto,precisa-review-m1" "Checkpoint DAX (22/10)" "**Resp:** Membro 1 (Tech Lead) · **Dep:** T01, T02, T03 · **Esforço:** Alto

## Critérios de aceite
- [ ] Meta de Valor e Meta de Quantidade com ISINSCOPE / SWITCH selecionando o nível exato
- [ ] Sem somar níveis heterogêneos
- [ ] Rede e Cidade somam metas das filiais via CALCULATE / ALLSELECTED, mesmo filtradas por outros cortes
- [ ] Documentado em docs/03-medidas-dax.md"

new "T05 — % de Atingimento (sem meta), Rótulo Combinado e Status" "epico-2-dax,precisa-review-m1" "Checkpoint DAX (22/10)" "**Resp:** Membro 3 + revisão Membro 1 · **Dep:** T04 · **Esforço:** Médio

## Critérios de aceite
- [ ] % Atingimento com DIVIDE devolvendo texto 'sem meta' quando meta vazia/zero
- [ ] Rótulo único: 'R\$ 50.459 | Qtd 3.500' com separador de milhar BR
- [ ] Medida de Status (Acima/Abaixo da meta) para formatação condicional"

new "T06 — Wireframe e Layout Executivo de 2 Telas" "epico-3-ux" "$S" "**Resp:** Membro 4 · **Dep:** paralelo a T02/T03 · **Esforço:** Médio

## Critérios de aceite
- [ ] Background para no máximo 2 telas
- [ ] Topo com 6 cartões + seletor de Mês/Ano
- [ ] Paleta corporativa semafórica
- [ ] Menu claro para alternar entre os 7 cortes"

new "T07 — Cartões de Topo e Gráficos de Barras/Colunas (Visuais 1 a 4)" "epico-3-ux" "$S" "**Resp:** Membro 4 · **Dep:** T05, T06 · **Esforço:** Médio

## Critérios de aceite
- [ ] Cartões no topo (Valor Líquido, Qtd Vendas, Metas e % Atingimento)
- [ ] Barras horizontais por Filial (maior p/ menor, rótulo 'R\$ | Qtd')
- [ ] Barras Top 10 Cidades
- [ ] Colunas por Grupo de Serviço
- [ ] Nenhum 0% onde não há meta"

new "T08 — Matrizes, Tabela e Navegação nos 7 Cortes (Visuais 5 a 8)" "epico-3-ux" "$S" "**Resp:** Membro 5 · **Dep:** T05, T06 · **Esforço:** Médio

## Critérios de aceite
- [ ] Matriz por Vendedor
- [ ] Matriz por Profissional
- [ ] Tabela por Serviço (exibir 'sem meta')
- [ ] Navegação nos 7 cortes (Bookmarks/Parâmetros)
- [ ] Testes na web"

new "T09 — Auditoria de Dados e 5 Perguntas de Aprovação (Setembro/2026)" "epico-4-entrega" "Sprint Review (29/10)" "**Resp:** Membro 2 + Membro 3 · **Dep:** T07, T08 · **Esforço:** Médio

## Critérios de aceite
- [ ] Filtrar painel em Setembro/2026
- [ ] Cruzar com planilhas brutas: zero divergência
- [ ] Preencher docs/04-gabarito-setembro-2026.md (Q1 a Q5)"

new "T10 — Publicação na Web, Drive e Teste em Janela Anônima" "epico-4-entrega" "Entrega (31/10 12h)" "**Resp:** Membro 1 + Membro 5 · **Dep:** T09 · **Esforço:** Baixo

## Critérios de aceite
- [ ] Publicar no Power BI Service (Arquivo > Inserir relatório > Publicar na Web)
- [ ] Subir .pbix no Google Drive/OneDrive com acesso 'Qualquer pessoa com o link'
- [ ] Testar ambos os links em janela anônima antes das 23:59 de 31/10/2026
- [ ] Colar os links no README"

new "Daily Standup (terça/quinta, em texto)" "" "$S" "Comente: 1) O que entreguei? 2) O que farei hoje? 3) Algum erro de soma de meta ou relacionamento bloqueando?"

echo "Pronto. Agora crie o Project (Board) em github.com > Projects e adicione as issues."
