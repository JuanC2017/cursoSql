/*Se requiere la siguiente informacion: Muestre una tabla de resultados que contenga el documento del cliente, 
nombre del cliente y la ciudad del cliente. Tener presente que el requerimiento es de el nombre de la ciudad mas no el codigo*/

SELECT * FROM BaseClientes
SELECT * FROM BaseCiudades

SELECT 
    x.DocumentoCliente, x.NombreCliente, y.NombreCiudad
FROM BaseClientes as x
INNER JOIN BaseCiudades as y
ON x.CodigoCiudad = y.CodigoCiudad


SELECT 
    x.DocumentoCliente, x.NombreCliente, y.NombreCiudad
FROM BaseClientes as x
LEFT JOIN BaseCiudades as y
ON x.CodigoCiudad = y.CodigoCiudad
WHERE NombreCiudad IS NULL