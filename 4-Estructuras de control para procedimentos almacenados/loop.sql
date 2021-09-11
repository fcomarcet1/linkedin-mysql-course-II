create procedure sp_aplicar_aumento()
begin
    declare empleadoActual int;
    declare salarioActual double(10,2);
    declare endLoop boolean default false;

    declare cursor_empleados cursor for
        select idEmpleado, salario from empleados;

    declare continue handler for not found
        set endLoop = true;

    open cursor_empleados;
        etiquetaLoop: Loop
            fetch cursor_empleados into empleadoActual, salarioActual;
            if endLoop then
                Leave etiquetaLoop;
            end if;
            if salarioActual <= 410 then
                update empleados
                set salario = salario + salario * 0.01
                where id = empleadoActual;
            else
                update empleados
                set salario = salario + salario * 0.02
                where id = empleadoActual;
            end if;
        end loop etiquetaLoop;
    close cursor_empleados;

end;