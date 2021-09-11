-- longitud json
select json_length(columna)
from tabla
where id = 2; -- 6

-- devolver tipo de valor
select json_type(columna)
from tabla
where id = 2; -- object

-- devolver tipo de valor de una propiedad
-- devolver tipo de valor
select json_type(columna)
from tabla
where id = 2; -- object -- string

-- validar si un doc es un json valido
-- devolver tipo de valor
select json_valid(columna)
from tabla
where id = 2; -- 1