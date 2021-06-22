create database db_pizzarialegal;

use db_pizzarialegal;

create table tb_categoria (
id bigint auto_increment,
tipo varchar (255) not null,
promocao boolean not null,
primary key (id)
);

insert into tb_categoria (tipo, promocao) values ("Bebida", false);
insert into tb_categoria (tipo, promocao) values ("Doce", false);
insert into tb_categoria (tipo, promocao) values ("Esfiha", true);
insert into tb_categoria (tipo, promocao) values ("Queijo", true);
insert into tb_categoria (tipo, promocao) values ("Vegetal", true);

select * from tb_categoria;

create table tb_pizza (
id bigint auto_increment,
nome varchar (255) not null,
preco decimal(8,2) not null,
qtproduto varchar (255) not null,
tempo_de_espera varchar (255) not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_pizza (nome, preco, qtproduto, tempo_de_espera, categoria_id) values ("Alho", 58.50, "8 pedaços", "35 minutos", 4);
insert into tb_pizza (nome, preco, qtproduto, tempo_de_espera, categoria_id) values ("Marguerita", 52.00, "8 pedaços", "35 minutos", 4);
insert into tb_pizza (nome, preco, qtproduto, tempo_de_espera, categoria_id) values ("Milho", 58.00, "8 pedaços", "35 minutos", 4);
insert into tb_pizza (nome, preco, qtproduto, tempo_de_espera, categoria_id) values ("Rúcula", 54.00, "8 pedaços", "40 minutos", 5);
insert into tb_pizza (nome, preco, qtproduto, tempo_de_espera, categoria_id) values ("Nutella com Morango", 70.00, "8 pedaços", "60 minutos", 2);
insert into tb_pizza (nome, preco, qtproduto, tempo_de_espera, categoria_id) values ("Prestígio", 49.00, "8 pedaços", "60 minutos", 2);
insert into tb_pizza (nome, preco, qtproduto, tempo_de_espera, categoria_id) values ("Combo de Queijo", 35.00, "10 Esfihas", "30 minutos", 3);
insert into tb_pizza (nome, preco, qtproduto, tempo_de_espera, categoria_id) values ("Guaraná", 5.99, "2.5 Litros", "10 minutos", 1);

select * from tb_pizza;

select * from tb_pizza where preco > 45.00;

select * from tb_pizza where preco between 29 and 60;

select * from tb_pizza where nome like "%c%";

select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where tb_categoria.id = 4;