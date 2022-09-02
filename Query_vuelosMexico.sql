CREATE DATABASE bd_vuelosMexico;

USE bd_vuelosMexico;

CREATE TABLE Aerolineas(
IdAerolinea INTEGER NOT NULL,
NombreAerolinea VARCHAR NOT NULL,
CONSTRAINT pk_aerolinea PRIMARY KEY (IdAerolinea)
);
GO
INSERT INTO Aerolineas VALUES (1, 'Volaris')
GO
SELECT*FROM Aerolineas;

CREATE TABLE Aeropuertos(
IdAeropuerto INTEGER NOT NULL,
NombreAeropuerto VARCHAR NOT NULL,
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
INSERT INTO Movimientos( Descripcion)---NOMBRES DE CAMPOS SOBRE LOS QUE SE VA A INSERTAR
VALUES ('Salida');
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
SELECT * FROM Vuelos;
