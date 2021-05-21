create database db_rh;
use db_rh;
create table tb_funcionarios(
id bigint auto_increment,
nome varchar(30) not null,
cidade varchar(70) not null,
salario decimal,
telefone varchar(20),
email varchar(70),
primary key(id)
);

insert into tb_funcionarios(nome, cidade, salario, telefone, email)
value ("Mateus", "Itaim Paulista", 2300, "11963574-5342", "mateus43@gmail.com");


select * from tb_funcionarios;

select * from tb_funcionarios where salario > 2000;
select * from tb_funcionarios where salario < 2000;

insert into tb_funcionarios (nome, cidade, salario, telefone, email) values ("Iuri", "Jardim Romano", 1500, "11968436-7364", "iuri54@gmail.com");
insert into tb_funcionarios (nome, cidade, salario, telefone, email) values ("Miguel", "Itaim Paulista", 1350, "11963447-5752", "Miguel5@gmail.com");
insert into tb_funcionarios (nome, cidade, salario, telefone, email) values ("Juliana", "Campo Verde", 5350, "11963574-5334", "Juliana26@gmail.com");
insert into tb_funcionarios (nome, cidade, salario, telefone, email) values ("Samara", "São Miguel", 2200, "11967553-6447", "Samira93@gmail.com");
