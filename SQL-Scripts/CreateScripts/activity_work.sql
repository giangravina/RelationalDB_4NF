-- Create Table + Inserts for Activity_Work Table

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