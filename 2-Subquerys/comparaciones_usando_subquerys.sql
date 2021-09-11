select * from producto
where precio <= (
    select avg(precio) from producto where idCategoria = 5)
and idCategoria = 5 ;