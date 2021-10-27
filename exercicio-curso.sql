create database db_curso;
use db_curso;

create table tb_categoria(
	id_categoria bigint auto_increment,
    escola varchar(255) not null,
    cidade varchar(255) not null,
    notaMec int not null,
    
    primary key(id_categoria)
);

insert into tb_categoria(escola, cidade, notaMec)
values("Senai", "barueri", '4');

insert into tb_categoria(escola, cidade, notaMec)
values("Fatec", "Carapicuiba", '5');

insert into tb_categoria(escola, cidade, notaMec)
values("Estacio", "Osaco", '3');

create table tb_curso(
	id_curso bigint auto_increment,
	modalidade varchar(255) not null,
    nome_curso varchar(255) not null,
    semestre int not null,
    tipo_bacharel varchar(255) not null,
    

    primary key(id_curso)
);

insert into tb_curso(modalidade, nome_curso, semestre, tipo_bacharel)
values("EAD", "programação", '3', "tecnologo");
insert into tb_curso(modalidade, nome_curso, semestre, tipo_bacharel)
values("EAD", "letras", '6', "bacharel");
insert into tb_curso(modalidade, nome_curso, semestre, tipo_bacharel)
values("presencial", "direito", '10', "bacharel");
insert into tb_curso(modalidade, nome_curso, semestre, tipo_bacharel)
values("semi-presencial", "publicidade", '6', "bacharel");
insert into tb_curso(modalidade, nome_curso, semestre, tipo_bacharel)
values("presencial", "hardware", '3', "tecnologo");

select * from tb_curso where semestre > 3;
SELECT tb_curso.semestre FROM tb_curso
WHERE tb_curso.semestre BETWEEN 3 AND 5; /** selecionando valores com intervalo entre 3 e 5 **/
select * from tb_curso where modalidade Like "p%"; /** selecionando os valores que iniciam com p na coluna de modalidade*/
select * from tb_categoria inner join tb_curso; /* mesclando as tabelas*/
select * from tb_curso where tb_curso.modalidade = 'presencial'; /*selecionando apenas "presencial" */
