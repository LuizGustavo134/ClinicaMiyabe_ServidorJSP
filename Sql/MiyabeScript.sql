create database ClinicaMiyabe;
use ClinicaMiyabe;

create table cliente(
 cliente_id int auto_increment primary key ,
 nome varchar(100),
 email varchar(100),
 telefone int,
 sexo varchar(10),
 deficiencia varchar(50),
 responsavel varchar(100)
 );
 
 drop table cliente;
 
 insert into cliente values (null,"lucia santana", "Lucy1278@gmail.com", 1128547,"feminino"," auditiva","rodrigo santana");
 select*from cliente;
 delete from cliente where nome = "lucia santana";