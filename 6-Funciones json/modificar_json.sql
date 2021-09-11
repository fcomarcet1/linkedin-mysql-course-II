-- actualizar json
update proveedores
set contacto  = json_set(columna, '$.propiedad_a_cambiar', 'nuevo_valor')
where id = 55;


update proveedores
set contacto  = json_replace(columna, '$.propiedad_a_cambiar', 'nuevo_valor')
where id = 55;

-- insertar propiedad
update proveedores
set contacto  = json_insert(columna, '$.propiedad_a_insertar', 'nuevo_valor')
where id = 55;


