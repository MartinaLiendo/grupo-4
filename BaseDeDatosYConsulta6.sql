create database peluqueria_canina;
use peluqueria_canina;

create table Dueno (
dni int,
nombre varchar(50),
apellido varchar(50),
telefono bigint,
direccion varchar(100),
constraint pk_cdni primary key (dni)
);

create table Perro (
ID_Perro int,
nombre varchar(50),
fecha_nac date,
sexo varchar(10),
dni_Dueno int,
constraint pk_cIdPerro primary key (ID_Perro),
constraint pk_cDueno foreign key (dni_Dueno) references Dueno (dni)
);

create table Historial (
ID_historial int,
fecha date,
Perro int,
descripcion varchar (200),
constraint pk_chistorial primary key (ID_historial),
constraint pk_cPerro foreign key (Perro) references Perro (ID_Perro)
);

insert into Dueno values (37123684, "Alberto", "Perez", 4655391, "Blamey Lafore 1250");
insert into Dueno values (39258932, "Mariana", "Suarez", 4678965, "La Madrid 745");
insert into Dueno values (33698741, "Ines", "Parra", 4685421, "Rio Negro 952");
insert into Dueno values (16123625, "Julian", "Martinez", 4653020, "Luis Agote 750");
insert into Dueno values (14123687, "Ignacio", "Vargas", 4666321, "Sol de Mayo 852");
insert into Dueno values (28653956, "Claudia", "Salamanca", 4632156, "Sol de Mayo 700");
insert into Dueno values (27825410, "Miriam", "Guzman", 4653046, "Paso de los Andes 1200");

insert into Perro values (1, "pipa", '2022-01-20' , "hembra" , 37123684);
insert into Perro values (2, "tito", '2020-05-01' , "macho" , 39258932);
insert into Perro values (3, "julio", '2019-02-15' , "macho" , 33698741);
insert into Perro values (4, "renata", '2019-04-26' , "hembra" , 16123625);
insert into Perro values (5, "pipe", '2020-02-14' , "macho" , 14123687);
insert into Perro values (6, "limon", '2015-06-24' , "macho" , 28653956);
insert into Perro values (7, "tina", '2018-03-20' , "hembra" , 27825410);

insert into Historial values (1, '2022-01-29' , 1 , "vacunas para perro recién nacido");
insert into Historial values (2, '2022-05-05' , 2 , "pata quebrada");
insert into Historial values (3, '2021-10-29' , 3 , "desparacitar");
insert into Historial values (4, '2021-05-30' , 4 , "castración");
insert into Historial values (5, '2022-02-03' , 5 , "esterilización");
insert into Historial values (6, '2021-01-29' , 6 , "vacuna antirabica");
insert into Historial values (7, '2022-08-06' , 7 , "castración");

select * from Historial;
select * from Perro;
select * from Dueno;

-- consulta 6 

select ID_Perro, nombre, fecha, sexo, dni_Dueno 
from Perro inner join Historial on Perro.ID_Perro = Historial.Perro
where fecha like '2022%'; 
