-- Create Table + Inserts for End Users Table

create table end_users
(
    user_id    serial not null,
    first_name varchar(50) not null,
    last_name  varchar(50) not null,
    phone      varchar(50) not null,
    email      varchar(50) not null,
    asset_tag  varchar(50) not null,
    type_id    integer     not null,
    company_id integer     not null,
    hire_date  date,
    constraint users_pk
        primary key (user_id)
);

alter table end_users
    add constraint "FK_CompID"
        foreign key (company_id) references company;

alter table end_users
    add constraint "FK_TypeID"
        foreign key (type_id) references type;


/*              User rows					*/
INSERT INTO end_users (user_id, first_name, last_name, phone, email, asset_tag, type_id, company_id, hire_date) VALUES (7, 'Julio', 'Rivero', '203-111-4829', 'jrivero@corp.com', 'A7', 1, 1, '2020-01-04');
INSERT INTO end_users (user_id, first_name, last_name, phone, email, asset_tag, type_id, company_id, hire_date) VALUES (27, 'Ben', 'Jerry', '203-443-0911', 'bjerry@corp.com', 'A27', 1, 1, '2020-03-12');
INSERT INTO end_users (user_id, first_name, last_name, phone, email, asset_tag, type_id, company_id, hire_date) VALUES (16, 'Jake', 'John', '203-094-9921', 'jjohn@corp.com', 'A16', 1, 1, '2020-02-04');
INSERT INTO end_users (user_id, first_name, last_name, phone, email, asset_tag, type_id, company_id, hire_date) VALUES (10, 'Susanne', 'Wiliams', '203-243-2376', 'swilliams@corp.com', 'A10', 1, 1, '2020-01-04');
INSERT INTO end_users (user_id, first_name, last_name, phone, email, asset_tag, type_id, company_id, hire_date) VALUES (3, 'Mike', 'Jones', '281-330-8004', 'mjones@corp.com', 'A3', 2, 4, '2020-12-02');
INSERT INTO end_users (user_id, first_name, last_name, phone, email, asset_tag, type_id, company_id, hire_date) VALUES (8, 'Jim', 'Rhyno
', '203-221-3284', 'jrhyno@corp.com', 'A8', 1, 1, '2020-01-04');
INSERT INTO end_users (user_id, first_name, last_name, phone, email, asset_tag, type_id, company_id, hire_date) VALUES (28, 'Julio', 'Iglesias', '203-221-0934', 'jiglesias@corp.com', 'A28', 1, 1, '2020-03-12');
INSERT INTO end_users (user_id, first_name, last_name, phone, email, asset_tag, type_id, company_id, hire_date) VALUES (23, 'Paul', 'Wall', '203-141-0911', 'pwall@corp.com', 'A23', 2, 6, '2020-03-07');
INSERT INTO end_users (user_id, first_name, last_name, phone, email, asset_tag, type_id, company_id, hire_date) VALUES (5, 'Homer', 'Simpson', '203-111-4829', 'hsimpson@corp.com', 'A5', 1, 1, '2020-12-06');
INSERT INTO end_users (user_id, first_name, last_name, phone, email, asset_tag, type_id, company_id, hire_date) VALUES (14, 'Lucia', 'Marcello', '203-377-9733', 'lmarcello@corp.com', 'A14', 2, 6, '2020-02-01');
INSERT INTO end_users (user_id, first_name, last_name, phone, email, asset_tag, type_id, company_id, hire_date) VALUES (4, 'Jessica', 'Scott', '203-820-4822', 'jscott@corp.com', 'A4', 1, 1, '2020-12-04');
INSERT INTO end_users (user_id, first_name, last_name, phone, email, asset_tag, type_id, company_id, hire_date) VALUES (24, 'Mike', 'Jordan', '203-234-2231', 'mjordan@corp.com', 'A24', 2, 6, '2020-03-07');
INSERT INTO end_users (user_id, first_name, last_name, phone, email, asset_tag, type_id, company_id, hire_date) VALUES (17, 'Cesar', 'Milan', '203-911-2899', 'cmilan@corp.com', 'A17', 1, 1, '2020-02-13');
INSERT INTO end_users (user_id, first_name, last_name, phone, email, asset_tag, type_id, company_id, hire_date) VALUES (6, 'Roberto', 'Gonzales', '283-847-3719', 'rgonazles@corp.com', 'A6', 1, 1, '2020-01-06');
INSERT INTO end_users (user_id, first_name, last_name, phone, email, asset_tag, type_id, company_id, hire_date) VALUES (15, 'Freddie', 'Giulianni', '203-482-8820', 'fgiulianni@corp.com
', 'A15', 1, 1, '2020-02-03');
INSERT INTO end_users (user_id, first_name, last_name, phone, email, asset_tag, type_id, company_id, hire_date) VALUES (22, 'Stephanie', 'Walker', '203-198-0981', 'swalker@corp.com', 'A22', 1, 1, '2020-03-05');
INSERT INTO end_users (user_id, first_name, last_name, phone, email, asset_tag, type_id, company_id, hire_date) VALUES (21, 'Moises', 'Perez', '203-999-0111', 'mperez@corp.com', 'A21', 1, 1, '2020-03-05');
INSERT INTO end_users (user_id, first_name, last_name, phone, email, asset_tag, type_id, company_id, hire_date) VALUES (9, 'Pablo', 'Cruz', '203-428-2355', 'pcruz@corp.com', 'A9', 2, 8, '2020-04-03');
INSERT INTO end_users (user_id, first_name, last_name, phone, email, asset_tag, type_id, company_id, hire_date) VALUES (26, 'Steve', 'Wozniak', '203-553-0921', 'swozniak@corp.com', 'A26', 1, 1, '2020-03-10');
INSERT INTO end_users (user_id, first_name, last_name, phone, email, asset_tag, type_id, company_id, hire_date) VALUES (12, 'Paola', 'Stuto', '203-138-1283', 'pstuto@corp.com', 'A12', 2, 6, '2020-01-06');
INSERT INTO end_users (user_id, first_name, last_name, phone, email, asset_tag, type_id, company_id, hire_date) VALUES (30, 'Roger', 'Stone', '203-134-0913', 'rstone@corp.com', 'A30', 2, 4, '2020-03-18');
INSERT INTO end_users (user_id, first_name, last_name, phone, email, asset_tag, type_id, company_id, hire_date) VALUES (19, 'James', 'Bigby', '425-982-9955', 'jbigby@corp.com', 'A19', 2, 3, '2020-02-16');
INSERT INTO end_users (user_id, first_name, last_name, phone, email, asset_tag, type_id, company_id, hire_date) VALUES (20, 'Bryant', 'Kennedy', '203-777-1122', 'bkennedy@corp.com', 'A20', 2, 3, '2020-03-03');
INSERT INTO end_users (user_id, first_name, last_name, phone, email, asset_tag, type_id, company_id, hire_date) VALUES (25, 'Thomas', 'Jefferson', '203-134-0922', 'tjefferson@corp.com', 'A25', 1, 1, '2020-03-03');
INSERT INTO end_users (user_id, first_name, last_name, phone, email, asset_tag, type_id, company_id, hire_date) VALUES (2, 'Christopher', 'Wallace', '101-999-2831', 'cwallace@corp.com', 'A2', 2, 5, '2020-12-02');
INSERT INTO end_users (user_id, first_name, last_name, phone, email, asset_tag, type_id, company_id, hire_date) VALUES (1, 'Billy', 'Joel', '101-012-1923', 'bjoel@corp.com', 'A1', 1, 1, '2020-12-01');
INSERT INTO end_users (user_id, first_name, last_name, phone, email, asset_tag, type_id, company_id, hire_date) VALUES (29, 'Lance', 'Carter', '203-442-0911', 'lcarter@corp.com', 'A29', 2, 7, '2020-03-17');
INSERT INTO end_users (user_id, first_name, last_name, phone, email, asset_tag, type_id, company_id, hire_date) VALUES (18, 'Julio', 'Sanchez', '203-193-1888', 'jsanchez@corp.com', 'A18', 1, 1, '2020-02-14');
INSERT INTO end_users (user_id, first_name, last_name, phone, email, asset_tag, type_id, company_id, hire_date) VALUES (11, 'Jenna', 'Crabgrass', '425-318-2338', 'jcrabgrass@corp.com', 'A11', 1, 1, '2020-01-05');
INSERT INTO end_users (user_id, first_name, last_name, phone, email, asset_tag, type_id, company_id, hire_date) VALUES (13, 'Ruby', 'Jameson', '203-186-3813', 'rjameson@corp.com', 'A13', 2, 6, '2020-01-07');