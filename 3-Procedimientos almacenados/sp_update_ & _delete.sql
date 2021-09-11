/* En MYSQL no se permite modificar los parámetros y el cuerpo de un procedimiento.
   Solo algunos parametros pueden ser modificados como comment*/

/*Update sp drop + crearlo de nuevo*/
USE employees;

DELIMITER $$
DROP PROCEDURE IF EXISTS  sp_department_getList;
CREATE PROCEDURE sp_department_getList()
BEGIN
    SELECT dept_no,dept_name
    FROM departments;
END
$$
DELIMITER ;

CALL employees.sp_department_getList();

ALTER PROCEDURE sp_department_getList
    COMMENT 'Obtiene un listado de todos los departamentos';

SHOW PROCEDURE STATUS
    WHERE Db = 'employees';


/* Drop sp*/
DROP PROCEDURE IF EXISTS sp_department_getList;