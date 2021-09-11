# estos operadores sirven para comparar los valores de una subconsulta
# any compara valores con el result de la subquery devuelve true si el valor coincide
# seleccionar protuctos que alguna vez hayan sido vendidos
select idProducto, nombre
from productos
where idProducto = ANY (select idProducto from detalle_factura);

select idFactura, idProducto, (cantidad * precio) as total
from detalle_factura
where idProducto = SOME (
    select idProducto from producto where idCategoria in(1, 2));

# all nos permite comparar el valor con cada valor de la subconsulta devuelve true si todos los valores conciden
# categorias de los productos con los precios mas altos
select idCategoria, avg(precioUnitario) as precioUnitario
from producto
group by idCategoria
having avg (precioUnitario) >= all (select avg(precioUnitario) from productos)