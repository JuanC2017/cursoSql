/* 1. Sacar las frecuencias de pedidos por clientes: (cuantas veces nos hizo pedidos el cliente) del año 2018*/

SELECT * FROM BaseClientes
SELECT * FROM BasePedidos


SELECT
    anillouno.DocumentoCliente
    , COUNT(anillouno.cantidad)
FROM(
    SELECT
        p.DocumentoCliente
        ,p.FechaPedido
        ,COUNT(p.FechaPedido) as cantidad
    FROM 
        BasePedidos as p
    WHERE
        YEAR(P.FechaPedido) = '2018'
        AND p.DocumentoCliente = 154549298
    GROUP BY
        p.DocumentoCliente, p.FechaPedido) as anillouno

GROUP BY anillouno.DocumentoCliente