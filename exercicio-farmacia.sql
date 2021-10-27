create database db_farmacia;
use db_farmacia;

create table tb_categoria(
	id_categoria bigint auto_increment,
    nome_farmacia varchar(255) not null,
    cidade varchar(255) not null,
    precoMin float not null,
    
    primary key(id_categoria)

);

insert into tb_categoria(nome_farmacia, cidade,  precoMin)
values("ultra farma", "São Paulo", '50.99');

insert into tb_categoria(nome_farmacia, cidade,  precoMin)
values("farmacia do povo", "Rio de Janeiro", '90.00');

insert into tb_categoria(nome_farmacia, cidade,  precoMin)
values("Farmacia do bem", "São paulo", '60.00');

insert into tb_categoria(nome_farmacia, cidade,  precoMin)
values("Farma forma", "São paulo", '100.00');

create table tb_remedios(
	id_remedio bigint auto_increment,
    nome_remedio varchar(255) not null,
    preco float not null,
    idadeMin int not null,
    tipo_remedio varchar(255) not null,
    
    fk_categoria bigint,
    primary key(id_remedio)

);

insert into tb_remedios(nome_remedio, preco, idadeMin, tipo_remedio)
values("dorflex", '20.99', '10', "em gotas");
insert into tb_remedios(nome_remedio, preco, idadeMin, tipo_remedio)
values("buscopan", '15.99', '10', "comprimido");
insert into tb_remedios(nome_remedio, preco, idadeMin, tipo_remedio)
values("neosaldina", '30.99', '18', "em gotas");
insert into tb_remedios(nome_remedio, preco, idadeMin, tipo_remedio)
values("buclina", '18.99', '18', "comprimido");
insert into tb_remedios(nome_remedio, preco, idadeMin, tipo_remedio)
values("cobavital", '30.99', '30', "comprimido");




