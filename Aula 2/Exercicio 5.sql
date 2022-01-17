create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categoria(
	id bigint not null auto_increment,
    categoria varchar(255) not null,
    ativo boolean not null,
    primary key(id)
);

create table tb_produto(
	id bigint not null auto_increment,
    nome varchar(100) not null,
    marca varchar(100) not null,
    preco decimal(6,2) not null,
    quantidade int not null,
    categoria_id bigint,
    primary key(id),
    foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_categoria(categoria,ativo)
values 	("Materiais Hidráulicos",true),
		("Materiais Elétricos",true),
		("Materiais de Construção",true),
		("Pisos e Revestimentos",true),
		("Pintura e Acessórios",true);
        
        
insert into tb_produto(nome,marca,preco,quantidade,categoria_id) 
values ("Areia Fina Lavada Saco 20kg","Grupo Tomino",4.79,272,3),
	   ("Torneira para Parede de Cozinha","Delinia",169.90,78,1),
       ("Piso Laminado","Artens",59.90,898,4),
       ("Conjunto de Interruptor","Steck",5.29,566,2),
       ("Tinta Acrílica Fosco","Coral",339.90,45,5),
       ("Argamassa Piso","Axton",27.50,234,3),
       ("Cano PVC para Esgoto","Tigre",72.90,35,1),
       ("Rolo para Madeira e Metal","Tigre",6.29,732,5);  
       
select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "%C%";       

select * from tb_produto  inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto  inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id
where tb_categoria.id = 2;