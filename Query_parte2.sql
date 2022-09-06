---Parte 2
CREATE DATABASE bd_vuelosMexico;
GO
USE bd_vuelosMexico;
GO
CREATE TABLE Aerolineas(
IdAerolinea INTEGER NOT NULL,
NombreAerolinea VARCHAR(20) NOT NULL,
CONSTRAINT pk_aerolinea PRIMARY KEY (IdAerolinea)
);
GO
INSERT INTO Aerolineas VALUES (1, 'Volaris')
GO
INSERT Aerolineas VALUES(2, 'Interjet'), (3, 'Aeromar'),(4, 'Aeromexico');
SELECT*FROM Aerolineas;

CREATE TABLE Aeropuertos(
IdAeropuerto INTEGER NOT NULL,
NombreAeropuerto VARCHAR(30)  NOT NULL,
CONSTRAINT pk_aeropuerto PRIMARY KEY (IdAeropuerto)
);
GO
INSERT Aeropuertos
VALUES (1, 'Benito Juarez'),
	   (2, 'Guanajuato'),
	   (3, 'La paz'),
	   (4, 'Oaxaca');
GO
SELECT * FROM Aeropuertos;

CREATE TABLE Movimientos(
IdMovimiento INTEGER NOT NULL,
Descripcion VARCHAR (10) NOT NULL,
CONSTRAINT pk_movimiento PRIMARY KEY (IdMovimiento)
);
GO
INSERT Movimientos
VALUES (1, 'Salida'),
	   (2, 'Llegada');
GO
SELECT * FROM Movimientos;

CREATE TABLE Vuelos(
IdVuelos INTEGER NOT NULL,
IdAerolinea INTEGER NOT NULL,
IdAeropuerto INTEGER NOT NULL,
IdMovimiento INTEGER NOT NULL,
Dia DATE NOT NULL,
CONSTRAINT pk_vuelo PRIMARY KEY (IdVuelos),
CONSTRAINT fk_aerolinea FOREIGN KEY (IdAerolinea)REFERENCES Aerolineas (IdAerolinea),
CONSTRAINT fk_aeropuerto FOREIGN KEY (IdAeropuerto)REFERENCES Aeropuertos (IdAeropuerto),
CONSTRAINT fk_movimiento FOREIGN KEY (IdMovimiento)REFERENCES Movimientos (IdMovimiento)
);
GO
INSERT Vuelos VALUES(1, 1,1,1,'2019-01-01')
GO
INSERT Vuelos VALUES(2, 2,1,1,'2019-01-01'),
					(3, 3,2,2,'2019-01-01'),
					(4, 4,3,2,'2019-02-01'),
					(5, 1,3,2,'2019-02-01'),
					(6, 2,3,1,'2019-02-01'),
					(7, 3,4,1,'2019-02-01'),
					(8, 3,4,1,'2019-03-01');
GO
SELECT * FROM Vuelos;
GO




