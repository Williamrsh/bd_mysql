create database db_generation_game_online;
use db_generation_game_online;


create table tb_classe(
	id bigint not null auto_increment,
    classe varchar(50) not null,
    ativo boolean not null,
    primary key(id)
);

create table tb_personagem(
	id bigint not null auto_increment,
    nome varchar(50) not null,
    habilidade varchar(50) not null,
    ataque int not null,
    defesa int not null,
    classe_id bigint,
    primary key(id),
    foreign key (classe_id) references tb_classe(id)
);
 
 insert into tb_classe(classe, ativo)
 values ("Blade Knight",true),
		("Soul Master",true),
		("Magic Gladiator",true),
		("Muse Elf",true),
		("Dark Lord",true);
 
 insert into tb_personagem(nome, habilidade, ataque, defesa, classe_id)
 values ("Phoenix","Força",1000,2000,3),
		("Spectre","Destreza",5000,5000,2),
		("Noob master","Constituição",3300,30,5),
		("Hype","Inteligência",3000,2000,3),
		("Click","Sabedoria",2400,1600,2),
		("Alpha","Carisma",1000,3000,1),
		("Caeon","Agilidade",3000,1500,4),
		("Rayzo","Coragem",4500,4500,1);
 
 select * from  tb_personagem where ataque >2000;
 
 select * from tb_personagem where defesa between 1000 and 2000;
 
 select * from tb_personagem where nome like "%C%";
 
select a.nome as NOME, a.habilidade as HABILIDADE, b.classe as CLASSE
from tb_personagem a inner join tb_classe b	
on b.id = a.classe_id;

select a.nome as NOME, a.habilidade as HABILIDADE, b.classe as CLASSE
from tb_personagem a inner join tb_classe b	
on b.id = a.classe_id
where b.id = 3;

 
 