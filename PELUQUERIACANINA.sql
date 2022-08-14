CREATE 	DATABASE PeluqueriaCanina;
use PeluqueriaCanina;

CREATE TABLE Dueno(
DNI int unique not null ,
Nombre varchar(50) not null,
Apellido varchar(50) not null,
Telefono varchar(20) not null,
Direccion varchar(30),
PRIMARY KEY(DNI)
);

CREATE TABLE Perro(
ID_Perro int unique not null auto_increment,
Nombre	varchar(20) not null,
Fecha_nac date not null,
Sexo varchar(10) not null,
DNI_dueno int unique not null,
PRIMARY KEY(ID_Perro),
FOREIGN  KEY(DNI_dueno) REFERENCES Dueno(DNI)
);

CREATE TABLE Historial(
ID_Historial int unique not null auto_increment,
Fecha date,
Perro int unique not null,
Descripción varchar(100),
Monto decimal(7,2),
PRIMARY KEY(ID_Historial),
FOREIGN KEY(Perro) REFERENCES Perro(ID_Perro)
);

INSERT INTO Dueno(DNI, Nombre, Apellido, Teléfono, Direccción) VALUES
(32654851, 'Gustavo', 'López', '3546224025', 'Andalucía 2584'),
(31693702, 'Agostina', 'Filippo', '351895621', 'Colón 5268'),
(20521763, 'Alejandro', 'Farias', '352763516', 'Tablada 868'),
(25985544, 'Gastón', 'Fernández', '3517689254', 'Caseros 568'),
(26585105, 'Florencia', 'García', '3524548258', 'Corrientes 125');

INSERT INTO Perro(ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES
(1, 'Rafa', '2017-10-14', 'Macho', 32654851),
(2, 'Morita', '2010-05-26', 'Hembra', 26585105),
(3, 'Lupita', '2015-02-18', 'Hembra', 31693702),
(4, 'Drako', '2022-01-20', 'Macho', 25985544),
(5, 'Hércules', '2015-10-16', 'Macho', 20521763);

INSERT INTO historial(ID_Historial, Fecha, Perro, Descripción, Monto) VALUES
(1, '2021-02-18', 5, 'Vacunación anual y desparacitación', 1500.00),
(2, '2022-05-20', 1, 'Cirujía de displasia de cadera', 15000.00),
(3, '2021-07-15', 3, 'Tratamiento dermatológico  por parche húmedo', 2500.00 ),
(4, '2020-11-03', 2, 'Tratamiento por infección intestinal', 2000.00),
(5, '2022-08-08', 4, 'Vacunación y desparacitación', 1500.00);




