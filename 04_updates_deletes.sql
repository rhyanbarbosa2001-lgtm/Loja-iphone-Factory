-- UPDATES
-- 1) Dar baixa no estoque de um produto
UPDATE Produto
SET quantidade_estoque = quantidade_estoque - 2
WHERE id_produto = 1;

-- 2) Atualizar telefone de um cliente
UPDATE Cliente
SET telefone = '(62)95555-0004'
WHERE id_cliente = 3;

-- 3) Inativar um funcionário
UPDATE Funcionario
SET ativo = 'N'
WHERE id_funcionario = 3;

-- 1) Apagar um item específico de venda
DELETE FROM Item_Venda
WHERE id_item_venda = 5;

-- 2) Apagar todos os itens de uma venda antes de apagar a venda
DELETE FROM Item_Venda
WHERE id_venda = 2;

DELETE FROM Venda
WHERE id_venda = 2;

-- 3) Apagar um produto que não tem mais vínculo em item_venda
DELETE FROM Produto
WHERE id_produto = 4;