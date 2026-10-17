# Projeto Aurora — Fase 1: Comercial

Relatório Power BI (máx. 2 telas) para a Diretoria Comercial (Marina Teixeira, Brasília), exibindo **Valor (R$)** e **Quantidade** lado a lado em **7 cortes navegáveis**, comparados com as metas e sinalizando **acima**, **abaixo** ou **"sem meta"** (nunca 0% onde não há meta).

**Sprint:** 14/10 a 31/10/2026 · **Entrega final:** 31/10/2026 às 23:59 (submissão antecipada até 12h)

## Links rápidos
| O quê | Link |
|---|---|
| Quadro Kanban | **[COLE O LINK DO PROJECT]** |
| Arquivos (.pbix e planilhas) no Drive | **https://drive.google.com/drive/folders/1s9fCfpAZ6BhjEXru9G2TX1Hf-KZRCoZ4?usp=share_link** |
| Tarefas (cards T01 a T10) | Aba **Issues** deste repositório |

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

**Quem cuida do repositório:** [Christian Farias]

## Onde fica cada coisa
| O quê | Onde |
|---|---|
| Tarefas da sprint | Aba **Issues** (uma por card) |
| Andamento | Quadro Kanban (**Projects**) |
| Regras de negócio, modelo de dados, gabarito, cronograma | Pasta `docs/` |
| Medidas DAX (cópia em texto) | Pasta `dax/` |
| Scripts do Power Query (cópia em texto) | Pasta `power-query/` |
| Notas sobre o arquivo do Power BI | Pasta `powerbi/` |
| Instruções sobre os 11 `.xlsx` | Pasta `dados/` |
| Automação do GitHub (só para quem cuida do repositório) | Pasta `scripts/` |
| **Arquivo `.pbix` e planilhas `.xlsx`** | **Drive** (nunca sobem no GitHub) |

## Como a gente trabalha

### Colunas do quadro
| Coluna | Significa |
|---|---|
| Backlog | Ainda não pode ou não vai começar |
| To Do | Pronta para alguém pegar |
| In Progress | Alguém está fazendo agora |
| Review (QA) | Pronta, esperando revisão |
| Done | Revisada e finalizada |

### Passo a passo de cada card
1. Abra a sua issue e confira os **critérios de aceite** (a lista de caixinhas).
2. Arraste o card para **In Progress**. Pegue no máximo 1 ou 2 por vez.
3. Faça o trabalho e vá marcando as caixinhas.
4. Terminou? Arraste para **Review (QA)** e avise o time no grupo.
5. Outra pessoa confere. Medidas DAX são revisadas pelo **Tech Lead (Membro 1)**.
6. Aprovado? O card vai para **Done**.

### Não sabe usar Git? Tudo bem, você não precisa
Você só precisa de 4 coisas, todas pelo navegador:

1. **Mover o seu card no quadro:** aba **Projects** > abra o quadro > arraste o card entre as colunas.
2. **Marcar os critérios de aceite:** abra a issue do seu card (aba **Issues**) e clique nas caixinhas.
3. **Pedir ajuda ou avisar um bloqueio:** escreva um comentário na issue e clique em **Comment**.
4. **Editar um texto do repositório** (ex.: o gabarito em `docs/`): abra o arquivo > clique no lápis (✏️) > edite > desça a página > **Commit changes**.

### Arquivo do Power BI (.pbix)
O `.pbix` fica no **Drive**, não no GitHub.

- **Só uma pessoa edita por vez.** Avise no grupo: "Estou editando o Aurora_v2".
- Baixe a última versão, trabalhe e salve com o nome seguinte (ex.: `Aurora_v3_DAX.pbix`).
- Suba para o Drive e avise: "Liberei o arquivo".
- Nunca apague a versão anterior. Ela é o seu backup.
- Toda medida DAX nova também deve ser copiada em `dax/` e listada em [docs/03-medidas-dax.md](docs/03-medidas-dax.md).

### Regras que valem para todo mundo
- Nenhum visual pode mostrar **0%** onde não há meta: use **"sem meta"**.
- Bloqueado? Comente na issue, coloque a label `bloqueado` e avise na daily.
- Dúvidas e decisões ficam nos **comentários da issue**, não perdidas no grupo.
- Não suba `.xlsx` nem dados do cliente no repositório.

## Como rodar o relatório
1. Baixe o último `.pbix` e os 11 `.xlsx` do **Drive**.
2. Coloque os `.xlsx` em uma pasta no seu computador.
3. Abra o `.pbix` no Power BI Desktop.
4. Se os dados não carregarem, ajuste o caminho da pasta em **Transformar dados > Configurações da fonte de dados**.

## Datas importantes
| Data | O quê |
|---|---|
| 15/10 | Sprint Planning |
| 22/10 | Checkpoint DAX |
| 29/10 | Sprint Review & QA |
| 31/10 até 12h | Submissão dos 2 links testados em janela anônima |
| 31/10 às 23:59 | Prazo final |

Detalhes das cerimônias em [docs/05-cerimonias-e-cronograma.md](docs/05-cerimonias-e-cronograma.md).

## Critério de aprovação
Gabarito das 5 perguntas (Setembro/2026): [docs/04-gabarito-setembro-2026.md](docs/04-gabarito-setembro-2026.md)

## Links de entrega (preencher no T10)
- Publicar na Web (Power BI):
- .pbix no Drive/OneDrive:
