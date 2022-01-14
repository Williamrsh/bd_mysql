create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria(
	id bigint not null auto_increment,
    descricao varchar(255),
    ativo boolean,
    primary key (id)
);

create table tb_produtos(
	id bigint not null auto_increment,
    nome varchar(255) not null,
    datacadastro timestamp,
    datavalidade date,
    quantidade int,
    preco decimal(7,2),
    categoria_id bigint,
    primary key (id),
	foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_categoria (descricao, ativo) 
values ("antibiótico", true),
	   ("gripe e resfriado", true),
       ("Higiene pessoal", true),
	   ("Beleza", true),
	   ("energético", true);
       
insert  into tb_produtos(nome, datacadastro,datavalidade, quantidade, preco, categoria_id) 
values ("Desodorante Rexona", current_date(),'2024-12-13', 100, 19.90, 3),
	   ("Desodorante Nivea", current_date(), '2023-01-04', 70, 22.90, 3),
	   ("Vick vaporub", current_date(),'2023-05-17', 124, 5.00, 2),
	   ("Xarope Rexona", current_date(),'2024-08-27', 532, 25.90, 2),
	   ("Cloridrato De Ciprofloxacino 500mg", current_date(),'2023-07-13', 25, 120.10, 1),
	   ("Azitromicina Di-Hidratada 500mg Multilab", current_date(),'2024-05-11', 63, 150.00, 1),
	   ("Energético Red Bull Energy Drink", current_date(),'2023-02-15', 12, 25.50, 5),
	   ("Protetor Solar Corporal Nivea", current_date(),'2024-03-01', 53, 40.00, 4);

select * from tb_produtos where preco > 50;

select * from tb_produtos where preco between 3 and 60;

select * from tb_produtos where nome like "%B%";

select * from tb_produtos  inner join tb_categoria
on tb_categoria.id = tb_produtos.categoria_id;

select * from tb_produtos  inner join tb_categoria
on tb_categoria.id = tb_produtos.categoria_id
where tb_categoria.id = 3;
