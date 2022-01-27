-- Create Table + Inserts for Techs Table

create table techs
(
    tech_id    serial not null,
    first_name varchar(100)                                            not null,
    last_name  varchar(100)                                            not null,
    email      varchar(100)                                            not null,
    phone      varchar(100)                                            not null,
    company_id integer                                                 not null,
    constraint techs_pk
        primary key (tech_id),
    constraint "FK_Company"
        foreign key (company_id) references company
);

/*              Techs Rows					*/
INSERT INTO techs (tech_id, first_name, last_name, email, phone, company_id) VALUES (6, 'Ed', 'Lee', 'elee@it.com', '209-381-3811', 12);
INSERT INTO techs (tech_id, first_name, last_name, email, phone, company_id) VALUES (1, 'Tim', 'Cook', 'tcook@it.com', '222-222-9313', 12);
INSERT INTO techs (tech_id, first_name, last_name, email, phone, company_id) VALUES (3, 'Stephanie', 'Humphries', 'shumphries@it.com', '294-394-2941', 12);
INSERT INTO techs (tech_id, first_name, last_name, email, phone, company_id) VALUES (26, 'Lloyd', 'Banks', 'lbanks@it.com', '203-592-3810', 12);
INSERT INTO techs (tech_id, first_name, last_name, email, phone, company_id) VALUES (21, 'Ruthie', 'Bonilla', 'rbonilla@it.com', '203-402-3183', 12);
INSERT INTO techs (tech_id, first_name, last_name, email, phone, company_id) VALUES (20, 'Bill', 'Man', 'bmanit.com', '203-193-2938', 12);
INSERT INTO techs (tech_id, first_name, last_name, email, phone, company_id) VALUES (23, 'Todd', 'Peyton', 'tpeyton@it.com', '203-492-4381', 12);
INSERT INTO techs (tech_id, first_name, last_name, email, phone, company_id) VALUES (30, 'Francesca', 'Print', 'fprint@it.com', '203-549-2893', 12);
INSERT INTO techs (tech_id, first_name, last_name, email, phone, company_id) VALUES (25, 'Walton', 'Brown', 'wbrown@it.com', '203-491-9121', 12);
INSERT INTO techs (tech_id, first_name, last_name, email, phone, company_id) VALUES (24, 'Jason', 'Williams', 'jwilliams@it.com', '203-912-3918', 12);
INSERT INTO techs (tech_id, first_name, last_name, email, phone, company_id) VALUES (27, 'Curtis', 'Mayfield', 'cmayfield@it.com', '203-489-4382', 12);
INSERT INTO techs (tech_id, first_name, last_name, email, phone, company_id) VALUES (18, 'Krissy', 'Lee', 'klee@it.com', '203-492-3913', 12);
INSERT INTO techs (tech_id, first_name, last_name, email, phone, company_id) VALUES (13, 'Joe', 'Will', 'jwill@it.com', '203-492-3911', 12);
INSERT INTO techs (tech_id, first_name, last_name, email, phone, company_id) VALUES (12, 'Rebecca', 'Long', 'rlong@it.com', '203-492-4921', 12);
INSERT INTO techs (tech_id, first_name, last_name, email, phone, company_id) VALUES (15, 'Brandon', 'Chin', 'bchin@it.com', '203-492-4910', 12);
INSERT INTO techs (tech_id, first_name, last_name, email, phone, company_id) VALUES (22, 'Joclyn', 'Williams', 'jwilliams@it.com', '203-592-8942', 12);
INSERT INTO techs (tech_id, first_name, last_name, email, phone, company_id) VALUES (17, 'Mal', 'Jackson', 'mjackson@it.com', '203-410-1291', 12);
INSERT INTO techs (tech_id, first_name, last_name, email, phone, company_id) VALUES (16, 'Joe', 'Budden', 'jbudden@it.com', '203-492-4921', 12);
INSERT INTO techs (tech_id, first_name, last_name, email, phone, company_id) VALUES (19, 'Royce', 'Patrick', 'rpatrick@it.com', '203-592-4381', 12);
INSERT INTO techs (tech_id, first_name, last_name, email, phone, company_id) VALUES (29, 'Sam', 'Green', 'sgreen@it.com', '203-491-3810', 12);
INSERT INTO techs (tech_id, first_name, last_name, email, phone, company_id) VALUES (28, 'Naomi', 'LoStuto', 'lstuto@it.com', '203-592-3931', 12);
INSERT INTO techs (tech_id, first_name, last_name, email, phone, company_id) VALUES (10, 'Ronda', 'Williams', 'rwilliams@it.com', '203-492-4200', 12);
INSERT INTO techs (tech_id, first_name, last_name, email, phone, company_id) VALUES (5, 'Keith', 'Osten', 'kosten@it.com', '209-298-3821', 12);
INSERT INTO techs (tech_id, first_name, last_name, email, phone, company_id) VALUES (4, 'Juan', 'Rio', 'jrio@it.com', '204-382-3921', 12);
INSERT INTO techs (tech_id, first_name, last_name, email, phone, company_id) VALUES (7, 'Jesse', 'Tree', 'jtree@it.com', '203-392-3821', 12);
INSERT INTO techs (tech_id, first_name, last_name, email, phone, company_id) VALUES (14, 'Lina', 'Obrien', 'lobrien@it.com', '203-492-4920', 12);
INSERT INTO techs (tech_id, first_name, last_name, email, phone, company_id) VALUES (9, 'Lisa', 'Green', 'lgreen@it.com', '203-482-3842', 12);
INSERT INTO techs (tech_id, first_name, last_name, email, phone, company_id) VALUES (8, 'Julia', 'Rod', 'jrod@it.com', '203-289-3912', 12);
INSERT INTO techs (tech_id, first_name, last_name, email, phone, company_id) VALUES (11, 'David', 'Foster', 'dfoster@it.com', '203-492-4921', 12);
INSERT INTO techs (tech_id, first_name, last_name, email, phone, company_id) VALUES (2, 'Paul', 'Newman', 'pnewman@it.com', '293-239-3911', 12);