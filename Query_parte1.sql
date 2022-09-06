--PARTE 1
---Si value es null entonces se escribe un 0
SELECT ISNULL(Cantidad,0) FROM dbo.Ventas_VL$;

---Si la moneda es EUR en tipo_costo aparecerá un null
CREATE TABLE monedas (
moneda_id char (3) NOT NULL,
nombre varchar (15) NOT NULL,
CONSTRAINT pk_moneda PRIMARY KEY (moneda_id)
);

SELECT * FROM monedas

INSERT monedas 
VALUES ('USD', 'Dolar'),
		('EUR','Euro');

SELECT moneda_id,
CASE
	WHEN moneda_id = 'EUR' THEN NULL
ELSE tipo_costo
END AS tipo_costo
FROM monedas

---Escriba el query que me muestre únicamente los datos
---Planta, producto_id, periodo y sumarizar el value 
---con los filtros tmoneda_id USD 
---y que entren en el rubro_id numero 3

SELECT planta, producto_id, periodo FROM tabla
WHERE tmoneda_id = 'USD' 
SELECT SUM (valor) FROM tabla
WHERE rubro_id = 3
