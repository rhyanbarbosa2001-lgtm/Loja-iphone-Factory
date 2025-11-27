-- FUNCIONARIO
CREATE TABLE Funcionario (
    id_funcionario INTEGER PRIMARY KEY AUTOINCREMENT,
    nome           VARCHAR(100) NOT NULL,
    cargo          VARCHAR(50),
    telefone       CHAR(15),
    data_admissao  DATE,
    ativo          CHAR(1)      -- 'S' ou 'N'
);

-- CLIENTE
CREATE TABLE Cliente (
    id_cliente     INTEGER PRIMARY KEY AUTOINCREMENT,
    nome           VARCHAR(100) NOT NULL,
    cpf            CHAR(11)     NOT NULL,
    telefone       CHAR(15),
    email          VARCHAR(100),
    data_cadastro  DATE         NOT NULL,
    id_funcionario INTEGER      NOT NULL,
    FOREIGN KEY (id_funcionario) REFERENCES Funcionario (id_funcionario)
);

-- PRODUTO
CREATE TABLE Produto (
    id_produto        INTEGER PRIMARY KEY AUTOINCREMENT,
    nome              VARCHAR(100) NOT NULL,
    modelo            VARCHAR(50),
    categoria         VARCHAR(50),
    preco             DECIMAL(10,2) NOT NULL,
    quantidade_estoque INT NOT NULL,
    ativo             CHAR(1)      -- 'S' ou 'N'
);

-- VENDA
CREATE TABLE Venda (
    id_venda        INTEGER PRIMARY KEY AUTOINCREMENT,
    data_venda      DATE        NOT NULL,
    hora_venda      TIME        NOT NULL,
    valor_total     DECIMAL(10,2) NOT NULL,
    forma_pagamento VARCHAR(20),
    id_cliente      INTEGER     NOT NULL,
    id_funcionario  INTEGER     NOT NULL,
    FOREIGN KEY (id_cliente)     REFERENCES Cliente (id_cliente),
    FOREIGN KEY (id_funcionario) REFERENCES Funcionario (id_funcionario)
);

-- ITEM_VENDA (tabela associativa)
CREATE TABLE Item_Venda (
    id_item_venda       INTEGER PRIMARY KEY AUTOINCREMENT,
    id_venda            INTEGER NOT NULL,
    id_produto          INTEGER NOT NULL,
    preco_unitario      DECIMAL(10,2) NOT NULL,
    desconto_percentual DECIMAL(5,2),
    quantidade          INTEGER NOT NULL,
    FOREIGN KEY (id_venda)   REFERENCES Venda (id_venda),
    FOREIGN KEY (id_produto) REFERENCES Produto (id_produto)
);