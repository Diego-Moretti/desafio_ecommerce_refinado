# Projeto Desafio DIO E-commerce - Banco de Dados

Este repositório contém o script SQL para a criação de um banco de dados de e-commerce com fins educacionais, juntamente com exemplos de consultas SQL. O objetivo principal é demonstrar os conceitos de modelagem de dados, criação de tabelas, relacionamentos entre entidades e operações básicas de manipulação de dados em um contexto de e-commerce.

## Descrição do Projeto

Este projeto educacional visa fornecer um exemplo prático de como modelar um banco de dados para um sistema de e-commerce. O modelo inclui entidades como clientes, produtos, pedidos, fornecedores, vendedores, pagamentos e entregas, além dos relacionamentos entre elas. O script SQL incluído neste repositório permite criar a estrutura do banco de dados em um servidor MySQL.

## Componentes do Banco de Dados

O banco de dados é composto pelas seguintes tabelas:

*   **clients:** Armazena informações sobre os clientes, como nome, CPF/CNPJ e endereço.
    *   `idClient`: Identificador único do cliente (chave primária).
    *   `Fname`, `Minit`, `Lname`: Nome do cliente.
    *   `CPF`, `CNPJ`: CPF ou CNPJ do cliente (apenas um deve ser preenchido).
    *   `Address`: Endereço do cliente.
*   **product:** Armazena informações sobre os produtos, como nome, categoria, avaliação e tamanho.
    *   `idProduct`: Identificador único do produto (chave primária).
    *   `Pname`: Nome do produto.
    *   `classification_kids`: Indica se o produto é para crianças.
    *   `category`: Categoria do produto (eletrônico, vestuário, brinquedos, alimentos, móveis).
    *   `avaliação`: Avaliação do produto.
    *   `size`: Tamanho do produto.
*   **orders:** Armazena informações sobre os pedidos, como cliente, status e descrição.
    *   `idOrder`: Identificador único do pedido (chave primária).
    *   `idOrderClient`: Chave estrangeira referenciando a tabela `clients`.
    *   `orderStatus`: Status do pedido (cancelado, confirmado, em processamento).
    *   `orderDescription`: Descrição do pedido.
    *   `sendValue`: Valor do frete.
*   **productStorage:** Armazena informações sobre o estoque de produtos, como local de armazenamento e quantidade.
    *   `idProdStorage`: Identificador único do local de armazenamento (chave primária).
    *   `storageLocation`: Local de armazenamento.
    *   `quantity`: Quantidade em estoque.
*   **supplier:** Armazena informações sobre os fornecedores, como nome e CNPJ.
    *   `idSupplier`: Identificador único do fornecedor (chave primária).
    *   `SocialName`: Nome do fornecedor.
    *   `CNPJ`: CNPJ do fornecedor.
    *   `contact`: Contato do fornecedor.
*   **seller:** Armazena informações sobre os vendedores, como nome, CPF/CNPJ e local.
    *   `idSeller`: Identificador único do vendedor (chave primária).
    *   `SocialName`: Nome do vendedor.
    *   `AbstName`: Nome abreviado do vendedor.
    *   `CNPJ`, `CPF`: CNPJ ou CPF do vendedor (apenas um deve ser preenchido).
    *   `location`: Local do vendedor.
    *   `contact`: Contato do vendedor.
*   **productSeller:** Tabela de relacionamento muitos-para-muitos entre produtos e vendedores.
    *   `idPseller`: Chave estrangeira referenciando a tabela `seller`.
    *   `idPproduct`: Chave estrangeira referenciando a tabela `product`.
    *   `prodQuantity`: Quantidade de produtos vendida pelo vendedor.
*   **productOrder:** Tabela de relacionamento muitos-para-muitos entre produtos e pedidos.
    *   `idPOproduct`: Chave estrangeira referenciando a tabela `product`.
    *   `idPOorder`: Chave estrangeira referenciando a tabela `orders`.
    *   `poQuantity`: Quantidade de produtos no pedido.
    *   `poStatus`: Status do produto no pedido.
*   **storageLocation:** Tabela de relacionamento muitos-para-muitos entre produtos e locais de armazenamento.
    *   `idLproduct`: Chave estrangeira referenciando a tabela `product`.
    *   `idLstorage`: Chave estrangeira referenciando a tabela `productStorage`.
    *   `location`: Localização específica do produto no armazenamento.
*   **productSupplier:** Tabela de relacionamento muitos-para-muitos entre produtos e fornecedores.
    *   `idPsSupplier`: Chave estrangeira referenciando a tabela `supplier`.
    *   `idPsProduct`: Chave estrangeira referenciando a tabela `product`.
    *   `quantity`: Quantidade de produtos fornecida pelo fornecedor.
*   **payment:** Armazena informações sobre os pagamentos, como tipo e detalhes.
    *   `idPayment`: Identificador único do pagamento (chave primária).
    *   `idPaymentClient`: Chave estrangeira referenciando a tabela `clients`.
    *   `paymentType`: Tipo de pagamento.
    *   `paymentDetails`: Detalhes do pagamento.
*   **delivery:** Armazena informações sobre as entregas, como status e código de rastreamento.
    *   `idDelivery`: Identificador único da entrega (chave primária).
    *   `idDeliveryOrder`: Chave estrangeira referenciando a tabela `orders`.
    *   `deliveryStatus`: Status da entrega (pendente, enviado, entregue, cancelado).
    *   `trackingCode`: Código de rastreamento da entrega.

## Consultas SQL de Exemplo

O arquivo `queries.sql` contém exemplos de consultas SQL que demonstram como realizar diversas operações, como:

*   Seleção de dados com `SELECT`.
*   Filtragem de dados com `WHERE`.
*   Criação de atributos derivados.
*   Ordenação de dados com `ORDER BY`.
*   Agrupamento de dados com `GROUP BY`.
*   Filtragem de grupos com `HAVING`.
*   Junções entre tabelas (`JOIN`).

## Tecnologias Utilizadas

*   MySQL

## Contribuição

Este projeto é educacional e demonstra os conceitos básicos de modelagem de dados e SQL. Sinta-se à vontade para clonar, modificar e usar este projeto para seus estudos.

## Status do Projeto

[Concluído]

## Informações Adicionais

*   Sinta-se à vontade para adaptar este projeto para suas necessidades e aprender com ele.
*   Este README fornece uma visão geral do projeto. Explore o script SQL e os exemplos de consultas para um entendimento mais profundo.
