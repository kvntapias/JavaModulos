create database 2modulos;
use 2modulos;

create table usuario(
idu int auto_increment primary key,
username varchar(50) not null,
nombres varchar(50) not null,
apellidos varchar(50) not null,
correo varchar (50) not null,
contraseña varchar(32) not null,
tipo int
);

create table evento(
ide int auto_increment primary key,
titulo varchar(100) not null,
categoria varchar(30) not null,
descripcion varchar(150) not null,
imagen mediumblob not null,
ubicacion varchar(70) not null,
fecha date not null,
horaI varchar(5),
horaF varchar(5),
tipo varchar(10),
entidad varchar(45)
);

describe evento;

update usuario set tipo = 2 where idu = 2;

select *from usuario;
select *from evento;
delete from usuario where idu = 1;
select *from usuario where idu = 1;

create database AppDB;
 
use AppDB;
 
CREATE TABLE `contacts` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `photo` mediumblob,
  PRIMARY KEY (`contact_id`)
)

select *from contacts;