SELECT
    IF(1 < 2, true, false) AS result;

SELECT idProducto,
    IF(cantidad > 1 , cantidad * precio, precio) AS total
FROM detalle_factura;

SELECT name,
    IF(createdAt < '2016-12-31', CONCAT(idEmpleado, '-16'),
       IF(createdAt < '2017-12-31', CONCAT(idEmpleado, '-17'),
          IF(createdAt < '2018-12-31', CONCAT(idEmpleado, '-18'),
             CONCAT(idEmpleado, '-19') # else
          )
       )
    ) AS codigo
FROM empleados ;


