create database db_empresarh;
use db_empresarh;

create table tb_funcionario(
	id bigint auto_increment,
    nome varchar(100) not null,
    idade int not null,
    sexo char not null,
    salario decimal not null,
    primary key (id_func));
    
    drop table tb_funcionario;
    
	  INSERT INTO tb_funcionario(nome, idade, sexo, salario) values ("Gustavo", 32,'M', 1.500);
	  INSERT INTO tb_funcionario(nome, idade, sexo, salario) values ("Adriana", 43,'F', 3.000);		
	  INSERT INTO tb_funcionario(nome, idade, sexo, salario) values ("João", 32,'M', 2.500);
	  INSERT INTO tb_funcionario(nome, idade, sexo, salario) values ("Carlos", 43,'M', 3.500);
	  INSERT INTO tb_funcionario(nome, idade, sexo, salario) values ("Antonio", 23,'M', 4.000);


select * from tb_funcionario where  salario > 2.000;
select * from tb_funcionario where  salario < 2.000;

update tb_funcionario set nome="Gustavo F."  where id_func=1;
