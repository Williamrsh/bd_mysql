create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria(
	id bigint not null auto_increment,
    categoria varchar(255) not null,
    ativo boolean not null,
    primary key(id)
);

create table tb_produto(
	id bigint not null auto_increment,
    nome varchar(100) not null,
    instrutor varchar(100) not null,
    preco decimal(6,2) not null,
    vagas int not null,
    categoria_id bigint,
    primary key(id),
    foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_categoria(categoria,ativo)
values 	("java",true),
		("Javascript",true),
		("python",true),
		("C#",true),
		("GO",true);
        
insert into tb_produto(nome,instrutor,preco,vagas,categoria_id) 
values  ("Certificação Java SE","Leandro Pereira",140.79,122,1),      
		("Certificação C#","Jamile Santos",70.00,153,4),  
		("JavaScript fundamentos","João Almeida",550.99,212,2),  
		("Certificação python","Carlos Antonio",434.32,15,3),  
		("Certificação GO","Laura f. Silva",90.80,52,5),  
		("Certificação JavaScript","Marcos Vinicius",42.30,32,2),  
		("Certificação Java SE","Renan Silveira",120.99,212,1),  
		("Testes automatizados: TDD com Python","Ana santana",53.12,21,3);


select * from tb_produto where preco > 50;  

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "%J%";  

select * from tb_produto  inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto  inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id
where tb_categoria.id = 1;