/*Cruce por medio de un right join la base pedidos y la base ciudades (todos los campos), luego realice el mismo cruce
pero con inner join y verifique las diferencias*/


SELECT * FROM BasePedidos
SELECT * FROM BaseCiudades

SELECT 
    *
FROM BaseCiudades as x
RIGHT JOIN BasePedidos as y
ON x.CodigoCiudad = y.CodigoCiudad

SELECT 
    *
FROM  BasePedidos as x
RIGHT JOIN BaseCiudades as y
ON x.CodigoCiudad = y.CodigoCiudad


SELECT 
    *
FROM BaseCiudades as x
INNER JOIN BasePedidos as y
ON x.CodigoCiudad = y.CodigoCiudad

SELECT 
    *
FROM BaseCiudades as x
RIGHT JOIN BasePedidos as y
ON x.CodigoCiudad = y.CodigoCiudad
WHERE X.NombreDepart IS NULL


/*AQUI CON FULL JOIN*/
SELECT 
    *
FROM  BasePedidos as x
FULL JOIN BaseCiudades as y
ON x.CodigoCiudad = y.CodigoCiudad

