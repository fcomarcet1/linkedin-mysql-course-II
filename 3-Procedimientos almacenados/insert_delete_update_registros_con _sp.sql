/* Insert*/
create procedure sp_insert_product(IN name char(30), category int, price decimal(10,2))
begin
    insert into producto (name, idCategory, price)
    value (name, category, price);
end;

call sp_insert_product('manolo', 45, 25.6);

/* Update*/
create procedure sp_update_product(
IN
    idProduct int,
    category int,
    name char(45),
    price decimal(5,2))
begin
    update productos
    set name = name,
        price = price,
        category = category
    where id = idProduct;
end;

set @idProduct = 10,
    @category = 3,
    @price = 25.6,
    @name = 'tornillo M34';
call sp_update_product(@idProduct, @category, @name, @price);

/*Delete*/
create procedure sp_delete_product(IN idProduct int)

begin
    delete from productos where id = idProduct;
end;

set @idProduct = 10;
call sp_delete_product(@idProduct);