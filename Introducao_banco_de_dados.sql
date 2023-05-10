select @@version;

create database db_colaboradores;

use db_colaboradores;

create table tb_registro (
id bigint auto_increment,
 nome varchar(255) not null,
 idade int, 
 setor int,
 salario bigint,
 PRIMARY KEY (id)
);

insert into tb_registro (nome,idade,setor,salario) values ("Laura Machado Rossi",25,03,24000 );
insert into tb_registro (nome,idade,setor,salario) values ("Angel Rodrigo de Faria Lima",33, 04,1900);
insert into tb_registro (nome,idade,setor,salario) values ("Felipe Gomes de Andrade", 30,01, 1500 );
insert into tb_registro (nome,idade,setor,salario) values ("João Marques Mendes", 21, 06,2200 );
insert into tb_registro (nome,idade,setor,salario) values ( "Ana Vitória de Faria Bila",28,07,55000);


select * from tb_registro;

select * from tb_registro where salario >= 2000;

select * from tb_registro where salario < 2000;

update tb_registro set setor = 05 where id = 3;



