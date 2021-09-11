-- los bloqueos de tablas evitan que otras sesiones modifiquen
-- las tablas si son requeridas en otra sesion
lock tables cliente write ;

update cliente set email = 'mail@mail.es' where id = 11;

unlock tables;