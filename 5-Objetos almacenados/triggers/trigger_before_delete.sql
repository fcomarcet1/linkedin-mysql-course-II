-- imaginemos que al eleiminar un registro da error ya que tiene un fk
-- queu depende de otra tabla.
-- podemos implementar un trigger para borrar el registro antes del delete

create trigger empleado_BEFORE_DELETE
    before delete
    on table_name
    for each row
begin
   delete from asociacion where asociacion.id = old.id;
end;