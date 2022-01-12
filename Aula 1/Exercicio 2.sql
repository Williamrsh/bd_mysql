create database db_ecommerce;
use db_ecommerce;

create table tb_produtos(
	id bigint auto_increment,
    nome varchar(100) not null,
    marca varchar(100) not null,
    quantidade  int not null,
    preco decimal(8,2) not null,
    primary key(id));
   
INSERT INTO tb_produtos(nome, marca, quantidade,preco) 
values 	("smartphone","Samsung",212,1500),
		("notebook","Apple",20,9500),
		("tablet","Apple Ipad",100,5200),
		("relogio","Casio",2,500),
		("powerbank","Samsung",214,250),
		("mouse","Multilaser",500,50),
		("telcado","Multilaser",464,70),
		("webcan","Logitech",695,700);

select * from tb_produtos where preco > 500;
select * from tb_produtos where preco < 500;

update tb_produtos set preco=6500 where id = 1;
