create database db_biblioteca35;

use db_biblioteca35;
create table tb_usuario(
	 nome varchar(255) not null,
     id_usuario bigint auto_increment,
     email varchar(255) not null,
	 nascimento_data date,
     senha varchar(255) not null,
     primary key (id_usuario)
);

select * from db_biblioteca35.tb_usuario;

insert into tb_usuario (nome, email, nascimento_data, senha)
	values ("Helen", "email@email.com", '54545-5995-55', "123456");

delete from tb_usuario where id_usuario = 1;

update `db_biblioteca35` . `tb_usuario` set `senha` = '333' where(`id_usuario` = '2');

alter table tb_usuario add livro varchar(30);


