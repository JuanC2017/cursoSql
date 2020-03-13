SELECT * FROM BaseProductos

WHERE PrecioProducto BETWEEN 1000 and 10000
ORDER BY PrecioProducto DESC

SELECT COUNT(NombreProducto) as cantidad FROM BaseProductos --Cuenta el numero de productos con la funcion COUNT--
WHERE NombreProducto LIKE 'a%'

SELECT AVG(PrecioProducto) FROM BaseProductos  --Promedio con la funcion AVG--

SELECT AVG(PrecioProducto) FROM BaseProductos
WHERE NombreProducto LIKE '%Aceite%'

SELECT * FROM BaseProductos
SELECT SUM(PrecioProducto) FROM BaseProductos  --Suma con la funcion SUM---
WHERE NombreProducto LIKE '%Aceite%'

SELECT FechaPedido, COUNT(CodigoPedido) FROM BasePedidos GROUP BY FechaPedido ORDER BY FechaPedido --agrupando y utilizando funciones--