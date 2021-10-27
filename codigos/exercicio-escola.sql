/*Atividade 2
Crie um banco de dados para um e commerce, onde o sistema trabalhará com as
informações dos produtos deste ecommerce.
Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
Popule esta tabela com até 8 dados;
Faça um select que retorne os produtos com o valor maior do que 500.
Faça um select que retorne os produtos com o valor menor do que 500.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

create database db_escola;

use db_escola;

create table tb_alunos(
	
	id_aluno bigint auto_increment,
    nome varchar(200) not null,
    materia varchar(200) not null,
    rgm int not null,
    nota float not null,
    
    
    primary key(id_aluno)
);

select * from db_escola.tb_alunos;
insert into tb_alunos (nome, materia, rgm, nota)
						values("helen", "java","2523",  "10");
insert into tb_alunos (nome, materia, rgm, nota)
						values("erick", "python","2540", "9");
 insert into tb_alunos (nome, materia, rgm, nota)
						values("ana", "c++","2520", "5");                       
insert into tb_alunos (nome, materia, rgm, nota)
						values("joao", "angular","2510", "3");                          
select * from db_escola.tb_alunos where nota > 7;
select * from db_escola.tb_alunos where nota < 7;
select * from db_escola.tb_alunos;



