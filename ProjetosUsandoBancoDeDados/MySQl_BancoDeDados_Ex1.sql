create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
classe varchar(100),
habilidade varchar(150),
amigavel varchar (100),
primary key (id));

insert tb_classe (classe, habilidade, amigavel) values ("Atiradora", "Domina Dragões", "Sim");
insert tb_classe (classe, habilidade, amigavel) values ("Atirador", "expert em Armas", "Sim");
insert tb_classe (classe, habilidade, amigavel) values ("Lutador", "super Agilidade", "Não");
insert tb_classe (classe, habilidade, amigavel) values ("Lutador", "Domina as Armaduras", "Sim");
insert tb_classe (classe, habilidade, amigavel) values ("Mago", "Domina magia negra", "Não");

create table tb_personagem(
id bigint auto_increment,
nome varchar (100),
ataque int,
defesa int,
classe_id bigint,
primary key (id),
foreign key (Classe_id) references tb_classe(id)
);

insert tb_personagem (nome, ataque, defesa, classe_id) values ("Tristana", 3000, 500, 1);
insert tb_personagem (nome, ataque, defesa, classe_id) values ("Aphelios", 2000, 700, 2);
insert tb_personagem (nome, ataque, defesa, classe_id) values ("Camille", 1000, 2000, 3);
insert tb_personagem (nome, ataque, defesa, classe_id) values ("Garen", 1300, 2500, 4);
insert tb_personagem (nome, ataque, defesa, classe_id) values ("Ryzen", 2100, 390, 5);

select * from tb_personagem;

select * from tb_classe;

select * from tb_personagem where ataque > 2000;

select * from tb_personagem where defesa between 1000 and 2000;

select * from tb_personagem where nome like "%C%";

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id where tb_classe.id = 1;
