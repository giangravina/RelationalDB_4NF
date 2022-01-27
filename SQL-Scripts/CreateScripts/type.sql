-- Create Table + Inserts for User Type Table

create table type
(
    type_id serial not null,
    title   varchar(100) not null,
    constraint type_pk
        primary key (type_id)
);

/*              Type Rows					*/
INSERT INTO type (type_id, title) VALUES (1, 'Internal');
INSERT INTO type (type_id, title) VALUES (2, 'External');