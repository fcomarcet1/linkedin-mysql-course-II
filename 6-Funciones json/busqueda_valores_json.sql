select id, contacto->'$.nombre' as nombre
from empleados;

select * from empleados
where json_contains(columna, 'valor_a_buscar', '$.propiedad');

select json_contains_path(columna, 'one', '$.propiedad');

select
       id,
       json_unquote(extract(columna, '$.propiedad1')) as prop1,
       json_unquote(json_extract(columna, '$.propiedad2')) as prop2
from proveedor;

select
    id,
    json_extract(columna, '$.propiedad1') as prop1,
    json_extract(columna, '$.propiedad2') as prop2
from proveedor;

select json_search(columns, 'all', 'valor_a_buscar') as ruta
from proveedor
group by ruta; -- $.nombre