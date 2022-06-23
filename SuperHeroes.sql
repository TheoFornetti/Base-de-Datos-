create database superheroes;
drop database superheroesñ ;

use superheroes;

create Table creador(
	id int primary key not null,
    nombre varchar(20) not null
);

insert into creador values (1, "Marvel");
insert into creador values (2, "DC");

select * from personajes; 

create table personajes(
	id_personaje int primary key not null,
    nombre_real varchar(20) not null,
    personaje varchar(20) not null,
    fuerza varchar(10) not null,
    velocidad int not null,
    creacion int not null,
    ocupacion varchar(20) not null,
    id_creador int not null,
    foreign key(id_creador) references creador(id)
    
);


insert into personajes values(1,"Peter Parker", "Spider Man", "1000", 5,  1962, "Fotografo", 1);
insert into personajes values(2,"Bruce Waine", "Batman", "200", 1,  1939, "Empresario", 2);
insert into personajes values(3,"James Logan", "Wolverine", "3000", 7,  1974, "X-Men", 1);
insert into personajes values(4,"Julia Nazar", "SuperShuls", "Infinito", 5, 2018, "Psicologa Hot", 1);

select * from creador, personajes WHERE creador.id = personajes.id_creador and creador.id=1; 


Update personajes set ocupacion="Jedi" where id_personaje=4;



