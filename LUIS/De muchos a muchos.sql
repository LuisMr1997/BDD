create database Departamentos2;
use Departamentos2;

create table Persona(
id int not null AUTO_INCREMENT primary key,
nombre1 varchar(20) not null,
nombre2 varchar(20) not null,
apellido1 varchar (20) not null,
apellido2 varchar (20) not null,
NumeroDepa int not null,
recidentes int not null,
cedula varchar(10)
);

INSERT INTO Persona (id,nombre1,nombre2,apellido1,apellido2,NumeroDepa,recidentes,cedula)
VALUES ( 4, 'Juan','Jose','Perez','Alvarado',2515,5,'234567890');
INSERT INTO Persona (id,nombre1,nombre2,apellido1,apellido2,NumeroDepa,recidentes,cedula)
VALUES ( 2, 'Manuel','Alexander','Perez','Rosario',25,5,'2100667399');
INSERT INTO Persona (id,nombre1,nombre2,apellido1,apellido2,NumeroDepa,recidentes,cedula)
VALUES ( 5, 'Luis','Jose','Perez','Alvarado',2515,5,'234567890');
 

 create table Departamento (
 id int not null AUTO_INCREMENT primary key,
 nombredeTorre varchar (65) not null,
 precioDepa int (50) not null,
 ubicacionTorre varchar (250) not null
 );

INSERT INTO Departamento (id, nombredeTorre,precioDape,UbicacionTorre)
VALUES (1, 'J', 12.000, 'Sociedad');
INSERT INTO Departamento (id, nombredeTorre,precioDape,UbicacionTorre)
VALUES (2, 'M', 150.000,'Paz');
INSERT INTO Departamento (id, nombredeTorre,precioDape,UbicacionTorre)
VALUES (9, 'K', 25.000, 'Amen');


create table PersonaPorDepartamento2(
id int not null AUTO_INCREMENT primary key,
idPersona int not null, 
idDepartamento int not null,
FOREIGN KEY (idPersona) references Persona(id),
FOREIGN KEY (idDepartamento) references Departamento(id) 
);
 
 select `Persona` 
        from `Departamento` 
        where `Departamento` = '3'
 
 