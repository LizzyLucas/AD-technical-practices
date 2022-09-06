---Parte 3
---Castear una columna Value a float
CAST ( columna_value AS FLOAT [ (3 ) ] )

---Castear la columna fecha a formato YYYY-MM-DD 
declare @Existingdate date
Set @Existingdate=GETDATE()
Select CONVERT(varchar,@Existingdate,102) as [Fecha]

---Obtener únicamente el mes de la columna fecha
SELECT FORMAT(GETDATE(),'MM') Fecha;

--- Concatenar las siguientes cadenas
SELECT CONCAT ( 'Liz ', 22, ' Lucas' ) AS resultado;

---Obtener todos los resultados de la columna transacción que contengan la palabra “ADGO” 
SELECT Marca, Modelo  
FROM dbo.Ventas_VL$  
WHERE Modelo = 'A'  
   AND CONTAINS(Modelo, 'A4')  
GO

SELECT * FROM dbo.Ventas_VL$

---Dividir la siguiente cadena y únicamente me muestre los números ADGO-1974-G&HF
SELECT SUBSTRING('ADGO-1974-G&HF',6,4) AS numeros;

---Pasar a mayúsculas todos los datos de la columna Producto
SELECT UPPER([Producto]) AS Marca FROM tabla;
