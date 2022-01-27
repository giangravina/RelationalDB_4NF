-- Create Table + Inserts for Urgency Table

create table urgency
(
    urgency_id serial not null,
    title varchar(100) not null,
    constraint urgency_pk
        primary key (urgency_id)
);


/*              Urgency Rows					*/
INSERT INTO urgency (urgency_id, title) VALUES (1, 'Low');
INSERT INTO urgency (urgency_id, title) VALUES (2, 'Medium');
INSERT INTO urgency (urgency_id, title) VALUES (3, 'High');