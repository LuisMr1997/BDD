create database vistas;
use vistas;

create table personas(
id int not null,
nombre varchar (25),
apellido varchar (50),
primary key (id)
);

create table Educacion(
ID int not null auto_increment,
nivelAcademico int,
nombreInstitucion varchar (85),
primary key (ID)
);
insert into personas(id, nombre, apellido)
value (1,"Luis","Marin");
insert into Educacion(ID, nivelAcademico, nombreInstitucion)
value (1,5,"Yavirac");

create view preparacionAcademica1 as select nombre, apellido, nivelAcademico, nombreInstitucion from personas,Educacion; 
 
select * from preparacionAcademica1;