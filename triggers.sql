/*CREATE TRIGGER <nombre del trigger> trigger=desencadenador
ON <nombre de la tabla>
AFTER / FOR / INSTEAD OF <INSERT, DELETE, UPDATE>
    AS
BEGIN
SET NONCOUNT ON;
-- inserta aqui las instrucciones
END**/

SELECT * FROM BaseCiudades

/*Trigger de ejemplo*/
/* --primera parte --
CREATE TRIGGER tr_ciudades_insert
ON BaseCiudades 
AFTER INSERT
AS
BEGIN
    PRINT 'Se realizó una acción de insert'
END*/

/*la insercion segunda parte*/
--INSERT Into BaseCiudades VALUES(1000, 'Nuevo dato 1', 'Nuevo Dato 1')--

CREATE TABLE logs_BaseCiudades
(
    Fecha DATE,
    Hora TIME,
    Nombre VARCHAR(100),
    Descripcion VARCHAR(200)

)


DROP TRIGGER tr_Ciudades_insert2

CREATE TRIGGER tr_Ciudades_insert2
ON BaseCiudades
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON
    INSERT Into logs_BaseCiudades (Fecha,Hora,Nombre,Descripcion)
    SELECT
        GETDATE()
        ,SYSDATETIME()
        ,@@SERVERNAME
        ,'Se ha insertado informacion en la tabla BaseCiudades'
END

INSERT Into BaseCiudades VALUES (3000, 'Nuevo dato 5', 'Nuevo Dato 5')


/*Eliminar trigger*/
CREATE TRIGGER tr_Ciudades_Delete
ON BaseCiudades
AFTER Delete
AS
BEGIN
    SET NOCOUNT ON
    Insert Into logs_BaseCiudades (Fecha,Hora,Nombre,Descripcion)
    SELECT
        GETDATE()
        ,SYSDATETIME()
        ,@@SERVERNAME
        ,'Se ha eliminado informacion de la tabla BaseCiudades'
END

DELETE BaseCiudades
WHERE CodigoCiudad=1000


DROP TRIGGER tr_Ciudades_update
/*Trigger de actualizacion*/
CREATE TRIGGER tr_Ciudades_update
ON BaseCiudades
INSTEAD OF UPDATE
AS
BEGIN
    SET NOCOUNT ON
    INSERT Into logs_BaseCiudades (Fecha,Hora,Nombre,Descripcion)
    SELECT
        GETDATE()
        ,SYSDATETIME()
        ,@@SERVERNAME
        ,'Se ha actualizado informacion en la tabla BaseCiudades'
    PRINT 'No se puede actualizar la informacion de esta tabla'
END

UPDATE BaseCiudades
SET CodigoCiudad = 10000
WHERE CodigoCiudad = 2000

Select * FROM logs_BaseCiudades