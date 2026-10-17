# Catálogo de medidas DAX

| Medida | Card | Dono | Descrição | Arquivo |
|---|---|---|---|---|
| Valor Líquido | T03 | M3 | Soma do valor líquido em `vendas` | dax/base.dax |
| Número de Vendas | T03 | M3 | Contagem de `vendas` | dax/base.dax |
| Valor Bruto dos Itens | T03 | M3 | Soma de `valor_total` em `itens_venda` | dax/base.dax |
| Quantidade de Itens | T03 | M3 | Soma de `quantidade` em `itens_venda` | dax/base.dax |
| Meta de Valor | T04 | M1 | ISINSCOPE/SWITCH por nível | dax/metas.dax |
| Meta de Quantidade | T04 | M1 | ISINSCOPE/SWITCH por nível | dax/metas.dax |
| % Atingimento | T05 | M3 | DIVIDE; "sem meta" se meta vazia/zero | dax/atingimento.dax |
| Rótulo Combinado | T05 | M3 | `R$ 50.459 | Qtd 3.500` | dax/atingimento.dax |
| Status Meta | T05 | M3 | Acima / Abaixo / Sem meta | dax/atingimento.dax |
