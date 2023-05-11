SELECT @@VERSION;

create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes(
id bigint auto_increment,
    tipo varchar(255) not null,
    ataques int,
    distanciacombate varchar(255) not null,
    PRIMARY KEY (id)
);

create table tb_personagens(
id bigint auto_increment,
nome varchar(255) not null,
raca varchar(255) not null,
ataque bigint not null,
defesa bigint not null,
sexo varchar(255) not null,
classe_id bigint not null,
PRIMARY KEY (id),
foreign key (classe_id) references tb_classes(id)
);

ALTER TABLE tb_personagens ADD CONSTRAINT fk_id_classes FOREIGN KEY (classe_id) REFERENCES tb_classes (id) ;


INSERT INTO tb_classes(tipo,ataques,distanciacombate ) VALUES("Barbaro",5,"curta distância");
INSERT INTO tb_classes(tipo,ataques,distanciacombate) VALUES("Arqueiro",5,"longa distância");
INSERT INTO tb_classes(tipo,ataques,distanciacombate) VALUES("Mago",5,"curta e média distância");
INSERT INTO tb_classes(tipo,ataques,distanciacombate) VALUES("Clérigo",4,"longa distância");
INSERT INTO tb_classes(tipo,ataques,distanciacombate) VALUES("Bardo",3,"média distância");

INSERT INTO tb_personagens (nome,raca,ataque,defesa,sexo,classe_id) VALUES("Momoka","Elfo",2800,1000,"Masculino", 3);
INSERT INTO tb_personagens (nome,raca,ataque,defesa,sexo,classe_id) VALUES("Bianquita","Orc",3000,1900,"Feminino", 1);
INSERT INTO tb_personagens (nome,raca,ataque,defesa,sexo,classe_id) VALUES("Dark Shadow","humano",2500,980,"Masculino", 2);
INSERT INTO tb_personagens (nome,raca,ataque,defesa,sexo,classe_id) VALUES("Kitsunezita","Elfo",2800,1000,"Feminino", 3);
INSERT INTO tb_personagens (nome,raca,ataque,defesa,sexo,classe_id) VALUES("Pink Diamond","Goblin",700,900,"Feminino", 5);
INSERT INTO tb_personagens (nome,raca,ataque,defesa,sexo,classe_id) VALUES("MasterBoss","Minotauro", 900,3000,"Masculino", 4);
INSERT INTO tb_personagens (nome,raca,ataque,defesa,sexo,classe_id) VALUES("Gingerbread","Anâo",3000,1900,"Masculino", 1);
INSERT INTO tb_personagens (nome,raca,ataque,defesa,sexo,classe_id) VALUES("SadCrown","Gnomo", 900,3000,"Feminino", 4);

select * from tb_personagens;

select * from tb_personagens where ataque >= 2000;

select * from tb_personagens where defesa >=1000 and defesa <=2000;

SELECT * FROM tb_personagens WHERE nome LIKE "M%";

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id WHERE tb_classes.tipo = "Barbaro";









