create database gersalarios;
use gersalarios;

create table cargo (
cargo_id int auto_increment primary key not null,
nome varchar(100) not null,
salario decimal (10, 2) not null,
descricao varchar(100)
);


create table funcionario (
	id int auto_increment primary key not null,
    nome varchar(50) not null,
    sobrenome varchar(100) not null,
    email varchar(50) not null,
    cargo_id int not null,
    data_contratacao date not null,
    foreign key (cargo_id) references cargo(cargo_id)
);

insert into cargo( nome, salario, descricao)
	values ("DEV front end","11000.00","Trabalha na Interface"),
           ("DEV back end","15000.00","Trabalha nos Bastidores"),
           ("DEV FULL Stack","20000.00","Trabalha em Ambos");
           
select * from cargo; 

insert into funcionario (nome, sobrenome, email, cargo_id, data_contratacao)
values("Michael", "Jackson","michaeljack@gmail,com",3,"2024-09-25"),
	  ("Ana", "Oliveira", "anaoliveira@gmail.com", 1, "2024-09-25"),
	  ("Rafael", "Santos", "rafaelsantos@gmail.com", 2, "2024-09-25"),
	  ("Beatriz", "Ferreira", "beatrizferreira@gmail.com", 3, "2024-09-25"),
      ("Lucas", "Silva", "lucassilva@gmail.com", 2, "2024-09-25");
      
select * from cargo
where salario >=11000.00 and salario <= 15000.00; 

select * from funcionario
where data_contratacao = "2024-09-25"; 

update funcionario
set data_contratacao = "2024-09-25"
where id =2;

select * from funcionario
where id = 2;