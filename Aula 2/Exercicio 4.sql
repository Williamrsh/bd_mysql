create database db_cidade_das_frutas;
use db_cidade_das_frutas;

create table tb_categoria(
	id bigint not null auto_increment,
    categoria varchar(255) not null,
    ativo boolean not null,
    primary key(id)
);
create table tb_produto(
	id bigint not null auto_increment,
    nome varchar(100) not null,
    fornecedor varchar(100) not null,
    preco decimal(6,2) not null,
    quantidade int not null,
    categoria_id bigint,
    primary key(id),
    foreign key(categoria_id) references tb_categoria(id)
);
    
 insert into tb_categoria(categoria,ativo)
 values ("doces",true),
		("semiácidas",true),
		("ácidas",true),
		("monofágicas",true),
		("oleaginosas",true);
        
 insert into tb_produto(nome,fornecedor,preco,quantidade,categoria_id) 
 values("banana","Distribuidor Bananas Maciel",12.90,542,1),
	   ("acerola","Distribuidor acerola pereira",5.50,321,3),
       ("melancia","Distribuidor geral melancias",15.70,234,4),
       ("ameixa","Distribuidor ameixa ameixas",2.50,311,2),
       ("abacate","Distribuidor abacateiro",7.60,456,5),
       ("laranja","Distribuidor laranjeira",3.50,642,3),
       ("mamão","Distribuidor mamãozada",55.00,434,1),
       ("coco","Distribuidor coco verde",8.90,432,5);
    
    
select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;
    
select * from tb_produto where nome like "%C%";
    
select * from tb_produto  inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto  inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id
where tb_categoria.id = 2;

    
    