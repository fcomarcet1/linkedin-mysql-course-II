create trigger trigger_name
    before update on empleados
    for each row
begin
    -- old registro actual bd
    if (old.salario >= 400) then
        set new.salario = old.salario + old.salario * 0.01;
    else
        set new.salario = old.salario + old.salario * 0.02;
    end if;
end;


create trigger trigger_name
    after update on empleados
    for each row
begin
    update asociacion
    set nombre = new.nombre,
        apellido = new.apellido,
        email = new.email
    where id = new.id;
end;