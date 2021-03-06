USE MASTER;
DROP DATABASE prova
CREATE DATABASE prova;
GO

USE prova;
CREATE TABLE clientes(
	pk_idCliente INT PRIMARY KEY IDENTITY(1,1),
	nome NVARCHAR(50) NOT NULL,
	cpf NVARCHAR(11) UNIQUE,
	sexo NVARCHAR(1),
	anoMatricula INT,
	rg NVARCHAR(11),
	endereco NVARCHAR(80)
)

CREATE TABLE celulares(
	pk_idCelular INT PRIMARY KEY IDENTITY(1,1),
	nome NVARCHAR(30),
	marca NVARCHAR(30),
	modelo NVARCHAR(30),
	versao NVARCHAR(30)
)
CREATE TABLE ClienteCelular(
	pk_idRelacao INT PRIMARY KEY IDENTITY(1,1),
	fk_idCliente INT REFERENCES clientes(pk_idCliente),
	fk_idCelular INT REFERENCES celulares(pk_idCelular)
)/*
select celulares.nome from ClienteCelular join celulares on ClienteCelular.fk_idCelular = celulares.pk_idCelular join clientes on clientes.pk_idCliente = ClienteCelular.fk_idCliente
select * from clientes
select ClienteCelular.pk_idRelacao, celulares.nome,celulares.pk_idCelular, clientes.nome from ClienteCelular join celulares on ClienteCelular.fk_idCelular = 3 join clientes on ClienteCelular.fk_idCliente = 5 */