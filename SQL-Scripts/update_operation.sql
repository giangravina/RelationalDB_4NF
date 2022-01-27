-- Gianfranco Gravina
-- Term Project Update Operation
-- Tech Support Ticket DB System

-- UPDATE

-- Updating Latest Work Notes

-- Purpose:
-- This query allows for someone to update the latest work on a ticket. The ticket has a foreign key
-- of activity_work, which represent the work that the tech performed. Based off the activity ID,
-- this will correlate with the specific ticket and all that will be needed added is the different activity_id
-- and work_notes for their respective ticket.
UPDATE activity_work
SET work_notes = 'User has received new laptop to replace stolen machine. Corporate Security is aware of the missing machine.'
WHERE activity_id = 12
;

UPDATE activity_work
SET work_notes = 'Proxy issue is not yet resolved. The user has been instructed to reinstall wireless drivers.'
WHERE activity_id = 20
;

-- Updating End Users Personal Information

-- Purpose:
-- An end user has decided to have a name change after getting married. They call in requesting that
-- first name, last name, and email are changed. This query allows to manipulate the data by referring to the user's
-- user ID. The rest of the information will remain the same as these are the only impacted
-- instances of data that relate to a name change.

UPDATE end_users
SET
    first_name = 'Jenna',
    last_name = 'Crabgrass',
    email = 'jcrabgrass@corp.com'
WHERE user_id = 11
;

UPDATE end_users
SET
    first_name = 'Ruby',
    last_name = 'Jameson',
    email = 'rjameson@corp.com'
WHERE user_id = 13
;