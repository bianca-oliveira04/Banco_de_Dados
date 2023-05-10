create database db_registro_escolar;

use db_registro_escolar;

create table tb_estudantes (
id bigint auto_increment,
nome varchar(255) not null,
serie int,
nota decimal not null,
repetente boolean,
 PRIMARY KEY (id)

);

insert into tb_estudantes (nome,serie,nota,repetente) values ("Iago Martins",8,7.5,false);
insert into tb_estudantes (nome,serie,nota,repetente) values ("Mariana Torres",3,8.7,true);
insert into tb_estudantes (nome,serie,nota,repetente) values ("João Maques Rodrigues",1,5.9,true);
insert into tb_estudantes (nome,serie,nota,repetente) values ("Juliana Oliveira",7,3.1,false);
insert into tb_estudantes (nome,serie,nota,repetente) values ("Rafaela Silva",2,7.8,true);
insert into tb_estudantes (nome,serie,nota,repetente) values ("Adam Gomes",4,9.6,false);
insert into tb_estudantes (nome,serie,nota,repetente) values ("Maya de Melo Tomonari",6,10.0,false);
insert into tb_estudantes (nome,serie,nota,repetente) values ("Carlos Marcondes Macena",8,10.0,false);

select * from tb_estudantes;

select * from tb_estudantes where nota >= 7.0;

select * from tb_estudantes where nota < 7.0;

update tb_restudantes set nota = 8.0 where id = 5;


