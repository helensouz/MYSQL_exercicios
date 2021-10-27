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

create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
	
	id_produto bigint auto_increment,
    marca varchar(200) not null,
    tamanho varchar(200) not null,
    cor varchar(50) not null,
    preco float not null,
    modelo varchar(50) not null,
    
    primary key(id_produto)
);

select * from db_ecommerce.tb_produtos;
insert into tb_produtos (marca, tamanho, cor, preco, modelo)
						values("adidas", "m","branca", '59.99', "camiseta");
insert into tb_produtos (marca, tamanho, cor, preco, modelo)
						values("nike", "PP","rosa", '700.99', "regata");
 insert into tb_produtos (marca, tamanho, cor, preco, modelo)
						values("Tommy", "G","Preto", '500.99', "blusa")  ;                   
 insert into tb_produtos (marca, tamanho, cor, preco, modelo)
						values("Dona pink", "p","azul", '600.00', "jaqueta")  ;   
 insert into tb_produtos (marca, tamanho, cor, preco, modelo)
						values("C&A", "p","rosa", '100.00', "calça")  ;  
                        
select * from db_ecommerce.tb_produtos where preco > 500;
select * from db_ecommerce.tb_produtos where preco < 500;
select * from db_ecommerce.tb_produtos;



