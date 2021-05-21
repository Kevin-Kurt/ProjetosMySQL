create database db_commerce;
use db_commerce;

create table tb_produtos (id bigint(5) auto_increment,
nome varchar(255) not null,
codigo int not null,
segmento varchar(255) not null,
preco decimal not null,
primary key(id));

insert into tb_produtos (nome, codigo, segmento, preco) values ("Geladeira", 43564, "Eletrodomésticos", 12000);
insert into tb_produtos (nome, codigo, segmento, preco) values ("Arroz", 65376, "Alimentício", 12);
insert into tb_produtos (nome, codigo, segmento, preco) values ("rádio", 84573, "Eletromicos", 1500);
insert into tb_produtos (nome, codigo, segmento, preco) values ("goiaba", 68384, "Alimentício", 3);
insert into tb_produtos (nome, codigo, segmento, preco) values ("camisa", 57906, "Roupa", 25);
insert into tb_produtos (nome, codigo, segmento, preco) values ("calça", 85734, "Roupa", 35);
insert into tb_produtos (nome, codigo, segmento, preco) values ("Fogão", 86583, "Eletrodomésticos", 6000);
insert into tb_produtos (nome, codigo, segmento, preco) values ("celular", 76485, "Eletromicos", 1300);

select * from tb_produtos where preco > 500;
select * from tb_produtos where preco < 500;
