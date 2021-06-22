create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria (
id bigint auto_increment,
descricao varchar(255) not null,
medicamento boolean not null,
outros boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, medicamento, outros) values ("Medicamentos", true, false);
insert into tb_categoria (descricao, medicamento, outros) values ("Beleza", false, true);
insert into tb_categoria (descricao, medicamento, outros) values ("Dermocosméticos", false, true);
insert into tb_categoria (descricao, medicamento, outros) values ("Cuidados Diários", false, true);
insert into tb_categoria (descricao, medicamento, outros) values ("Infantil", false, true);

select * from tb_categoria;

create table tb_produtos (
id bigint (5) auto_increment,
nome varchar (255) not null,
preco decimal(6,2) not null,
qtproduto int not null,
dtvalidade date,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Doril", 8.50, 100, "2021-06-25", 1);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Neosaldina", 5.50, 100, "2021-06-25", 1);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Paracetamol", 10.00, 200, "2021-06-25", 1);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Creme Anti-Idade", 60.00, 50, "2021-06-30", 2);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Esmalte", 10.00, 50, "2021-06-30", 2);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Esfoliante Facial", 30.00, 50, "2021-06-30", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Shampoo", 30.00, 100, "2021-06-30", 4);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Leite", 25.00, 150, "2021-06-25", 5);

select * from tb_produtos;

select * from tb_produtos where preco > 50.00;

select * from tb_produtos where preco between 3.00 and 60.00;

select * from tb_produtos where nome like "%b%";

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where tb_categoria.id = 1;