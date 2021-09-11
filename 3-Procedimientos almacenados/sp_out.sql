
create procedure sp_min_salary(OUT salario double)
begin
    select min(empleados.salario) into salario from empleados;
end;
/* execute sp*/
call sp_min_salary(@salario);
select @salario;

SHOW PROCEDURE STATUS
    WHERE Db = 'employees';

