create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe (
id bigint auto_increment,
arena varchar (255) not null,
tropa varchar (255) not null,
primary key (id)
);

insert into tb_classe (arena, tropa) values ("Campo de treino", "Tanque");
insert into tb_classe (arena, tropa) values ("Campo de treino", "Corpo-a-corpo");
insert into tb_classe (arena, tropa) values ("Estádio Goblin", "Multi-unidade");
insert into tb_classe (arena, tropa) values ("Fosso dos Ossos", "Mini-tanque");
insert into tb_classe (arena, tropa) values ("Fosso dos Ossos", "Salpicadores");

select * from tb_classe;

create table tb_personagens (
id bigint auto_increment,
carta varchar (255) not null,
nivel int not null,
ataque int not null,
defesa int not null,
classe_id bigint not null,
primary key (id),
foreign key (classe_id) references tb_classe (id)
);

insert into tb_personagens (carta, nivel, ataque, defesa, classe_id) values ("Gigante", 5, 2500, 5000, 1);
insert into tb_personagens (carta, nivel, ataque, defesa, classe_id) values ("Prícipe", 6, 3000, 3000, 2);
insert into tb_personagens (carta, nivel, ataque, defesa, classe_id) values ("Goblins", 7, 1500, 1000, 3);
insert into tb_personagens (carta, nivel, ataque, defesa, classe_id) values ("Valquíria", 7, 3000, 2000, 4);
insert into tb_personagens (carta, nivel, ataque, defesa, classe_id) values ("Bruxa", 6, 2500, 1500, 5);
insert into tb_personagens (carta, nivel, ataque, defesa, classe_id) values ("Esqueleto Gigante", 8, 2500, 5000, 1);
insert into tb_personagens (carta, nivel, ataque, defesa, classe_id) values ("Dragão Bebê", 4, 2000, 4000, 5);
insert into tb_personagens (carta, nivel, ataque, defesa, classe_id) values ("Bárbaros", 5, 500, 500, 3);

select * from tb_personagens;

update tb_personagens set carta = "Príncipe" where id = 2;

select * from tb_personagens where ataque > 2000;

select * from tb_personagens where defesa between 1000 and 2000;

select * from tb_personagens where carta like "%c%";

select * from tb_personagens inner join tb_classe on tb_classe.id = tb_personagens.classe_id;

select * from tb_personagens inner join tb_classe on tb_classe.id = tb_personagens.classe_id where tb_classe.id = 3;