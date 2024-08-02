create database equipamento;

use equipamento;

create table fornecedor(
	id int not null auto_increment, primary key (id),
    nome varchar(255) not null,
    telefone varchar(255) not null,
    produto varchar(255) not null,
    endereco varchar(255) not null
);

create table recurso(
	id int not null auto_increment, primary key (id),
	nome varchar(255) not null,
	setor varchar(255) not null,
	marca varchar(255) not null,
	fornecedor_fk int, foreign key(fornecedor_fk) references fornecedor(id)
);

