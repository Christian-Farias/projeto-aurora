# ADR 001 — Valor Bruto vem de `itens_venda`

**Status:** aceita
**Contexto:** o desconto não é rateado por item.
**Decisão:** Valor Líquido = soma em `vendas`; Valor Bruto dos Itens = soma de `valor_total` em `itens_venda`. Cortes 1–5 usam líquido; cortes 6–7 usam bruto.
**Consequência:** Q5 usa Valor Bruto.
