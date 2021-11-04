CREATE DATABASE anjoTech;

USE anjoTech;

CREATE TABLE cadastro_usuario (
CPF int primary key,
nome_usuario varchar(100),
email varchar (50),
data_mascimento date,
genero varchar(1),
logradouro varchar (100),
bairro varchar(50),
estado varchar(2),
CEP int,
senha varchar(10));

CREATE TABLE contato_emergencia (
ID_contato int primary key identity,
CPF_usuario int,
nome_contato varchar(100),
email varchar(50),
CONSTRAINT fk_CPF_usuario FOREIGN KEY (CPF_usuario) REFERENCES cadastro_usuario (CPF));

CREATE TABLE telefone_usuario (
CPF_usuario int,
CONSTRAINT fk_telefone_CPF_usuario FOREIGN KEY (CPF_usuario) REFERENCES cadastro_usuario (CPF),
telefone int,
tipo_telefone varchar(15));


CREATE TABLE telefone_emergencia (
ID_contato int,
CONSTRAINT fk_telefone_ID_contato FOREIGN KEY (ID_contato) REFERENCES contato_emergencia (ID_contato),
telefone int,
tipo_telefone varchar(15));

CREATE TABLE ocorrencia (
ID_ocorrencia int primary key identity,
data_ocorrencia date,
descricao varchar (150),
CPF int,
CONSTRAINT fk_ocorrencia_CPF_usuario FOREIGN KEY (CPF) REFERENCES cadastro_usuario (CPF));

select * from cadastro_usuario;
select * from contato_emergencia;
select * from telefone_usuario;
select * from telefone_emergencia;
select * from ocorrencia;