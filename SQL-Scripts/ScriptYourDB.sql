/*              CREATE TABLES					*/

create table company
(
    company_id serial not null,
    name       varchar(100) not null,
    constraint company_pk
        primary key (company_id)
);

create table type
(
    type_id serial not null,
    title   varchar(100) not null,
    constraint type_pk
        primary key (type_id)
);

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

create table status
(
	status_id serial
		constraint status_pkey
			primary key,
	name varchar(100)
);

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

create table urgency
(
    urgency_id serial not null,
    title varchar(100) not null,
    constraint urgency_pk
        primary key (urgency_id)
);

create table tickets
(
    ticket_id   serial not null,
    title       varchar(100),
    description varchar(255),
    date_opened date,
    status_id   integer,
    tech_id     integer not null,
    user_id     integer not null,
    activity_id serial not null,
    urgency_id  integer not null,
    constraint tickets_pkey
        primary key (ticket_id),
    constraint fk_status
        foreign key (status_id) references status,
    constraint fk_tech
        foreign key (tech_id) references techs,
    constraint fk_users
        foreign key (user_id) references end_users,
    constraint fk_urgency
        foreign key (urgency_id) references urgency
);

create table activity_work
(
    activity_id serial not null,
    ticket_id serial not null,
    work_notes  varchar(255) not null,
    constraint activity_pk
        primary key (activity_id),
    constraint fk_ticket
        foreign key (ticket_id) references tickets
);


/*              Loading data rows					*/

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

/*              Type Rows					*/
INSERT INTO type (type_id, title) VALUES (1, 'Internal');
INSERT INTO type (type_id, title) VALUES (2, 'External');

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

/*              Status Rows					*/
INSERT INTO status (status_id, name) VALUES (2, 'Escalated');
INSERT INTO status (status_id, name) VALUES (1, 'In Progress');
INSERT INTO status (status_id, name) VALUES (3, 'Closed');

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

/*              Urgency Rows					*/
INSERT INTO urgency (urgency_id, title) VALUES (1, 'Low');
INSERT INTO urgency (urgency_id, title) VALUES (2, 'Medium');
INSERT INTO urgency (urgency_id, title) VALUES (3, 'High');

/*              Tickets Rows					*/
INSERT INTO tickets (ticket_id, title, description, date_opened, status_id, tech_id, user_id, activity_id, urgency_id) VALUES (1, 'High CPU Usage', 'User states computer is running very slow.', '2021-12-01', 3, 14, 1, 1, 3);
INSERT INTO tickets (ticket_id, title, description, date_opened, status_id, tech_id, user_id, activity_id, urgency_id) VALUES (2, 'User reporting printer issues', 'User is unable to print from wireless printer.', '2021-12-02', 3, 3, 19, 2, 2);
INSERT INTO tickets (ticket_id, title, description, date_opened, status_id, tech_id, user_id, activity_id, urgency_id) VALUES (3, 'Outlook Maximum Capacity', 'User is out of storage for Outlook', '2021-12-02', 3, 9, 22, 3, 2);
INSERT INTO tickets (ticket_id, title, description, date_opened, status_id, tech_id, user_id, activity_id, urgency_id) VALUES (4, 'Locked out of Windows', 'User has forgotten his password', '2021-12-02', 3, 12, 7, 4, 2);
INSERT INTO tickets (ticket_id, title, description, date_opened, status_id, tech_id, user_id, activity_id, urgency_id) VALUES (5, 'Update Required', 'Windows notifying update is required', '2021-12-03', 3, 22, 9, 5, 1);
INSERT INTO tickets (ticket_id, title, description, date_opened, status_id, tech_id, user_id, activity_id, urgency_id) VALUES (6, 'Update Required', 'User trying to open Program, prompted update is required', '2021-12-06', 3, 1, 14, 6, 2);
INSERT INTO tickets (ticket_id, title, description, date_opened, status_id, tech_id, user_id, activity_id, urgency_id) VALUES (7, 'User needs to configure external monitor', 'User needs helping configuring third monitor, has HDMI cable.', '2021-12-05', 3, 5, 22, 7, 1);
INSERT INTO tickets (ticket_id, title, description, date_opened, status_id, tech_id, user_id, activity_id, urgency_id) VALUES (8, 'Signature Not Working', 'User is unable to add signatures to emails.', '2021-12-05', 3, 2, 29, 8, 2);
INSERT INTO tickets (ticket_id, title, description, date_opened, status_id, tech_id, user_id, activity_id, urgency_id) VALUES (9, 'User requesting printer toner', 'Printer has replace toner notification', '2021-12-05', 3, 3, 16, 9, 3);
INSERT INTO tickets (ticket_id, title, description, date_opened, status_id, tech_id, user_id, activity_id, urgency_id) VALUES (10, 'User unable to view Engineering drawings', 'User is unable to open PDF files for engineering drawings.', '2021-12-05', 3, 7, 12, 10, 1);
INSERT INTO tickets (ticket_id, title, description, date_opened, status_id, tech_id, user_id, activity_id, urgency_id) VALUES (11, 'User unable to open team excel files', 'Issue started today. User had to shut down computer and now she cannot connect to the shared files.', '2021-12-06', 3, 9, 19, 11, 2);
INSERT INTO tickets (ticket_id, title, description, date_opened, status_id, tech_id, user_id, activity_id, urgency_id) VALUES (12, 'User reporting stolen laptop', 'User had his car broken into. Laptop stolen. Has already informed manager.', '2021-12-06', 3, 11, 4, 12, 3);
INSERT INTO tickets (ticket_id, title, description, date_opened, status_id, tech_id, user_id, activity_id, urgency_id) VALUES (13, 'User unable to use Microsoft word', 'Microsoft license has expired. User needs to install license fix on enterprise software store.', '2021-12-06', 3, 15, 14, 13, 1);
INSERT INTO tickets (ticket_id, title, description, date_opened, status_id, tech_id, user_id, activity_id, urgency_id) VALUES (14, 'User unable to read emails.', 'User is unable to access their Outlook profile. Started this morning.', '2021-12-07', 3, 19, 27, 14, 1);
INSERT INTO tickets (ticket_id, title, description, date_opened, status_id, tech_id, user_id, activity_id, urgency_id) VALUES (15, 'User unable to attend meetings.', 'Webex will not open when trying to attend meeting from outlook.', '2021-12-06', 3, 21, 6, 15, 2);
INSERT INTO tickets (ticket_id, title, description, date_opened, status_id, tech_id, user_id, activity_id, urgency_id) VALUES (16, 'User reporting outlook issues', 'User is reporting their Outlook running very slow.', '2021-12-06', 1, 24, 11, 16, 3);
INSERT INTO tickets (ticket_id, title, description, date_opened, status_id, tech_id, user_id, activity_id, urgency_id) VALUES (17, 'User unable to browse web', 'Web browsing not functional. Receiving error message. Unable to load page.', '2021-12-06', 1, 29, 17, 17, 2);
INSERT INTO tickets (ticket_id, title, description, date_opened, status_id, tech_id, user_id, activity_id, urgency_id) VALUES (18, 'User receiving error messages in MS Word', 'Microsoft word has failed. Please try again error message.', '2021-12-06', 1, 18, 21, 18, 3);
INSERT INTO tickets (ticket_id, title, description, date_opened, status_id, tech_id, user_id, activity_id, urgency_id) VALUES (19, 'User unable to attend online meeting', 'User is unable to open Webex. Receving could not reach this page error message.', '2021-12-07', 1, 4, 19, 19, 1);
INSERT INTO tickets (ticket_id, title, description, date_opened, status_id, tech_id, user_id, activity_id, urgency_id) VALUES (20, 'User unable to browse company news page', 'User is missing content from Enterprise News website. Issue started this morning.', '2021-12-07', 1, 8, 10, 20, 2);
INSERT INTO tickets (ticket_id, title, description, date_opened, status_id, tech_id, user_id, activity_id, urgency_id) VALUES (21, 'User reporting wifi issues', 'Started this morning. States it may be the VPN.', '2021-12-08', 1, 2, 4, 21, 1);
INSERT INTO tickets (ticket_id, title, description, date_opened, status_id, tech_id, user_id, activity_id, urgency_id) VALUES (22, 'User requesting Software Order', 'User needs Adobe Pro. Requesting to put in an order.', '2021-12-08', 1, 7, 16, 22, 1);
INSERT INTO tickets (ticket_id, title, description, date_opened, status_id, tech_id, user_id, activity_id, urgency_id) VALUES (23, 'User due to PC refresh.', 'Received an email stating she is eligible for a refresh.', '2021-12-09', 1, 16, 12, 23, 1);
INSERT INTO tickets (ticket_id, title, description, date_opened, status_id, tech_id, user_id, activity_id, urgency_id) VALUES (24, 'User reporting screen is pixelated.', 'Issue started this morning. Unable to work with screen like this.', '2021-12-09', 1, 4, 17, 24, 1);
INSERT INTO tickets (ticket_id, title, description, date_opened, status_id, tech_id, user_id, activity_id, urgency_id) VALUES (25, 'User calling in to request softphone.', 'User needs a softphone to complete her job, but not sure how to go about this. New hire.', '2021-12-09', 1, 18, 22, 25, 2);
INSERT INTO tickets (ticket_id, title, description, date_opened, status_id, tech_id, user_id, activity_id, urgency_id) VALUES (26, 'User stating program taking up all CPU resources.', 'On task manager user sees ''airwatch'' taking up a lot of CPU space.', '2021-12-10', 1, 21, 27, 26, 2);
INSERT INTO tickets (ticket_id, title, description, date_opened, status_id, tech_id, user_id, activity_id, urgency_id) VALUES (27, 'User reports office printer has ''Feeder Error'' message', 'Issue started this week. Requesting dispatch for on-site support.', '2021-12-11', 1, 26, 12, 27, 1);
INSERT INTO tickets (ticket_id, title, description, date_opened, status_id, tech_id, user_id, activity_id, urgency_id) VALUES (28, 'User has a broken badge. Unable to sign onto PC.', 'Badge will not let him get into the building. Security let him in but he is not able to log on to a PC.', '2021-12-11', 1, 22, 16, 28, 1);
INSERT INTO tickets (ticket_id, title, description, date_opened, status_id, tech_id, user_id, activity_id, urgency_id) VALUES (29, 'User reporting Microsoft office issues.', 'Webex, Lync, and Excel all giving him issues. Issue started yesterday.', '2021-12-12', 1, 12, 19, 29, 2);
INSERT INTO tickets (ticket_id, title, description, date_opened, status_id, tech_id, user_id, activity_id, urgency_id) VALUES (30, 'User reporting issues with engineering software he uses', 'Looked up knowledge base reference, Java has been known to cause this issue. Java tsing needed.', '2021-12-12', 1, 6, 21, 30, 1);

/*              Activity Rows					*/
INSERT INTO activity_work (activity_id, ticket_id, work_notes) VALUES (1, 1, 'Rebooting PC. Running latest OS update. Issue resolved.');
INSERT INTO activity_work (activity_id, ticket_id, work_notes) VALUES (2, 2, 'Connecting wireless printer through asset tag in windows settings, wirelessly.');
INSERT INTO activity_work (activity_id, ticket_id, work_notes) VALUES (3, 3, 'Running PST migrator.');
INSERT INTO activity_work (activity_id, ticket_id, work_notes) VALUES (4, 4, 'Verifying user, resetting password.');
INSERT INTO activity_work (activity_id, ticket_id, work_notes) VALUES (5, 5, 'Checking available updates. Running update to latest update release and rebooting.');
INSERT INTO activity_work (activity_id, ticket_id, work_notes) VALUES (6, 6, 'Checking latest available update. Running update install and rebooting.');
INSERT INTO activity_work (activity_id, ticket_id, work_notes) VALUES (7, 7, 'Configuring external monitor. Arranging in windows settings and tailoring to user''s request.');
INSERT INTO activity_work (activity_id, ticket_id, work_notes) VALUES (8, 8, 'Running certificate registration for user''s smart badge.');
INSERT INTO activity_work (activity_id, ticket_id, work_notes) VALUES (9, 9, 'Sending dispatch out to replace empty toner.');
INSERT INTO activity_work (activity_id, ticket_id, work_notes) VALUES (10, 10, 'Associating PDF files to open in Adobe instead of IE.');
INSERT INTO activity_work (activity_id, ticket_id, work_notes) VALUES (11, 11, 'Reinstalling office 2019.');
INSERT INTO activity_work (activity_id, ticket_id, work_notes) VALUES (13, 13, 'Installing microsoft office license activation software.');
INSERT INTO activity_work (activity_id, ticket_id, work_notes) VALUES (14, 14, 'Rebuilding outlook profile.');
INSERT INTO activity_work (activity_id, ticket_id, work_notes) VALUES (15, 15, 'Configuring proxy in IE.');
INSERT INTO activity_work (activity_id, ticket_id, work_notes) VALUES (16, 16, 'Rebuilding outlook profile.');
INSERT INTO activity_work (activity_id, ticket_id, work_notes) VALUES (17, 17, 'Configuring proxy in Windows and IE. Issue still persistent.');
INSERT INTO activity_work (activity_id, ticket_id, work_notes) VALUES (18, 18, 'Rebooting. Issue still persistent.');
INSERT INTO activity_work (activity_id, ticket_id, work_notes) VALUES (19, 19, 'Configuring proxy. Issue still persistent.');
INSERT INTO activity_work (activity_id, ticket_id, work_notes) VALUES (12, 12, 'User has received new laptop to replace stolen machine. Corporate Security is aware of the missing machine.');
INSERT INTO activity_work (activity_id, ticket_id, work_notes) VALUES (20, 20, 'Proxy issue is not yet resolved. The user has been instructed to reinstall wireless drivers.');
INSERT INTO activity_work (activity_id, ticket_id, work_notes) VALUES (21, 21, 'Tested wifi devices in home. All working. Redownloaded VPN and testing.');
INSERT INTO activity_work (activity_id, ticket_id, work_notes) VALUES (22, 22, 'Ordered Adobe Pro for user.');
INSERT INTO activity_work (activity_id, ticket_id, work_notes) VALUES (23, 23, 'Sent user to IT Service Center for refresh');
INSERT INTO activity_work (activity_id, ticket_id, work_notes) VALUES (24, 24, 'Reinstalled video drivers. PC working well now.');
INSERT INTO activity_work (activity_id, ticket_id, work_notes) VALUES (25, 25, 'Ordered new softphone for user.');
INSERT INTO activity_work (activity_id, ticket_id, work_notes) VALUES (26, 26, 'Ran enterprise powershell commands for airwatch issue.');
INSERT INTO activity_work (activity_id, ticket_id, work_notes) VALUES (27, 27, 'Sent out dispatch to fix printer feeder.');
INSERT INTO activity_work (activity_id, ticket_id, work_notes) VALUES (28, 28, 'Ordered a new smart badge for the user. Provided temporary password.');
INSERT INTO activity_work (activity_id, ticket_id, work_notes) VALUES (29, 29,'Redownloading Office 2019.');
INSERT INTO activity_work (activity_id, ticket_id, work_notes) VALUES (30, 30, 'Disabled Java, restarted PC. Issue still persistent.');

COMMIT;