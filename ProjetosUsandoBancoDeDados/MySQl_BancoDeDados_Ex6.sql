create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint(5) auto_increment,
descricao varchar(255) not null,
nivel varchar(255) not null,
primary key (id)
);

insert tb_categoria (descricao, nivel) values ("Curso de Administração", "INICIANTE");
insert tb_categoria (descricao, nivel) values ("Curso de TI", "AVANÇADO");
insert tb_categoria (descricao, nivel) values ("Curso de gastronomia", "INICIANTE");
insert tb_categoria (descricao, nivel) values ("Curso de Direito", "INICIANTE");
insert tb_categoria (descricao, nivel) values ("Curso de Odontologia", "INICIANTE");




create table tb_curso (
id bigint(5) auto_increment,
nome varchar (255) not null,
preco decimal(5,2) not null,
tempo_de_curso varchar (255) not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert tb_curso (nome, preco, tempo_de_curso, categoria_id) values ("Curso de ADM",29.00,"60 Horas",1);
insert tb_curso (nome, preco, tempo_de_curso, categoria_id) values ("Curso de TI",68.00,"200 Horas",2);
insert tb_curso (nome, preco, tempo_de_curso, categoria_id) values ("Curso de gastronomia",150.00,"170 Horas",3);
insert tb_curso (nome, preco, tempo_de_curso, categoria_id) values ("Curso de Direito.",300.00,"200 Horas",4);
insert tb_curso (nome, preco, tempo_de_curso, categoria_id) values ("Curso de Odontologia",250.00,"180 Horas",5);


select * from tb_categoria;

select * from tb_curso;

select * from tb_curso where preco > 50;

select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id where preco between 3 and 60;

select * from tb_curso where nome like "%C%";

select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;

select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id where tb_categoria.id = 1;
