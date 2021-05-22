create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint(5) auto_increment,
descricao varchar(255) not null,
primary key (id)
);

insert tb_categoria (descricao) values ("zero calorias, sem retrogosto, com stevia red a");
insert tb_categoria (descricao) values ("ZERO AÇÚCAR");
insert tb_categoria (descricao) values ("YOGURTE A BASE DE PLANTAS");
insert tb_categoria (descricao) values ("creme dental a base de carvão ativo");
insert tb_categoria (descricao) values ("ingredientes do óleo: madeira, cítrios  e flores");




create table tb_produtos (
id bigint(5) auto_increment,
nome varchar (255) not null,
preco decimal(5,2) not null,
quantidade varchar (255) not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert tb_produtos (nome, preco, quantidade, categoria_id) values ("Adoçante",40.00,"100g",1);
insert tb_produtos (nome, preco, quantidade, categoria_id) values ("CREME DE AVELÃ & CACAU",52.50,"300g",2);
insert tb_produtos (nome, preco, quantidade, categoria_id) values ("COCOYOGURT",14.00,"30g",3);
insert tb_produtos (nome, preco, quantidade, categoria_id) values ("CREME DENTAL BLACK",20.00,"120g",4);
insert tb_produtos (nome, preco, quantidade, categoria_id) values ("RELAX BLEND",20.00,"15 ml",5);


select * from tb_categoria;

select * from tb_produtos;

select * from tb_produtos where preco > 50;

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where preco between 3 and 60;

select * from tb_produtos where nome like "%C%";

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where tb_categoria.id = 1;
