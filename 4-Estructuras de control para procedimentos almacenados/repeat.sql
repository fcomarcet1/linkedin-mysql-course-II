create procedure sp_sumatorio(INOUT sumatoria INT)
begin
    declare numero int;
    set sumatoria = 0;

    repeat
        set sumatoria = sumatoria + numero;
        set numero = numero - 1;
    until numero < 1 end repeat;
end;

set  @sumatoria = 3;
call  sp_sumatorio(@sumatoria);
select @sumatoria;
