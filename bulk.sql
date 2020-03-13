/*Volcado de informacion como atrea programada*/

DECLARE
@Fecha DATE

SET @Fecha = '2018-04-06'

IF OBJECT_ID('tempdb..#BasePedidos2') IS NOT NULL DROP TABLE #BasePedidos2

Create table #BasePedidos2(
    CodigoPedido VARCHAR(100) not NULL,
    DocumentoCliente INT NULL,
    CodigoCiudad INT NULL,
    CodigoProducto VARCHAR(100) NULL,
    CantidadProducto INT,
    FechaPedido DATE,
    HoraPedido TIME
)

BULK INSERT #BasePedidos2 
FROM '/home/juanlond/Desarrollo/curoSql/Curso Sql 1/Ejercicio Sp/Base_Pedidos_2.txt'
WITH
    (Firstrow=2)



IF NOT EXISTS (Select * FROM BasePedidos Where FechaPedido=@Fecha)
BEGIN
INSERT into BasePedidos  
Select 
    *
FROM #BasePedidos2
WHERE FechaPedido=@Fecha
END
ELSE
BEGIN
PRINT 'Ya tienes pedidos con la fecha indicada'
END



CREATE TABLE #temporalPrueba(
    campouno VARCHAR(50),
    campodos INT
)