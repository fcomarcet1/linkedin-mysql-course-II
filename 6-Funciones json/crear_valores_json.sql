create table proveedor
(
	id int auto_increment,
	contacto json null,
	constraint proveedor_pk primary key (id)
);

insert into proveedor (contacto) values ('{"name": "pepe", "telefono":123456 }');

