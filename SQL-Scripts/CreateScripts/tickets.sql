-- Create Table + Inserts for Tickets Table


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