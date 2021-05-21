create database db_escola;
use db_escola;

create table tb_alunos(
id bigint auto_increment,
nome varchar (10) not null,
nota decimal not null,
curso varchar(30) not null,
turma varchar(30) not null,
media decimal not null,
primary key (id));

insert into tb_alunos(nome, nota, curso, turma, media) value("Mário", 10, "Desenvolver", "18", 8);
insert into tb_alunos(nome, nota, curso, turma, media) value("Raphael", 6, "TI", "21", 7);
insert into tb_alunos(nome, nota, curso, turma, media) value("Ana", 5, "Informática", "18", 7);
insert into tb_alunos(nome, nota, curso, turma, media) value("Gabriela", 9, "Generation", "22", 8);
insert into tb_alunos(nome, nota, curso, turma, media) value("Amanda", 8, "Desenvolver", "24", 7);

select * from tb_alunos;

select * from tb_alunos where nota > 7;
select * from tb_alunos where nota < 7;