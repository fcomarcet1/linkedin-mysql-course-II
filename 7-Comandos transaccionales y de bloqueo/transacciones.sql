select @autocommit; -- defaul true

-- habilitar/deshabilitar
set @autocommit = 1;
set @autocommit = 0;

start transaction;
update productos set name = 'lerele' where id = 5;


commit ;
rollback ;