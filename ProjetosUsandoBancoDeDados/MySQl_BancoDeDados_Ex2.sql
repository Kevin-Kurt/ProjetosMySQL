create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_pizza(
id bigint auto_increment,
ingredientes varchar(150),
preco varchar(150),
primary key (id));

insert tb_pizza (ingredientes,preco) values ("mussarela, molho de tomate, calabresa", "36.90");
insert tb_pizza (ingredientes,preco) values ("queijo e goiabada", "40.00");
insert tb_pizza (ingredientes,preco) values ("queijo, tomate e manjericão", "38.80");
insert tb_pizza (ingredientes,preco) values ("Frango e catupiry", "42.00");
insert tb_pizza (ingredientes,preco) values ("presunto, ovo e mussarela", "50.00");

create table tb_categoria(
id bigint auto_increment,
nome varchar (100),
pizza_id bigint,
primary key (id),
foreign key (Pizza_id) references tb_pizza(id)
);

insert tb_categoria (nome, pizza_id) values ("Calabresa", 1);
insert tb_categoria (nome, pizza_id) values ("Romêu e Julieta", 2);
insert tb_categoria (nome, pizza_id) values ("Marguerita", 3);
insert tb_categoria (nome, pizza_id) values ("Frango com catupiry", 4);
insert tb_categoria (nome, pizza_id) values ("Portuguêsa", 5);

select * from tb_pizza;

select * from tb_categoria;

select * from tb_pizza where preco > 45.00;

select * from tb_pizza ;

select * from tb_categoria inner join tb_pizza  on tb_pizza.id = tb_categoria.pizza_id where preco between 29 and 60;

select * from tb_categoria where nome like "%C%";

select * from tb_categoria inner join tb_pizza  on tb_pizza.id = tb_categoria.pizza_id;

select * from tb_categoria inner join tb_pizza  on tb_pizza.id = tb_categoria.pizza_id where tb_pizza.id = 1;
