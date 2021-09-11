-- convertir json a datos tabulares
select tb_contacto.*
from proveedor,
     json_table(
         table_with_json,
         '$'
         columns (
             nombre varchar(25) path '$.nombre',
             apellidos varchar(25) path '$.apellidos',
             email varchar(25) path '$.email',
             )
    ) as tb_contacto
where estado = 'Texas';

