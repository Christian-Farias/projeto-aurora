# Contexto e regras de negócio

## Dor do cliente
Marina Teixeira (Diretora Comercial, Brasília) lida com três planilhas divergentes para o mesmo mês e perde as manhãs de segunda auditando números. Precisa de **um único relatório Power BI (máx. 2 telas)** pronto para a diretoria.

## Requisitos
- Valor (R$) e Quantidade lado a lado, em 7 cortes navegáveis.
- Comparação com as respectivas metas.
- Sinalizar acima / abaixo / **"sem meta"** (nunca 0% onde não há meta).

## Os 7 cortes e suas metas
| # | Corte | Métrica (Valor e Qtd) | Meta de Valor | Meta de Quantidade / Obs. |
|---|---|---|---|---|
| 1 | Rede (Total) | Valor Líquido e Nº de Vendas (`vendas`) | Soma das metas das Filiais | Soma das metas das Filiais (ignorar filtros de outros cortes) |
| 2 | Filial | Valor Líquido e Nº de Vendas (`vendas`) | Soma das metas nível Produto | Soma das metas nível Vendedor daquela filial |
| 3 | Cidade | Valor Líquido e Nº de Vendas (`vendas`) | Soma das metas de suas Filiais | Soma das metas das Filiais da cidade |
| 4 | Vendedor | Valor Líquido e Nº de Vendas (`vendas`) | Meta nível Vendedor | Meta nível Vendedor do próprio vendedor |
| 5 | Profissional | Valor Líquido e Nº de Vendas (`vendas`) | Meta nível Profissional | Meta nível Profissional do próprio profissional |
| 6 | Grupo de Serviço | Valor Bruto e Soma Qtd (`itens_venda`) | Meta nível Produto | Meta nível Produto. Nem todo grupo tem meta de qtd |
| 7 | Serviço | Valor Bruto e Soma Qtd (`itens_venda`) | Meta nível Serviço | Meta nível Serviço. Só serviços principais têm meta (exibir "sem meta") |

## Regras críticas
- Valor Líquido vem de `vendas`; Valor Bruto vem de `itens_venda` (o desconto não é rateado por item).
- Nunca somar níveis de meta heterogêneos.
- Rede e Cidade somam metas das filiais mesmo quando filtradas por outros cortes.
- Meta vazia ou zero → texto **"sem meta"**, nunca 0%.
- Rótulo combinado no padrão BR: `R$ 50.459 | Qtd 3.500`.
