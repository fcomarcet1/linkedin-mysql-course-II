-- similares a crontab
show processlist ;
set global event_scheduler = ON;

create table token
(
	id int auto_increment not null,
	token char(36) not null,

	constraint token_pk primary key (id)
);

-- crear evento
create event if not exists ev_token on schedule
    every 2 second
    do
    insert into token (token) values (md5(current_timestamp()));

-- parar evento
alter event ev_token disable ;

-- eliminar evento
drop event ev_token;



