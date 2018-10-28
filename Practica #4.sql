GO
/*Select basico con funciones*/
SELECT COUNT(Primer_Apellido) as 'Primer_Apellido'
FROM Empleado

SELECT MAX(id_Num_Comercial) as 'Numero_de_Camion'
FROM Camion

SELECT MIN(Num_Licencia) as 'Identificacion'
FROM Chofer 

SELECT MAX(Colonia) as 'Nombre_de_Colonia'
FROM Direccion

SELECT MIN(Cd_Destino) as 'Nombre_de_Destino'
FROM Ruta

/*select Join*/
SELECT T1.Nombre, T2.Calle
	FROM Empleado T1 LEFT JOIN Direccion T2 ON T1.Nombre = T2.Calle

SELECT T1.id_Tipo_Camion, T2.Cd_Destino
	FROM Camion T1 CROSS JOIN Ruta T2 

SELECT T1.Num_Licencia, T2.Nombre, T2.Edad
	FROM Chofer T1 INNER JOIN Empleado T2 ON T1.Num_Licencia = T2.Nombre

SELECT T1.Municipio, T2.Categ_Licencia, T2.Num_Licencia
	FROM Direccion T1  RIGHT JOIN Chofer T2 ON T1.Municipio = T2.Categ_Licencia

/*Select where*/
SELECT Nombre, Primer_Apellido
	FROM Empleado
	WHERE Edad > 42

SELECT Placas, id_Num_Comercial
	FROM Camion
	WHERE id_Num_Comercial = 10

SELECT id_Empleado, Categ_Licencia, Num_Licencia
	FROM Chofer
	WHERE id_Ruta = 5

SELECT Calle, Num_Int, Colonia
	FROM Direccion
	WHERE Municipio = N'Monterrey'

SELECT Cd_Origen, Cd_Destino, id_Ruta
	FROM Ruta
	WHERE id_Num_Comercial >= 8
	ORDER BY id_Num_Comercial DESC

/*Select funciones de agregacion*/
SELECT COUNT(*) as 'Total_Filas', MIN(id_Tipo_Camion) as 'Tipo_Camion', 
MAX(Placas) as 'Numero_Placas'
FROM Camion

SELECT MAX(id_Empleado) as 'Identificacion_Empleado', MAX(Num_Licencia) as 'Numero_Licencia',  
MAX(id_Ruta) as 'Identificacion_Ruta'
FROM Chofer

SELECT MIN(id_Direccion) as 'Identificacion_Direccion', MAX(Num_Int) as 'Numero_Interior_Residensia'
FROM Direccion
Group BY id_Direccion

SELECT  MAX(Cd_Origen) as 'Ciudad_Origen', MAX(Cd_Destino) as 'Ciudad_Destino'
FROM Ruta
Group BY id_Ruta

SELECT  MIN(Edad) as 'Edad_Empleado', MAX(Segundo_Apellido) as 'Segundo_Apellido'
FROM Empleado
Group BY id_Empleado
HAVING max(id_Empleado) >= 9 


