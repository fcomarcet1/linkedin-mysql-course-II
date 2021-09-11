create procedure sp_factorial(INOUT numero int)
begin
    declare factorial, contador int;
    set factorial = 1;
    set contador = 1;

    while contador <= numero do
        set factorial = factorial * factorial;
        set contador = contador + 1 ;
    end while;

    set numero = factorial;
end;

set @factorial = 5;
call sp_factorial(@factorial);
select @factorial;