
create procedure sp_num_empeados_dpto(INOUT idDpto INT)
begin
    select count(*) into idDpto from empleados where empleados.idDpto = idDpto;
end;
/* execute sp*/
set @idDpto = 5;
call sp_num_empeados_dpto(@idDpto);
select @idDpt as num_empleados;

SHOW PROCEDURE STATUS
    WHERE Db = 'employees';