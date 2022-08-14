create database peluqueria_canina;

use peluqueria_canina;

create table Dueno(
DNI int not null unique,
Nombre_D varchar (25),
Apellido varchar (25),
Telefono varchar (25),
Direccion varchar (50),
primary key (DNI)
);

/*Dueños */
insert into Dueno values 
(38857081, 'Mariano', 'Lopez', '3513606326', 'Virrey Melo 3794'),
(38324021, 'Santiago', 'Escriba', '3516587852', 'Heriberto Martinez 5959'),
(39640815, 'Florencia', 'Romero', '3516852456', 'Nuñez 1524' );

create table Perro(
ID_Perro int not null unique,
DNI_Dueno int,
Nombre_P varchar (25),
Fecha_nac date,
Sexo varchar (1),
primary key (ID_Perro),
foreign key (DNI_Dueno) references Dueno (DNI)
);

/*Perros */
insert into Perro values 
(1, 38857081, 'Tina', '17-11-16', 'F'),
(2, 38857081, 'Lupi', '17-11-16', 'F'),
(3, 38324021, 'Eron', '08-07-12', 'M'),
(4, 39640815, 'Patch', '14-02-26', 'M')
;

create table Historial(
ID_Historial int,
Fecha date,
ID_Perro_fk int,
Descripcion varchar (100),
Monto float,
primary key (ID_Historial),
foreign key (ID_Perro_fk) references Perro (ID_Perro)
);

/*Historial de cada perro*/
insert into Historial values 
(4, '22-08-12', 1, 'Control general', 1200.00),
(3, '22-07-08', 2, 'Vacuna antirabica', 800.00),
(2, '22-06-10', 3, 'Castración', 4500.00),
(1, '22-05-13', 4, 'Control pata derecha', 549.99)
;

/* 5. Realice una consulta multitabla que arroje el nombre de todos los perros cuyos dueños se llaman Pedro */

SELECT Perro.Nombre_P 'Nombre Perro', Dueno.Nombre_D 'Nombre Dueño' FROM Dueno
	JOIN Perro
	ON Perro.DNI_Dueno = Dueno.DNI
	WHERE Nombre_D = 'Pedro'

/* 11. Obtener todos los dueños que tengan perros de menos de 5 años de edad que no hayan visitado la peluqueríaen el año 2022. */

SELECT Perro.Nombre_P 'Nombre Perro', Format(Perro.Fecha_nac, 'dd-MM-yy') 'Fecha de Nacimiento Perro', Dueno.Nombre_D 'Nombre Dueño' FROM Perro
	JOIN Dueno
	ON Perro.DNI_Dueno = Dueno.DNI
	WHERE Perro.Fecha_nac < Convert(datetime, '1-1-2022')
	  

/* 12. Obtener todos los perros de sexo “Macho” nacidos entre 2020 y 2022.*/ 

	SELECT Perro.Nombre_P 'Nombre Perro', Format(Perro.Fecha_nac, 'dd-MM-yy') 'Fecha de		 Nacimiento Perro', Dueno.Nombre_D 'Nombre Dueño' FROM Perro
	JOIN Dueno
	ON Perro.DNI_Dueno = Dueno.DNI
	WHERE Perro.Fecha_nac BETWEEN '1-1-2020' AND '1-1-2023'