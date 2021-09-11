create procedure sp_nivel_ventas(IN idProducto int, OUT nivelVentas varchar(30))
begin
    declare cantidadVentas int;
    select sum(cantidad) into cantidadVentas from ventas where id = idProducto;

    if cantidadVentas > 500 then
        set nivelVentas = 'Muy buena';
    elseif cantidadVentas > 100 then
        set nivelVentas = 'Buena';
    else
        set nivelVentas = 'Mejorable';
    end if;
end;