-- Create Table + Inserts for Status Table

create table status
(
	status_id serial
		constraint status_pkey
			primary key,
	name varchar(100)
);

/*              Status Rows					*/
INSERT INTO status (status_id, name) VALUES (2, 'Escalated');
INSERT INTO status (status_id, name) VALUES (1, 'In Progress');
INSERT INTO status (status_id, name) VALUES (3, 'Closed');