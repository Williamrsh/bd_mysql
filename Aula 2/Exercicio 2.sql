create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria(
	id bigint not null auto_increment,
    categoria varchar(50) not null,
    disponivel boolean not null,
     primary key(id)
);

create table tb_pizza(
	id bigint not null auto_increment,
    nome varchar(50) not null,
    sabor varchar(50) not null,
    borda varchar(50) not null,
    preco decimal(6,2) not null,
    categoria_id bigint,
    primary key(id),
    foreign key (categoria_id) references tb_categoria(id)
);

 insert into tb_categoria(categoria, Disponivel)
 values ("Pizzas gigante",true),
		("Pizzas doces",true),
		("Pizzas salgadas",true),
		("Broto doces",true),
		("Broto salgadas",true);
        
 insert into tb_pizza(nome, sabor, borda, preco, categoria_id)
 values ("Atum","Atum e Cebola","sem borda",35,1),
		("Mussarela","Mussarela bem derretida","borda grossa",45,3),
		("Frango com Catupiry original","Frango desfiado e catupiry original","borda com catupiry",55,5),
		("Vegetariana","Escarola, Pamilto, Ervilha, Cebola e Tomate","borda chedaar",60,5),
		("Prestigio","Chocolate e Coco Ralado","borda de leite condesado",35,2),
		("Doce Sensação","Chocolate e calda de morango","borda goibada",35,4),
		("Banana","Banana, Mussarela, leite condensado e canela","sem borda recheada",35,2),
		("Romeu e Julieta","Goiabada e Mussarela","borda de chocolate",35,4);
        
select * from  tb_pizza where preco > 45;     
 
select * from  tb_pizza where preco between 29 and 60;     

select * from tb_pizza where nome like "%C%";

select *
from tb_pizza a inner join tb_categoria b	
on b.id = a.categoria_id;

select *
from tb_pizza a inner join tb_categoria b	
on b.id = a.categoria_id
where b.id = 2;
