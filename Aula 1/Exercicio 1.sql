create database db_empresarh;
use db_empresarh;

create table tb_funcionario(
	id bigint auto_increment,
    nome varchar(100) not null,
    idade int not null,
    sexo char not null,
    salario decimal(8,2) not null,
    primary key (id));
    
	  INSERT INTO tb_funcionario(nome, idade, sexo, salario) 
      values ("Gustavo", 32,'M', 1500),
	     ("Adriana", 43,'F', 3000),		
	     ("João", 32,'M', 2500),
	     ("Carlos", 43,'M', 3500),
             ("Antonio", 23,'M', 4000);

select * from tb_funcionario where  salario > 2000;
select * from tb_funcionario where  salario < 2000;

update tb_funcionario set nome="Gustavo F."  where id=1;
