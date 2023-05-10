SELECT @@VERSION;

create database db_loja_de_roupas;

use db_loja_de_roupas;

create table tb_produto (
id bigint auto_increment,
nome varchar(255) not null,
tipo varchar(255) not null,
quantidade int,
preco decimal not null,
 PRIMARY KEY (id)
);

insert into tb_produto (nome,tipo,quantidade,preco) values ("camiseta","feminina adulta",350,43.50);
insert into tb_produto (nome,tipo,quantidade,preco) values ("bermuda jeans","infantil masculino",400, 38.90 );
insert into tb_produto (nome,tipo,quantidade,preco) values ("roupa de banho","feminina adulta", 800,39.99);
insert into tb_produto (nome,tipo,quantidade,preco) values ("vestdo","feminino infantil", 299, 44.99);
insert into tb_produto (nome,tipo,quantidade,preco) values ("vestido","feminino adulto",348,89.99);
insert into tb_produto (nome,tipo,quantidade,preco) values ("boné","masculino adulto",640,34.99);
insert into tb_produto (nome,tipo,quantidade,preco) values ("camiseta", "masculino adulto",555,59.90);
insert into tb_produto (nome,tipo,quantidade,preco) values ("short jeans","feminino adulto",765,62.90);

select * from tb_produto;

select * from tb_produtos where quantidade >= 500;

select * from tb_produtos where quantidade < 500;

update tb_registro set quantidade = 658 where id = 3;


