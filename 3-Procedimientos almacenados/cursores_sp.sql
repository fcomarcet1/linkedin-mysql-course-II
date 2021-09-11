-- Los cursores permiten recorrer tablas de datos y almacenarlos temporalmente
-- deben ser declarados despues de las variables y antes de los handlers.
-- Solo son de lectura

create procedure sp_product_price(IN idProducto int)
begin
    declare precioProducto double(10,2);

    -- cursor
    declare cursor_precio cursor for
        select precio
        from productos
        where id = idProducto;

    open cursor_precio;
        fetch cursor_precio into precioProducto;
    close cursor_precio;

    -- Handlers

    select concat('El precio es:', precioProducto) as message;
end;

-- Cal sp
call sp_product_price(56);