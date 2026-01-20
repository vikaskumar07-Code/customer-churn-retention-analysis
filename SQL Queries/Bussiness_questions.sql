#Bussiness Question

-- #1.Total customer & Chruned customer
-- USE telco_churn;
-- SELECT COUNT(*) AS Total_customer,
-- SUM(CASE WHEN Churn= 'yes' THEN 1 ELSE 0 END)AS chruned_customers
-- From customers;

-- #2.Overall churn rate
-- SELECT round(sum(CASE WHEN churn ='Yes' Then 1 ELSE 0 END)*100.0/count(*),2)AS churn_rate_Percentage
-- From customers;-- 

#-- 3.churn by contract Type
-- SELECT contract,count(*)AS total_customers,SUM(CASE WHEN churn ='yes' Then 1 ELSE 0 END ) churned_customers,ROUND(SUM(CASE WHEN churn ='yes'Then 1 Else 0 END)*100.0/count(*)	,2)
-- AS churn_rate 
-- FROM Customers
-- group by contract
-- order by churn_rate DESC;

-- #Chrun by Internet Service 
--  Select 
-- InternetService,Count(*)AS total_customer,round(Sum(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END )*100.0/count(*),2)
-- AS Churn_rate
-- From Customers
-- Group by Internetservice
-- Order by churn_rate DESC;

#Churn by Monthly Charges 
-- Select CASE
-- WHEN MonthlyCharges <30 Then 'Low'
-- When MonthlyCharges Between 30 And 70 Then 'Medium'
-- ELSE 'High'
-- End AS charge_segment,
-- COUNT(*) AS total_customers,
-- Round(sum(CASE When churn ='Yes' THEN 1 ELSE 0 END )*100.0/count(*),2)
-- AS churn_rate
-- From customers
-- group by charge_segment
-- order by churn_rate DESC;

-- #TENURE-based chrun
-- SELECT CASE
--  when tenure <12 THEN '0-1 year'
-- when tenure between 12 and 24 Then '1-2 years'
-- ELSE '2+ years'
-- END AS tenure_group ,
-- COUNT(*) AS total_customers,
-- ROUND(sum(CASE WHEN churn ='Yes' THEN 1 ELSE 0 END)*100.0/Count(*),2)
-- AS churn_rate
-- From customers
-- Group by tenure_group
-- order by churn_rate DESC;

-- #TOTAL CUSTOMER
-- SELECT COUNT(*) AS total_customers
-- From customers;

-- #TOTAL CHRUNED AND ACTIVE CUSTOMERS
-- SELECT 	churn,COUNT(*) AS customer_count
-- FROM customers
-- group by Churn;

-- #ACtive customers count(retention base)
-- SELECT COUNT(*) AS active_customers
-- FROM customers
-- WHERE churn ='no';

-- #Churned customer count
-- SELECT
-- count(*) AS churned_customers
-- FROM customers
-- where churn ='yes';

-- #retention rate
-- SELECT ROUND(SUM(CASE WHEN churn ='No' THEN 1 ELSE 0 END )*100.0/COUNT(*),2)AS retention_rate_percentage
-- FROM customers;