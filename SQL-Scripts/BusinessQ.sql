-- Gianfranco Gravina
-- Term Project Business Queries
-- 11/29/2021

-- SELECT

-- IT Analyst Performance Review for Medium-High Level Urgency Tickets

-- Purpose:
-- Someone would want to use this query to analyze open tickets with high urgency, as an increase in outreach for urgent support
-- has been reported on the days between 12-5-2021 and 12-15-2021. This would allow to for the team to take immediate action and
-- tackle open tickets with high urgency.

SELECT tickets.urgency_id, tickets.ticket_id, techs.tech_id, techs.last_name, tickets.title, techs.email, tickets.date_opened, tickets.status_id
FROM tickets
INNER JOIN techs ON techs.tech_id=tickets.tech_id
WHERE urgency_id >= 2
AND
date_opened >= '2021-12-5' AND date_opened <= '2021-12-15'
AND
status_id < 3
ORDER BY urgency_id DESC;

-- External Users Qualifying for Hardware Upgrades Joined Before 2021

-- Purpose:
-- External users who joined before the year 2021 are eligible for a PC refresh. This query returns the eligible users, providing
-- their hire date, user ID, names, asset tags, company ID, and company names.

-- This script was written by joining both the end_users and company table, and setting the condition to only return
-- company IDs that are greater than 1, which are external users. Another condition set is that the users be
-- hired before 2021-01-01 to meet the qualifications of the refresh.

SELECT end_users.hire_date, end_users.user_id, end_users.first_name, end_users.last_name, end_users.asset_tag, end_users.company_id, company.name
FROM end_users
INNER JOIN company ON end_users.company_id=company.company_id
WHERE company.company_id > 1
AND hire_date < '2021-01-01'
ORDER BY hire_date ASC
;