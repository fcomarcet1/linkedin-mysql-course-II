
create procedure sp_categorias_productos(IN categoria int)
begin
    select * from productos where id = categoria;
end;

/* llamar sp*/
call sp_categorias_productos(2);

SHOW PROCEDURE STATUS
    WHERE Db = 'employees';