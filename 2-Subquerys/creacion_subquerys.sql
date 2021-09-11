# empleados cuyo salario sea mayor a la media de salarios
SELECT * FROM empleados
WHERE salario > (SELECT AVG(salario) FROM empleados);

# empleados que no pertenecen al departamento general
SELECT * FROM empleados
WHERE idDepartamento NOT IN (
    SELECT idDepartamento FROM departamento WHERE nombre LIKE '%General%'
    )
;

# facturas de los clientes que sean de brazil o canada
SELECT idCliente, idFactura FROM factura
WHERE idCliente  IN (
    SELECT idCliente FROM clientes WHERE pais = 'Canada' OR pais = 'Brazil'
    )
;