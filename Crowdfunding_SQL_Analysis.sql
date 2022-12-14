-- Challenge Bonus queries.
-- 1. (2.5 pts)
-- Retrieve all the number of backer_counts in descending order for each `cf_id` for the "live" campaigns. 
SELECT (ca.backers_count), ca.cf_id
FROM campaign as ca
WHERE ca.outcome = 'live'
GROUP BY ca.cf_id
ORDER BY backers_count DESC;


-- 2. (2.5 pts)
-- Using the "backers" table confirm the results in the first query.
SELECT COUNT (ba.cf_id), ba.cf_id
FROM backers as ba
GROUP BY ba.cf_id
ORDER BY count DESC;


-- 3. (5 pts)
-- Create a table that has the first and last name, and email address of each contact.
-- and the amount left to reach the goal for all "live" projects in descending order. 
DROP TABLE email_contacts_remaining_goal_amount;

--CREATE TABLE email_contacts_remaining_goal_amount AS
SELECT contacts.first_name,
	contacts.last_name,
	contacts.email,
	campaign.goal - campaign.pledged AS "Remaining Goal Amount"
-- INTO email_contacts_remaining_goal_amount
FROM campaign, contacts
WHERE campaign.outcome = 'live'
ORDER BY "Remaining Goal Amount" DESC;


-- Check the table
SELECT * FROM email_contacts_remaining_goal_amount;

-- 4. (5 pts)
-- Create a table, "email_backers_remaining_goal_amount" that contains the email address of each backer in descending order, 
-- and has the first and last name of each backer, the cf_id, company name, description, 
-- end date of the campaign, and the remaining amount of the campaign goal as "Left of Goal". 



-- Check the table


