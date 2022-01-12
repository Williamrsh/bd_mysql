create database db_quitanda;
drop database db_quitanda;

use db_quitanda;
create table tb_produtos(
	id bigint auto_increment,
    nome varchar(255) not null,
    quantidade int,
    preco decimal not null,
    primary key (id)
  ); 
   
   INSERT INTO tb_produtos(nome, quantidade, preco) values ("Péra",500,2.99);
   select * from tb_produtos;
   
   alter table tb_produtos modify preco decimal(6, 2);
   
   update tb_produtos set preco= 6.00 where id =2;
   
   delete from tb_ produtos where  id =5;
   
   alter table tb_produtos add descricao varchar(255);
   alter table tb_produtos drop descricao;