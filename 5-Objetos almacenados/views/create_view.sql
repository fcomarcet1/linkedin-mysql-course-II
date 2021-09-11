create view vw_ventas as
select id, name
from detalle_factura;

create view view_clientsList as
select * from clientes;

select * from vw_ventas;
select id, name from vw_ventas;
select * from view_clientsList;