
-- Inserções para a tabela clients
INSERT INTO clients (Fname, Minit, Lname, CPF, Address) VALUES
('Maria', 'A', 'Silva', '12345678901', 'Rua das Flores, 123, Centro, São Paulo'),
('João', 'B', 'Oliveira', '98765432109', 'Avenida Paulista, 456, Bela Vista, São Paulo'),
('Ana', 'D', 'Souza', '11223344556', 'Rua da Bahia, 101, Higienópolis, São Paulo'),
('Pedro', 'E', 'Ferreira', '99887766554', 'Avenida Brigadeiro Faria Lima, 202, Pinheiros, SP'),
('Carla', 'G', 'Martins', '44556677889', 'Rua Estados Unidos, 567, Brooklin, São Paulo'),
('Rafael', 'H', 'Almeida', '77889900112', 'Avenida Morumbi, 789, Morumbi, São Paulo'),
('Sofia', 'J', 'Castro', '22334455667', 'Rua Haddock Lobo, 121, Cerqueira César, SP');

INSERT INTO clients (Fname, Minit, Lname, CNPJ, Address) VALUES
('Empresa', 'C', 'Ltda', '123456789012345', 'Rua Augusta, 789, Consolação, São Paulo'),
('Loja', 'F', 'de Roupas', '987654321000123', 'Rua Oscar Freire, 345, Jardins, São Paulo'),
('Editora', 'I', 'Abril', '456789012345678', 'Rua Bela Cintra, 901, Consolação, São Paulo');


-- Inserções para a tabela product
INSERT INTO product (Pname, classification_kids, category, avaliação, size) VALUES
('Camiseta Algodão', FALSE, 'Vestimenta', 4.5, 'M'),
('Calça Jeans', FALSE, 'Vestimenta', 4.3, '40'),
('Smartphone XYZ', FALSE, 'Eletrônico', 4.2, NULL),
('Notebook ABC', FALSE, 'Eletrônico', 4.6, NULL),
('Boneca de Pelúcia', TRUE, 'Brinquedos', 4.8, 'P'),
('Carrinho de Brinquedo', TRUE, 'Brinquedos', 4.9, 'M'),
('Feijão Carioca', FALSE, 'Alimentos', 4.0, NULL),
('Arroz Parboilizado', FALSE, 'Alimentos', 4.1, NULL),
('Mesa de Jantar', FALSE, 'Móveis', 4.7, NULL),
('Sofá de 3 Lugares', FALSE, 'Móveis', 4.5, NULL);


-- Inserções para a tabela orders
INSERT INTO orders (idOrderClient, orderStatus, orderDescription, sendValue) VALUES
(1, 'Confirmado', 'Compra de 2 camisetas e 1 smartphone', 20.00),
(2, 'Em processamento', 'Compra de 1 boneca e 1 mesa', 35.00),
(3, 'Cancelado', 'Compra de 5 pacotes de feijão', 15.00),
(4, 'Confirmado', 'Compra de 1 calça jeans e 1 notebook', 25.00),
(5, 'Em processamento', 'Compra de 2 carrinhos de brinquedo', 10.00),
(6, 'Cancelado', 'Compra de 10kg de arroz', 5.00),
(7, 'Confirmado', 'Compra de 1 sofá', 50.00),
(8, 'Em processamento', 'Compra de 3 camisetas', 15.00),
(9, 'Cancelado', 'Compra de 2 smartphones', 30.00),
(10, 'Confirmado', 'Compra de 1 mesa de jantar', 40.00);


-- Inserções para a tabela productStorage
INSERT INTO productStorage (storageLocation, quantity) VALUES
('Armazém A', 100),
('Armazém B', 50),
('Loja Física', 20),
('CD - Centro de Distribuição', 75),
('Armazém C', 120),
('Loja Online', 90),
('CD - Centro de Distribuição 2', 60),
('Armazém D', 80),
('Loja Física 2', 30),
('Armazém E', 110);


-- Inserções para a tabela supplier
INSERT INTO supplier (SocialName, CNPJ, contact) VALUES
('Indústria Têxtil ABC', '123456789012345', '11999999999'),
('Eletrônicos XYZ', '987654321098765', '11888888888'),
('Comércio de Brinquedos LTDA', '555555555555554', '11777777777'),
('Alimentos Naturais SA', '111111111111111', '11666666666'),
('Móveis Modernos LTDA', '222222222222222', '11555555555'),
('Confecções Silva', '333333333333333', '11444444444'),
('Tech Imports', '444444444444444', '11333333333'),
('Brinquedos Alegres', '555555555555555', '11222222222'),
('Sabores do Campo', '666666666666666', '11111111111'),
('Casa e Conforto', '777777777777777', '11000000000');

select * from seller;
-- Inserções para a tabela seller
-- Inserções para a tabela seller, respeitando a restrição chk_seller_type´
-- Vendedores Pessoa Física (CPF)
INSERT INTO seller (SocialName, AbstName, CPF, location, contact) VALUES
('Maria Silva', 'Loja da Maria', '12345678901', 'São Paulo', '11999999999'),
('João Oliveira', 'Loja do João', '98765432109', 'Rio de Janeiro', '21988888888'),
('Ana Souza', 'Loja da Ana', '11223344556', 'Minas Gerais', '31977777777'),
('Pedro Ferreira', 'Loja do Pedro', '99887766554', 'Bahia', '71966666666'),
('Carla Martins', 'Loja da Carla', '44556677889', 'Espírito Santo', '27955555555');

-- Vendedores Pessoa Jurídica (CNPJ)
INSERT INTO seller (SocialName, AbstName, CNPJ, location, contact) VALUES
('Distribuidora ABC Ltda', 'ABC Atacadista', '123456789012345', 'Minas Gerais', '31977777777'),
('Loja de Eletrônicos XYZ', 'XYZ Eletrônicos', '987654321000123', 'São Paulo', '11888888888'),
('Comércio de Móveis Silva', 'Silva Móveis', '456789012345678', 'Rio de Janeiro', '21777777777'),
('Indústria Têxtil Alfa', 'Alfa Confecções', '789012345678901', 'São Paulo', '11666666666'),
('Brinquedos Mágicos Ltda', 'Mundo dos Brinquedos', '345678901234567', 'Paraná', '41555555555');

-- Inserções para a tabela productSeller

INSERT INTO productSeller (idPseller, idPproduct, prodQuantity) VALUES
(1, 1, 100),  
(1, 2, 50),   
(2, 3, 75),   
(2, 4, 25),  
(3, 5, 120), 
(3, 6, 80),   
(4, 7, 150), 
(4, 8, 100),  
(5, 9, 60),   
(5, 10, 40),  
(6, 1, 90),  
(6, 2, 60),   
(7, 3, 110),  
(7, 4, 70),   
(10, 5, 85),   
(10, 6, 55),   
(9, 7, 130),  
(9, 8, 95),   
(10, 9, 70),  
(8, 10, 30); 

select * from product;
-- Inserções para a tabela productOrder 
INSERT INTO productOrder (idPOproduct, idPOorder, poQuantity, poStatus) VALUES
(1, 1, 2, 'Disponível'),   
(3, 1, 1, 'Disponível'),   
(5, 2, 1, 'Disponível'),   
(9, 2, 1, 'Disponível'),   
(7, 3, 5, 'Disponível'),   
(2, 4, 1, 'Disponível'),   
(4, 4, 1, 'Disponível'),   
(6, 5, 2, 'Disponível'),   
(8, 6, 10, 'Disponível'),  
(10, 7, 1, 'Disponível'),  
(1, 8, 3, 'Disponível'),   
(3, 9, 2, 'Disponível'),   
(9, 10, 1, 'Disponível');  

select * from product;
-- Inserções para a tabela storageLocation 
INSERT INTO storageLocation (idLproduct, idLstorage, location) VALUES
(1, 1, 'Corredor A - Prateleira 1'),    -- Camiseta Algodão no Armazém A
(2, 1, 'Corredor A - Prateleira 2'),    -- Calça Jeans no Armazém A
(3, 2, 'Prateleira 3 - Seção Eletrônicos'), -- Smartphone XYZ no Armazém B
(4, 2, 'Prateleira 4 - Seção Eletrônicos'), -- Notebook ABC no Armazém B
(5, 3, 'Estante 5 - Brinquedos'),       -- Boneca de Pelúcia na Loja Física
(6, 3, 'Estante 6 - Brinquedos'),       -- Carrinho de Brinquedo na Loja Física
(7, 1, 'Corredor B - Alimentos'),      -- Feijão Carioca no Armazém A
(8, 1, 'Corredor C - Alimentos'),      -- Arroz Parboilizado no Armazém A
(9, 2, 'Prateleira 1 - Móveis'),        -- Mesa de Jantar no Armazém B
(10, 2, 'Prateleira 2 - Móveis');       -- Sofá de 3 Lugares no Armazém B

select * from supplier;
-- Inserções para a tabela productSupplier 
INSERT INTO productSupplier (idPsSupplier, idPsProduct, quantity) VALUES
(1, 1, 500),  -- Indústria Têxtil ABC fornece 500 Camisetas Algodão
(1, 2, 300),  -- Indústria Têxtil ABC fornece 300 Calças Jeans
(2, 3, 400),  -- Eletrônicos XYZ fornece 400 Smartphones XYZ
(2, 4, 200),  -- Eletrônicos XYZ fornece 200 Notebooks ABC
(3, 5, 600),  -- Comércio de Brinquedos LTDA fornece 600 Bonecas de Pelúcia
(3, 6, 400),  -- Comércio de Brinquedos LTDA fornece 400 Carrinhos de Brinquedo
(4, 7, 700),  -- Alimentos Naturais SA fornece 700 Feijões Cariocas
(4, 8, 500),  -- Alimentos Naturais SA fornece 500 Arrozes Parboilizados
(5, 9, 300),  -- Móveis Modernos LTDA fornece 300 Mesas de Jantar
(5, 10, 200), -- Móveis Modernos LTDA fornece 200 Sofás de 3 Lugares
(6, 1, 200), -- Confecções Silva fornece 200 Camisetas de Algodão
(6, 2, 100), -- Confecções Silva fornece 100 Calças Jeans
(7, 3, 150), -- Tech Imports fornece 150 Smartphones XYZ
(7, 4, 100), -- Tech Imports fornece 100 Notebooks ABC
(8, 5, 300), -- Brinquedos Alegres fornece 300 Bonecas de Pelúcia
(8, 6, 200), -- Brinquedos Alegres fornece 200 Carrinhos de Brinquedo
(9, 7, 400), -- Sabores do Campo fornece 400 Feijões Cariocas
(9, 8, 300), -- Sabores do Campo fornece 300 Arrozes Parboilizados
(10, 9, 150),-- Casa e Conforto fornece 150 Mesas de Jantar
(10, 10,100);-- Casa e Conforto fornece 100 Sofás de 3 Lugares

select * from clients;
-- Inserções para a tabela payment (Exemplo - você precisará adaptar as IDs)
INSERT INTO payment (idPaymentClient, paymentType, paymentDetails) VALUES
(1, 'Cartão de Crédito', '**** **** **** 1234'),
(1, 'PayPal', 'maria.silva@email.com'),
(2, 'Boleto Bancário', '12345678901234567890'),
(3, 'Cartão de Crédito', '**** **** **** 5678'),
(4, 'Pix', 'chavepix123'),
(5, 'Cartão de Débito', '**** **** **** 9012'),
(6, 'PayPal', 'joao.oliveira@email.com'),
(7, 'Boleto Bancário', '98765432109876543210'),
(8, 'Cartão de Crédito', '**** **** **** 3456'),
(9, 'Pix', 'chavepix456'),
(10, 'Cartão de Débito', '**** **** **** 7890');

select * from orders;
-- Inserções para a tabela delivery (Exemplo - você precisará adaptar as IDs)
INSERT INTO delivery (idDeliveryOrder, deliveryStatus, trackingCode) VALUES
(1, 'Enviado', 'BR123456789BR'),  -- Pedido 1: Compra de 2 camisetas e 1 smartphone
(2, 'Em processamento', NULL),    -- Pedido 2: Compra de 1 boneca e 1 mesa
(3, 'Cancelado', NULL),         -- Pedido 3: Compra de 5 pacotes de feijão
(4, 'Enviado', 'BR987654321BR'),  -- Pedido 4: Compra de 1 calça jeans e 1 notebook
(5, 'Em processamento', NULL),    -- Pedido 5: Compra de 2 carrinhos de brinquedo
(6, 'Cancelado', NULL),         -- Pedido 6: Compra de 10kg de arroz
(7, 'Enviado', 'BR456789012BR'),  -- Pedido 7: Compra de 1 sofá
(8, 'Em processamento', NULL),    -- Pedido 8: Compra de 3 camisetas
(9, 'Cancelado', NULL),         -- Pedido 9: Compra de 2 smartphones
(10, 'Enviado', 'BR789012345BR'); -- Pedido 10: Compra de 1 mesa de jantar

use ecommerceRefinado;
SELECT Pname, category, avaliação
FROM product;

SELECT Pname, category, avaliação
FROM product
WHERE category = 'Eletrônico' AND avaliação > 4.0;

SELECT Pname, avaliação,round(((avaliação * 2)  * 10)) AS AvaliaçãoPercentual
FROM product;

SELECT Pname, category, avaliação
FROM product
ORDER BY avaliação DESC, Pname ASC;

SELECT category, COUNT(*) AS NumeroProdutos
FROM product
GROUP BY category
HAVING COUNT(*) > 2;

SELECT c.Fname, c.Lname, o.idOrder, o.orderStatus
FROM clients c
INNER JOIN orders o ON c.idClient = o.idOrderClient
WHERE o.orderStatus = 'Confirmado';

SELECT c.Fname, c.Lname, o.idOrder, p.Pname, po.poQuantity
FROM clients c
INNER JOIN orders o ON c.idClient = o.idOrderClient
INNER JOIN productOrder po ON o.idOrder = po.idPOorder
INNER JOIN product p ON po.idPOproduct = p.idProduct
WHERE o.orderStatus = 'Confirmado' AND p.category = 'Eletrônico'
ORDER BY c.Lname, o.idOrder;

-- Quantos pedidos foram feitos por cada cliente?
SELECT c.Fname, c.Lname, COUNT(o.idOrder) AS TotalPedidos
FROM clients c
LEFT JOIN orders o ON c.idClient = o.idOrderClient
GROUP BY c.idClient, c.Fname, c.Lname
ORDER BY TotalPedidos DESC;

-- Algum vendedor também é fornecedor?
SELECT s.SocialName AS NomeVendedor
FROM seller s
INNER JOIN supplier sp ON s.CNPJ = sp.CNPJ  -- Ou s.SocialName = sp.SocialName, se quiser comparar nomes
WHERE s.CNPJ = sp.CNPJ; -- Ou s.SocialName = sp.SocialName

-- Relação de produtos, fornecedores e estoques:
SELECT 
    p.Pname AS NomeProduto,
    s.SocialName AS NomeFornecedor,
    ps.quantity AS QuantidadeFornecida,
    sl.location AS LocalizacaoEstoque,
    st.quantity AS QuantidadeEmEstoque
FROM product p
INNER JOIN productSupplier ps ON p.idProduct = ps.idPsProduct
INNER JOIN supplier s ON ps.idPsSupplier = s.idSupplier
INNER JOIN storageLocation sl ON p.idProduct = sl.idLproduct
INNER JOIN productStorage st ON sl.idLstorage = st.idProdStorage
ORDER BY p.Pname;

-- Relação de nomes dos fornecedores e nomes dos produtos:
SELECT s.SocialName AS NomeFornecedor, p.Pname AS NomeProduto
FROM supplier s
INNER JOIN productSupplier ps ON s.idSupplier = ps.idPsSupplier
INNER JOIN product p ON ps.idPsProduct = p.idProduct
ORDER BY s.SocialName, p.Pname;

