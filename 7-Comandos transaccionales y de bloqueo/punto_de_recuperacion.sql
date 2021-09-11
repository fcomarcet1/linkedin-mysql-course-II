-- puntos donde podemos recuperar la transaccion
start transaction ;
    -- set save point
    savepoint sv_inicial;
    delete from users where id = 66;

-- podemos ejecutar el rollback al punto seguro
rollback to sv_inicial;