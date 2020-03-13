/*Se requiere la siguiente informacion: En la base de pedidos cambie el campo codigo de ciudad por el nombre de la ciudad,
adicional al lado del campo codigo producto agregue un nuevo campo con el nombre del producto*/

SELECT * FROM BasePedidos
SELECT * FROM BaseCiudades
SELECT * FROM BaseProductos

SELECT
    x.CodigoPedido, x.DocumentoCliente, y.NombreCiudad, x.CodigoProducto, z.NombreProducto
FROM 
    BasePedidos as x
LEFT JOIN BaseCiudades as y
ON x.CodigoCiudad = y.CodigoCiudad
LEFT JOIN BaseProductos as z 
ON x.CodigoProducto = z.CodigoProducto



SELECT
    x.CodigoPedido, x.DocumentoCliente, y.NombreCiudad, x.CodigoProducto, z.NombreProducto
FROM 
    BasePedidos as x
LEFT JOIN BaseCiudades as y
ON x.CodigoCiudad = y.CodigoCiudad
LEFT JOIN BaseProductos as z 
ON x.CodigoProducto = z.CodigoProducto
WHERE y.NombreCiudad IS NULL
