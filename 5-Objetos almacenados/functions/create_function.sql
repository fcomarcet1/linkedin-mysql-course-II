-- a diferencia de los sp siempre han de devolver un valor
-- no poseen parametros tipo in, out, o inout
-- hemos de indicar si son deterministas(mismo resultado ante los mismos parametrso de entrada) o no

delimiter //
create function fnc_edad(fecha date) returns integer deterministic
begin
    declare edad int;
    set edad = floor(datediff(now(),fecha)/365);

    return edad;
end;
//
delimiter ;

select id, name, fnc_edad(fecha) as edad from users