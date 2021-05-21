create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_produto(
id bigint auto_increment,
nome varchar (100),
indicacao varchar(150),
contraindicacao varchar(150),
primary key (id));


insert tb_produto (nome, indicacao, contraindicacao) values ("Bacina", "infecções da pele ", "não usar se tiver alergia à neomicina");
insert tb_produto (nome, indicacao, contraindicacao) values ("Ebastel", "alívio dos sintomas da rinite alérgica", "casos de hipersensibilidade");
insert tb_produto (nome, indicacao, contraindicacao) values ("Jofix", "tratar suas náuseas e vômitos","não tomar se for alérgico a qualquer componente.");
insert tb_produto (nome, indicacao, contraindicacao) values ("Sabril", "pacientes com epilepsias parciais resistentes", "não tomar se tiver alergia");
insert tb_produto (nome, indicacao, contraindicacao) values ("Tacroz", "Controlar surtos", "Não use se você for alérgico ao tacrolimo");

create table tb_categoria(
id bigint auto_increment,
preco varchar(150),
produto_id bigint,
primary key (id),
foreign key (Produto_id) references tb_produto(id)
);

insert tb_categoria (preco, produto_id) values ("8.79", 1);
insert tb_categoria (preco, produto_id) values ("42.95", 2);
insert tb_categoria (preco, produto_id) values ("17.49", 3);
insert tb_categoria (preco, produto_id) values ("315.37", 4);
insert tb_categoria (preco, produto_id) values ("87.57", 5);

select * from tb_produto;

select * from tb_categoria;

select * from tb_categoria where preco > 45.00;

select * from tb_produto inner join tb_categoria  on tb_produto.id = tb_categoria.produto_id where preco between 3 and 60;

select * from tb_produto where nome like "%B%";

select * from tb_produto inner join tb_categoria  on tb_produto.id = tb_categoria.produto_id;

select * from tb_categoria inner join tb_produto  on tb_produto.id = tb_categoria.produto_id where tb_produto.id = 1;
