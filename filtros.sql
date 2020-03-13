/*filtro basico*/

select * from BaseClientes 
where Sexo = 'Femenino'


/*Select con agracion de filtros and y or*/
select * from BaseClientes 
where CodigoCiudad = 11 and Sexo = 'Masculino'

select * from BaseClientes 
where FechaNac = '1960-05-01'  and Sexo = 'Masculino'

select * from BaseClientes 
where CodigoCiudad = 11  OR CodigoCiudad = 12



/*Agragacion de filtros con between*/
select * from BaseClientes 
where FechaNac BETWEEN '1991-01-01' and '1992-01-01'

select * from BaseClientes 
where CodigoCiudad BETWEEN 11 and 15


/*Selcion con filtros In*/
select * from BaseClientes 
where CodigoCiudad in (11,12) --IN es una abrevacion del OR

select * from BaseClientes 
where CodigoCiudad = 11 or CodigoCiudad = 12

select * from BasePedidos 
where CantidadProducto in (1,2,3)


SELECT * FROM BasePedidos
WHERE FechaPedido IN ('2018-01-01', '2018-03-07')


/*Seleccion con filtros like*/
select * from BaseClientes 
where CorreoCliente LIKE '%@gmail%' --Que contengan una palabra o frase especifica--

select * from BaseClientes 
where NombreCliente LIKE 'a%' --Comiencen con a--

select * from BaseClientes 
where NombreCliente LIKE '%a' --Terminen con a--


/*Seleccion y oredenando con ORDER BY*/
SELECT * FROM BaseProductos
WHERE PrecioProducto BETWEEN 1000 and 10000
ORDER BY PrecioProducto DESC






