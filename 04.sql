create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria (
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, ativo) values ("Amarelas", true);
insert into tb_categoria (descricao, ativo) values ("Cítricas", true);
insert into tb_categoria (descricao, ativo) values ("Não Cítricas", true);
insert into tb_categoria (descricao, ativo) values ("Outras", true);
insert into tb_categoria (descricao, ativo) values ("Vermelhas", true);

select * from tb_categoria;

create table tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
preco decimal(6,2) not null,
qtproduto int not null,
dtvalidade date,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produtos (nome, preco, qtproduto, dtvalidade, categoria_id) values ("Abacaxi", 10.00, 20, "2021-10-09", 1);
insert into tb_produtos (nome, preco, qtproduto, dtvalidade, categoria_id) values ("Banana", 5.00, 80, "2021-10-10", 1);
insert into tb_produtos (nome, preco, qtproduto, dtvalidade, categoria_id) values ("Maracujá", 8.00, 40, "2021-10-11", 1);
insert into tb_produtos (nome, preco, qtproduto, dtvalidade, categoria_id) values ("Laranja", 6.00, 60, "2021-10-12", 2);
insert into tb_produtos (nome, preco, qtproduto, dtvalidade, categoria_id) values ("Limão", 10.50, 60, "2021-10-13", 2);
insert into tb_produtos (nome, preco, qtproduto, dtvalidade, categoria_id) values ("Abacate", 55.00, 5, "2021-10-14", 3);
insert into tb_produtos (nome, preco, qtproduto, dtvalidade, categoria_id) values ("Coco", 15.00, 25, "2021-10-15", 4);
insert into tb_produtos (nome, preco, qtproduto, dtvalidade, categoria_id) values ("Morango", 20.00, 10, "2021-10-16", 5);

select * from tb_produtos;

select * from tb_produtos where preco > 50.00;

select * from tb_produtos where preco between 3 and 60;

select * from tb_produtos where nome like "%c%";

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where tb_categoria.id = 1;