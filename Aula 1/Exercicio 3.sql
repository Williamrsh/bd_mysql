create database db_escola;
use db_escola;

create table tb_estudantes(
	id bigint auto_increment,
    nome varchar(100) not null,
    idade int not null,
    sexo char not null,
    sala varchar(50) not null,
    nota decimal(2,1) not null,
    primary key(id));

INSERT INTO tb_estudantes(nome, idade, sexo, sala, nota) 
values ("Pedro",12,'M', "2 A",8.0),
	   ("Ana",11,'F', "3 D",6.5),
	   ("João",10,'M', "1 B",5.0),
	   ("Maria",13,'F', "4 C",4.5),
	   ("Gustavo",11,'M', "5 C",6.5),
	   ("Pamela",13,'F', "4 B",7.0),
	   ("Larissa",12,'F', "6 A",9.5),
	   ("Miguel",12,'M', "1 B",9.5);
    
select * from tb_estudantes where nota > 7;
select * from tb_estudantes where nota < 7;

update tb_estudantes set nota=10 where id = 1;
