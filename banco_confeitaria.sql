-- Criação da tabela de produtos
CREATE TABLE produtos (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    preco DECIMAL(10, 2) NOT NULL
);

-- Criação da tabela de pedidos
CREATE TABLE pedidos (
    id INTEGER PRIMARY KEY,
    id_produto INTEGER,
    nome_cliente TEXT NOT NULL,
    data_pedido DATE NOT NULL,
    FOREIGN KEY (id_produto) REFERENCES produtos(id)
);

-- Inserindo registros na tabela produtos
INSERT INTO produtos (id, nome, preco) VALUES (1, 'Bolo de Festa', 80.00);
INSERT INTO produtos (id, nome, preco) VALUES (2, 'Bolo no Pote', 12.00);
INSERT INTO produtos (id, nome, preco) VALUES (3, 'Naked Cake', 90.00);

-- Inserindo registros na tabela pedidos
INSERT INTO pedidos (id, id_produto, nome_cliente, data_pedido) VALUES (1, 1, 'Ana Souza', '2025-07-05');
INSERT INTO pedidos (id, id_produto, nome_cliente, data_pedido) VALUES (2, 2, 'Carlos Lima', '2025-07-06');
INSERT INTO pedidos (id, id_produto, nome_cliente, data_pedido) VALUES (3, 3, 'Mariana Alves', '2025-07-06');
