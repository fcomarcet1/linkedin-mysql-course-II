# si es null devuelve el 2º argumante
SELECT  IFNULL(null, 'texto') AS result; # texto

SELECT nombre, IFNULL(email, telefono) AS contacto
FROm clientes;

SELECT nombre,
       IFNULL( SELECT email FROM cliente WHERE idCliente = 10, 'No tiene email asignado' ) AS email
FROM clientes
WHERE idCliente = 10;

# nullif compara 2 expresiones si son iguales devuelve null sino el 1º param
SELECT NULLIF(1, 1); # null
SELECT NULLIF(1, 2); # 1

SELECT
    NULLIF(
        (SELECT precio FROM productos WHERE idProducto = 1),
        (SELECT precio FROM productos WHERE idProducto = 2)
    ); # al ser valores dif devuelve 1º arg