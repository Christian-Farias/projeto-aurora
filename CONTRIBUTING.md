# Como contribuir

## Fluxo
1. Pegue uma issue (card T01–T10) no quadro e mova para **In Progress**.
2. Crie a branch a partir da `main`, começando pelo ID do card:
   `feat/T04-metas-dinamicas`, `fix/T07-barra-filial`, `docs/T09-gabarito`
3. Commits curtos e no imperativo, com o ID: `T04: ajusta meta de valor no nível Cidade`
4. Abra um Pull Request com `Closes #N`. O PR vai para **Review (QA)**.
5. Precisa de 1 aprovação. **Medidas DAX passam pelo Tech Lead (Membro 1).**
6. Merge (squash). A issue fecha e o card vai para **Done**.

## Regras
- Nunca dar push direto na `main`.
- Nunca versionar os `.xlsx` (dados do cliente).
- Se usar `.pbix` (sem .pbip): só **uma pessoa edita por vez**; avise no canal e use `Aurora_vN_ETAPA.pbix` no Drive.
- Toda medida nova entra em `dax/` e em `docs/03-medidas-dax.md`.
- Nenhum visual pode exibir **0%** onde não há meta: usar **"sem meta"**.
- Bloqueado? Coloque a label `bloqueado` e avise na daily.

## Padrão de nomes
- Medidas: `Valor Líquido`, `Número de Vendas`, `Valor Bruto dos Itens`, `Quantidade de Itens`, `Meta de Valor`, `Meta de Quantidade`, `% Atingimento Valor`, `Rótulo Combinado`, `Status Meta`.
