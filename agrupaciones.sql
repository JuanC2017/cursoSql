/*- 1. Necesitamos saber la cantidad de pedidos realizados por codigo de producto para el total de la base*/
/*- 2. Necesitamos saber la cantidad de pedidos relizados por fecha y hora para el año 2018*/
/*- 3. Necesitamos saber la cantidad de clientes por codigo de ciudad, ordene la informacion de mayor a menor*/

SELECT * FROM BasePedidos
SELECT * FROM BaseClientes
SELECT * FROM BaseCiudades
SELECT * FROM BaseProductos

/*1. */
SELECT CodigoProducto
,COUNT(CantidadProducto) as sumaProducto 
FROM BasePedidos as producto 
GROUP BY CodigoProducto
ORDER BY sumaProducto DESC

/*2*/
SELECT FechaPedido, left(HoraPedido, 8) AS HoraPedido
, SUM(CantidadProducto) as sumaProducto 
FROM BasePedidos as producto
WHERE FechaPedido BETWEEN '2018-01-01' and '2018-12-31'
GROUP BY FechaPedido, HoraPedido
ORDER BY sumaProducto DESC

/*3*/
SELECT CodigoCiudad
, COUNT(CodigoCiudad) as sumaCiudad
FROM BaseClientes AS clientes
GROUP BY CodigoCiudad
ORDER BY sumaCiudad DESC
