create database db_curso_da_minha_vida;

use db_curso_da_minha_vida;

create table tb_categoria (
id bigint auto_increment,
area varchar (255) not null,
inscricoes_abertas boolean not null,
primary key (id)
);

insert into tb_categoria (area, inscricoes_abertas) values ("Artes", true);
insert into tb_categoria (area, inscricoes_abertas) values ("Exatas", true);
insert into tb_categoria (area, inscricoes_abertas) values ("Humanas", true);
insert into tb_categoria (area, inscricoes_abertas) values ("Livres", true);
insert into tb_categoria (area, inscricoes_abertas) values ("Tecnologia", true);

select * from tb_categoria;

create table tb_cursos (
id bigint auto_increment,
nome varchar (255) not null,
preco decimal(6,2) not null,
duracao varchar (255) not null,
modalidade varchar (255) not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_cursos (nome, preco, duracao, modalidade, categoria_id) values ("Artes Visuais", 8.500, "4 anos", "Presencial", 1);
insert into tb_cursos (nome, preco, duracao, modalidade, categoria_id) values ("Física", 7.500, "4 anos", "Presencial", 2);
insert into tb_cursos (nome, preco, duracao, modalidade, categoria_id) values ("Química", 8.000, "4 anos", "Presencial", 2);
insert into tb_cursos (nome, preco, duracao, modalidade, categoria_id) values ("Letras", 6.000, "4 anos", "Presencial", 3);
insert into tb_cursos (nome, preco, duracao, modalidade, categoria_id) values ("Excel Avançado", 200, "40 horas", "EAD", 4);
insert into tb_cursos (nome, preco, duracao, modalidade, categoria_id) values ("Análise e Desenvolvimento de Sistemas", 5.000, "2 anos e meio", "EAD", 5);
insert into tb_cursos (nome, preco, duracao, modalidade, categoria_id) values ("Defesa Cibernética", 5.000, "2 anos e meio", "EAD", 5);
insert into tb_cursos (nome, preco, duracao, modalidade, categoria_id) values ("Segurança da Informação", 5.000, "2 anos e meio", "EAD", 5);

select * from tb_cursos;

select * from tb_cursos where preco > 50.00;

select * from tb_cursos where preco between 3 and 60;

select * from tb_cursos where nome like "%j%";

select * from tb_cursos inner join tb_categoria on tb_categoria.id = tb_cursos.categoria_id;

select * from tb_cursos inner join tb_categoria on tb_categoria.id = tb_cursos.categoria_id where tb_categoria.id = 5;