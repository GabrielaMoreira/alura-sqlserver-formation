/* CRIANDO E USANDO BASE DE DADOS */
CREATE DATABASE sucos_vendas;
USE sucos_vendas;

/* CRIANDO TABELAS */
CREATE TABLE tbCliente(

	CPF VARCHAR(11) PRIMARY KEY NOT NULL,
	NOME VARCHAR(150) NOT NULL,
	ENDERECO_1 VARCHAR(150),
	ENDERECO_2 VARCHAR(150),
	BAIRRO VARCHAR(50),
	CIDADE VARCHAR(50),
	ESTADO VARCHAR(2),
	CEP VARCHAR(8),
	DATA_NASCIMENTO DATE,
	IDADE SMALLINT,
	SEXO VARCHAR(1),
	LIMITE_CREDITO MONEY,
	VOLUME_MINIMO FLOAT,
	PRIMEIRA_COMPRA BIT,

);



CREATE TABLE tbVendedor(
	
	MATRICULA VARCHAR(5) PRIMARY KEY NOT NULL,
	NOME VARCHAR(150) NOT NULL,
	COMISSAO FLOAT,

);


CREATE TABLE tbProduto(

	CODIGO VARCHAR(10) PRIMARY KEY NOT NULL,
	NOME VARCHAR(150) NOT NULL,
	EMBALAGEM VARCHAR(50),
	TAMANHO VARCHAR(50),
	SABOR VARCHAR(50),
	PRECO_LISTA MONEY,

);

INSERT INTO tbProduto(CODIGO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA)
VALUES
('1040107',	'Light - 350 ml - Mel�ncia', 'Lata', '350 ml', 'Mel�ncia', 4.56),
('1037797',	'Clean - 2 Litros - Laranja', 'PET', '2 Litros', 'Laranja',	16.01),
('1000889',	'Sabor da Montanha - 700 ml - Uva', 'Garrafa', '700 ml', 'Uva',	6.31),
('1004327',	'Videira do Campo - 1,5 Litros - Mel�ncia', 'PET', '1,5 Litros', 'Mel�ncia', 19.51),
('1088126',	'Linha Citros - 1 Litro - Lim�o', 'PET', '1 Litro',	'Lim�o', 7.00)

SELECT * FROM tbProduto


INSERT INTO tbVendedor(MATRICULA, NOME, COMISSAO)
VALUES
('00235', 'M�rcio Almeida Silva', 0.08),
('00236', 'Cl�udia Morais', 0.08)

SELECT * FROM tbVendedor

INSERT INTO tbVendedor(MATRICULA, NOME, COMISSAO)
VALUES
('00237', 'Roberta Martins', 0.11),
('00238', 'Pericles Alves', 0.07)


ALTER TABLE tbVendedor
ADD DATA_ADMISSAO DATE;


ALTER TABLE tbVendedor
ADD DE_FERIAS BIT;


UPDATE tbVendedor
SET DATA_ADMISSAO = '2020-08-12',
DE_FERIAS = 1
WHERE MATRICULA = '00238';










