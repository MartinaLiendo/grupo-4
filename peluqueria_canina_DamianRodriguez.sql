create database peluqueria_canina;  /*Con esta query creo la base como se pide en el ejercicio*/

/*con esta query seteo para usar la database creada anteriormente*/
use peluqueria_canina;

/*creacion de la primera tabla y PK Consigna del punto 1 */
create table Dueno (
DNI int not null unique,
Nombre varchar(45) not null,
Apellido varchar(45) not null,
Telefono varchar(45),
Dirección varchar(56),
primary key(DNI));

/*creacion de la segunda tabla,  PK y FK Consigna del punto 1*/
create table Perro (
ID_Perro int not null,
Nombre varchar(45),
Fecha_nac date,
sexo varchar(45),
DNI_Dueno int,
primary key (ID_Perro),
constraint fk_DNI_dueno foreign key (DNI_dueno) references Dueno(DNI));

/*creacion de la tercera tabla, pk y fk - consigna del punto 1 */
create table Historial (
ID_Historial int not null,
Fecha date,
Perro int not null,
Descripción varchar(45),
Monto decimal,
primary key (ID_Historial),
constraint fk_Perro foreign key (Perro) references Perro(ID_Perro));

/*Vamos a insertar datos en la tabla Dueno Consigna punto 2*/
INSERT INTO Dueno (DNI,Nombre,Apellido,Telefono,Dirección)
VALUES
('12345','Juan','Perez','12345','Av colon 189'),
('12346','Martin','Lopez','23456','9 de julio 100'),
('22347','Sebastian','Salas','34567','Av gral paz 101'),
('23456','Fabio','Rojo','32987','mariano moreno 123');

/*Vamos a insertar datos en la tabla Perro - Consigna punto 2*/
INSERT INTO Perro (ID_Perro,Nombre,Fecha_nac,Sexo,DNI_dueno)
VALUES
('001','Oscar','2020-08-22','Macho','12345'),
('002','Sasha','2019-10-01','Hembra','12345'),
('003','Crotito','2021-02-01','Macho','12346'),
('004','Zipora','2016-07-02','Hembra','22347'),
('005','Pipo','2014-09-13','Macho','23456');

/*Vamos a insertar datos en la tabla Historial - consigna punto 2*/

INSERT INTO Historial (ID_Historial,Fecha,Perro,Descripción,Monto)
VALUES
('111','2022-08-08','001','Perrito Macho llamado Oscar tamaño pequeño','981'),
('112','2022-07-02','002','Perrita Hembra llamada Sasha tamaño pequeño','981'),
('113','2020-02-22','003','Perrito Macho llamada Crotito, tamaño grande','1281'),
('114','2022-05-14','004','Perrita Hembra llamada Zipora tamaño pequeño ','981'),
('115','2021-05-11','005','Perrita Macho llamado Pipo , tamaño mediano','1181');

/*Comienzo con las tareas asignadas
10.Vaciar la tabla historial y resetear el contador del campo ID.
*/
TRUNCATE Historial;
/*
9.Escriba una consulta que permita actualizar la dirección de un dueño. Su nueva dirección es Libertad 123
*/
UPDATE dueno SET Dirección = 'Libertad 123' where DNI = 12345;

/*
8. Insertar un nuevo registro en la tabla historial de un perro cuyo ID Perro es igual a 10.
*/
INSERT INTO Perro (ID_Perro,Nombre,Fecha_nac,Sexo,DNI_dueno) /*8.1 Antes de hacer este punto se debe agregar primero en la tabla Perro*/
VALUES
('10','Ramon','2020-09-10','Macho','23456'); 
INSERT INTO Historial(ID_Historial,Fecha,Perro,Descripción,Monto)
VALUES
('116','2022-05-14','10','Perrito Cachorro Macho llamado Null','1000');