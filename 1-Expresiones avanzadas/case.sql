# Dado un numero devolverlo en letras
SELECT
    CASE number
        WHEN number = 1 THEN 'one'
        WHEN number = 2 THEN 'two'
    ELSE 'other number'
    END AS value;

SELECT idFactura, idProducto,
CASE
    WHEN cantidad > 2 THEN 'Mas de 2 productos vendidos'
    WHEN cantidad = 2 THEN '2 productos vendidos'
    ELSE 'Menos de 2 productos vendidos'
END AS catidad_vendida
FROM detalle_factura;

SELECT name,
CASE
    WHEN email IS NULL THEN 'El usuario no tiene email registrado'
    ELSE email
END AS email
FROM users;


