create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria (
id bigint auto_increment,
departamento varchar(255) not null,
disponivel boolean not null,
primary key (id)
);

insert into tb_categoria (departamento, disponivel) values ("Banheiros", true);
insert into tb_categoria (departamento, disponivel) values ("Cama, Mesa e Banho", true);
insert into tb_categoria (departamento, disponivel) values ("Cozinhas e Áreas de Serviço", true);
insert into tb_categoria (departamento, disponivel) values ("Decoração", true);
insert into tb_categoria (departamento, disponivel) values ("Jardim e Varanda", true);

select * from tb_categoria;

create table tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
descricao varchar (255) not null,
preco decimal(5,2) not null,
qtproduto int not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produtos (nome, descricao, preco, qtproduto, categoria_id) values ("Saboneteira Okino Sensea", "Saboneteira de Bancada", 32.90, 25, 1);
insert into tb_produtos (nome, descricao, preco, qtproduto, categoria_id) values ("Espelho Scandi Sensea", "Espelho para Maquiagem", 92.90, 50, 1);
insert into tb_produtos (nome, descricao, preco, qtproduto, categoria_id) values ("Cobertor Smaniotto", "Cobertor de Casal", 209.90, 100, 2);
insert into tb_produtos (nome, descricao, preco, qtproduto, categoria_id) values ("Travesseiro para Gestante", "Travesseiro de Corpo", 357.99, 100, 2);
insert into tb_produtos (nome, descricao, preco, qtproduto, categoria_id) values ("Sala de Jantar Chile", "Mesa e Cadeiras", 999.00, 10, 3);
insert into tb_produtos (nome, descricao, preco, qtproduto, categoria_id) values ("Armário Diana", "Armário de Cozinha", 369.00, 100, 3);
insert into tb_produtos (nome, descricao, preco, qtproduto, categoria_id) values ("Cortina Tony", "Cortina de Veludo", 349.90, 25, 4);
insert into tb_produtos (nome, descricao, preco, qtproduto, categoria_id) values ("Colhedor de Frutas", "Colhedor 150 cm", 65.90, 15, 5);

select * from tb_produtos;

select * from tb_produtos where preco > 50.00;

select * from tb_produtos where preco between 3 and 60;

select * from tb_produtos where nome like "%c%";

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where tb_categoria.id = 1;