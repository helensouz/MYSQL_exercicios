create database db_rh;

use db_rh;

create table tb_funcionarios(
	id_funcionario bigint auto_increment,
    nome varchar(50) not null,
    salario float not null,
    filhos int not null,
    cargo varchar(50) not null,
    primary key (id_funcionario)
); 

select * from db_rh.tb_funcionarios;

insert into tb_funcionarios (nome, salario, filhos, cargo)
							values("helen", '12000', '1', "desenvolvedora jr");
insert into tb_funcionarios (nome, salario, filhos, cargo)
							values("alice", '1100', '0', "tecnica jr");
insert into tb_funcionarios (nome, salario, filhos, cargo)
							values("helena", '3200', '0', "desenvolvedora sr");
insert into tb_funcionarios (nome, salario, filhos, cargo)
							values("junior", '4400', '0', "gerente");

select * from db_rh.tb_funcionarios where salario >= 2000;
select * from db_rh.tb_funcionarios where salario <= 2000;
select * from db_rh.tb_funcionarios;


					

