-- FUNCIONARIO
INSERT INTO Funcionario (nome, cargo, telefone, data_admissao, ativo) VALUES
('Ana Silva',     'Vendedora',   '(62)99999-0001', '2023-01-10', 'S'),
('Carlos Souza',  'Vendedor',    '(62)99999-0002', '2022-11-05', 'S'),
('Marcos Lima',   'Gerente',     '(62)99999-0003', '2020-03-15', 'S');

-- CLIENTE
INSERT INTO Cliente (nome, cpf, telefone, email, data_cadastro, id_funcionario) VALUES
('João Pereira',   '11111111111', '(62)98888-0001', 'joao@email.com',  '2024-01-05', 1),
('Maria Oliveira', '22222222222', '(62)97777-0002', 'maria@email.com', '2024-02-10', 1),
('Lucas Santos',   '33333333333', '(62)96666-0003', 'lucas@email.com', '2024-03-20', 2);

-- PRODUTO
INSERT INTO Produto (nome, modelo, categoria, preco, quantidade_estoque, ativo) VALUES
('iPhone 14',      '128GB', 'Smartphone', 4500.00, 10, 'S'),
('Samsung S23',    '256GB', 'Smartphone', 4200.00,  8, 'S'),
('Fone Bluetooth', 'HB-100','Acessório',   200.00, 30, 'S'),
('Capinha silicone','IP14', 'Acessório',    50.00, 50, 'S');

-- ITEM_VENDA
INSERT INTO Item_Venda (id_venda, id_produto, preco_unitario, desconto_percentual, quantidade) VALUES
(1, 1, 4500.00,  0.00, 1),   -- João comprou 1 iPhone
(1, 4,   50.00, 10.00, 4),   -- João levou 4 capinhas com 10% de desconto
(2, 2, 4200.00,  5.00, 1),   -- Maria comprou 1 Samsung com 5% desconto
(3, 3,  200.00,  0.00, 1),   -- Lucas comprou 1 fone
(3, 4,   50.00,  0.00, 1);   -- e 1 capinha
