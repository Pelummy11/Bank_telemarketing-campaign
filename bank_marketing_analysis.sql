---Dat Preparation
--- Loading the dataset 
SELECT 
*
  FROM [bank_marketing].[dbo].[bank]

  --- Data Processing  
-- Check for NULL values
SELECT *
FROM [bank_marketing].[dbo].[bank]
  WHERE age IS NULL

  SELECT *
  FROM [bank_marketing].[dbo].[bank]
  WHERE job IS NULL

  SELECT *
  FROM [bank_marketing].[dbo].[bank]
  WHERE marital IS NULL
  SELECT *
  FROM [bank_marketing].[dbo].[bank]
  WHERE education IS NULL
  SELECT *
  FROM [bank_marketing].[dbo].[bank]
  WHERE default IS NULL

  SELECT 
*
  FROM [bank_marketing].[dbo].[bank]
  WHERE balance IS NULL
  SELECT 
*
  FROM [bank_marketing].[dbo].[bank]
  WHERE balance IS NULL
  SELECT 
*
  FROM [bank_marketing].[dbo].[bank]
  WHERE housing IS NULL
  SELECT 
*
  FROM [bank_marketing].[dbo].[bank]
  WHERE loan IS NULL
  SELECT 
*
  FROM [bank_marketing].[dbo].[bank]
  WHERE contact IS NULL
  SELECT 
*
  FROM [bank_marketing].[dbo].[bank]
  WHERE day IS NULL
  SELECT 
*
  FROM [bank_marketing].[dbo].[bank]
  WHERE month IS NULL
  SELECT 
*
  FROM [bank_marketing].[dbo].[bank]
  WHERE duration IS NULL
  SELECT 
*
  FROM [bank_marketing].[dbo].[bank]
  WHERE campaign IS NULL
  SELECT 
*
  FROM [bank_marketing].[dbo].[bank]
  WHERE pdays IS NULL
  
  SELECT 
*
  FROM [bank_marketing].[dbo].[bank]
  WHERE previous IS NULL

  SELECT education
  FROM [bank_marketing].[dbo].[bank]
  WHERE education = 'unknown'

  SELECT 
*
  FROM [bank_marketing].[dbo].[bank]
  WHERE poutcome IS NULL
  SELECT 
*
  FROM [bank_marketing].[dbo].[bank]
  WHERE deposit IS NULL

--- Check for distinct objects in the columns
---Job
SELECT DISTINCT(job)
FROM [bank_marketing].[dbo].[bank]
--- there are 12 distinct types of job
--Marital
SELECT DISTINCT(marital)
FROM [bank_marketing].[dbo].[bank]
--- There are 3 types of distinct marital status
--Education
SELECT DISTINCT(education)
FROM [bank_marketing].[dbo].[bank]

SELECT education
  FROM [bank_marketing].[dbo].[bank]
  WHERE education = 'unknown'

  DELETE 
  FROM [bank_marketing].[dbo].[bank]
  WHERE education = 'unknown'
  --- checking for distinct values again
  SELECT DISTINCT(education)
FROM [bank_marketing].[dbo].[bank]
--- There are three disntinct type of education
---contact
SELECT DISTINCT(contact)
FROM [bank_marketing].[dbo].[bank]
--- 3 distinct types
--loan
SELECT DISTINCT(loan)
FROM [bank_marketing].[dbo].[bank]

--campaign
SELECT DISTINCT(poutcome)
FROM [bank_marketing].[dbo].[bank]

---Data Analysis
--- Finding the average, youngest, oldest age of a client
SELECT AVG(age),
MIN(age),
MAX(age)
FROM [bank_marketing].[dbo].[bank]

--- Number of unemployed clients
SELECT COUNT(job) AS "unemployed clients"
FROM [bank_marketing].[dbo].[bank]
WHERE job = 'unemployed'

--- Number  of self - employed clients
SELECT COUNT(job) AS "self-employed clients"
FROM [bank_marketing].[dbo].[bank]
WHERE job = 'self-employed'

--- Number  of employed clients
SELECT COUNT(job)
FROM [bank_marketing].[dbo].[bank]
WHERE job = 'self-employed'

--- Number  of technician clients
SELECT COUNT(job) AS "technician clients"
FROM [bank_marketing].[dbo].[bank]
WHERE job = 'technician'

--- Number  of housemaid clients
SELECT COUNT(job) AS "housemaid clients"
FROM [bank_marketing].[dbo].[bank]
WHERE job = 'housemaid'

--- Number  of services clients
SELECT COUNT(job) AS "services clients"
FROM [bank_marketing].[dbo].[bank]
WHERE job = 'services'

--- Number  of blue-collar clients
SELECT COUNT(job) AS "blue-collar clients"
FROM [bank_marketing].[dbo].[bank]
WHERE job = 'blue-collar'

--- Number  of student clients
SELECT COUNT(job) AS "student-clients"
FROM [bank_marketing].[dbo].[bank]
WHERE job = 'student'

--- Number  of retired clients
SELECT COUNT(job) AS "retire-clients"
FROM [bank_marketing].[dbo].[bank]
WHERE job = 'retired'

--- Number  of entreprenuer clients
SELECT COUNT(job) AS "entrepreneur-clients"
FROM [bank_marketing].[dbo].[bank]
WHERE job = 'entrepreneur'

--- Number  of admin clients
SELECT COUNT(job) AS "admin-clients"
FROM [bank_marketing].[dbo].[bank]
WHERE job = 'admin.'

--- Number  of management clients
SELECT COUNT(job) AS "mangement-clients"
FROM [bank_marketing].[dbo].[bank]
WHERE job = 'management'

SELECT COUNT(job) AS "unknown-clients"
FROM [bank_marketing].[dbo].[bank]
WHERE job = 'unknown'

-- Number of single clients
SELECT COUNT(marital) AS "single-clients"
FROM [bank_marketing].[dbo].[bank]
WHERE marital = 'single'

--Number of married clients
SELECT COUNT(marital) AS "married-clients"
FROM [bank_marketing].[dbo].[bank]
WHERE marital = 'married'

--Number of Divirced clients
SELECT COUNT(marital) AS "divorced-clients"
FROM [bank_marketing].[dbo].[bank]
WHERE marital = 'divorced'

--Number of clients with primary education
SELECT COUNT(education) AS "primary"
FROM [bank_marketing].[dbo].[bank]
WHERE education = 'primary'

-- Number of clients with secondary education
SELECT COUNT(education) AS "secondary"
FROM [bank_marketing].[dbo].[bank]
WHERE education = 'secondary'

-- Number of clients with tertiary education
SELECT COUNT(education) AS "tertiary"
FROM [bank_marketing].[dbo].[bank]
WHERE education = 'tertiary'

---Number of clients with bank deposits
SELECT COUNT(deposit) AS "clients_wth_deposits"
FROM [bank_marketing].[dbo].[bank]
WHERE deposit = 'yes'

---Number of clients with no bank deposit
SELECT COUNT(deposit) AS "clients_wth_no_deposits"
FROM [bank_marketing].[dbo].[bank]
WHERE deposit = 'no'

--- Number of clients with loans
SELECT COUNT(loan) AS "clients_wth_loan"
FROM [bank_marketing].[dbo].[bank]
WHERE loan = 1

-- Number of clients without loan
SELECT COUNT(loan) AS "clients_wth_no_loan"
FROM [bank_marketing].[dbo].[bank]
WHERE loan = 0

--- Clients contacted for the current campaign using cellular
SELECT COUNT(contact) AS "contact_by_cellular"
FROM [bank_marketing].[dbo].[bank]
WHERE contact = 'cellular'

--- Clients contacted for the current campaign using telephone
SELECT COUNT(contact) AS "contact_by_telephone"
FROM [bank_marketing].[dbo].[bank]
WHERE contact = 'telephone'

-- Maximun number of time a client was contacted for  the current campaign
SELECT MAX(campaign)  AS "max_campaign_contact"
FROM [bank_marketing].[dbo].[bank]

-- --Minimum number of time a client was contacted for  the current campaign
SELECT MIN(campaign)  AS "min_campaign_contact"
FROM [bank_marketing].[dbo].[bank]

-- Maximun number of time a client was contacted for  the current campaign
SELECT MAX(campaign)  AS "max_campaign_contact"
FROM [bank_marketing].[dbo].[bank]

--- How many clients did their previous campaign turn out to be a success
SELECT COUNT(poutcome) AS campaign_success
FROM [bank_marketing].[dbo].[bank]
WHERE poutcome = 'success'
---How many clients did their previous campaign turn out to be a failure
SELECT COUNT(poutcome) AS campaign_fail
FROM [bank_marketing].[dbo].[bank]
WHERE poutcome = 'failure'
---How many clients did their previous campaign turn out to be unknown
SELECT COUNT(poutcome) AS campaign_unknown
FROM [bank_marketing].[dbo].[bank]
WHERE poutcome = 'unknown'
---How many clients did their previous campaign turn out to be unknown
SELECT COUNT(poutcome) AS campaign_other
FROM [bank_marketing].[dbo].[bank]
WHERE poutcome = 'other'


--- Age of clients whose campaign was a success
SELECT AVG(age), poutcome
FROM [bank_marketing].[dbo].[bank]
WHERE poutcome = 'success'
GROUP  BY age, poutcome
--Count of single clients whose campaign was a success
SELECT COUNT (marital), poutcome 
FROM [bank_marketing].[dbo].[bank] 
GROUP BY marital, poutcome
HAVING poutcome = 'success'
AND marital ='single'
--- Count of married people whose campaign was a success
SELECT COUNT( marital), poutcome 
FROM [bank_marketing].[dbo].[bank]
GROUP BY marital, poutcome
HAVING poutcome = 'success'
AND marital ='married'
--- Count of divorced people whose campaign was a success
SELECT COUNT(marital), poutcome 
FROM [bank_marketing].[dbo].[bank]
GROUP BY marital, poutcome
HAVING poutcome = 'success'
AND marital ='divorced'
--Count of single clients whose campaign was a failure
SELECT COUNT (marital), poutcome 
FROM [bank_marketing].[dbo].[bank] 
GROUP BY marital, poutcome
HAVING poutcome = 'failure'
AND marital ='single'
--- Count of married people whose campaign was a failure
SELECT COUNT( marital), poutcome 
FROM [bank_marketing].[dbo].[bank]
GROUP BY marital, poutcome
HAVING poutcome = 'failure'
AND marital ='married'
--- Count of divorced people whose campaign was a failure
SELECT COUNT(marital), poutcome 
FROM [bank_marketing].[dbo].[bank]
GROUP BY marital, poutcome
HAVING poutcome = 'failure'
AND marital ='divorced'

--- Average last contact duration
SELECT AVG(duration) AS avg_last_duration
FROM [bank_marketing].[dbo].[bank]

--- Max last contact duration
SELECT MAX(duration)
FROM [bank_marketing].[dbo].[bank]
---information regarding the client the maximum last contact duration
SELECT *
FROM [bank_marketing].[dbo].[bank]
WHERE duration = 3881
--- Min last contact duration
SELECT MIN(duration)
FROM [bank_marketing].[dbo].[bank]
---information regarding the client the maximum last contact duration
SELECT *
FROM [bank_marketing].[dbo].[bank]
WHERE duration = 2

--- Occupation with the average,highest and lowest balance in their accounts
SELECT MAX(balance)
FROM [bank_marketing].[dbo].[bank]
SELECT *
FROM [bank_marketing].[dbo].[bank]
WHERE balance = 81204

SELECT MIN(balance)
FROM [bank_marketing].[dbo].[bank]
SELECT *
FROM [bank_marketing].[dbo].[bank]
WHERE balance = -6847
SELECT AVG(balance)
FROM [bank_marketing].[dbo].[bank]
SELECT *
FROM [bank_marketing].[dbo].[bank]
WHERE balance = 1528