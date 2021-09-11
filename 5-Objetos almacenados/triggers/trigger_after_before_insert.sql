delimiter //

create trigger trg_empleado_BEFORE_INSERT
    before insert on empleados
    for each row
begin
    set new.name = concat(upper(substring(new.name, 1, 1)), substring(new.name, 2));
    set new.apellido = concat(upper(substring(new.apellido, 1, 1)), substring(new.apellido, 2));
end;

//
delimiter ;


delimiter //
create trigger trg_empleado_AFTER_INSERT
    after insert
    on empleados
    for each row
begin
    insert into asociacion (id, name, surname, admissionDate)
    values (new.id, new.name, new.surname, new.admissionDate);
end;
//
delimiter ;