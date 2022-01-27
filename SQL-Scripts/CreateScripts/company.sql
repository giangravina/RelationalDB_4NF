-- Create Table + Inserts for Company Table

create table company
(
    company_id serial not null,
    name       varchar(100) not null,
    constraint company_pk
        primary key (company_id)
);

/*              Company Rows					*/
INSERT INTO company (company_id, name) VALUES (1, 'Omni');
INSERT INTO company (company_id, name) VALUES (2, 'NASA');
INSERT INTO company (company_id, name) VALUES (3, 'Boeing');
INSERT INTO company (company_id, name) VALUES (4, 'Lockheed Martin');
INSERT INTO company (company_id, name) VALUES (5, 'Amazon');
INSERT INTO company (company_id, name) VALUES (6, 'Google');
INSERT INTO company (company_id, name) VALUES (7, 'Yahoo');
INSERT INTO company (company_id, name) VALUES (8, 'Vizio');
INSERT INTO company (company_id, name) VALUES (10, 'Asus');
INSERT INTO company (company_id, name) VALUES (11, 'Dell');
INSERT INTO company (company_id, name) VALUES (12, 'TechSolutions');