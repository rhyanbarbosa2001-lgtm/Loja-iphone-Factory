-- 1) Listar as vendas com nome do cliente e funcionário (JOIN)
SELECT v.id_venda,
       v.data_venda,
       v.valor_total,
       c.nome AS cliente,
       f.nome AS funcionario
FROM Venda v
JOIN Cliente    c ON v.id_cliente = c.id_cliente
JOIN Funcionario f ON v.id_funcionario = f.id_funcionario
ORDER BY v.data_venda DESC;

-- 2) Produtos ativos ordenados do mais caro para o mais barato (ORDER BY, WHERE, LIMIT)
SELECT nome, categoria, preco
FROM Produto
WHERE ativo = 'S'
ORDER BY preco DESC
LIMIT 5;

-- 3) Total de itens em cada venda (JOIN + GROUP BY)
SELECT v.id_venda,
       c.nome AS cliente,
       SUM(iv.quantidade) AS total_itens
FROM Venda v
JOIN Cliente c    ON v.id_cliente = c.id_cliente
JOIN Item_Venda iv ON v.id_venda = iv.id_venda
GROUP BY v.id_venda, c.nome
ORDER BY total_itens DESC;

-- 4) Total de vendas por funcionário (JOIN + GROUP BY)
SELECT f.nome AS funcionario,
       COUNT(v.id_venda) AS qtde_vendas,
       SUM(v.valor_total) AS soma_vendas
FROM Funcionario f
LEFT JOIN Venda v ON f.id_funcionario = v.id_funcionario
GROUP BY f.id_funcionario, f.nome
ORDER BY soma_vendas DESC;

-- 5) Vendas pagas no Pix acima de 3000 (WHERE)
SELECT v.id_venda, v.data_venda, v.valor_total, c.nome AS cliente
FROM Venda v
JOIN Cliente c ON v.id_cliente = c.id_cliente
WHERE v.forma_pagamento = 'pix'
  AND v.valor_total > 3500;